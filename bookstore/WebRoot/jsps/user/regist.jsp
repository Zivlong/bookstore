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
    
    <title>注册</title>
    <link rel="stylesheet" href="<c:url value='/jsps/css/register.css'/>" />
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%--
  1. 显示errors --> 字段错误
  2. 显示异常错误
  3. 回显
   --%>
   <div class="body div2">
		<form action="<c:url value='/UserServlet'/>" method="post">
		<input type="hidden" name="method" value="regist"/>
	   	 	<div class="div3">
	   	 	<table bgcolor="#eeeeff" align="center" width="100%" height="90%" cellspacing="0"collapse="0";>
	   	 		
	   	 		<tr align="center" height="20" align="center">
	   	 			<td colspan="2">
	   	 				<font size="6">注&nbsp;册&nbsp;账&nbsp;户</font>
	   	 			</td>
	   	 		</tr>
	   	 		<tr height="40" align="center">
		    		<td>
		    			<p style="color: red; font-weight: 900">${msg }</p>
		    		</td>
		    	</tr>
		    	<tr height="40" align="center">
		    		<td>
		    			<input type="text" name="username" value="${form.username }" style="height:40px;width:230px" placeholder="用&nbsp;户&nbsp;名"><br>
		    			<span style="color: red; font-weight: 900">${errors.username }</span>
		    		</td>
		    	</tr>
		    	<tr height="40" align="center">
		    		<td>
		    			<input type="password" name="password" value="${form.password }" style="height:40px;width:230px" placeholder="密&nbsp;码"><br>
		    			<span style="color: red; font-weight: 900">${errors.password }</span>
		    		</td>
		    	</tr> 
		    	<tr height="40" align="center">
		    		<td>
		    			<input type="text" name="email" value="${form.email }" style="height:40px;width:230px" placeholder="邮&nbsp;箱"><br>
		    			<span style="color: red; font-weight: 900">${errors.email }</span>
		    		</td>
		    	</tr>
		    	<tr align="center" height="30">
		    		<td colspan="2">
		    			<input type="submit" value="立&nbsp;即&nbsp;注&nbsp;册" style="height:40px;width:230px" >
		    		</td>
		    	</tr>
		    </table>
		    </div>
	    </form>
	</div>
  </body>
</html>
