<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
  <%-- sub 일 때 class sub 추가  , fixed-top 삭제 --%>
   <%--  sub 일 때  -> 이거사용 <header id="header" class="header sub">--%>
    <header id="header" class="header sub">
      <div  class="container d-flex align-items-center justify-content-lg-center position-relative " >
    
        <strong class="logo me-auto me-lg-0">
          <a href="${pageContext.request.contextPath}">
            <h1 class="sr-only">네비마인로고</h1>
          </a>
        </strong>
      
        <nav id="navbar" class="navbar order-last order-lg-0">
          <ul>
          	<c:forEach items="${main}" var="menu">
				    <li><a class="nav-link" href="${pageContext.request.contextPath}${menu.rescUrl}">${menu.rescMenu}</a></li>
            <%--  <li><a class="nav-link" href="${pageContext.request.contextPath}/project">프로젝트</a></li> --%>
			      </c:forEach>
            
          </ul>

         <%-- 알림 --%>
          <ul class="right_util d-flex">
            <li class="dropdown alarm">
              <a href="#">
                <span class="icon alarm"
                  ><span class="sr-only">알림</span><em class="num">1</em></span></a>
              
              <ul class="alarmlist">
                <li><a href="#">새글이 등록되었습니다.</a></li>
                <li><a href="#">새글이 등록되었습니다.</a></li>
              </ul>
            </li>
            <%-- 알림 --%>
            <%-- 프로필,로그아웃--%>
            <li class="dropdown profil">
              <a href="#">
                <span class="icon profil">
                  <span class="sr-only">프로필사진</span>
                </span>
                ${sessionMenu}
              </a>
              <ul class="my_list">
                <li class="li">
                  <em class=""><i class="icon alarm"></i>졸음방지</em>
                  <%-- checked 일때 on , checked 아닐 때 off --%>
                  <div class="wk_con form-check form-switch">
                    <input
                      class="form-check-input"
                      type="checkbox"
                      role="switch"
                      id="flexSwitchCheckChecked"
                      checked
                    />
                    <label class="form-check-label" for="flexSwitchCheckChecked" >on</label>
                  </div>
                </li>
                <li class="li">
                  <a href="${pageContext.request.contextPath}/mail"><i class="icon mail"></i>메일</a>
                </li>
              </ul>
            </li>
            <%--  프로필 ,로그아웃--%>
          </ul>
          <%--모바일--%>
          <i class="bi bi-list mobile-nav-toggle"></i>
          <%--모바일--%>
        </nav>
        <%-- .navbar --%>
      </div>
    </header>
<%-- End Header --%>