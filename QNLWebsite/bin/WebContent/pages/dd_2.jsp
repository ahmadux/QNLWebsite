
<html>
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Simple Effects for Drop-Down Lists</title>
		<meta name="description" content="Simple Effects for Drop-Down Lists" />
		<meta name="keywords" content="drop-down, select, jquery, plugin, fallback, transition, transform, 3d, css3" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="../css/dropdown/style2.css" />
		<script src="../scripts/dropdown/modernizr.custom.63321.js"></script>
	</head>
	<body>
		<div class="container">	
			<!-- Codrops top bar -->
			<div class="codrops-top clearfix">
				<a href="http://tympanus.net/Development/Calendario/">
					<strong>&laquo; Previous Demo: </strong>Flexible Calendar Plugin
				</a>
				<span class="right">
					<a href="http://icomoon.io/app/">Icons created with Icomoon</a>
					<a href="http://tympanus.net/codrops/?p=12452">
						<strong>Back to the Codrops Article</strong>
					</a>
				</span>
			</div><!--/ Codrops top bar -->			
			<header class="clearfix">
				<h1>Simple Effects<span>for Drop-Down Lists</span></h1>
				<nav class="codrops-demos">
					<a href="index.html">Demo 1</a>
					<a class="current-demo" href="index2.html">Demo 2</a>
					<a href="index3.html">Demo 3</a>
					<a href="index4.html">Demo 4</a>
					<a href="index5.html">Demo 5</a>
					<a href="index6.html">Demo 6</a>
				</nav>
			</header>
			<section class="main clearfix">
				<div class="fleft">
					<p>In this example we use a gutter of 5, stack the items with a slight offset, and expand them with a slight random angle/left values. Each item will have a different animation delay.</p>
				</div>
				<div class="fleft">
					<select id="cd-dropdown" class="cd-select">
						<option value="-1" selected>Choose a network to add</option>
						<option value="1" class="icon-google-plus">Google Plus</option>
						<option value="2" class="icon-facebook">Facebook</option>
						<option value="3" class="icon-twitter">Twitter</option>
						<option value="4" class="icon-star">GitHub</option>
					</select>
				</div>
			</section>
		</div><!-- /container -->
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script type="text/javascript" src="../scripts/dropdown/jquery.dropdown.js"></script>
		<script type="text/javascript">
			
			$( function() {
				
				$( '#cd-dropdown' ).dropdown( {
					gutter : 5,
					delay : 100,
					random : true
				} );

			});

		</script>
	</body>
</html>
