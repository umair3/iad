<div class="content">
		
	<!-- Intro -->
		
				<div class="in author">
					<h2>List Persons</h2>
				</div>
			
				<div class="line"></div>
				
	<!-- Checks -->
	
			<!--<div class="check_main">
					
				<div class="check">
					<div class="good"><img src="Ninja%20Admin_files/check.gif" alt="check" class="icon">Nice work <strong>Ninja Admin!</strong></div>
				</div>
				<div class="check">
					<div class="bad"><img src="Ninja%20Admin_files/x.gif" alt="check" class="icon">You need more training, please <a href="#">try again</a>.</div>
				</div>
				
			</div>-->

	<div class="in">			
		<table class="table_main" border="0" cellpadding="10" cellspacing="0" width="850">
		  <thead><tr style="background-color:#d9d8d8; font-size:14px;">
			<th width="50"><strong>ID</strong></td>
			<th width="400"><strong>NAME</strong></td>
			<th width="50"><strong>COUNTRY</strong></td>
			<th width="100"><strong>THUMBNAIL</strong></td>
			<th width="200"><strong>ACTION</strong></td>
		  </tr>
		  </thead>
		  <tbody>
		  <?php 
		  if ($persons_num_rows > 0) {
		  	$count = 0;
		  	foreach ($persons as $person) {
		  		$row_class = ($count%2==0)?'class="gray"':''; 
		  ?>
		  <tr <?=$row_class;?>>
			<td><?=$person->id;?></td>
			<td><?=$person->persons_first_name;?> <?=$person->persons_middle_name;?> <?=$person->persons_last_name;?></td>
			<td><?=$person->persons_country;?></td>
			<td><img src="/uploads/<?=$person->persons_image;?>" alt="thumbnail" width="50" height="50" /></td>
			<td><a href="#">EDIT  </a><span class="v_line">| </span> <a href="#" class="delete">DELETE </a></td>
		  </tr>
		  <?php 
		  	}
		  } else {
		  ?>
		  <tr>
			<td colspan="5">No record to show.</td>
		  </tr>
		  <? } ?>

		</tbody></table>
						
	</div>
		
		</div>