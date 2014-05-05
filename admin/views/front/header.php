<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=WINDOWS-1252" >
<title>Original Accounts Admin Panel</title>
<link rel="stylesheet" type="text/css" href="<?=base_url('admin_assets/main.css');?>">
</head>

<body>

	<div class="wrapper">
	
		<h1 class="logo">ORIGINAL ACCOUNTS ADMIN</h1>
		<p class="txt_right">Logged in as <strong>admin</strong>  <span class="v_line"> | </span> <a href="#"> Logout</a></p>
	
	<!-- Navigation -->
	
		<div class="navigation">
				<ul>
					<li><a href="add">ADD</a></li>
					<li><a href="index" class="active">MANAGE</a></li>
					<li><a href="#l">SETTINGS</a></li>
					<li><a href="#">USERS</a></li>
				</ul>
			
				<div id="searchform">
					<form method="get" action="">
					<input class="search_box" name="search" onclick="this.value='';" type="text">
					<input class="search_btn" value="SEARCH" type="submit">
					</form>
				</div>
			
		</div>
		
		<div class="clear"></div>
	
	