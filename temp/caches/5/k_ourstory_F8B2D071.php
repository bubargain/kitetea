<?php exit;?>a:3:{s:8:"template";a:3:{i:0;s:45:"F:/website/kite/themes/default/k_ourstory.dwt";i:1;s:56:"F:/website/kite/themes/default/library/k_page_header.lbi";i:2;s:54:"F:/website/kite/themes/default/library/page_footer.lbi";}s:7:"expires";i:1395743378;s:8:"maketime";i:1395739778;}<!DOCTYPE HTML>
<html>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta charset="utf-8">
<link rel="shortcut icon" href="themes/default/images/favicon.jpg"/>
<title>KITE's Story</title>
<link href="themes/default/css/style.css" rel="stylesheet" type="text/css" />
<link href="themes/default/css/ourStory.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div>
        
        
        <div id="header">
        	<nav>
                <a href="products.php" id="link_products" ><span>Products</span></a>
                <a href="auto_refill.php" id="link_autorefill" ><span>Auto-Refill</span></a>
                <a href="ourstory.php" id="link_ourstory"><span>Our Story</span></a>
                <a href="index.php" id="link_index" class="logo"><img src="themes/default/images/index_02.jpg" width="83" height="157"></a>
                <a href="charity.php" id="link_charity"><span>Alleviate Poverty</span></a>
                <a href="http://localhost/wp" id="link_magazine"><span>Magazine</span></a>
                <a href="help.php" id="link_help"><span>Help</span></a>
            </nav>
            <div class="nav-line"></div>
            <input type="hidden" id="hpage" value="ourstory" />
        </div>
       
        
        
        <div id="content" class="ousStory">
        	<div class="ousStory_banner"><img src="themes/default/images/ourStory_02.jpg" width="100%"></div>
            <div class="ousStory_font">No matter how far you fly away,look back we will be there always.</div>
        	<div class="hr2"></div>
            <div class="ousStory_div1">
                <div class="l"></div>
                <div class="r">
                    <h2>Predominant taste from tea<br> homeland</h2>
                    <p>With flavor, quality, fragrant and taste as our priority, Kite Tea has always given its customers the best tea in terms of quality and taste. China is famous for its Tea products and Kite Tea surely provides you with the best of tea products.<br>
We specially invite experts to search Tealeaves with superior quality in order to produce first class tea. </p>
                </div>
            </div>
            <div class="ousStory_div2">
                <div class="l">
                    <h2>The flavor of Refreshment<br> and Life</h2>
                    <p>Giving you the best unforgettable tea time and time again is what Kite Tea does!<br>We believe that the taste and fun of life escalates when you start sharing. We bring the traditional Chinese culture together with an amalgam of taste, purity and quality in Kite Tea. So, chatting with your friends, sharing life with your loved ones or attending a business meeting, Kite Tea helps you in forgetting all the tensions and let you enjoy every moment of life.</p>
                </div>
                <div class="r"></div>
            </div>
            <div class="ousStory_div3">
                <div class="l"></div>
                <div class="r">
                    <h2>The special messenger of Daoism<br> Culture in China</h2>
                    <p>In the time before Daoism was formed, tea was already inextricably connected with Daoist thoughts. Both Daoism and tea share the same essence, the unity of man and nature, which is also the fundamental objective of Kite Tea. <br>
Applying to modern life, the fast-paced environment often pushes stresses on you, who desire a balance between tension and relaxation. Kite Tea shows up and provides you the time to enjoy a cup of time with a peaceful heart, to relax the body in the intervals of heavy works. </p>
                </div>
            </div>
            <div class="con_div ousStory_div4">Kite Tea brings you the remarkable aroma and flavor, as well as a peaceful mind to taste that flavor. Nevertheless, this balance indicates the Daoistic idea of the unity of man and nature--that to relax your heart and mind to feel the nature. </div>
        </div>
        
        
    </div>
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script><script type="text/javascript" src="js/kite_common.js"></script>    
        
 
        <div id="footer">
        	<div class="con_div footer_div">
            	<div class="l footer_prod">
                	<h3>PRODUCTS</h3>
                    <a href="products.php">Our Tea</a>
                   
                </div>
                <div class="l footer_expl">
                	<h3>EXPLORE</h3>
                    <a href="javascript:void(0)">Our Story</a>
                    <a href="javascript:void(0)">Help Farmers</a>
                    <a href="javascript:void(0)">Magazine</a>
                </div>
                <div class="l footer_mail">
                	<h3>We love hearing from you</h3>
                    <span> contact@KiteTea.com</span>
                </div>
                <div class="l friends">
                	<h3>Let's be friends</h3>
                    <p><a href="javascript:void(0)"><img src="themes/default/images/index_23.jpg" width="52" height="54"></a><a href="javascript:void(0)"><img src="themes/default/images/index_25.jpg" width="52" height="54"></a></p>
                </div>
            </div>
            <div class="hr"></div>
            <div class="footer_usa">
            	<span class="l">© KiteTea. All Rights Reserved. 2012 - 2014 </span>
                <span class="r">京ICP备13021991号-2,CHINA</span>
            </div>
        </div>
    	
</div>
<script type="text/javascript">
        $(document).ready(function() {
			var nav = $('#header nav'),
			navLine = $('.nav-line');
			var curPosL = $('#header nav a').position().left+30;
			var curW = $('#header nav a:first span').outerWidth(true);
			navLine.css({'width':curW,'left':curPosL});
			$('#header nav a').not(":eq(3)").hover(function(){
				var posL = $(this).position().left+30,
				w = $(this).find("span").outerWidth(true);
				navLine.animate({'width':w,'left':posL},250);
			});
            img_hd(".topics_img_box a",".topics_img_icon a","icon_a",".prev",".next");
        });
		jQuery.fn.LoadImage=function(scaling,loadpic){ 
			return this.each(function(){ 
				var t=$(this); 
				var src=$(this).attr("src");
				var img=new Image(); 
				img.src=src; 
				$(".topics_img").height($(this).height());
				$(".topics_img_box").height($(this).height());
			}); 
		}
		$(".topics_img_box img").LoadImage(true);
    </script>
    	
</body>
</html>
