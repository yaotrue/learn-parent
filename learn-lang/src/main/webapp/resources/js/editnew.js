$(function(){
	$("#saveNewBtn").click(function(){
		if($("#title_zh").val() == ''){
			alert('标题中文不能为空！');
			return false;
		}
		
		if($("#title_en").val() == ''){
			alert('标题英文不能为空！');
			return false;
		}
		
		if($("#content_zh").val() == ''){
			alert('内容中文不能为空！');
			return false;
		}
		
		if($("#content_en").val() == ''){
			alert('内容英文不能为空！');
			return false;
		}
		
		if($("#author_zh").val() == ''){
			alert('发布人中文不能为空！');
			return false;
		}
		
		if($("#author_en").val() == ''){
			alert('发布人英文不能为空！');
			return false;
		}
		
		$("#saveNewForm").submit();
	})
	
	$("#gobackBtn").click(function(){
		window.location.href = base + '/admin/';
	})
})