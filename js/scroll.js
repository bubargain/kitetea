// JavaScript Document
function img_hd(imga,icona,a_style,prev,next){
	var j=0;
	var q_img=null;q_img_item=null;q_a_item=null;
	var prev = $(prev);
	var next = $(next);
	var q_img=$(imga);
	var q_a=$(icona);
	q_img.hide();
	j=q_img.length;
	scroll_img();
	function scroll_img(){
		j=(j>=q_img.length-1)?0:j+1;	
		if (q_img_item != null) {
			q_img_item.fadeOut(600);
			q_a_item.removeClass(a_style);
		}
		q_img.eq(j).fadeIn(1200);
		q_a.eq(j).addClass(a_style);
		q_img_item=q_img.eq(j);
		q_a_item=q_a.eq(j);
		timer=setTimeout(scroll_img,3000);
	}
	q_a.hover(function(){
		clearTimeout(timer);	
		if (q_img_item != null) {
			q_img_item.fadeOut(600);
			q_a_item.removeClass(a_style);
		}
		q_img.eq($(this).index()).fadeIn(1200);
		$(this).addClass(a_style); 
		q_img_item=q_img.eq($(this).index());
		q_a_item=$(this);
		j=$(this).index();
	}, function() {
		timer = setTimeout(scroll_img,3000);
	});	
	next.click(function()
	{
		clearTimeout(timer);
		scroll_img();
	});
	prev.click(function()
	{
		clearTimeout(timer);
		j=(j<=0)?q_img.length-1:j-1;	
		if (q_img_item != null) {
			q_img_item.fadeOut(600);
			q_a_item.removeClass(a_style);
		}
		q_img.eq(j).fadeIn(1200);
		q_a.eq(j).addClass(a_style);
		q_img_item=q_img.eq(j);
		q_a_item=q_a.eq(j);
		timer=setTimeout(scroll_img,3000);
	});
}