<jsp:useBean id="calcula" class="beans.BeanCursoJsp" type="beans.BeanCursoJsp" scope="page" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" />
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<link rel="stylesheet" href="resources/css/estilo.css" />
	<title>Curso JSP</title>
</head>
<body>
	<!-- Tela de Login de Acesso Para o Sistema -->
	<div class="login-page">
	     <center><h3>Projeto Did�tico</h3></center><br/>
	     <center><h1>JSP + Servlet + JDBC</h1></center> 
	     <center><span><b>USU�RIO:</b> admin <br/> <b>SENHA:</b> admin</span></center><br/> 
  		<div class="form">
			<form action="LoginServlet" class="login-form">
				Login:
				<input type="text" id="login" name="login" />
				<br />
				Senha:
				<input type="password" id="senha" name="senha" />
				<br />
				<button type="submit" value="Logar">Logar</button>
			</form>
		</div>
		
	</div>
</body>
</html>