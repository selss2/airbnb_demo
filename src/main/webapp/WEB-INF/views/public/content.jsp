<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath()%>"/>
<c:set var="img" value="${context}/resources/img"/>	
<c:set var="css" value="${context}/resources/css"/>	
<c:set var="js" value="${context}/resources/js"/>
<br />

<div class="container">
<section id = "pulbic_content"><br />
	<a id="pulbic_guide_regist" ></a> <br />
<button type="button" class="btn btn-primary" id="guide_mgmt"><a href="${context}/guide/content">가이드 북 관리</a></button>
<button type="button" class="btn btn-primary" id="guide_mgmt2"><a href="${context}/guide/content2">구글API 테스트</a></button>
    </br>
<button type="button" class="btn btn-primary" id="guidebook"><a href="${context}/guidebook/content">가이드 북 보기</a></button>
	
</section>
</div>