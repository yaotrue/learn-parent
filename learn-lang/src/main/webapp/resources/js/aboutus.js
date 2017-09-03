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



	//点击收回
     $('.events-info-show').toggle(function() {

         //获取图片的高度
        var picHeight = $('.team-cont-l img').height();
        $(this).removeClass('is-active');
        $(this).siblings('div').css({
            'height' : 'auto',
            'overflow' : 'visible'
        })

     }, function() {

        var picHeight = $('.team-cont-l img').height(),
            _h = picHeight -40;
        $(this).addClass('is-active');
        $(this).find('i').addClass('icon-down');
        $(this).siblings('div').css({
            'height' : _h,
            'overflow' : 'hidden'
        })
     });


});
