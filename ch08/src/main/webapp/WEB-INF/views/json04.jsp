<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery/jquery-3.6.0.js"></script>
<script>
$(function(){
	vo = {
		name: "둘리",
		password: "1234",
		message: "ㅎㅇ"
	}
	
	$("button").click(function(){
		$.ajax({
			url: "${pageContext.request.contextPath}/api/post02",
			async: true,
			type: 'post',
			dataType: 'json',
			contentType: 'application/json',
			data: JSON.stringify(vo),
			success: function(response){
				var html = "";
				html += ("<h2>" + response.data.no + "</h2>");
				html += ("<h3>" + response.data.name + "</h3>");
				html += ("<h4>" + response.data.message + "</h4>");
				
				$("#data").append(html);
			}
		});
	});
});
</script>
</head>
<body>
	<h1>AJAX Test - JSON Format Data</h1>
	
	<button>데이터 보내기(post, delete, put): json 포맷</button>
	<div id="data"></div>
</body>
</html>