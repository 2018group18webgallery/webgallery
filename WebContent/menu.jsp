<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/menu.css">
</head>
<body>
	<div id="menu">
		<ul>
			<li><a href="<%=request.getContextPath()%>/bigga.jsp">BIGGA</a></li>
			<li><a href="<%=request.getContextPath()%>/index.jsp">HOME</a></li>
			<li><a href="<%=request.getContextPath()%>/about.jsp">ABOUT</a></li>
			<li><a href="<%=request.getContextPath()%>/groupDiary.jsp">GROUP
					DIARY</a></li>
			<li><a href="<%=request.getContextPath()%>/admin.jsp">ADMIN</a></li>
		</ul>
	</div>
	
</body>
</html>