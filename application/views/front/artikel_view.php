<?php $this->load->view('front/header'); ?>

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
                           <h2><i class="icon-pencil title-icon"></i><?php echo $artikel->judul; ?></h2>
                           
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