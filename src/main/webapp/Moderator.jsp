<%--
  Created by IntelliJ IDEA.
  User: thomassanfourche
  Date: 06/01/2022
  Time: 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Page Mod�rateur</title>
</head>
<% //Si l'utilisateur connect� n'est pas Mod�rateur, on le renvoie vers la page de connection
    if((request.getSession(false).getAttribute("Moderator")== null) )
    {
%>
<jsp:forward page="/Login.jsp"></jsp:forward>
<%} %>
<body>
<center><h2>Accueil Mod�rateur</h2></center>

Content de vous revoir <%=request.getAttribute("userName") %>

<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">D�connexion</a></div>

</body>
</html>