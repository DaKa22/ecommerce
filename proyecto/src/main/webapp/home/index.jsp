<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int category_id = 1;
try {
	String id = request.getParameter("id");
	category_id = Integer.parseInt(id);
} catch (Exception e) {
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>JOPAKA-STORE</title>
<!-- logo de la pagina-->
<link rel="icon" type="image/x-icon" href="../fotosPag/tienda.png" />
<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Custom styles for this template -->
<link href="../css/shop-homepage.css" rel="stylesheet">
</head>
<body>
	<!-- Navigation -->
	<jsp:include page="../portal/menu.jsp" />
	<!-- Page Content -->
	
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<jsp:include page="../portal/category.jsp" />
			</div>
			<!-- /.col-lg-3 -->
			<div class="col-lg-9">

				<jsp:include page="../portal/carousel.jsp" />

				<jsp:include page="../portal/products.jsp" />
			</div>
			<!-- /.col-lg-9 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<!-- Footer -->
	<jsp:include page="../portal/footer.jsp" />
	<!-- Bootstrap core JavaScript -->

</body>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">
	
</script>

<script src="../js/portal.js"></script>
<script type="text/javascript">
	var category_id =
<%=category_id%>
	;
	getCategories(category_id);
	getProducts(category_id);
	getCategoriesCarrusel();
	updateItemsCount();
</script>
</html>
