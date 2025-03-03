<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

				<form id="searchForm">
					<input type="hidden" name="page"/>
					<input type="hidden" name="projectState" value="${paging.detailCondition.projectState }"/>
					<input type="hidden" name="project"  value="${paging.detailCondition.project }"/>
					<input type="hidden" name="ing"  value="${paging.detailCondition.ing }"/>
				</form>
				<form id="registerForm" action="${pageContext.request.contextPath}/project/register.do" method="get"></form>
				<div data-pg-role="searchUI" data-pg-target="#searchForm"
					class="searchBox d-flex">
					<button class="me-auto btn btn-primary " id="registerBtn">프로젝트 등록</button>
					<select class="me-1" name="projectState" data-pg-init-value="${paging.detailCondition.projectState }">
							<option value>분류선택</option>
							<c:forEach items="${projectStateList }" var="prost">
								<option value="${prost.cmId }">${prost.cmName }</option>
							</c:forEach>
					</select>
					<div class="fieldset flex">
						<input class="me-1" type="text" name="project"
							data-pg-init-value="${paging.detailCondition.project }" title="검색어를 입력해주세요"
							value="${paging.detailCondition.project }"
							placeholder="프로젝트 검색" />
						<button type="button" class="btn btn-primary"
							data-pg-role="searchBtn">검색</button>
					</div>

				</div>
			<table class="table">
				<caption>colgroup test</caption>
					
				<colgroup>
					<col style="width: auto;">
					<col style="width: auto;">
					<col style="width: auto;">
				</colgroup>

				<thead>
					<tr>
						<th scope="col">프로젝트 상태</th>
						<th scope="col">프로젝트ID</th>
						<th scope="col">담당자</th>
						<th scope="col">프로젝트명</th>
						<th scope="col">첨부파일</th>
						<th scope="col">등록일</th>
						<th scope="col">마감일</th>
						<th scope="col">위키이동</th>
					</tr>
				</thead>
				<tbody>
				<c:if test="${not empty projectList }">
					<c:forEach items="${projectList }" var="project" >
						<tr>
							<th scope="row">${project.proId }</th>
							<td>${project.proId }</td>
							<td>${project.empName}</td>
	
							<td><a href="${pageContext.request.contextPath}/project/dashboard/${project.proId}">
							<img class="new_icon" src="./resources/images/prog/new.png"/>${project.proName }</a>
							</td>
							<td><a><img class="png_icon"
									src="./resources/images/prog/word.png" /></a></td>
							<td>${project.proRegDtStr}</td>
							<td>${project.proDdlineExStr}</td>
	
							<td><button type="button" class="btn btn-primary">위키등록</button></td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty projectList }">
					<tr>
						<td colspan="8" class="text-center">현제 프로젝트가 없습니다.</td>
					</tr>
				</c:if>
					
				</tbody>
					
			</table>
				
${pagingHTML }
<script src="<c:url value='/resources/js/common/paging.js'/>"></script>
<script src="<c:url value='/resources/project/js/project.js'/>"></script>
