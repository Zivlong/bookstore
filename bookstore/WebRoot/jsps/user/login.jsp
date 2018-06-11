<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <base href="<%=basePath%>">
    
    <title>登录页面</title>
    <link rel="stylesheet" href="<c:url value='/jsps/css/login.css'/>" />
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<%--
1. 显示错误信息
2. 回显
 --%>
	 <div class="body div1">

	   	<form action="<c:url value='/UserServlet'/>" method="post" target="_top">
	   	<input type="hidden" name="method" value="login"/>
	   	 	<div class="div2">
	   	 	<table border="0" align="center" width="100%" height="90%" cellspacing="0" bgcolor="#eeeeff">
	   	 		<tr align="center" height="20" align="center">
	   	 			<td colspan="2">
	   	 				<font size="6">用&nbsp;户&nbsp;登&nbsp;录</font>
	   	 			</td>
	   	 		</tr>
	   	 		<tr height="40" align="center">
	   	 			<p style="color: red; font-weight: 900">${msg }</p>
		    	</tr>
		    	<tr height="40" align="center">
		    		<td><input name="username" value="${form.username }" style="height:40px;width:230px" placeholder="用&nbsp;户&nbsp;名"></td>
		    	</tr>
		    	<tr height="40" align="center">
		    		<td><input name="password" value="${form.password }" type="password" style="height:40px;width:230px"  placeholder="密&nbsp;码"/></td>
		    	</tr> 
		    	<tr align="center" height="30">
		    		<td colspan="2">
		    			<input type="submit" value="立&nbsp;即&nbsp;登&nbsp;录" style="height:40px;width:230px">
		    		</td>
		    	</tr>
		    </table>
		    </div>
	    </form>
	</div>
  </body>
</html>
