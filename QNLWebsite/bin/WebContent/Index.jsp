<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
<script src="scripts/bootstrap.min.js"></script>
<script src="scripts/holder.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" href="css/qatarNationalLibrary.css" />
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css"	rel="stylesheet" />

<title>Qatar National Library - Home</title>
</head>
<body>
<div class="fullpage">
	<div class="darkgrey thinline shadowed"></div>
	<div class="logo"></div>
	<div class="darkgrey thickline shadowed"></div>
	<div class="page">
		<div class="darkgrey thinline separatedTop separatedBottom shadowed"></div>
		<div class="carouselHolder lightgrey bordered">
			<div class="leftHolder bordered separatedTop"></div>
			<div class="rightHolder separatedTop">
				<div class="rightTopHolder bordered img-rounded separatedTop shadowedLight"></div>
				<div class="rightBottomHolder"></div>
			</div>			
		</div>
		<div class="darkgrey thinline separatedTop separatedBottom shadowed"></div>					
		<div id="carousel" class="carousel slide column2-3"  data-ride="carousel">
			
			  <!-- Indicators 
			  <ol class="carousel-indicators">
			    <li data-target="#carousel" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel" data-slide-to="1"></li>
			    <li data-target="#carousel" data-slide-to="2"></li>
			    <li data-target="#carousel" data-slide-to="3"></li>
			    <li data-target="#carousel" data-slide-to="4"></li>
			    <li data-target="#carousel" data-slide-to="5"></li>			    
			  </ol>-->
			
			  <!-- Wrapper for slides -->
			  <div class="carousel-inner">
			    <div class="item active">			      
			      <div class="column1-3 bordered gradient">A</div>
			      <div class="column1-3 bordered gradient">B</div>
			    </div>
			    
			    <div class="item">			      
			      <div class="column1-3 bordered gradient">C</div>
			      <div class="column1-3 bordered gradient">D</div>
			    </div>
			    
			    <div class="item">			      
			      <div class="column1-3 bordered gradient">E</div>
			      <div class="column1-3 bordered gradient">F</div>
			    </div>				    
			    		    
			  </div> 
			  <!-- <a class="left carousel-control" href="#carousel" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left"></span>
			  </a>
			  <a class="right carousel-control" href="#carousel" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right"></span>
			  </a>-->
		</div>						  
		
		<button onclick="$('#carousel').carousel('next');">Next</button>
		<div class="column1-3x lightgrey separatedTop bordered">HIJJ</div>
	</div>
</div>
</body>
<script>
	$('#carousel').carousel();
</script>
</html>