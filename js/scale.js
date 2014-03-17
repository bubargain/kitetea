// JavaScript Document
scale=function (btn,bar,title){
	this.btn=document.getElementById(btn);
	this.bar=document.getElementById(bar);
	this.title=document.getElementById(title);
	this.step=this.bar.getElementsByTagName("DIV")[0];
	this.init();
};
scale.prototype={
	init:function (){
		var f=this,g=document,b=window,m=Math;
		f.btn.style.left=(280-26)*(this.title.innerHTML/100)+"px";
		f.btn.onmousedown=function (e){
			var x=(e||b.event).clientX;
			var l=this.offsetLeft;
			var max=f.bar.offsetWidth-this.offsetWidth;
			g.onmousemove=function (e){
				var thisX=(e||b.event).clientX;
				var to=m.min(max,m.max(0,l+(thisX-x)));
				f.btn.style.left=to+'px';
				f.ondrag(m.round(m.max(0,to/max)*100),to);
				b.getSelection ? b.getSelection().removeAllRanges() : g.selection.empty();
			};
			g.onmouseup=new Function('this.onmousemove=null');
		};
		f.bar.onclick=function(e){
			var x=((e||b.event).clientX)-(this.offsetLeft);
			var to=m.min(254,m.max(0,x));
			f.btn.style.left=to+"px";
		}
	},
	ondrag:function (pos,x){
		this.step.style.width=Math.max(0,x)+'px';
		this.title.innerHTML=pos;
	}
}