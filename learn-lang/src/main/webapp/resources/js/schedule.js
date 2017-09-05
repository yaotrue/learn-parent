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
        // $('.myaccount-rt>div').addClass('none').siblings().eq(index).removeClass('none');

	});

    $(window).on('load', function() {

        $('.team-member').each(function(index, el) {
            var $news1 = $(el),
                $pagesContL = $('.team-cont-l', $news1),
                $pagesContR = $('.team-cont-r .team-cont-wapper', $news1),
                pagesContLImgH = $('img', $pagesContL).outerHeight(true),
                $pagesContRH5 = $('> div > h5', $pagesContR),
                pagesContRH5H = $pagesContRH5.outerHeight(true),
                $infoShow = $('.events-info-show', $pagesContR),
                infoShowH = $infoShow.outerHeight(true),
                pagesContRNewH = pagesContLImgH - (pagesContRH5H + infoShowH),
                pagesContRTextH = pagesContRNewH - (pagesContRNewH%18)

            $('> div > div', $pagesContR).css({
                'height': pagesContRTextH,
                'overflow': 'hidden'
            })

            $infoShow.addClass('is-active');

            $('.evens-pages-img', $pagesContL).css('display','none')

        });


        $('.events-info-show').on('click', function() {
            var _this = $(this),
                isActive = _this.hasClass('is-active'),
                $news1 = _this.parents('.team-member'),
                $pagesContL = $('.team-cont-l', $news1),
                $pagesContR = $('.team-cont-r .team-cont-wapper', $news1),
                pagesContLImgH = $('img', $pagesContL).outerHeight(true),
                $pagesContRH5 = $('> div > h5', $pagesContR),
                pagesContRH5H = $pagesContRH5.outerHeight(true),
                $infoShow = $('.events-info-show', $pagesContR),
                infoShowH = $infoShow.outerHeight(true),
                pagesContRNewH = pagesContLImgH - (pagesContRH5H + infoShowH),
                pagesContRTextH = pagesContRNewH - (pagesContRNewH%18)


            if (isActive) {
                $('> div > div', $pagesContR).removeAttr('style');
                $infoShow.removeClass('is-active');
                $('.evens-pages-img', $pagesContL).removeAttr('style');
            }else{
                $('> div > div', $pagesContR).css({
                    'height': pagesContRTextH,
                    'overflow': 'hidden'
                })

                $infoShow.addClass('is-active');

                $('.evens-pages-img', $pagesContL).css('display','none')
            }

        });
        // 换图
        $(".team-cont-l .evens-pages-img li img").click(function() {
            $(this).parents('.team-cont-l').find('.result-img').attr("src", $(this).attr("data-src"));
            $(this).parent().addClass("active").siblings().removeClass("active");
        });

    })
    //瞄点定位
    var win_w = $(window).width();
     var thisId;
    $('.myaccount-lf ').on('click', 'li > a', function(e){
        //阻止跳转
        e.preventDefault();
        //获取选中ID
        thisId = $(this).attr("href");
        //判断切换方式
        if ( win_w>1024) {
            //滚动页面高度
            mTop = $(thisId).offset().top;
            $("html,body").scrollTop(mTop-40);

        }
    });

});
