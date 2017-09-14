$(function(){
	$(".deleteNews").click(function(){
		var newsId = $(this).parent().attr("newsId");
		$.ajax({
		  type: 'POST',
		  url: base + '/admin/deleteNews',
		  data: {newId:newsId},
		  success: function(){
			  window.location.reload();
		  }
		});
	})
	
	$(".newsUp").click(function(){
		var newsId = $(this).parent().attr("newsId");
		$.ajax({
		  type: 'POST',
		  url: base + '/admin/newsUp',
		  data: {newId:newsId},
		  success: function(){
			  window.location.reload();
		  }
		});
	})
	
	$(".newsDown").click(function(){
		var newsId = $(this).parent().attr("newsId");
		$.ajax({
		  type: 'POST',
		  url: base + '/admin/newsDown',
		  data: {newId:newsId},
		  success: function(){
			  window.location.reload();
		  }
		});
	})
})