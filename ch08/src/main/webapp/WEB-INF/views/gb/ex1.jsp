<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery/jquery-3.6.0.js"></script>
<script>
var render = function(vo) {
	var html = "<li data-no='" + vo.no + "'>" + 
				"<strong>" + vo.name + "</strong>" +
				"p>" + vo.message + "</p>" + 
				"<strong></strong>" + 
				"<a href='' data-no='" + vo.no + "'>삭제</a>" + 
				"</li>";
	return html;
}
$(function() {
	$("#add-form").submit(function(event){
		event.preventDefault();
		
		vo = {};
		
		vo.name = $('#input-name').val();
		vo.password = $('#input-password').val();
		vo.message = $('#tx-content').val();
		
		console.log(vo);
		
		$.ajax({
			url: '${pageContext.request.contextPath }/api/guestbook/add',
			type: 'post',
			data: 'json',
			contentType: 'application/json',
			data: JSON.stringify(vo),
			success: function(response){
				
				if(response.result !== 'success'){
					console.error(response.message);
					return;
				}
				
				var html = render(response.data);
				$('#list-guestbook').prepend(html);
				$("#add-form")[0].reset();
			},
			error: function(xhr, code, message){
				console.error(message);
			}
		})
	})
});
</script>
</head>
<body>
	<div id="guestbook">
		<h1>방명록</h1>
		<form id="add-form" action="" method="post">
			<input type="text" id="input-name" placeholder="이름"> <input
				type="password" id="input-password" placeholder="비밀번호">
			<textarea id="tx-content" placeholder="내용을 입력해 주세요."></textarea>
			<input type="submit" value="보내기" />
		</form>
		<ul id="list-guestbook">

			<li data-no='2'><strong>지나가다가</strong>
				<p>
					별루입니다.<br> 비번:1234 -,.-
				</p> <strong></strong> <a href='' data-no=''>삭제</a></li>

			<li data-no=''><strong>둘리</strong>
				<p>
					안녕하세요<br> 홈페이지가 개 굿 입니다.
				</p> <strong></strong> <a href='' data-no=''>삭제</a></li>

			<li data-no=''><strong>주인</strong>
				<p>
					아작스 방명록 입니다.<br> 테스트~
				</p> <strong></strong> <a href='' data-no=''>삭제</a></li>


		</ul>
	</div>

</body>
</html>