<div class="content">
		
	<!-- Intro -->
		
				<div class="in author">
					<h2>Add Person</h2>
				</div>
			
				<div class="line"></div>
				
	<!-- Checks -->
	
			<div class="check_main">
			
				<?php if (isset($success) && $success != '') { ?>	
				<div class="check">
					<div class="good"><img src="<?=base_url('admin_assets/check.gif');?>" alt="check" class="icon"><?=$success;?></div>
				</div>
				<? } ?>
				
				<?php if (function_exists('validation_errors') || (isset($error) && $error != '')) { ?>
				<div class="check">
					<div class="bad"><img src="<?=base_url('admin_assets/x.gif');?>" alt="check" class="icon">Please fix the errors;
					<br/>
					<?php 
					if (function_exists('validation_errors')) {
						echo validation_errors();
						
					}
					if (isset($error) && $error != '') {
						echo $error;
					}
					?>
					</div>
				</div>
				<? } ?>
				
			</div>
			
	<!-- Form -->
			
				<div class="in forms">
					<form id="form1" name="form1" method="post" action="" enctype="multipart/form-data">
	
      				<p><strong>First name</strong><br>
					<input name="first_name" class="box" type="text"></p>
					
      				<p><strong>Middle name</strong><br>
					<input name="middle_name" class="box" type="text"></p>
					
      				<p><strong>Last name</strong><br>
					<input name="last_name" class="box" type="text"></p>
					 
	  				<p><strong>Country</strong><br>
							<select name="country" class="box2">
						<? foreach($countries as $country) { ?>
        					<option value="<?=$country->countries_code;?>"><?=$country->countries_name;?></option>
						<? } ?>
					  </select></p>
					  
					<p><strong>Account</strong><br>
					<div id="accounts_html">
					
					  <select name="account_type1" class="box2" style="width:200px">
						<? foreach($account_types as $type) { ?>
        					<option value="<?=$type->type_id;?>"><?=$type->type_title;?></option>
						<? } ?>
					  </select>
					  <input name="account_title1" class="box" style="width:400px" type="text">
					  <input type="hidden" name="account_row[]" value="1" />
					</div>
					  
					</p>
					<a href="javascript:void(0)" onClick="addAccount()">Add Account</a>
	  				<p><strong>Description</strong><br>
					<textarea name="desc" rows="5" cols="30" class="box"></textarea></p> 

					<p><strong>Image</strong><br>
					<input name="image" class="box" type="file"></p>

					<p><input name="submit" id="submit" tabindex="5" class="com_btn" value="SAVE" type="submit"></p>
					</form>
			
				</div>

</div>
<script type="text/javascript">
var count = 1;
function addAccount()
{
	var new_count = count+1;
	
	//document.getElementById('accounts_html').appendChild('')
	
	document.getElementById('accounts_html').innerHTML = document.getElementById('accounts_html').innerHTML + '<br/><select name="account_type'+new_count+'" class="box2" style="width:200px"><? foreach($account_types as $type) { ?><option value="<?=$type->type_id;?>"><?=$type->type_title;?></option><? } ?></select> <input name="account_title'+new_count+'" class="box" style="width:400px" type="text"> <input type="hidden" name="account_row[]" value="'+new_count+'" />';
	
}
</script>