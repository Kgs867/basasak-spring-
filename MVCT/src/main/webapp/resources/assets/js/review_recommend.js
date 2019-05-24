$(function() {
	function getRecommend() {
	
	//var r_num=$('#r_num').text();
	$.ajax({
		type : "post",
		url : "review_recommend.do",
		data:{r_num : $('#r_num').text()},
		datatype : "text",
		error : function() {
			alert('통신실패')
		},
		success : function(data) {

				$('#r_recommend').val(data.trim());
				
				$('#recommend').click(function(e) {
					$.ajax({
						type : "post",
						url : "review_recommend_update.do",
						data:{r_recommend : $('#r_recommend').val().trim(),
								 r_num : $('#r_num').text()},
						datatype : "text",
						success : function(data) {
							getRecommend();
						},
						error : function() {
							alert('통신실패')
						}
						});
				})
		}
	})
	}	
	getRecommend();
});