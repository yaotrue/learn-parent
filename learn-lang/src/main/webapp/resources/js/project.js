$(function() {


	// hover平滑
	$('.myaccount-lf ul li a').hover(function(){
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

	$('.myaccount-lf ul li').click(function(event) {

        var index = $(this).index('.myaccount-lf ul li');
        $('.myaccount-lf ul li').removeClass('current');
		$(this).addClass('current');
        $('.myaccount-rt>div').addClass('none').siblings().eq(index).removeClass('none');
        //初始化获取高度
        var Height = $('.team-cont-l').height(),
        	_h = Height -40;
        	$('.events-info-show').addClass('is-active');

	        $('.events-info-show').siblings('div').css({
	            'height' : _h,
	            'overflow' : 'hidden'
	        })
	});
    $('.events-fh-interview ul li').on('click',function(){

    })


});
