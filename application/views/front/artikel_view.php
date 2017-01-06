<?php $this->load->view('front/header'); ?>

<!-- Page heading -->
  <!-- Give background color class on below line (bred, bgreen, borange, bviolet, blightblue, bblue) -->
  <div class="page-heading blightblue">
    <div class="container">
      <div class="row">
        <div class="span12">
          <h2 class="pull-left"><i class="icon-pencil title-icon"></i> Artikel</h2>
          <div class="pull-right heading-meta">Pesona Indonesia<span class="lightblue"> Zamrud Khatulistiwa</span></div>
        </div>
      </div>
    </div>
  </div>
  <!-- Page heading ends -->

  <!-- Content starts -->
  <div class="content">
    <div class="container">

      <div class="blog">
         <div class="row">
            <div class="span12">               
               <!-- Blog Posts -->
               <div class="row">
                  <div class="span8">
                     <div class="posts"> 
                        <div class="entry">
                           <h2><?php echo $artikel->judul; ?></h2>
                           
                           <!-- Meta details -->
                           <div class="meta">
                              <i class="icon-calendar"></i><?php echo date('d M Y',strtotime($artikel->tgl_dibuat)); ?><i class="icon-user"></i> <?php echo $artikel->creator; ?> <i class="icon-folder-open"></i> <a href="#"><?php echo $artikel->nama; ?></a>
                           </div>
                           
                           <?php if($artikel->image != '') : ?>
                           <!-- Thumbnail -->
                           <div class="bthumb2">
                              <img src="<?php echo base_url('uploads/crop/'.$artikel->image); ?>" alt="<?php echo $artikel->judul; ?>" />
                           </div>
                           <?php endif; ?>
                           
                           <?php echo $artikel->isi; ?>
                           <div class="clearfix"></div>
                        </div>
                        
                        <div class="clearfix"></div>
                        
                     </div>
                  </div>                        

<?php $this->load->view('front/sidebar'); ?>

               </div>
            </div>
         </div>
      </div>
    </div>
  </div>
  <!-- Content ends -->

<!-- Footer -->

<!-- Below area is for Testimonial -->
<div class="foot blightblue">
  <div class="container">
    <div class="row">
      <div class="span12">          
          <!-- User icon -->
          <span class="twitter-icon text-center"><i class="icon-user"></i></span>
          <p><em>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum dolor eget nisi <br />fermentum quis hendrerit magna vestibulum."</em></p>        
      </div>
    </div>
  </div>
</div>

<?php $this->load->view('front/footer'); ?>