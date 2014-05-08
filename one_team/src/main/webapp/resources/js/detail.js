/**
 * 	게시판 상세보기 : 댓글
 */

	$(document).ready(function(){		
		$('#btnList').bind('click',function(){
			location.href="..";
		});
		
		$('#btnUpdate').bind('click',function(){
			location.href="update";
		});

		$('#btnDelete').bind('click',function(){
			if(confirm('정말로 삭제하시겠습니까?')){	
				location.href='delete';
			}
		});
		
		$('#btnCommentOk').click(function(){
			var user_id = '${sessionScope.user_id}';
			var bcomment = $('#taComment').val();
			var bno = ${bno};
			var no = ${no};
			var comment_url = $('#comment_url').val();
			$.ajax({
				url:comment_url,
				type:'POST',
				data:{
					'user_id':user_id,
					'bcomment':bcomment,
					'bno'	 :bno,
					'no'	 :no
					
				},
				success:function(data){
					alert(data+":"+"입력 성공!");
					$('#taComment').val('');
				}
			});
		});
		
	});
