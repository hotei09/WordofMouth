<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property = "userID" />
<jsp:setProperty name="user" property = "userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
<title>Word of mouth</title>
</head>
<body>
		<%
		
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		if(userID != null){
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('Already login')");
			script.println("location href = 'main.jsp'");
			script.println("</script>");
		}
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(user.getUserID(), user.getUserPassword());
		if(result == 1)
		{
			session.setAttribute("userID", user.getUserID());
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
		else if(result == 0){
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('Wrong Pass word')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if(result == -1){
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('Nothig to ID')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if(result == -2){
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('Error Database')");
			script.println("history.back()");
			script.println("</script>");
		}
		
		%>

</body>
</html>