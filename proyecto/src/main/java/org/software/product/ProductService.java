package org.software.product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

import org.software.util.DataBase;

@Path("/product")
public class ProductService {

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@GET
	@Path("/list/{category_id}")
	@Produces("application/json")
	// @Produces("application/xml")
	public ProductList getProductos(@PathParam(value = "category_id") int category_id) {
		ArrayList productList = new ArrayList();

		//int category_id = 1;

		DataBase database = new DataBase();
		Connection conexion1 = null;
		Statement sentencia1 = null;
		ResultSet rs1 = null;
		String sql = "";
		try {
			conexion1 = database.getConnection("guest");
			sentencia1 = conexion1.createStatement();
			sql = "select * from products where category_id = " + category_id;
			rs1 = sentencia1.executeQuery(sql);
			while (rs1.next()) {
				long id = rs1.getInt("id");
				String name = rs1.getString("name");
				double pricing = rs1.getDouble("pricing");
				String short_description = rs1.getString("short_description");
				String icon = rs1.getString("icon");

				Product product = new Product();
				product.setId(id);
				product.setName(name);
				product.setPricing(pricing);
				product.setShort_description(short_description);
				product.setIcon(icon);
				productList.add(product);
			}
		} catch (Exception e) {
			System.out.println("Error: " + e.toString());
		}
		finally {
			database.closeObject(rs1);
			database.closeObject(sentencia1);
			database.closeObject(conexion1);
		}

		return new ProductList(productList);
	}

	@SuppressWarnings({ "rawtypes", "resource", "unchecked" })
	@GET
	@Path("/{product_id}")
	@Produces("application/json")
	public ProductList getProductById(@PathParam(value = "product_id") int product_id) {
		ArrayList productList = new ArrayList();

		DataBase database = new DataBase();
		Connection conexion1 = null;
		Statement sentencia1 = null;
		ResultSet rs1 = null;
		String sql = "";
		try {
			conexion1 = database.getConnection("guest");
			sentencia1 = conexion1.createStatement();

			double media = 0;
			sql = "select avg(rating) as media from reviews";
			sql = sql + " where product_id = " + product_id;
			rs1 = sentencia1.executeQuery(sql);
			if (rs1.next()) {
				media = rs1.getDouble("media");
			}

			sql = "select * from products where id = " + product_id;
			rs1 = sentencia1.executeQuery(sql);
			while (rs1.next()) {
				long id = rs1.getLong("id");
				int category_id = rs1.getInt("category_id");
				String name = rs1.getString("name");
				double pricing = rs1.getDouble("pricing");
				String short_description = rs1.getString("short_description");
				String long_description = rs1.getString("long_description");
				String icon = rs1.getString("icon");

				Product product = new Product();
				product.setId(id);
				product.setCategory_id(category_id);
				product.setName(name);
				product.setPricing(pricing);
				product.setShort_description(short_description);
				product.setLong_description(long_description);
				product.setIcon(icon);
				product.setMedia(media);

				productList.add(product);
			}
		} catch (Exception e) {
			System.out.println("Error: " + e.toString());
		}
		finally {
			database.closeObject(rs1);
			database.closeObject(sentencia1);
			database.closeObject(conexion1);
		}

		return new ProductList(productList);
	}
}
