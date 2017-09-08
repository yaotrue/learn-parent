$(function(){
    // hover平滑
	$('.events-pages-new li').hover(function(){
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
	$('.events-pages-new li').click(function(event) {
		$(this).addClass('is-active').siblings().removeClass('is-active');
	});
	//瞄点定位
      var win_w = $(window).width();
	 var thisId;
    $(' .myaccount-lf ').on('click', 'li > a', function(e){
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

        return false;


    });

    //点击收回

    $(window).on('load', function() {

        $('.news-1').each(function(index, el) {
            var $news1 = $(el),
                $pagesContL = $('.pages-cont-l', $news1),
                $pagesContR = $('.pages-cont-r .pages-teme', $news1),
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
                $news1 = _this.parents('.news-1'),
                $pagesContL = $('.pages-cont-l', $news1),
                $pagesContR = $('.pages-cont-r .pages-teme', $news1),
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


    })

    // 点击小图切换大图
    $(".pages-cont-l .evens-pages-img li img").click(function() {
        $(this).parents('.pages-cont-l').find('.result-img').attr("src", $(this).attr("data-src"));
        $(this).parent().addClass("active").siblings().removeClass("active");
    });





})
