
$(document).ready(function(){
	$.iScrollClick = function(){
		if (/iPhone|iPad|iPod|Macintosh/i.test(navigator.userAgent)){return false;}
		if (/Chrome/i.test(navigator.userAgent)){return (/Android/i.test(navigator.userAgent));}
		if (/Silk/i.test(navigator.userAgent)){ return false;}
		if (/Android/i.test(navigator.userAgent)) {
			var s=navigator.userAgent.substr(navigator.userAgent.indexOf('Android')+8,4);
			return parseFloat(s[0]+s[3]) < 44 ? false : true
		}
	}

	$.ajax_do = function(url , func){
		$.ajax({ 
			type: "GET", dataType : "jsonp",
			url: url, 
			async:true,
			success: function (json) {
				func(json) ;
			}, 
			error: function (XMLHttpRequest, textStatus, errorThrown) { 
				return false ;
			} 
		}); 
	}
	
	$.ajax_do_async = function(url , func){
		$.ajax({ 
			type: "GET", dataType: "jsonp", 
			url: url, 
			async:true ,
			success: function (json) {
				func(json) ;
			}, 
			error: function (XMLHttpRequest, textStatus, errorThrown) { 
				return false ;
			} 
		}); 
	}


	$.ajax_simple = function(url , func){
		$.ajax({ 
			type: "GET", dataType: "json", 
			url: url, 
			async:false ,
			success: function (json) {
				func(json) ;
			}, 
			error: function (XMLHttpRequest, textStatus, errorThrown) { 
				alert(errorThrown) ;
				return false ;
			} 
		}); 
	}
	
	$.tip = function(cont , second ,func){
		layer.open({
		    content: ''+cont,
		    shade:false ,
		    style: 'background-color:#333; color:#fff; border:none;',
		    time: second ? second : 2
		});
		if(func){
			setTimeout(func , second?second*1000:2*1000) ;
		}	
	}
	
	$.ajax_op_auto = function(src , tip){
		if(tip && tip.length > 0){
			$.confirm(tip,function(){
				$.loading("正在执行") ;
				$.ajax({ 
					type: "GET", dataType: "jsonp", 
					url: src, 
					async:true ,
					success: function (json) { 
						$.loadingClose();
						
						if(json.status == "error"){
							$.tip(json.info) ;
						}else{
							var func ;
							if(json.operation == "refresh")func = function(){location.reload();}
							else if(json.operation == "refreshParent")func = function(){parent.location.reload();}
							else if(json.operation == "redirect")func = function(){location.href=json.target;}
							else if(json.operation == "return")func = function(){parent.location.reload();}
							else if(json.operation == "redirectParent")func = function(){parent.location.href=json.target;}
							if(json.info != ""){
								$.tip(json.info , 2 , func) ;
							}else
								func() ;
						}
					}, 
					error: function (XMLHttpRequest, textStatus, errorThrown) { 
						$.loadingClose();
						return false ;
					} 
				}); 
			}) ;
		}else{
			$.loading("正在执行") ;
			$.ajax({ 
				type: "GET", dataType: "jsonp", 
				url: src, 
				async:true ,
				success: function (json) { 
					$.loadingClose();
					if(json.status == "error"){
						$.tip(json.info) ;
					}else{
						var func ;
						if(json.operation == "refresh")func = function(){location.reload();}
						else if(json.operation == "refreshParent")func = function(){parent.location.reload();}
						else if(json.operation == "redirect")func = function(){location.href=json.target;}
						else if(json.operation == "return")func = function(){parent.location.reload();}
						else if(json.operation == "redirectParent")func = function(){parent.location.href=json.target;}
						
						if(json.info != "")
							$.tip(json.info , func) ;
						else
							func() ;
					}
				}, 
				error: function (XMLHttpRequest, textStatus, errorThrown) { 
					$.loadingClose();
					return false ;
				} 
			}); 
		}
	}

	$(".ajax_op_auto").click(function(){
		$.ajax_op_auto($(this).attr("data-src") , $(this).attr("data-tip")) ;
	}) ;


	$.encodeURL = function(url){
		return encodeURI(url) ;
	}
	$.jc_ajax = function(url){
		htmlobj =$.ajax({url:$.encodeURL(url),async:false,type:"POST"});
		return htmlobj.responseText ;
	}
	
	/**select 赋值*/
	$("select").each(function(i , v){
		v = $(v) ;
		if(v.attr("data-value"))
			v.val(v.attr("data-value")) ;
	}) ;
	
	
	
	$.confirm = function(content , sure , cancel ,sureText , cancelText , title ){
		var text = "<div class='weui_dialog_confirm'>" +
						"<div class='weui_mask'></div>" +
						"<div class='weui_dialog'>" +
							(title && title!=''? "<div class='weui_dialog_hd'><strong class='weui_dialog_title'>"+title+"</strong></div>":"") +
							"<div class='weui_dialog_bd'><br/>"+content+"<br /></div>" +
							"<div class='weui_dialog_ft'>" +
							" <a href='javascript:;' class='weui_btn_dialog default confirm_cancel'>"+(cancelText && cancelText != '' ? cancelText:'取消')+"</a><a href='javascript:;' class='weui_btn_dialog primary confirm_sure'>"+(sureText && sureText != '' ? sureText:'确定')+"</a>" +
							"</div>" +
						"</div>" +
					"</div>" ;
		
		$("body").append(text) ;
		
		$(".weui_dialog_confirm").find(".confirm_cancel").unbind("click") ;
		$(".weui_dialog_confirm").find(".confirm_cancel").click(function(){
			if(cancel)cancel() ;
			$(".weui_dialog_confirm").remove() ;
		}) ;
		
		$(".weui_dialog_confirm").find(".confirm_sure").unbind("click") ;
		$(".weui_dialog_confirm").find(".confirm_sure").click(function(){
			if(sure)sure() ;
			$(".weui_dialog_confirm").remove() ;
		}) ;
	} ;
	
	$.loading = function(title , second){
		var content = "<div id='loadingToast' class='weui_loading_toast'>"+
					    "<div class='weui_mask_transparent'></div>"+
					    "<div class='weui_toast'>"+
					        "<div class='weui_loading'>"+
					            "<div class='weui_loading_leaf weui_loading_leaf_0'></div>"+
					            "<div class='weui_loading_leaf weui_loading_leaf_1'></div>"+
					            "<div class='weui_loading_leaf weui_loading_leaf_2'></div>"+
					            "<div class='weui_loading_leaf weui_loading_leaf_3'></div>"+
					            "<div class='weui_loading_leaf weui_loading_leaf_4'></div>"+
					            "<div class='weui_loading_leaf weui_loading_leaf_5'></div>"+
					            "<div class='weui_loading_leaf weui_loading_leaf_6'></div>"+
					            "<div class='weui_loading_leaf weui_loading_leaf_7'></div>"+
					            "<div class='weui_loading_leaf weui_loading_leaf_8'></div>"+
					            "<div class='weui_loading_leaf weui_loading_leaf_9'></div>"+
					            "<div class='weui_loading_leaf weui_loading_leaf_10'></div>"+
					            "<div class='weui_loading_leaf weui_loading_leaf_11'></div>"+
					        "</div>"+
					       (title && title != '' ? "<p class='weui_toast_content'>"+title+"</p>":"")+
					    "</div>"+
					"</div>" ;
		
		if($("#loadingToast").length == 0)
			$("body").append(content) ;
		
		if(second){
			setTimeout(function(){
				$("#loadingToast").remove() ;
			} , second) ;
		}
	}
	
	$.loadingClose = function(second){
		if(second && second > 0){
			setTimeout(function(){
				$("#loadingToast").remove() ;
			} , second) ;
		}else
			$("#loadingToast").remove() ;
	}

	/**
	 * 随机数
	 * */
	$.random = function(min ,max){
		return Math.floor(Math.random() * (max - min) + min) ;
	}
	
	jQuery.fn.extend({
		actionSheet : function(paras){
			var ts = $(this) ;
			
			var buttons = "" ;
			
			for(var i = 0 ; i < paras.buttons.length ; i ++){
				if(paras.buttons[i].url)
					buttons += "<a href='"+paras.buttons[i].url+"'><div class='weui_actionsheet_cell' "+(paras.buttons[i].id ? " id = '"+paras.buttons[i].id+"'":"")+(paras.buttons[i].color ? " style = 'color:"+paras.buttons[i].color+"'":"")+">"+paras.buttons[i].name+"</div></a>" ;
				else
					buttons += "<div class='weui_actionsheet_cell' "+(paras.buttons[i].para ? paras.buttons[i].para+"":"")+(paras.buttons[i].id ? " id = '"+paras.buttons[i].id+"'":"")+(paras.buttons[i].color ? " style = 'color:"+paras.buttons[i].color+"'":"")+">"+paras.buttons[i].name+"</div>" ;
			}
			
			var html =  "<div id='actionSheet_wrap'>"+
						    "<div class='weui_mask_transition' id='mask' ></div>"+
						    "<div class='weui_actionsheet' id='weui_actionsheet'>"+
						        "<div class='weui_actionsheet_menu'>"+
						            buttons+
						        "</div>"+
						        "<div class='weui_actionsheet_action'>"+
						            "<div class='weui_actionsheet_cell' id='actionsheet_cancel'>"+paras.cancelText+"</div>"+
						        "</div>"+
						    "</div>"+
						"</div>" ;
			
			
			function hideActionSheet(weuiActionsheet, mask) {
	            weuiActionsheet.removeClass('weui_actionsheet_toggle');
	            mask.removeClass('weui_fade_toggle');
	            setTimeout(function(){
	            	$("#actionSheet_wrap").remove();
	            } , 300) ;
	        }
			
			ts.click(function(){
				
				$("body").append(html) ;
				
				if(paras.after){
					paras.after() ;
				}
				
				
				$('#mask').show().focus().addClass('weui_fade_toggle').click(function(){
					hideActionSheet($('#weui_actionsheet'), $('#mask'));
				}) ;
				
				$('#weui_actionsheet').addClass('weui_actionsheet_toggle');
				
				$("#actionSheet_wrap").find("#actionsheet_cancel").unbind("click") ;
				
				$("#actionSheet_wrap").find("#actionsheet_cancel").click(function(){
					hideActionSheet($('#weui_actionsheet'), $('#mask'));
				}) ;
				
			}) ;
		
		} ,
		onChange : function(theFunction){
			var ts = $(this) ;
			setInterval(function(){
				if(ts.attr("originValue") != ts.val()){
					theFunction(ts) ;
					ts.attr("originValue",ts.val()) ;
				}
			},300) ;
		}
	}) ;
	
	
	//tip
	
	$(".tips_close").click(function(){
		$(this).parent().slideUp(500) ;
	}) ;
	
	//date tool
	$.dateDP = function(date , num){
		a = date.valueOf()
		a = a + num * 24 * 60 * 60 * 1000
		a = new Date(a)
		return a ;
	}

	$.dateDPH = function(date , num){
		a = date.valueOf()
		a = a + num * 60 * 60 * 1000
		a = new Date(a)

		return a ;
	}
	
	$.dateDPbyDay = function(date1 , date2){
		a = parseInt(date1.valueOf() / 24 / 60 / 60 / 1000) ;
		b = parseInt(date2.valueOf() / 24 / 60 / 60 / 1000) ;
		
		return a - b;
	}
	
	$.dateFormat = function(date){
		return date.getFullYear()+"-"+((date.getMonth() + 1) < 10 ? "0"+(date.getMonth() + 1) : (date.getMonth() + 1))+"-"+(date.getDate() < 10 ? "0"+date.getDate() : date.getDate()) ;
	}

	$.dateFor = function(date){
		return new Date(date.replace("-","/").replace("-","/")) ;
	}

	$.dateFormats = function(date){
		return date.getFullYear()+"-"+((date.getMonth() + 1) < 10 ? "0"+(date.getMonth() + 1) : (date.getMonth() + 1))+"-"+(date.getDate() < 10 ? "0"+date.getDate() : date.getDate())
			+" "+(date.getHours() < 10 ? "0"+date.getHours():date.getHours())+":"+(date.getMinutes() < 10 ? "0"+date.getMinutes():date.getMinutes())+":"+(date.getSeconds() < 10 ? "0"+date.getSeconds():date.getSeconds())
			;
	}

    $.dateFormatX = function(date){
        return date.getFullYear()+"/"+((date.getMonth() + 1) < 10 ? "0"+(date.getMonth() + 1) : (date.getMonth() + 1))+"/"+(date.getDate() < 10 ? "0"+date.getDate() : date.getDate()) ;
    }
	
	$.dateFormatDM = function(date){
		return (date.getMonth() + 1)+" / "+(date.getDate()) ;
	}

	$.dateFormatDMS = function(date){
		return (date.getMonth() + 1)+"月"+(date.getDate())+"日" ;
	}
	
	$.alerto = function(obj){ 
		var description = ""; 
		for(var i in obj){   
			var property=obj[i];   
			description+=i+" = "+property+";\n";  
		}   
		alert(description); 
	}
	
	window.client_width = document.documentElement.clientWidth ;window.client_height = document.documentElement.clientHeight ;
	
	/**
	 * URL UNICODE
	 * */
	function uniencode(text)
	{
	    text = escape(text.toString()).replace(/\+/g, "%2B");
	    var matches = text.match(/(%([0-9A-F]{2}))/gi);
	    if (matches)
	    {
	        for (var matchid = 0; matchid < matches.length; matchid++)
	        {
	            var code = matches[matchid].substring(1,3);
	            if (parseInt(code, 16) >= 128)
	            {
	                text = text.replace(matches[matchid], '%u00' + code);
	            }
	        }
	    }
	    text = text.replace('%25', '%u0025');
	 
	    return text;
	}
	 
	$(".transNowToUnicode").each(function(i,v){
		v = $(v) ;
		var url = uniencode(location.href) ;
		v.attr("href" , v.attr("href").replace("UNICODENOWURL" , url)) ;
	}) ;
	
	$(".clickLink").click(function(){
		location.href = $(this).attr("data-href")
	}) ;

	/**
	 * */
	$.pageview = function(module , title , target){
		/*$.ajax_do_async("/add_pageview?target="+location.href+"&targetTitle="+title+"&targetModule="+module+"&targetId="+target , function () {
		})*/
	}

	/**
	 * css shadow plugin
	 * d.2017.0906.2053
	 **/
	$.fn.shadow = function(options) {

		// options could just be the type
		if (typeof options !== "object")
			options = {type:options};

		// set up the options using the defaults
		options = $.extend({}, $.fn.shadow.defaults, options);

		var els = this;

		// add the necessary css classes
		els.addClass('jquery-shadow');
		els.addClass('jquery-shadow-'+options.type);

		// some require extras js
		switch(options.type) {
			case 'sides' :
				$.fn.shadow.sides(this,options);
				break;
			case 'rotated' :
				$.fn.shadow.rotated(this,options);
				break;
		}

		// for good measure :)
		$.fn.shadow.borderRadius(this,options.radius);

		return this;
	};

	// rotate these bad boys
	$.fn.shadow.rotated = function(els,options) {

		// one property to rule them all, if only!
		els.css('-webkit-transform','rotate('+options.rotate+')')
			.css('-moz-transform','rotate('+options.rotate+')')
			.css('-ms-transform','rotate('+options.rotate+')')
			.css('-o-transform','rotate('+options.rotate+')')
			.css('transform','rotate('+options.rotate+')');
	}

	// sides have funky stuff
	$.fn.shadow.sides = function(els,options) {
		els.addClass('jquery-shadow-sides-'+options.sides);
	}

	// border-radius goodness..
	$.fn.shadow.borderRadius = function(els,radius) {
		els.css('-moz-border-radius',radius)
			.css('border-radius',radius);
	}

	// these are the defaults :)
	$.fn.shadow.defaults = {
		type:'standard', // AVAILABLE standard, lifted, perspective, raised, sides
		radius:4,
		sides:'', // used when type = "sides", AVAILABLE vt-1, vt-2, hz-1, hz-2
		rotate:'-3deg'
	};
}) ;

