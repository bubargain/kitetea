
 
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
			$(".topics_img").height($(".topics_img_box img").height());
			$(".topics_img_box").height($(".topics_img_box img").height());
            img_hd(".topics_img_box a",".topics_img_icon a","icon_a",".prev",".next");
        });
    </script>