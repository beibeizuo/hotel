$(document).ready(function(){
	function hideSheep(){
		$("#sheep_bg").stop().animate({"opacity":0} , 300) ;
		
		$("#sheep_ct").stop().animate({"bottom":$("#sheep_ct").height()*-1+"px"} , 300) ;
		
		setTimeout(function(){
			$("#sheep_ct,#sheep_bg").hide() ;
		} , 300) ;
	}
	
	$("#sheep_bg,.hideSheep").click(function(){
		hideSheep() ;
	}) ;
	
	jQuery.fn.extend({
		sheep : function(cf , func){
			var ts = $(this) ;
			var ct = ts.html() ;
			
			cf.unbind("click").click(function(){
				
				$("#sheep_ct").html(ct) ;
				
				setTimeout(function(){
					
					$("#sheep_bg").width(client_width) ;$("#sheep_bg").height(client_height) ;
					
					$("#sheep_ct").width(client_width) ;$("#sheep_ct").css("bottom" , $("#sheep_ct").height()*-1) ;
					
					$("#sheep_ct,#sheep_bg").show() ;
					
					$("#sheep_bg").stop().animate({"opacity":0.8} , 300) ;
					
					$("#sheep_ct").stop().animate({"bottom":-10+"px"} , 300) ;
					
					func() ;
					
					$(".hideSheep").unbind("click") ;
					
					$(".hideSheep").click(function(){
						hideSheep() ;
					}) ;
					
				} , 5) ;
				
				
			}) ;
			
		}
	}) ;
}) ;