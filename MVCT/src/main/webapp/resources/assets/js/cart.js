$(function() {
	function getList() {
		$.ajax({
			type : "post",
			url : "cartdata.do",
			datatype : "text",
			error : function() {
				alert('통신실패')
			},
			success : function(data) {
				$(data).each(function() {
					$('#viewarea').html(data);
				})
				var total = 0;
				$('tbody').find('.subtotal-col').each(function(i, e) {
					total += $(this).text() * 1;
				})
				$("#totalprice").text(total);
				$('#viewarea').html(data);
			$('.cnt').click(function(e) {
				var number = $(this).val();
				var sb_serial = $(this).next().val();
				var c_price = $(this).next().next().val();
				$.ajax({
					type : "post",
					url : "cartupdate.do",
					datatype : "text",
					data:{number,sb_serial,c_price},
					success : function(data) {
						//alert(data+"성공")
						getList();
					},
					error : function() {
						alert('통신실패')
					}
					});
				})
			$('.del').click(function(e) {
				var sb_serial =  $(this).next().val();

				//alert(sb_serial)
				$.ajax({
					type : "post",
					url : "cartdelete.do",
					datatype : "text",
					data:{sb_serial},
					success : function(data) {
						//alert($.trim(data)+"성공")
						$('#sbcnt').text($.trim(data))
						getList();
					},
					error : function() {
						alert('통신실패')
					}
					});
				})
			}
			
		});
	}
	
	getList();
});