<!DOCTYPE HTML>
<html>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta charset="utf-8">
<link rel="shortcut icon" href="themes/default/images/favicon.jpg"/>
<title>KITE AUTO-BLEND TEA - your own script!</title>
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>/style.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>/products.css" rel="stylesheet" type="text/css"  />
 <?php echo $this->smarty_insert_scripts(array('files'=>'scale.js,scroll.js')); ?>
  <script type="text/javascript">
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
					<?php $_from = $this->_var['goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'onegoods');if (count($_from)):
    foreach ($_from AS $this->_var['onegoods']):
?>
					
      				  <?php if ($this->_var['onegoods']['brand_id'] == 1): ?>
					   if(parseInt($('#ingre<?php echo $this->_var['onegoods']['goods_id']; ?>').html()) >10)
							addToCart(<?php echo $this->_var['onegoods']['goods_id']; ?>,0,parseInt($('#ingre<?php echo $this->_var['onegoods']['goods_id']; ?>').html())/10);
					  <?php endif; ?>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
					
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
        
       <?php echo $this->fetch('library/k_page_header.lbi'); ?>
        
        
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
                       <?php $_from = $this->_var['goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'onegoods');if (count($_from)):
    foreach ($_from AS $this->_var['onegoods']):
?>
      					<?php if ($this->_var['onegoods']['brand_id'] == 2): ?>
                    
                    
                        <div class="col" >
                            <a href="javascript:void(0)" onClick="setTeaId(<?php echo $this->_var['onegoods']['goods_id']; ?>)">
                                <img src="<?php echo $this->_var['onegoods']['goods_img']; ?>" width="240" height="240">
                                <div class="color_div"><span class="color<?php echo $this->_var['onegoods']['goods_id']; ?>"></span></div>
                                <h3><?php echo $this->_var['onegoods']['goods_name']; ?></h3>
                            </a>
                             <div style="font-size:14px">Ingredients:<br/><?php echo $this->_var['onegoods']['goods_desc']; ?></div>
                        </div>
                        <?php endif; ?>
                       <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                       
                        
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
                        
                         <?php $_from = $this->_var['goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'onegoods');if (count($_from)):
    foreach ($_from AS $this->_var['onegoods']):
?>
      						<?php if ($this->_var['onegoods']['brand_id'] == 1): ?>
                    
                        	<div class="products_teadiv">
                            	<h3 class="l"><a href="javascript:void(0)"><?php echo $this->_var['onegoods']['goods_name']; ?></a></h3>
                            	<div class="l">
                          
                                    <span id="ingre<?php echo $this->_var['onegoods']['goods_id']; ?>" style="display:none">1</span>
                                    <div class="scale" id="bar<?php echo $this->_var['onegoods']['goods_id']; ?>">
                                    	<div></div>
                                        <span id="btn<?php echo $this->_var['onegoods']['goods_id']; ?>"></span>
                                    </div> 
                                </div>
                            </div>
                           <script type="text/javascript">
						   	new scale('btn<?php echo $this->_var['onegoods']['goods_id']; ?>','bar<?php echo $this->_var['onegoods']['goods_id']; ?>','ingre<?php echo $this->_var['onegoods']['goods_id']; ?>');
						   </script> 
                            
                       <?php endif; ?>
                       <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                             
                             
                     
                           
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
    <?php echo $this->smarty_insert_scripts(array('files'=>'jquery-1.7.2.min.js,common.js,kite_common.js')); ?>
    <?php echo $this->smarty_insert_scripts(array('files'=>'transport.js')); ?>
    <script type="text/javascript">
		var tea=[["<?php echo $this->_var['ecs_img_path']; ?>/gh.jpg","<?php echo $this->_var['ecs_img_path']; ?>/mdx.jpg","<?php echo $this->_var['ecs_img_path']; ?>/mlh.jpg","<?php echo $this->_var['ecs_img_path']; ?>/xyc.jpg"],["Redeem it at warbyparker.com or at any of our retail locations. Once you find something you like, apply your gift card code during checkout.","薰衣草.",".","Redeem it at warbyparker.com or at any of our retail locations. Once you find something you like, apply your gift card code during checkout."]];

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
    
        <?php echo $this->fetch('library/page_footer.lbi'); ?>
    	
     
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
