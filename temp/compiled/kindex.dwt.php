<!DOCTYPE HTML>
<html>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta charset="utf-8">
<title>KITE index</title>
<link href="<?php echo $this->_var['ecs_css_path']; ?>/style.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>/index.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.topics_img .prev{background:url(themes/default/images/left1.png);left:5%}
.topics_img .next{background:url(themes/default/images/right1.png);right:5%}
.topics_img .prev:hover{background:url(themes/default/images/left.png);width:35px;height:63px}
.topics_img .next:hover{background:url(themes/default/images/right.png);width:35px;height:63px}
</style>
</head>

<body>
	<div>
        <?php echo $this->fetch('library/k_page_header.lbi'); ?>
        
        <div id="content">
        	<div class="hr2"></div>
        	<div class="topics_img">
            	<a href="javascript:void(0)" class="prev"></a><a href="javascript:void(0)" class="next"></a>
                <div class="topics_img_box">
                    <a  target="_blank"><span class="imt_predo"><em>Predominant Taste From Tea Homeland</em></span></a>
                    <a target="_blank"></a>
                    <a  target="_blank"></a>
                </div>
                <div class="topics_img_icon"><a href="javascript:void(0)" target="_blank"></a><a href="javascript:void(0)" target="_blank"></a><a href="javascript:void(0)" target="_blank"></a></div>
            </div>
            <div class="index_con">
            	<div class="hr3"></div>
                <div class="con_div">
                    <div class="featured more2">
                        <h2>FEATURED PRODUCTS</h2>
                        <section class="grid">
                            <div class="col">
								
                                <a href="javascript:void(0)">
                                    <img src="themes/default/images/index_06.jpg" width="240" height="240">
                                    <div class="color_div"><span class="color1"></span></div>
                                    <h3>BLACK TEA</h3>
                                    <p class="price">$15.00</p>
                                </a>
                            </div>
                            <div class="col">
								
                                <a href="javascript:void(0)">
                                    <img src="themes/default/images/index_07.jpg" width="240" height="240">
                                    <div class="color_div"><span class="color2"></span></div>
                                    <h3>GREEN TEA</h3>
                                    <p class="price">$15.00</p>
                                </a>
                            </div>
                            <div class="col">
								
                                <a href="javascript:void(0)">
                                    <img src="themes/default/images/index_07.jpg" width="240" height="240">
                                    <div class="color_div"><span class="color3"></span></div>
                                    <h3>PUER TEA</h3>
                                    <p class="price">$15.00</p>
                                </a>
                            </div>
                            <div class="col col_last">
								
                                <a href="javascript:void(0)">
                                    <img src="themes/default/images/index_07.jpg" width="240" height="240">
                                    <div class="color_div"><span class="color4"></span></div>
                                    <h3>WHITE TEA</h3>
                                    <p class="price">$15.00</p>
                                </a>
                            </div>
                        </section>
                        <div class="btn_div"><a href="javascript:void(0)" class="btn">SEE ALL PRODUCTS</a></div>
                    </div>
                    <div class="featured more">
                        <h2>MORE FROM KITE TEA</h2>
                        <section class="grid">
                            <div class="col">
                                <a href="javascript:void(0)">
                                    <img src="themes/default/images/index_13.jpg" width="360" height="360">
                                    <h3>FIND A STORE</h3>
                                </a>
                            </div>
                            <div class="col">
                                <a href="javascript:void(0)">
                                    <img src="themes/default/images/index_15.jpg" width="360" height="360">
                                    <h3>GIVE A GIFT CARD</h3>
                                </a>
                            </div>
                            <div class="col col_last">
                                <a href="javascript:void(0)">
                                    <img src="themes/default/images/index_17.jpg" width="360" height="360">
                                    <h3>BROWSE THE BLOGS</h3>
                                </a>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
        
        
       <?php echo $this->fetch('library/page_footer.lbi'); ?>
       
    
<?php echo $this->smarty_insert_scripts(array('files'=>'jquery-1.7.2.min.js,scroll.js')); ?>
    <script type="text/javascript">
        $(document).ready(function() {
			var imglist=['themes/default/images/banner_02.jpg','themes/default/images/banner_02.jpg','themes/default/images/banner_02.jpg'];
			var q_img=$(".topics_img_box a");
			for (var i=0;i<q_img.length;i++){
           		q_img.eq(i).css("background-image","url("+imglist[i]+")");
       		}
            img_hd(".topics_img_box a",".topics_img_icon a","icon_a",".prev",".next");
        });
    </script>
</body>
</html>
