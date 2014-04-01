<?php exit;?>a:3:{s:8:"template";a:3:{i:0;s:45:"F:/website/kite/themes/default/k_products.dwt";i:1;s:56:"F:/website/kite/themes/default/library/k_page_header.lbi";i:2;s:54:"F:/website/kite/themes/default/library/page_footer.lbi";}s:7:"expires";i:1395725207;s:8:"maketime";i:1395721607;}<!DOCTYPE HTML>
<html>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta charset="utf-8">
<link rel="shortcut icon" href="themes/default/images/favicon.jpg"/>
<title>KITE AUTO-BLEND TEA - your own script!</title>
<meta name="Keywords" content="ECSHOP Demo site" />
<meta name="Description" content="ECSHOP Demo site" />
<link href="themes/default/css/style.css" rel="stylesheet" type="text/css" />
<link href="themes/default/css/products.css" rel="stylesheet" type="text/css"  />
 <script type="text/javascript" src="js/scale.js"></script><script type="text/javascript" src="js/scroll.js"></script>  <script type="text/javascript">
		function setTeaId(goodsId)
		{
			$('#tea_id').val(goodsId);
		}
		
		function doSubmit()
		{
				if($('#tea_id').val())
				{
				
					Ajax.call('flow.php?step=clear', null , null , 'POST', 'JSON');
					
					var teaId= $('#tea_id').val();
					addToCart(teaId);
										
      				  										
      				  										
      				  										
      				  										
      				  					   if(parseInt($('#ingre5').html()) >10)
							addToCart(5,0,parseInt($('#ingre5').html())/10);
					  										
      				  					   if(parseInt($('#ingre6').html()) >10)
							addToCart(6,0,parseInt($('#ingre6').html())/10);
					  										
      				  					   if(parseInt($('#ingre7').html()) >10)
							addToCart(7,0,parseInt($('#ingre7').html())/10);
					  										
				}
				else
				{
					alert('You havnt choosed yet!');
				}
			
		}
		</script>
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
            <input type="hidden" id="hpage" value="products" />
        </div>
       
        
        
        <div id="content">
        	<div class="hr2"></div>
            <div class="con_div products_div">
         
            	<div class="products_btndiv">
                	<h2>- 1. Choose popular recipe or blend by yourself -</h2>
                	<div><a href="javascript:void(0)" class="btn products_btn1">START DIY</a>
                    or
                    <a href="javascript:void(0)" class="btn products_btn2">EARL GREY</a><a href="javascript:void(0)" class="btn  products_btn3">Daniel's </a><a href="javascript:void(0)" class="btn  products_btn4">Callie's</a><a href="javascript:void(0)" class="btn  products_btn5">Andrey's</a></div>
                </div>
                <div class="featured products_div3">
                	<h2>- 2. Choose category of tea you like -</h2>
                    <input type="hidden" name="tea_id" id="tea_id" />
                    <section class="grid">
                             					                    
                    
                        <div class="col" >
                            <a href="javascript:void(0)" onClick="setTeaId(1)">
                                <img src="images/201403/goods_img/1_G_1395399414346.jpg" width="240" height="240">
                                <div class="color_div"><span class="color1"></span></div>
                                <h3>WHITE TEA</h3>
                            </a>
                             <div style="font-size:14px">Ingredients:<br/><p>hahahahah</p></div>
                        </div>
                                                     					                    
                    
                        <div class="col" >
                            <a href="javascript:void(0)" onClick="setTeaId(2)">
                                <img src="images/201403/goods_img/2_G_1393908567488.jpg" width="240" height="240">
                                <div class="color_div"><span class="color2"></span></div>
                                <h3>GREEN TEA</h3>
                            </a>
                             <div style="font-size:14px">Ingredients:<br/></div>
                        </div>
                                                     					                    
                    
                        <div class="col" >
                            <a href="javascript:void(0)" onClick="setTeaId(3)">
                                <img src="" width="240" height="240">
                                <div class="color_div"><span class="color3"></span></div>
                                <h3>Black Tea</h3>
                            </a>
                             <div style="font-size:14px">Ingredients:<br/></div>
                        </div>
                                                     					                    
                    
                        <div class="col" >
                            <a href="javascript:void(0)" onClick="setTeaId(4)">
                                <img src="" width="240" height="240">
                                <div class="color_div"><span class="color4"></span></div>
                                <h3>OOlong Tea</h3>
                            </a>
                             <div style="font-size:14px">Ingredients:<br/></div>
                        </div>
                                                     					                             					                             					                                              
                        
                       <!-- <div class="col col_last" >
                            <a href="javascript:void(0)" onClick="setTeaId(4)">
                                <img src="themes/default/images/t_white.jpg" width="240" height="240">
                                <div class="color_div"><span class="color4"></span></div>
                                <h3>WHITE TEA</h3>
                            </a>
                            <p style="font-size:13px">Ingredients: <br/>
                             	Anji White Tea
                             </p> 
                        </div> -->
                      
                    </section>
                </div>
                <div class="products_div4">
                    <h2>- 3. Enhance flavor and aroma -</h2>
                   
                    
                    <div class="products_tea con_div">
                    	<div class="l products_teal">
                        
                               						                             						                             						                             						                             						                    
                        	<div class="products_teadiv">
                            	<h3 class="l"><a href="javascript:void(0)">Jasmine</a></h3>
                            	<div class="l">
                          
                                    <span id="ingre5" style="display:none">1</span>
                                    <div class="scale" id="bar5">
                                    	<div></div>
                                        <span id="btn5"></span>
                                    </div> 
                                </div>
                            </div>
                           <script type="text/javascript">
						   	new scale('btn5','bar5','ingre5');
						   </script> 
                            
                                                    						                    
                        	<div class="products_teadiv">
                            	<h3 class="l"><a href="javascript:void(0)">Rosemary</a></h3>
                            	<div class="l">
                          
                                    <span id="ingre6" style="display:none">1</span>
                                    <div class="scale" id="bar6">
                                    	<div></div>
                                        <span id="btn6"></span>
                                    </div> 
                                </div>
                            </div>
                           <script type="text/javascript">
						   	new scale('btn6','bar6','ingre6');
						   </script> 
                            
                                                    						                    
                        	<div class="products_teadiv">
                            	<h3 class="l"><a href="javascript:void(0)">test1</a></h3>
                            	<div class="l">
                          
                                    <span id="ingre7" style="display:none">1</span>
                                    <div class="scale" id="bar7">
                                    	<div></div>
                                        <span id="btn7"></span>
                                    </div> 
                                </div>
                            </div>
                           <script type="text/javascript">
						   	new scale('btn7','bar7','ingre7');
						   </script> 
                            
                                                                           
                             
                     
                           
                        </div>
                        <div class="l products_tear">
                        	<img src="themes/default/images/tea.jpg" width="285" height="189" class="l">
                            <p>Stir in osmanthus sugar and serve.Stir in osmanthus sugar and serve.Stir in osmanthus sugar and serve.Stir in osmanthus sugar and serve.Stir in osmanthusStir in osmanthus sugar and serve.sugar and serve.</p>
                        </div>
                    </div>
                    <div class="page tea_page"><a href="javascript:void(0)" target="_blank" class="page_a"></a><a href="javascript:void(0)" target="_blank"></a><a href="javascript:void(0)" target="_blank"></a></div>
                </div>
                <div class="products_div2">
                	<h2>- ILLUSTRATION -</h2>
                	<p>CREATE YOUR OWN RECIPE IN ONLY FEW STEPS:<br>
                   	
                    </p>
                </div>
                <div class="products_div2">
               		<div class="btn_div"><a href="javascript:doSubmit();" class="btn">ADD TO CART</a></div>
                </div>
            </div>
         
        </div>
       
        
        
        
        
    </div>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script><script type="text/javascript" src="js/common.js"></script><script type="text/javascript" src="js/kite_common.js"></script>    <script type="text/javascript" src="js/transport.js"></script>    <script type="text/javascript">
		var tea=[["themes/default/images/gh.jpg","themes/default/images/mdx.jpg","themes/default/images/mlh.jpg","themes/default/images/xyc.jpg"],["Redeem it at warbyparker.com or at any of our retail locations. Once you find something you like, apply your gift card code during checkout.","薰衣草.",".","Redeem it at warbyparker.com or at any of our retail locations. Once you find something you like, apply your gift card code during checkout."]];
		var q_a=null;
		$(".products_btndiv a").click(function(){
			$(".products_div3").slideDown(1000);
			if(q_a!=null){
				$(q_a).removeClass("products_hover"+$(q_a).index());	
			}
			$(this).addClass("products_hover"+$(this).index());
			q_a=$(this);
			$("html, body").animate({scrollTop: $(".products_div3").offset().top});
		});
		$(".products_div3 img").click(function(){
			$(".products_div4").slideDown(1000);
			$(".products_div3 img").css("border",0);
			$(this).css("border","1px #f8b551 solid");
			$("html, body").animate({scrollTop: $(".products_div4").offset().top});
			
		});	
		$(".products_teadiv a").hover(function(){
			var num=$(this).parent().parent().index();
		
			$(".products_tear img").attr("src",tea[0][num]);	
			$(".products_tear p").html(tea[1][num]);	
		});
	$(document).ready(function(){
		$(".enroll a").click(function(){
			$("#layer_bg").show();
		    $("#layer_div").fadeIn();	
		});
	})
	$(document).bind("click",function(e){
		var target  = $(e.target);
		if(target.closest("#layer_con").length == 0&&target.closest(".enroll a").length == 0){
		   $("#layer_bg").hide();
		   $("#layer_div").fadeOut();
		}
	}) 
	
	
    </script>
    
        
 
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
    	
     
    <div id="layer_bg"></div>
    <div id="layer_div">
    	<div id="layer_con">
        	<h3>Coming soon~</h3>
            <p>KITE website is under construction now. You will be availble to purchase in short time</p>
            <p>Please don't be hesitate to contact us if you have any suggestions.</p>
            <p>Thanks~</p>
            <br/>
            <p>KITE TEAM</p>
           
        </div>
        <div class="layer_align"></div>
    </div>
</body>
</html>
