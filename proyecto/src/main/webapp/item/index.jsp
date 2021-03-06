<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String product_id = request.getParameter("id");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>JOPAKA - ITEM</title>
<!-- logo de la pagina-->
<link rel="icon" type="image/x-icon" href="../fotosPag/tienda.png" />
<!-- Bootstrap core CSS -->
<!--
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- Custom styles for this template -->
<link href="../css/shop-item.css" rel="stylesheet">

<script src="../js/webfont.js"></script>
<link href="../css/rateit.css" rel="stylesheet" type="text/css">
</head>

<body>
	
	<jsp:include page="../portal/menu.jsp"></jsp:include>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3">
				<h1 class="my-4">Shop Name</h1>
				<div class="list-group" id="div_categories"></div>
			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9">
				<div class="card mt-4" id="div_product">
					<img class="card-img-top img-fluid" id="product_image" src=""
						alt="">
					<div class="card-body">
						<h3 class="card-title" id="product_name"></h3>
						<h4 id="product_price"></h4>
						<p class="card-text" id="product_description"></p>
						<a href="javascript:addToCart(<%= product_id %>)" class="btn btn-info" role="button">Buy</a>
						<br/><br/>
						<div>
							<span class="rateit" id="product_rating"
								data-rateit-readonly="true"></span> <span id="starts"></span>
						</div>
					</div>
				</div>
				<!-- /.card -->

				<div class="card card-outline-secondary my-4">
					<div class="card-header">Product Reviews</div>
					<div class="card-body" id="div_reviews2">
						<p>
							<a class="btn btn-success float-right" data-toggle="collapse"
								href="#collapseComment" role="button" aria-expanded="false"
								aria-controls="#collapseComment"> Leave a Review </a>
						</p>
						<div class="clearfix"></div>
						<div id="div_review_response"></div>

						<div class="collapse" id="collapseComment">
							<br />
							<div class="card card-body">
								<form>
									<div class="form-group">
										<label for="comment">Comment</label>
										<textarea class="form-control" id="comment" rows="3"></textarea>
									</div>

									<div class="form-group">
										<label for="rating">Rating</label>
										<div>
											<span class="rateit" id="rating" data-rateit-step="0.1"
												data-rateit-min="0" data-rateit-max="5"></span> <span
												id="rating_value"></span>
										</div>
									</div>

									<a href="javascript:addReview(<%=product_id%>);"
										class="btn btn-info float-right" role="button">Save</a>
								</form>
							</div>
						</div>

						<div id="div_reviews"></div>

					</div>
				</div>
				<!-- /.card -->

			</div>
			<!-- /.col-lg-9 -->

		</div>

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<jsp:include page="../portal/footer.jsp"></jsp:include>
	

	<!-- Bootstrap core JavaScript -->
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		
	<script src="../js/jquery.rateit.js" type="text/javascript"></script>
	<script src="../js/portal.js" type="text/javascript"></script>
	<script src="../js/item.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		$(document).ready(function() {
			var product_id = <%=product_id%>;
			getCategoryList();
			getProductById(product_id);
			getReviews(product_id);
			configureRating();
			updateItemsCount();
		});
	</script>
</body>

</html>