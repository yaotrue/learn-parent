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
        console.log(index);
        $('.myaccount-lf ul li').removeClass('current');
		$(this).addClass('current');
        $('.myaccount-rt>div').addClass('none').siblings().eq(index).removeClass('none');
        $(".fh-interview li").eq(index).addClass('none').siblings().removeClass('none');
	});


    $('.events-fh-interview ul li').on('click',function(){
        var nowIndex = $(this).attr("data-index");
        $(this).addClass("none").siblings().removeClass('none');
        $(".myaccount-rt .ft-box").eq(nowIndex - 1).removeClass('none').siblings().addClass('none');
        $(".myaccount-lf li").eq(nowIndex - 1).addClass('current').siblings().removeClass('current');

        $('html,body').animate({
            'scrollTop' : 0
        },100)
    })


});
