$(document).ready(function() {
	var product_id = $('#product_id').val();
		$.ajax({
			type: "POST",
			url: "checkLogin",
			dataType:"json",
			success : function(data){
				if(data){
					 $.ajax({
							type : "POST",
							url : "checkFavorites",
							data : {"product_id" : product_id},
							dataType : "json",
							success : function(data){
								if(data){
									$('#btnFavorites').text("즐겨찾기삭제");
								}
								else{
									$('#btnFavorites').text('즐겨찾기추가');
								}
							},
							error: function(request,status,error){
								 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							}
						});	 
				}
			}
		})		
});