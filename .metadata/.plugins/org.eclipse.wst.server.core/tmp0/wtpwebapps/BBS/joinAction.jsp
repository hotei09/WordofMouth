<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property = "userID" />
<jsp:setProperty name="user" property = "userPassword" />
<jsp:setProperty name="user" property = "userName" />
<jsp:setProperty name="user" property = "userGender" />
<jsp:setProperty name="user" property = "userEmail" />
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
		
		if(user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null || user.getUserGender() == null || user.getUserEmail() ==null){
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('Not correct information')");
			script.println("history.back()");
			script.println("</script>");
		} else {
		UserDAO userDAO = new UserDAO();
		int result = userDAO.join(user);
		if(result == -1)
		{
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('Please enter another ID')");
			script.println("history.back()");
			script.println("</script>");
		}
		else {
			session.setAttribute("userID", user.getUserID());
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
		}
		
		%>

</body>
</html>