<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title><?php if($urnotif > 0) echo "($urnotif) "; ?><?php echo $menu ?> - Greatnesia Control Panel</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">    
    
    <link href="<?php echo base_url(); ?>css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>css/bootstrap-responsive.min.css" rel="stylesheet">
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    <link href="<?php echo base_url(); ?>css/font-awesome.css" rel="stylesheet">
    
    <link href="<?php echo base_url(); ?>css/adminia.css" rel="stylesheet"> 
    <link href="<?php echo base_url(); ?>css/adminia-responsive.css" rel="stylesheet"> 
    
    <link href="<?php echo base_url(); ?>css/pages/dashboard.css" rel="stylesheet">    

    <link href="<?php echo base_url(); ?>css/dropzone.css" rel="stylesheet">

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
      
	<ul class="nav pull-right">
	  <?php if($urnotif > 0) : ?>
	  <li class="divider-vertical"></li>
	  <li>
	    <a href="<?php echo site_url('ucp/notif'); ?>"><span class="badge badge-warning"><?php echo $urnotif; ?></span></a>
	  </li>	  
	  <li class="divider-vertical"></li>
	  <?php endif; ?>
	  
	  <li class="dropdown">
		  
	    <a data-toggle="dropdown" class="dropdown-toggle " href="#">
		    <?php echo $user->nama; ?> <b class="caret"></b>							
	    </a>
	    
	    <ul class="dropdown-menu">
		    <li>
			<a href="<?php echo site_url('ucp/profil'); ?>"><i class="icon-user"></i> Profil  </a>
		    </li>
		    
		    <li class="divider"></li>
		    
		    <li>
			    <a href="<?php echo site_url('ucp/login/out'); ?>"><i class="icon-off"></i> Logout</a>
		    </li>
	    </ul>
	  </li>
	</ul>
	      
      </div> <!-- /nav-collapse -->
	    
    </div> <!-- /container -->
	  
  </div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->

<div id="content">
	
  <div class="container">
	  
    <div class="row">
	    
      <div class="span3">
	      
	<div class="account-container">
	
	  <div class="account-avatar">
	    <?php if(trim($user->avatar) != '') : ?>
	      <img src="<?php echo base_url().'uploads/avatar/'.$user->avatar; ?>" alt="" class="thumbnail" />
	    <?php else : ?>
	      <img src="<?php echo base_url().'img/user.png'; ?>" alt="" class="thumbnail" />
	    <?php endif; ?>
	  </div> <!-- /account-avatar -->
  
	  <div class="account-details">
	  
	    <span class="account-name"><?php echo $user->nama; ?></span>
	    
	    <span class="account-actions">
		    <a href="<?php echo site_url('ucp/profil'); ?>">Profil</a> |							
		    <a href="<?php echo site_url('ucp/login/out'); ?>">Logout</a>
	    </span>
	  
	  </div> <!-- /account-details -->
	
	</div> <!-- /account-container -->
	
	<hr />
	
	<ul id="main-nav" class="nav nav-tabs nav-stacked">
		
		<li <?php if($menu == 'Home') echo 'class="active"'; ?>>
		  <a href="<?php echo site_url('ucp/home'); ?>">
			  <i class="icon-home"></i>
			  Dashboard 		
		  </a>
		</li>

		<li <?php if($menu == 'Notifikasi') echo 'class="active"'; ?>>
		  <a href="<?php echo site_url('ucp/notif'); ?>">
			  <i class="icon-comment"></i>
			  Notifikasi	
			  <?php if($urnotif > 0) : ?><span class="label label-warning pull-right"><?php echo $urnotif; ?></span><?php endif; ?>
		  </a>
		</li>		
	</ul>		
	<hr />

	<ul id="main-nav" class="nav nav-tabs nav-stacked">
		<li <?php if($menu == 'Artikel') echo 'class="active"'; ?>>
		  <a href="<?php echo site_url('ucp/artikel'); ?>">
			  <i class="icon-book"></i>
			  Artikel	
		  </a>
		</li>
		<li <?php if($menu == 'Gambar') echo 'class="active"'; ?>>
		  <a href="<?php echo site_url('ucp/gambar'); ?>">
			  <i class="icon-picture"></i>
			  Gambar	
		  </a>
		</li>
	</ul>
	<hr/>
	
	<ul id="main-nav" class="nav nav-tabs nav-stacked">	  
	  <li <?php if($menu == 'Poin') echo 'class="active"'; ?>>
		  <a href="<?php echo site_url('ucp/poin'); ?>">
			  <i class="icon-time"></i>
			  Poin
		  </a>
	  </li>	
	  <li <?php if($menu == 'Bantuan') echo 'class="active"'; ?>>
		  <a href="<?php echo site_url('ucp/help'); ?>">
			  <i class="icon-question-sign"></i>
			  Bantuan	
		  </a>
	  </li>
	  	  
	  <li>
		  <a href="<?php echo site_url('ucp/login/out'); ?>">
			  <i class="icon-off"></i>
			  Logout	
		  </a>
	  </li>
		
	</ul>	
	
	<hr />
	
	<div class="sidebar-extra">
		<p>Greatnesia, Informasi positif dari masyarakat untuk Indonesia Hebat!</p>
	</div> <!-- .sidebar-extra -->
	
	<br />

      </div> <!-- /span3 -->