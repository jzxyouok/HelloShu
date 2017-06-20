//导航栏激活状态
$(document).ready(function (){
	$("li").each(function(index){
		$(this).mouseover(function(){ 
			$("li").removeClass("active nav_active");
			$("li").eq(index).addClass("active nav_active");
		});
	});
	
	//导航栏点击事件
	$("#search").click(function(event){
		$("#search").removeClass("col-md-3").addClass("col-md-7");
		$("ul").hide();
		event.stopPropagation();
	});
	$(document).click(function(){
		$("#search").removeClass("col-md-7").addClass("col-md-3");
		$("ul").show();
	});
});

