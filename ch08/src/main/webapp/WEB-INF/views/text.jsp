<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery/jquery-3.6.0.js"></script>
<script>
$(function(){
	$("button").click(function(){
		$("p").load("/ch08/api/text");
	})
})
</script>
</head>
<body>
	<h1>AJAX Test - Text Format Data</h1>
	
	<button>변경</button>
	<p>변경전<p>
</body>
</html>