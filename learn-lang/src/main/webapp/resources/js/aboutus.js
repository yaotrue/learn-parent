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








	//点击收回
    $(window).on('load', function() {

        // tab切换
        $('.myaccount-lf ul li').click(function(event) {
            var index = $(this).index('.myaccount-lf ul li');
            $('.myaccount-lf ul li').removeClass('current');
            $(this).addClass('current');
            $('.myaccount-rt>div').addClass('none').siblings().eq(index).removeClass('none');
            //初始化
            $('.team-member').each(function(index, el) {
                var $news1 = $(el),
                    $pagesContL = $('.team-cont-l'),
                    $pagesContR = $('.team-cont-r .team-cont-wapper', $news1),
                    pagesContLImgH = $('img', $pagesContL).outerHeight(true),
                    $pagesContRH5 = $('> div > .name-ch', $pagesContR),
                    pagesContRH5H = $pagesContRH5.outerHeight(true),
                    $infoShow = $('.events-info-show', $pagesContR),
                    infoShowH = $infoShow.outerHeight(true),
                    pagesContRNewH = pagesContLImgH - (pagesContRH5H + infoShowH),
                    pagesContRTextH = pagesContRNewH - (pagesContRNewH%18);
                $('> div > div', $pagesContR).css({
                    'height': pagesContRTextH,
                    'overflow': 'hidden'
                })
                $infoShow.addClass('is-active');

            });
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
                pagesContRNewH = pagesContLImgH - (pagesContRH5H + infoShowH ),
                pagesContRTextH = pagesContRNewH - (pagesContRNewH%18)

            if (isActive) {
                $('> div > div', $pagesContR).removeAttr('style');
                $infoShow.removeClass('is-active');
            }else{
                $('> div > div', $pagesContR).css({
                    'height': pagesContRTextH,
                    'overflow': 'hidden'
                })
                $infoShow.addClass('is-active');
            }

        });
    


         var _map = window.location.search.replace('?a', '');

         if (_map <= ($('.myaccount-lf ul li').length - 1)) {
            $('.myaccount-lf ul li:eq('+ _map +')').trigger('click');
         }

    })
    

    

});
