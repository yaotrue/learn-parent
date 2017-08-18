$(function() {
	//中英文切换;
	$('.switch-language .langu').click(function(event) {
		$(this).addClass('current').siblings().removeClass('current');
	});

// 回到顶部
    $('.event-top').click(function(){
        $('body,html').animate({scrollTop:0},1000);
        return false;
    })
    $(window).on('scroll.index',function() {
    	 var scrollH = $(document).scrollTop(),
    	scsrollFootTop = $('.event-top').offset().top,
		_h1 = $('.banner-site').outerHeight(),
    	_h2 = $('.logo > a').outerHeight();
    	_h = _h1 + _h2;
        if( scsrollFootTop > _h){
    		$('.event-top').css('opacity', '1');
    	}else{
    		$('.event-top').css('opacity', '0');
    	}

    })


});