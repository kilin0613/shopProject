$(function (){
	var product_id = $('#product_id').val();
		$('#btnFavorites').click(function(){
			$.ajax({
				type: "POST",
				url: "checkLogin",
				dataType:"json",
				success : function(data){
					if(data){
						$.ajax({
							type : "POST",
							url : "changeFavorites",
							data : {"product_id" : product_id},
							dataType : "json",
							success : function(data) {
								if(data){
									alert("즐겨찾기에 추가되었습니다.");
									$('#btnFavorites').text("즐겨찾기삭제");
								}
								else{
									alert("즐겨찾기에 삭제되었습니다.");
									$('#btnFavorites').text('즐겨찾기추가');
								}
							},
							error: function(request,status,error){
								 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							}
						});
					}
					else{
						alert("로그인이 필요합니다.");
					}
					}	
				});
			});
	});