<?php $this->load->view('admin/header'); ?> 
			
<div class="span9">
	
	<h1 class="page-title">
		<i class="icon-time"></i>
		Poin					
	</h1>
	
	<div class="stat-container">
		
		<div class="stat-holder">						
			<div class="stat">							
				<span><?php echo $totpengajuan; ?></span>							
				<?php echo anchor('adminpanel/poin/all','Total Penukaran Poin'); ?>						
			</div> <!-- /stat -->						
		</div> <!-- /stat-holder -->
		
		<div class="stat-holder">						
			<div class="stat">							
				<span><?php echo $jumpengajuan; ?></span>							
				<?php echo anchor('adminpanel/poin','Pengajuan Penukaran poin'); ?>							
			</div> <!-- /stat -->						
		</div> <!-- /stat-holder -->

		<div class="stat-holder">						
			<div class="stat">							
				<span><?php echo $jumbarpoin; ?></span>							
				<?php echo anchor('adminpanel/barangpoin','Barang Tukar Poin'); ?>							
			</div> <!-- /stat -->						
		</div> <!-- /stat-holder -->
		
	</div> <!-- /stat-container -->
	
</div> <!-- /span9 -->

<div class="row">					
	<div class="span9">
		<div class="widget">
			<div class="widget-header">
				<i class="icon-folder-open"></i>
				<h3>Verifikasi Penukaran</h3>
			</div> <!-- /widget-header -->

			<div class="widget-content">
				
			</div> <!-- /widget-header -->

					
		</div> <!-- /widget -->		
	</div> <!-- /span9 -->	
</div> <!-- /row -->
			
<?php $this->load->view('admin/footer'); ?>