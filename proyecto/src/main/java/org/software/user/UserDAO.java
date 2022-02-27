package org.software.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.software.util.DataBase;

@SuppressWarnings("unused")
public class UserDAO implements validar {
	@Override
	public int validar(User user) {
		DataBase database = new DataBase();
		Connection connection1 = null;
		PreparedStatement ps =null;
		String sql = "";
		String message = "";
		ResultSet rs;
		int r =0;
		try {
			connection1 = database.getConnection("ecommerce");

			sql = "select * from users where email=? and password=?";
			sql += " VALUES (?, ?)";

			ps = connection1.prepareStatement(sql);
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			rs = ps.executeQuery();
			while(rs.next()) {
				 r = 1;
				user.setUsername(rs.getString("username"));
				user.setId(rs.getLong("id"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
			}
		}
		catch (Exception e) {
			System.out.println("Error: " + e.toString());
		}
		finally {
			database.closeObject(ps);
			database.closeObject(connection1);
		}

		if(r == 1){
			return 1;
		}
		else{
			return 0;
		}
		
	}


}
