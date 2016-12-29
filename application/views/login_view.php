<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Greatnesia.com</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">    
    
    <link href="<?php echo base_url(); ?>css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>css/bootstrap-responsive.min.css" rel="stylesheet">
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    <link href="<?php echo base_url(); ?>css/font-awesome.css" rel="stylesheet">
    
    <link href="<?php echo base_url(); ?>css/adminia.css" rel="stylesheet"> 
    <link href="<?php echo base_url(); ?>css/adminia-responsive.css" rel="stylesheet"> 
    
    <link href="<?php echo base_url(); ?>css/pages/login.css" rel="stylesheet">    

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	
  </head>

<body>
	
<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 				
			</a>
			
			<a class="brand" href="http://www.greatnesia.com">Greatnesia</a>
			<div class="nav-collapse">
			<!--
				<ul class="nav pull-left">
					<li class="divider-vertical"></li>
					<li><a href="http://www.ripiu.com" title="Ripiu.com - Ulasan Produk dan Panduan Belanja">Produk</a></li>
					<li class="divider-vertical"></li>
					<li><a href="http://www.ripiu.net" title="Ripiu.net - Ulasan Website">Website</a></li>
					<li class="divider-vertical"></li>
					<li><a href="http://www.ripiu.info" title="Ripiu.info - Sumber Informasi dan Pengetahuan">Informasi</a></li>
					<li class="divider-vertical"></li>
					<li><a href="http://www.ripiu.travel" title="Ripiu.travel - Ulasan dan Panduan Tempat Wisata">Wisata</a></li>
					<li class="divider-vertical"></li>
				</ul>
			-->
				
				<ul class="nav pull-right">
					
					<li class="">
						
						<a href="http://www.ripiu.com"><i class="icon-chevron-left"></i> Back to Homepage</a>
					</li>
				</ul>

			</div> <!-- /nav-collapse -->
			
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->

<div id="login-container">
	
	<?php if(isset($error)) : ?>
	<div class="alert alert-danger" align="center">
		<strong>Error : </strong><?php echo $error; ?>
	</div>
	<?php endif; ?>
	
	<div id="login-header">
		
		<h3>Login</h3>
		
	</div> <!-- /login-header -->
	
	<div id="login-content" class="clearfix">
	
		<?php echo form_open('ucp/login/proses'); ?>
			<fieldset>
				<div class="control-group">
					<label class="control-label" for="username">Username</label>
					<div class="controls">
						<input type="text" class="" id="username" name="username" placeholder="Username" required>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="password">Password</label>
					<div class="controls">
						<input type="password" class="" id="password" name="password" placeholder="Password" required>
					</div>
				</div>
			</fieldset>
			
			<div class="pull-right">
				<input class="btn btn-warning btn-large" type="submit" name="login" value="Login" style="width: 80px; height: 40px;" />
			</div>
		<?php echo form_close(); ?>
		
	</div> <!-- /login-content -->
		
		
	<div id="login-extra">			
		<p>Belum punya Akun ? <a href="<?php echo site_url('daftar'); ?>">Daftar disini.</a></p>						
	</div> <!-- /login-extra -->
	
</div> <!-- /login-wrapper -->

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="./js/jquery-1.7.2.min.js"></script>


<script src="./js/bootstrap.js"></script>

  </body>
</html>
