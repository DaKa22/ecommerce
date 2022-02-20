<%
	String username = "";
	try {
		username = request.getUserPrincipal().getName();
	} catch (Exception e) {
		username = "";
	}
%>
<!-- Navigation -->
<<<<<<< HEAD
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top "> <!--  fixed-top = creo que era lo que estaba jodiendo-->
=======
<nav class="navbar navbar-expand-lg navbar-dark bg-dark top">
>>>>>>> 126dc06eac00c4c13d76264f9767bfa5e750d33e
	<div class="container">
		<a class="navbar-brand" href="../">Jopaka Store</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="../">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="../order/">Orders</a></li>
				<li class="nav-item"><a class="nav-link" href="../category/">Category</a></li>
				<li class="nav-item"><a class="nav-link" href="../cart/">
						<button type="button" class="btn btn-primary">
							Shopping Cart <span id="shopping_cart" class="badge badge-light">0</span>
						</button>
				</a></li>
			</ul>
		</div>
	</div>
</nav>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	
<script src="../js/portal.js" type="text/javascript"></script>
<script type="text/javascript">
	updateItemsCount();
</script>
	
	
