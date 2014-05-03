// JavaScript Document
formulaScroll=function (formuladiv){
	this.formuladiv=$(formuladiv);
	this.j=$(formuladiv).length;
	this.timer=null;
	this.init();
	this.toMouse();
};
formulaScroll.prototype={
	init:function (){
		var f=this,q_img_item=null;
		f.formuladiv.hide();
		f.j=(f.j>=f.formuladiv.length-1)?0:f.j+1;	
		if (q_img_item != null) {
			q_img_item.fadeOut(600);
		}
		f.formuladiv.eq(f.j).fadeIn(1200);
		q_img_item=f.formuladiv.eq(f.j);
		f.timer=setTimeout(function(){f.init();},3000);
	},
	toMouse:function(){
		var f=this;
		f.formuladiv.hover(function(){
			clearTimeout(f.timer);		
		},function(){
			f.timer=setTimeout(function(){f.init();},3000);	
		});	
	}
}
