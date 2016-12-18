<?php $this->load->view('header'); ?> 
			
<div class="span9">
	
	<h1 class="page-title">
		<i class="icon-home"></i>
		Dashboard					
	</h1>
	
	<div class="stat-container">
		
		<div class="stat-holder">						
			<div class="stat">							
				<span><?php echo $jartikel; ?></span>							
				Total Artikel							
			</div> <!-- /stat -->						
		</div> <!-- /stat-holder -->
		
		<div class="stat-holder">						
			<div class="stat">							
				<span><?php echo $user->poin; ?></span>							
				Jumlah Poin							
			</div> <!-- /stat -->						
		</div> <!-- /stat-holder -->
		
	</div> <!-- /stat-container -->
	
</div> <!-- /span9 -->

<div class="row">					
	<div class="span9">
		<div class="widget">
			<div class="widget-header">
				<i class="icon-list"></i>
				<h3>Artikel Terbaru</h3>
			</div> <!-- /widget-header -->

			<div class="widget-content">
				<?php foreach($artikelbaru->result() as $ab) : ?>
				<?php 
					$fn = "";
					$temp = explode('.',$ab->image);
					for($i=0; $i<count($temp)-1; $i++)
					{
						$fn[] = $temp[$i]; 
					}
					$flnm = implode('.',$fn);
					$flnm .= '_thumb.'.$temp[count($temp)-1];
				?>
				<h3><?php echo anchor('http://www.ripiu.info/artikel/baca/'.$ab->url,$ab->judul,'target="_blank"'); ?></h3>				
				<img src="<?php echo base_url(); ?>uploads/thumb/<?php echo $flnm; ?>" class="thumbnail" style="float: left; margin-right:10px;" /><p><?php echo character_limiter(strip_tags($ab->isi),350); ?></p>
				<div style="clear: both;"></div><hr/>
				<?php endforeach; ?>
			</div> <!-- /widget-content -->			
		</div> <!-- /widget -->		
	</div> <!-- /span9 -->	
</div> <!-- /row -->
			
<?php $this->load->view('footer'); ?>