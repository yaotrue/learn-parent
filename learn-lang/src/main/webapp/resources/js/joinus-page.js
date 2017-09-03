$(function(){
    // hover平滑
	$('.events-pages-jionus li a').hover(function(){
            $(this).find('img').show();
			$(this).stop().animate({
				'margin-left':'14px'
			},500);
	},function(){
        $(this).find('img').hide();
        $(this).stop().animate({
                'margin-left':'0'
            },500);
    })
    // tab切换
	$('.events-pages-jionus a').click(function(event) {

        var index = $(this).index('.events-pages-jionus a');
        $('.events-pages-jionus li a').removeClass('is-active');
		$(this).addClass('is-active');
        $('.job-content').addClass('none').siblings().eq(index).removeClass('none');
	});

})
