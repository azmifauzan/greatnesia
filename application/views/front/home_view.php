<?php $this->load->view('front/header'); ?>

  <!-- Page heading -->
  <!-- Give background color class on below line (bred, bgreen, borange, bviolet, blightblue, bblue) -->
  <div class="page-heading blightblue">
    <div class="container">
      <div class="row">
        <div class="span12">
          <h2 class="pull-left"><i class="icon-flag title-icon"></i> Pesona Indonesia</h2>
          <div class="pull-right heading-meta">Macan <span class="lightblue">Asia & Dunia</span>.</div>
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
                           <h2><i class="icon-pencil title-icon"></i> <a href="#"><?php echo $ar->judul; ?></a></h2>
                           
                           <!-- Meta details -->
                           <div class="meta">
                              <i class="icon-calendar"></i><?php echo date('d M Y',strtotime($ar->tgl_dibuat)); ?><i class="icon-user"></i> <?php echo $ar->creator; ?> <i class="icon-folder-open"></i> <a href="#"><?php echo $ar->nama; ?></a>
                           </div>
                           
                           <?php if($ar->image != '') : ?>
                           <!-- Thumbnail -->
                           <div class="bthumb2">
                              <img src="<?php echo $ar->image; ?>" alt="<?php echo $ar->judul; ?>" />
                           </div>
                           <?php endif; ?>
                           
                           <?php echo word_limitter($ar->isi,100); ?>
                           <a href="#" class="btn btn-info">Read More...</a>
                           <div class="clearfix"></div>
                        </div>
                        <?php endforeach; ?>
                        <?php endif; ?>                        
                        
                        <!-- Pagination -->
                        <div class="paging">
                           <span class='current'>1</span>
                           <a href='#'>2</a>
                           <span class="dots">&hellip;</span>
                           <a href='#'>6</a>
                           <a href="#">Next</a>
                        </div> 
                        
                        <div class="clearfix"></div>
                        
                     </div>
                  </div>                        
                  <div class="span4">
                     <div class="sidebar">
                        <!-- Widget -->
                        <div class="widget">
                           <h4>Search</h4>
                           <form method="get" id="searchform" action="#" class="form-search">
                              <input type="text" value="" name="s" id="s" class="input-medium"/>
                              <button type="submit" class="btn">Search</button>
                           </form>
                        </div>
                        <div class="widget">
                           <h4>Recent Posts</h4>
                           <ul>
                              <li><a href="#">Sed eu leo orci, condimentum gravida metus</a></li>
                              <li><a href="#">Etiam at nulla ipsum, in rhoncus purus</a></li>
                              <li><a href="#">Fusce vel magna faucibus felis dapibus facilisis</a></li>
                              <li><a href="#">Vivamus scelerisque dui in massa</a></li>
                              <li><a href="#">Pellentesque eget adipiscing dui semper</a></li>
                           </ul>
                        </div>
                        <div class="widget">
                           <h4>About</h4>
                           <p>Nulla facilisi. Sed justo dui, id erat. Morbi auctor adipiscing tempor. Phasellus condimentum rutrum aliquet. Quisque eu consectetur erat. Proin rutrum, erat eget posuere semper, <em>arcu mauris posuere tortor</em>,velit at <a href="#">magna sollicitudin cursus</a> ac ultrices magna. Aliquam consequat, purus vitae auctor ullamcorper, sem velit convallis quam, a pharetra justo nunc et mauris. </p>
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