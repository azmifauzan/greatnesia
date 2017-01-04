<?php $this->load->view('front/header'); ?>

  <!-- Page heading -->
  <!-- Give background color class on below line (bred, bgreen, borange, bviolet, blightblue, bblue) -->
  <div class="page-heading blightblue">
    <div class="container">
      <div class="row">
        <div class="span12">
          <h2 class="pull-left"><i class="icon-flag title-icon"></i> Pesona Indonesia</h2>
          <div class="pull-right heading-meta">Zamrud <span class="lightblue">Khatulistiwa</span></div>
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
                        <!-- Each posts should be enclosed inside "entry" class" -->
                        <!-- Post one -->
                        <?php if($artikel->num_rows() > 0) : ?>
                        <?php foreach($artikel->result() as $ar) : ?>
                        <div class="entry">
                           <h2><i class="icon-pencil title-icon"></i> <a href="<?php echo site_url('artikel/baca/'.$ar->artikel_id.'/'.$ar->url); ?>"><?php echo $ar->judul; ?></a></h2>
                           
                           <!-- Meta details -->
                           <div class="meta">
                              <i class="icon-calendar"></i><?php echo date('d M Y',strtotime($ar->tgl_dibuat)); ?><i class="icon-user"></i> <?php echo $ar->creator; ?> <i class="icon-folder-open"></i> <a href="#"><?php echo $ar->nama; ?></a>
                           </div>
                           
                           <?php if($ar->image != '') : ?>
                           <!-- Thumbnail -->
                           <div class="bthumb2">
                              <img src="<?php echo base_url('uploads/crop/'.$ar->image); ?>" alt="<?php echo $ar->judul; ?>" />
                           </div>
                           <?php endif; ?>
                           
                           <?php echo word_limiter($ar->isi,120); ?>
                           <br/><a href="<?php echo site_url('artikel/baca/'.$ar->artikel_id.'/'.$ar->url); ?>" class="btn btn-info">Baca Lebih Lanjut...</a>
                           <div class="clearfix"></div>
                        </div>
                        <?php endforeach; ?>
                        <?php endif; ?>                        
                        
                        <!-- Pagination -->
                        <?php echo $this->pagination->create_links(); ?>
                        
                        <div class="clearfix"></div>
                        
                     </div>
                  </div>                        
                  <div class="span4">
                     <div class="sidebar">
                        <!-- Widget -->
                        <div class="widget">
                           <h4>Pencarian</h4>
                           <form method="get" id="searchform" action="#" class="form-search">
                              <input type="text" value="" name="s" id="s" class="input-medium" placeholder="kata kunci" />
                              <button type="submit" class="btn">Search</button>
                           </form>
                        </div>
                      </div>
                     <div class="sidebar">
                        <!-- Widget -->
                        <div class="widget">
                           <h4>Tulisan Lainnya</h4>
                           <ul>
                              <?php if($lain->num_rows() > 0) : ?>
                              <?php foreach($lain->result() as $ln) : ?>
                                <li><a href="<?php echo site_url('artikel/baca/'.$ln->artikel_id.'/'.$ln->url); ?>"><?php echo $ln->judul; ?></a></li>
                              <?php endforeach; ?>
                              <?php endif; ?>
                           </ul>
                        </div>                                                  
                     </div>                                                
                  </div>
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