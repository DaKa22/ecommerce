
<!-- Navigation -->
<!-- Traductor -->
<div id="google_translate_element" class="google"></div>
<script type="text/javascript">
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: 'ca,eu,gl,en,fr,it,pt,de,es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE, gaTrack: true}, 'google_translate_element');
            }
    </script>
    <script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
	<!-- finaliza traductor -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">


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
				<li class="nav-item"><a class="nav-link" href="../user/">Panel de Control</a></li>
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
	
<style>
	#google_translate_element{
		z-index: 1031;
	    top: 24px;
	    left: 80px;
	    position: fixed;
	}
	.skiptranslate > iframe{
		display: none;
	}
</style>
