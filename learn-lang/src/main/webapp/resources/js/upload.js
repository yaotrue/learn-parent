$(function(){
	// 初始化Web Uploader
	var uploader = WebUploader.create({

	    // 选完文件后，是否自动上传。
	    auto: true,

	    // swf文件路径
	    swf: base + '/images/webuploader/Uploader.swf',
	    
	    formData : {
	    	newId : $("#newId").val()
	    },

	    // 文件接收服务端。
	    server: base + '/admin/imageUpload',

	    // 选择文件的按钮。可选。
	    // 内部根据当前运行是创建，可能是input元素，也可能是flash.
	    pick: '#filePicker',

	    // 只允许选择图片文件。
	    accept: {
	        title: 'Images',
	        extensions: 'gif,jpg,jpeg,bmp,png',
	        mimeTypes: '.jpg,.jpeg,.png'
	    }
	});
	
	// 文件上传失败，显示上传出错。
	uploader.on( 'uploadError', function( file ) {
	   alert('上传失败，请刷新页面重试');
	});

	// 完成上传完了，成功或者失败，先删除进度条。
	uploader.on( 'uploadSuccess', function( file ) {
	    alert('上传成功');
	    window.location.reload();
	});
	
	$(".deleteImage").click(function(){
		$.ajax({
		  type: 'POST',
		  url: base + '/admin/deleteImage',
		  data: {imageId:$(this).parent().attr("imageId")},
		  success: function(){
			  window.location.reload();
		  }
		});
	})
	
	$(".moveUp").click(function(){
		$.ajax({
		  type: 'POST',
		  url: base + '/admin/moveImage',
		  data: {imageId:$(this).parent().attr("imageId"),type:1},
		  success: function(){
			  window.location.reload();
		  }
		});
	})
	
	$(".moveDown").click(function(){
		$.ajax({
		  type: 'POST',
		  url: base + '/admin/moveImage',
		  data: {imageId:$(this).parent().attr("imageId"),type:2},
		  success: function(){
			  window.location.reload();
		  }
		});
	})
	
	$(".goback").click(function(){
		window.location.href = base + '/admin/';
	})
})