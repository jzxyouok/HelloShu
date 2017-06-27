//导航栏激活状态
$(document).ready(function (){
	$("#navbar li").each(function(index){
		$(this).mouseover(function(){ 
			$("#navbar li").removeClass("active nav_active");
			$("#navbar li").eq(index).addClass("active nav_active");
		});
	});
	
	//搜索框点击事件
	$("#search").click(function(event){
		$("#search").removeClass("col-md-3").addClass("col-md-7");
		$("#navbar ul").hide();
		event.stopPropagation();
	});
	$(document).click(function(){
        $("#search").removeClass("col-md-7").addClass("col-md-3");
        $("#navbar ul").show();
    });

    $("#mainnav button").each(function(index){
        $(this).click(function(){
					$("#mainnav button").removeClass("main_active");
					$("#mainnav button").eq(index).addClass("main_active");
        });
    });
});

