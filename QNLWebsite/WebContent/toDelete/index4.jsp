<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html dir="ltr" lang="ar">
<head>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
<script src="../scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/common.css" />
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<link rel="stylesheet" href="../css/weather.css" />
<link rel="stylesheet" href="../css/news.css" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/smoothness/jquery-ui.css" />
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
</head>
<body>
	<div class="container-fluid hMid">
		<div class="row-fluid">
			<div class="span10 offset1" style="padding-bottom: 3px">
				<form class="navbar-search pull-right" action="">
					<input type="text" class="search-query" placeholder="Search">
				</form>
			</div>
		</div>
		<div class="row-fluid">
			<div class="span10 offset1">
				<div class="navbar navbar-inverse">
					<div class="navbar-inner">
						<div class="container">
							<a class="btn btn-navbar" data-toggle="collapse"
								data-target=".navbar-responsive-collapse"> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
							</a>
							<div class="nav-collapse collapse navbar-responsive-collapse">
								<ul class="nav">
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown">About the Library<b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="#">Brochures</a></li>
											<li><a href="#">Location Maps</a></li>
											<li><a href="#">Partnerships</a></li>
											<li class="divider"></li>
											<!--<li class="nav-header">Nav header</li>-->
											<li><a href="#">Contact Us</a></li>
											<li><a href="#">Ask for Help</a></li>
										</ul></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown">Find Answers<b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="#">Online Resources</a></li>
											<li><a href="#">Search the Catalog</a></li>
											<li><a href="#">Cite your Sources</a></li>
											<li class="divider"></li>
											<!--<li class="nav-header">Nav header</li>-->
											<li><a href="#">Directory of Libraries in Qatar</a></li>
										</ul></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown">Collections<b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="#">Main Collection</a></li>
											<li><a href="#">Children's Colleciton</a></li>
											<li><a href="#">Teen Collection</a></li>
											<li><a href="#">Arab Law Collection</a></li>
											<li class="divider"></li>
											<!--<li class="nav-header">Nav header</li>-->
											<li><a href="#">Heritage Collection</a></li>
										</ul></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown">Programs and Services<b
											class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="#">Academic Programs and Services</a></li>
											<li><a href="#">Educational Programs and Services</a></li>
											<li><a href="#">Public Computer Programs and
													Services</a></li>
											<li><a href="#">Arab Law Collection</a></li>
										</ul></li>
									<li><a href="#">Library Building</a></li>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Menu end -->
		</div>
		<div class="row-fluid">			
			<div class="span10 offset1">
				<a href="">Home</a> > <a href="">MyLibrary</a>
			</div>
		</div>		
		<div class="row-fluid">			
			<div class="span2 offset1">
				<div class="accordion" id="acc">
				  <div class="accordion-group">
				    <div class="accordion-heading">
				      <a class="accordion-toggle" data-toggle="collapse" data-parent="#acc" href="#collapseOne">
				        Weather
				      </a>
				    </div>
				    <div id="collapseOne" class="accordion-body collapse in">
				      <div class="accordion-inner">
				        <t:weather></t:weather>
				      </div>
				    </div>
				  </div>
				  <div class="accordion-group">
				    <div class="accordion-heading">
				      <a class="accordion-toggle" data-toggle="collapse" data-parent="#acc" href="#collapseTwo">
				        Salah Times
				      </a>
				    </div>
				    <div id="collapseTwo" class="accordion-body collapse">
				      <div class="accordion-inner">
				        <t:salah></t:salah>
				      </div>
				    </div>
				  </div>
				  <div class="accordion-group">
				    <div class="accordion-heading">
				      <a class="accordion-toggle" data-toggle="collapse" data-parent="#acc" href="#collapseThree">
				        Top News (BBC)
				      </a>
				    </div>
				    <div id="collapseThree" class="accordion-body collapse">
				      <div class="accordion-inner">
				        <t:topNews limitNews="5" ></t:topNews>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
			<div class="span7">
				<div class="page-header">
					<h1>
						Qatar National Library <small>An initiative of the Qatar Foundation</small>
					</h1>
				</div>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Nulla et leo non nisl varius aliquet. Proin fringilla nulla sit
					amet felis venenatis ullamcorper. Quisque fermentum pretium turpis,
					et tincidunt erat adipiscing ac. In hac habitasse platea dictumst.
					Aliquam cursus turpis ac est accumsan tristique vel a lorem.
					Maecenas tincidunt magna sed velit pulvinar vitae ultricies metus
					feugiat. Aenean et augue ut quam pellentesque cursus eu vitae
					turpis. Etiam quis nunc arcu. Nam lectus sapien, gravida a suscipit
					non, porta a enim. Integer gravida, massa fringilla cursus aliquet,
					turpis nisi varius odio, non gravida lacus risus eu dui. Integer ac
					lorem ligula, quis tincidunt sapien. Nulla accumsan metus vulputate
					nibh fermentum vel auctor arcu fringilla.</p>
				<p>Mauris justo nisl, lobortis vel egestas a, consectetur et
					ipsum. In quam dolor, dictum id condimentum in, porttitor id magna.
					Cras sit amet egestas leo. Pellentesque habitant morbi tristique
					senectus et netus et malesuada fames ac turpis egestas. Lorem ipsum
					dolor sit amet, consectetur adipiscing elit. Integer nec suscipit
					sem. Integer augue ligula, commodo a aliquam at, lacinia vitae
					libero. Suspendisse placerat metus quis elit dictum sollicitudin.
					Suspendisse nisl erat, eleifend vitae malesuada sit amet, pretium
					at lacus. Sed pulvinar scelerisque vestibulum. Mauris et massa
					eros. Donec odio dolor, eleifend sit amet consectetur id, luctus in
					erat. Pellentesque id tellus lacus. Aliquam leo lacus, iaculis in
					sollicitudin non, mattis quis est. Sed porta, eros vitae porttitor
					condimentum, sem sapien cursus dolor, et pretium ligula leo sit
					amet lectus. Nulla ornare vulputate lobortis.</p>
				<p>Suspendisse non diam massa, sit amet consequat purus. Etiam
					vehicula, mauris vel molestie vulputate, lorem risus adipiscing
					dui, eget sagittis nisi nisi et ante. Nullam arcu metus, lacinia ut
					lobortis non, facilisis sit amet dui. Nullam porttitor lorem erat.
					Mauris tortor nunc, condimentum ac dictum at, ullamcorper ut orci.
					Suspendisse potenti. Maecenas placerat, sapien a ornare bibendum,
					lectus magna tempus tellus, eget cursus erat enim quis ligula.
					Proin sapien tortor, sagittis at elementum ac, hendrerit ac turpis.
					Vivamus commodo feugiat erat at dictum. Quisque viverra magna at
					lorem dignissim ornare. Aenean a turpis tellus. Vivamus posuere sem
					eget nibh congue egestas at nec nulla. Cras congue hendrerit lacus
					at dapibus. Donec eget nisi quis nisl dictum facilisis in suscipit
					magna.</p>
				<p>Phasellus in augue justo. Ut odio justo, elementum non
					pellentesque vitae, iaculis ac neque. Quisque malesuada leo vel
					justo pharetra ac imperdiet eros dapibus. Morbi massa lorem,
					vehicula vitae lacinia et, eleifend id eros. Donec id justo at
					metus aliquam blandit sit amet in augue. Nulla facilisi.
					Pellentesque pretium aliquet tristique. Aliquam non eros nulla. Nam
					in tincidunt dolor. Mauris suscipit vulputate elit, sed adipiscing
					arcu sagittis eu. Nulla nec libero lorem, sed varius libero.</p>
				<div class="well well-large">
					<h5>
						Cras hendrerit eleifend dolor eget porttitor. Class aptent taciti
						sociosqu ad litora torquent per conubia nostra, per inceptos
						himenaeos. Maecenas adipiscing rhoncus lacus, quis cursus ligula
						dapibus nec. Donec tempus nisi eget odio bibendum sed suscipit dui
						sollicitudin. In hac habitasse platea dictumst. Suspendisse vitae
						eros non lectus tincidunt congue. Donec blandit tincidunt lorem,
						in blandit sapien ultrices at. Integer dignissim eleifend diam,
						eget facilisis quam commodo nec. Sed in elit erat, vitae tristique
						lacus.
						</h3>
				</div>
				<p>Nulla sollicitudin, libero non mattis tristique, ante sapien
					faucibus orci, tincidunt bibendum quam tortor id turpis. Aliquam
					erat volutpat. Nulla et orci leo. Integer at ante quam, in rhoncus
					justo. Duis dignissim tortor arcu. Class aptent taciti sociosqu ad
					litora torquent per conubia nostra, per inceptos himenaeos. Sed
					accumsan ante quis sapien commodo eleifend. Vestibulum tincidunt
					pharetra vehicula. Fusce scelerisque venenatis libero et vulputate.</p>
				<p>Aenean sollicitudin sollicitudin dolor ut tempus. Morbi
					dapibus, velit vitae lobortis vehicula, nulla dolor ultrices risus,
					ornare venenatis lacus leo ac lorem. Morbi eget leo a nibh
					consectetur condimentum. Aenean ligula lorem, varius condimentum
					elementum vel, vehicula nec ante. Donec cursus ornare leo, ut
					gravida quam malesuada id. Vivamus in est hendrerit orci cursus
					fringilla viverra eget augue. Sed faucibus viverra justo, ac
					ultricies augue vulputate id. Integer sit amet enim sit amet magna
					pulvinar rutrum. Aenean in ipsum odio. Phasellus pharetra tempus
					felis eget malesuada. Mauris mollis elit at neque posuere a posuere
					dolor dignissim. Curabitur a ipsum sed tortor placerat tempus a sit
					amet nibh. Ut congue posuere metus non tristique. Sed eu neque
					libero, eu ullamcorper arcu. Aliquam viverra massa euismod est
					sodales egestas eleifend risus sodales. Quisque mollis nibh ut orci
					tristique sed congue tortor egestas.</p>
			</div>
		</div>
		<div class="row-fluid footer">
			<div class="span2 offset3">
				<fieldset title="About the Library">
					<legend>About the Library</legend>					
					<a href="#">Contact Us</a><br />
					<a href="#">Location Map</a><br />
					<a href="#">Sitemap</a><br />
				</fieldset>
				<fieldset title="Share">
					<legend>Share</legend>					
					<a href="#"><i class="icon-facebook icon-2x"></i></a>
					<a href="#"><i class="icon-twitter icon-2x"></i></a>
					<a href="#"><i class="icon-google-plus-sign icon-2x"></i></a>
				</fieldset>
			</div>
			<div class="span2">
				<fieldset title="Our Collections" >
					<legend>Our Collections</legend>					
					<a href="#">Main Collection</a><br />
					<a href="#">Teen Collection</a><br />
					<a href="#">Children's Collection</a><br />
				</fieldset>
			</div>
			<div class="span3">
				<fieldset title="Programs and Services">
					<legend>Programs and Services</legend>					
					<a href="#">Academic Services</a><br />
					<a href="#">Educational Services</a><br />
					<a href="#">Public Computer Services</a><br />
				</fieldset>
				<fieldset title="Sign-up for our newsletter">
					<legend>Sign up for our newsletter</legend>
					Stay up-to-date with our comprehensive newsletter				
					<div class="input-append">
						<input class="span10" id="appendedInputButton" type="email" placeholder="username@email.com">
						<button class="btn btn-inverse" type="button">Sign-up</button>
					</div>
				</fieldset>	
			</div>
		</div>
		
		<div class="row-fluid">
			<div class="span12">
				<div class="hMid copyrights">
					<small>© Copyrights reserved 2013. Qatar National Library, a member of Qatar Foundation.</small>
				</div>
			</div> 
		</div>
	</div>	
</body>
</html>