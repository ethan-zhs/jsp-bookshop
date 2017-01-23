<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib  prefix="s"  uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	 <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	 <title><tiles:getAsString name="pageTitle"/></title>
	 <link rel="Shortcut Icon" href="${pageContext.request.contextPath}/lib/images/favicon.ico" /> 
	 <link href="${pageContext.request.contextPath}<tiles:getAsString name="css"/>" type="text/css" rel="stylesheet"/>
	 <tiles:insertAttribute name="script"/>
</head>
<body>
	<tiles:insertAttribute name="body"/>
	<tiles:insertAttribute name="footer"/>
</body>
</html>