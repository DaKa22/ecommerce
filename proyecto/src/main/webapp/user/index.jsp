<jsp:include page="../portal/head.jsp" />
<body>
	<!-- Navigation -->
	<jsp:include page="../portal/menu.jsp" />
	<!-- Page Content -->
	<div class="container">
		<br /> <br /> 
		<div class="list-group">
			
			<!--String usuario = request.getUserPrincipal().getName();-->
				<h3>Bienvenido: Usuario</h3><br>
				
				
			<!--  <a href="../order" class="btn btn-primary btn-lg btn-block" >	Pedidos</a> -->
			
			<a href="../category" class="btn btn-secondary btn-lg btn-block">
				Gestión de Categorías</a>
			
		</div>
		<br /> <br />
	</div>
	<!-- /.container -->
	<!-- Footer -->
	<jsp:include page="../portal/footer2.jsp" />
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>