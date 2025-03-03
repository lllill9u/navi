<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="security"%>

    
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0,shrink-to-fit=no">
	<meta http-equiv="X-UA-compatible" content="IE=edge">
	<%-- meta --%>
	<meta name="title" content="SKJ-Project Management System">
	<meta name="author" content="SKJ 대덕인재개발원 3조">
	<meta name="keywords" content="SKJ-Project Management System, PMS">
	<meta name="description" content="대덕인재개발원 인공지능AI반 최종프로젝트 PMS 3조 SKJ">
	<meta name="copyright" content="대덕인재개발원 인공지능AI반 최종프로젝트 PMS 3조 SKJ">
	<%-- meta --%>
	<%-- og  --%>
	<meta property="og:title" content="SKJ-Project Management System">
	<meta property="og:type" content="Project Management System">
	<meta property="og:site_name" content="SKJ-Project Management System">
	<meta property="og:description" content="대덕인재개발원 인공지능AI반 최종프로젝트 PMS 3조 SKJ">
	<meta property="og:image" content="${pageContext.request.contextPath }/resources/images/layout/og.jpg">
	<security:csrfMetaTags/>
	<%-- og  --%>
	<title>SKJ-PMS</title>
	<%-- Favicon--%>
	<%-- <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/images/layout/favicon.ico" /> --%>
	<%-- Bootstrap CSS --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/dist/css/bootstrap.min.css">
	<%--  datepicker css  수정 , 등록 페이지에만 -일감-->
	<link rel="stylesheet" href="./resources/js/common/datepicker/jquery-ui.css">
	datepicker css  수정 , 등록 페이지에만 -일감--%>
	<link rel="stylesheet" href="./resources/js/common/datepicker/jquery-ui.css">
	<%--gant --%>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css"> 
   	<link href="${pageContext.request.contextPath }/resources/js/common/gant/css/style.css" type="text/css" rel="stylesheet">
    <link href="//cdnjs.cloudflare.com/ajax/libs/prettify/r298/prettify.min.css" rel="stylesheet" type="text/css">
  	<%--gant --%>
   <%-- customLayout --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/common_icon.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/common_table.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/template/B/headerB.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/template/B/footerB.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/template/B/layoutB.css">

	<%-- 서브페이지일 때만 출력되게하기 --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/template/B/sublayoutB.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/template/prog.css" />
	<%-- 서브페이지일 때만 출력되게하기 --%>
	<%--  메인만 출력--%>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/js/common/aos/aos.css" />
	 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/template/B/mainB.css" />
	<%--  메인만 출력--%> 
	
	<%-- script --%>
	<script src="${pageContext.request.contextPath }/resources/js/common/jquery-3.7.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/assets/dist/js/bootstrap.bundle.min.js"></script>
	<%--  modify페이지에서만 로드
	<script src="./resources/js/common/ckeditor4/ckeditor.js"></script>
	<script src="./resources/js/common/datepicker/jquery-ui.js"></script>
 	modify페이지에서만 로드--%>
	<%-- datepicker lang 
	<script src="./resources/js/common/datepicker/lang/datepicker-ko.js"></script>
	 datepicker lang--%>
	<%--메인일때만 로드 --%>
<%-- 	<script src="${pageContext.request.contextPath }/resources/js/common/aos/aos.js"></script> --%>

	<%--메인일때만 로드 --%>
	<%-- script --%>
	<%--gantt --%>
	
        <script src="${pageContext.request.contextPath }/resources/js/common/gant/js/jquery.min.js"></script>
	    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
	    <script src="${pageContext.request.contextPath }/resources/js/common/gant/js/jquery.fn.gantt.js"></script>
	    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	    <script src="//cdnjs.cloudflare.com/ajax/libs/prettify/r298/prettify.min.js"></script>
    <%--gantt --%>
<!--     csrfToken -->
		
    
    
	