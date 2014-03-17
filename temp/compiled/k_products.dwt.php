<!DOCTYPE HTML>
<html>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta charset="utf-8">
<title>KITE AUTO BLEND TEA - your own script!</title>
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>/style.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>/products.css" rel="stylesheet" type="text/css" 
</head>

<body>
	<div>
        
       <?php echo $this->fetch('library/k_page_header.lbi'); ?>
        
        
        <div id="content">
        	<div class="hr2"></div>
            <div class="con_div products_div">
            	<div class="products_btndiv">
                	<h2>- 1. Choose popular recipe or blend by yourself -</h2>
                	<div><a href="javascript:void(0)" class="btn products_btn1">START DIY</a>
                    
                    <a href="javascript:void(0)" class="btn products_btn2">EARL GREY</a><a href="javascript:void(0)" class="btn  products_btn3">EARL GREY</a><a href="javascript:void(0)" class="btn  products_btn4">EARL GREY</a><a href="javascript:void(0)" class="btn  products_btn5">EARL GREY</a></div>
                </div>
                <div class="featured products_div3">
                	<h2>- 2. Choose category of tea you like -</h2>
                    <section class="grid">
                        <div class="col">
                            <a href="javascript:void(0)">
                                <img src="themes/default/images/index_06.jpg" width="240" height="240">
                                <div class="color_div"><span class="color1"></span></div>
                                <h3>BLACK TEA</h3>
                            </a>
                             <p style="font-size:13px">Ingredients: <br/>Keemun Black Tea and Lapsong SouChong Black Tea </p>
                        </div>
                        <div class="col">
                            <a href="javascript:void(0)">
                                <img src="themes/default/images/index_07.jpg" width="240" height="240">
                                <div class="color_div"><span class="color2"></span></div>
                                <h3>GREEN TEA</h3>    
                             </a>
                             <p style="font-size:13px">Ingredients: <br/>
                             	West Lake Dragon Well Green Tea
                             </p> 
                        </div>
                        <div class="col">
                            <a href="javascript:void(0)">
                                <img src="themes/default/images/index_07.jpg" width="240" height="240">
                                <div class="color_div"><span class="color3"></span></div>
                                <h3>PU'ER TEA</h3>
                            </a>
                            <p style="font-size:13px">Ingredients: <br/>
                             	YunNan Premium Loose Pu'er Tea
                             </p> 
                        </div>
                        <div class="col col_last">
                            <a href="javascript:void(0)">
                                <img src="themes/default/images/index_07.jpg" width="240" height="240">
                                <div class="color_div"><span class="color4"></span></div>
                                <h3>WHITE TEA</h3>
                            </a>
                            <p style="font-size:13px">Ingredients: <br/>
                             	Anji White Tea
                             </p> 
                        </div>
                    </section>
                </div>
                <div class="products_div4">
                    <h2>- 3. Enhance flavor and aroma -</h2>
                    <div class="products_tea con_div">
                    	<div class="l products_teal">
                        	<div class="products_teadiv">
                            	<h3 class="l"><a href="javascript:void(0)">Osmanthus</a></h3>
                            	<div class="l">
                                    <span id="title1" style="display:none">100</span>
                                    <div class="scale" id="bar1">
                                    	<div></div>
                                        <span id="btn1"></span>
                                    </div> 
                                </div>
                            </div>
                            <div class="products_teadiv">
                            	<h3 class="l"><a href="javascript:void(0)">Rosemary</a></h3>
                            	<div class="l">
                                    <span id="title2" style="display:none">40</span>
                                    <div class="scale" id="bar2">
                                    	<div></div>
                                        <span id="btn2"></span>
                                    </div> 
                                </div>
                            </div>
                            <div class="products_teadiv">
                            	<h3 class="l"><a href="javascript:void(0)">Jasmine</a></h3>
                            	<div class="l">
                                    <span id="title3" style="display:none">30</span>
                                    <div class="scale" id="bar3">
                                    	<div></div>
                                        <span id="btn3"></span>
                                    </div> 
                                </div>
                            </div>
                            <div class="products_teadiv">
                            	<h3 class="l"><a href="javascript:void(0)">lavender</a></h3>
                            	<div class="l">
                                    <span id="title4" style="display:none">20</span>
                                    <div class="scale" id="bar4">
                                    	<div></div>
                                        <span id="btn4"></span>
                                    </div> 
                                </div>
                            </div>
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
               		<div class="btn_div"><a href="javascript:void(0)" class="btn">ADD TO CART</a></div>
                </div>
            </div>
        </div>
        
        
        <?php echo $this->fetch('library/page_footer.lbi'); ?>
    	
    </div>
	<?php echo $this->smarty_insert_scripts(array('files'=>'jquery-1.7.2.min.js,kite_common.js,scale.js')); ?>
    <script type="text/javascript">
		var tea=[["images/tea.jpg","images/index_13.jpg","images/tea.jpg","images/tea.jpg"],["Redeem it at warbyparker.com or at any of our retail locations. Once you find something you like, apply your gift card code during checkout.","Redeem it at warbyparker.com or at any of our retail locations. Once you find something you like, apply your gift card code during checkout.","Redeem it at warbyparker.com or at any of our retail locations. Once you find something you like, apply your gift card code during checkout.","Redeem it at warbyparker.com or at any of our retail locations. Once you find something you like, apply your gift card code during checkout."]];
		new scale('btn1','bar1','title1');
		new scale('btn2','bar2','title2');
		new scale('btn3','bar3','title3');
		new scale('btn4','bar4','title4');
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
    </script>
</body>
</html>
