<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<c:forEach items="${empList }" var="emp">
<div class="modal fade info" id="${emp.empId}modal" tabindex="-1"
	aria-labelledby="employeeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
			<div class="modal-content admin-emp">
			<div class="modal-header adminmodal-header">
				<h5 class="modal-title" id="employeeModalLabel">사원 정보</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-4 border-right">
						<div class="text-center mb-3">
							<img src="https://www.ibric.org/upload/board/files/hbs_author/author_8/0040998_1.jpg?65524" class="rounded-circle img-thumbnail" alt="사원 사진">
						</div>
						<ul class="list-unstyled">
							<li><strong>이름:</strong> <span id="employeeName">${emp.empName }</span></li>
							<li><strong>이메일:</strong> <span id="employeeEmail">${emp.empMail }</span></li>
							<li><strong>핸드폰번호:</strong> <span id="employeePhone">${emp.empPhone }</span></li>
							<li><strong>나이:</strong> <span id="employeeAge">${emp.empAge }</span></li>
						</ul>
					</div>
					<div class="col-md-8">
						<table class="table table-sm">
							<tbody class="admin-table">
								<tr>
									<th>직급</th>
									<td id="employeePosition">${emp.psName }</td>
								</tr>
								<tr>
									<th>부서</th>
									<td id="employeeDeptName">${emp.deptName }</td>
								</tr>
								<tr>
									<th>주민번호</th>
									<td id="employeeResidentNumber">${emp.empRrno }</td>
								</tr>
								<tr>
									<th>주소</th>
									<td id="employeeAddress">${emp.empAddr } ${emp.empAddr2 }</td>
								</tr>
								<tr>
									<th>전화번호</th>
									<td id="employeeTel">${emp.empTel }</td>
								</tr>
								<tr>
									<th>입사일</th>
									<td id="employeeHireDate">${emp.empCmpYmdStr }</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-bs-dismiss="modal">뒤로가기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</c:forEach>





<!--inner-->
<form id="searchForm">
	<input type="hidden" name="page"/>
	<input type="hidden" name="postion" value="${paging.detailCondition.postion }"/>
	<input type="hidden" name="dept"  value="${paging.detailCondition.dept }"/>
	<input type="hidden" name="word"  value="${paging.detailCondition.word }"/>
	<input type="hidden" name="pms" value="${paging.detailCondition.pms }"/>
	<input type="hidden" name="block" value="${paging.detailCondition.block }"/>
	<input type="hidden" name="notblock" value="${paging.detailCondition.notblock }"/>
</form>



<!-- BOOTSTRAP TAB -->
<div class="nav nav-tabs" id="nav-tab" role="tablist">
	<a href="${pageContext.request.contextPath }/admin/emp/block"><button class="nav-link active" id="nav3" data-bs-toggle="tab"
		data-bs-target="#nav3-con" type="button" role="tab"
		aria-controls="nav3-con" aria-selected="true">
		접근차단</button></a>
	<a href="${pageContext.request.contextPath }/admin/emp/block?block=block"><button class="nav-link" id="nav4" data-bs-toggle="tab"
		data-bs-target="#nav4-con" type="button" role="tab"
		aria-controls="nav4-con" aria-selected="false">
		차단해제</button></a>
</div>


<%-- <a href="${pageContext.request.contextPath }/admin/emp"><button class="btn btn-primary">전체 사원 조회</button></a> --%>
<%-- <a href="${pageContext.request.contextPath }/admin/emp?pms=pms"><button class="btn btn-primary">PMS 사원 조회</button></a> --%>
<div data-pg-role="searchUI" data-pg-target="#searchForm"
	class="searchBox d-flex justify-content-end">
	
	<select class="me-1" name="postion" data-pg-init-value="${paging.detailCondition.postion }">
			<option value>분류선택</option>
			<c:forEach items="${positionList }" var="ps">
				<option value="${ps.psId }">${ps.psName }</option>
			</c:forEach>
	</select>
	<select class="me-1" name="dept" data-pg-init-value="${paging.detailCondition.dept }">
			<option value>분류선택</option>
			<c:forEach items="${deptList }" var="dp">
				<option value="${dp.deptId }">${dp.deptName }</option>
			</c:forEach>
	</select>
	<div class="fieldset flex">
		<input class="me-1" type="text" name="word"
			data-pg-init-value="${paging.detailCondition.word }" title="검색어를 입력해주세요"
			value="${paging.detailCondition.word }"
			placeholder="사원 검색" />
		<button type="button" class="btn btn-primary"
			data-pg-role="searchBtn">검색</button>
	</div>
</div>
<div class="side_inner">
	<div class="content-box">
		<div class="content">
			<div class="inner html">
				<!-- ui : s -->
				<!-- ui : table s -->
				<table class="table task-list text-center">
					<colgroup>
						<col style="width: 5%;">
						<col style="width: auto;">
						<col style="width: auto;">
						<col style="width: 8%;">
						<col style="width: auto;">
						<col style="width: 30%;">
						<col style="width: auto;">
					</colgroup>
					<thead class="admin-thead">
						<tr>
							<th scope="col"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" onclick="selectAll(this)"></th>
							<th scope="col">사원번호</th>
							<th scope="col">이름</th>
							<th scope="col">직급</th>
							<th scope="col">휴대번호</th>
							<th scope="col">주소</th>
							<th scope="col">상세보기</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${not empty empList }">
						<c:forEach items="${empList }" var="emp" >
							<tr>
								<td><input type="checkbox" class="empCheckbox"></td>
								<th scope="row">${emp.empId }</th>
								<td>${emp.empName}(${emp.deptName})</td>
								<td>${emp.psName }</td>
								<td>${emp.empPhone }</td>
								<td class="text-start">${emp.empAddr } ${emp.empAddr2}</td>
								<td><button type="button" class="btn btn-primary" data-bs-toggle="modal"
											data-bs-target="#${emp.empId}modal">사원 상세정보</button></td>
							</tr>
						</c:forEach>
					</c:if>
					<c:if test="${empty empList }">
						<td colspan="8" class="text-center">차단된 회원이 없습니다.</td>
					</c:if>
					
					</tbody>
				</table>
				<tfoot>
			<!-- 삭제버튼과 삭제확인 모달 -->
			<div class="right float-end delete_content">
				<button class="btn btn-danger black-btn" data-bs-toggle="modal" data-bs-target="#deleteModal">차단</button>
				<form id="blockForm" action="${pageContext.request.contextPath }/admin/emp/block">
					<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<strong class="modal-title fs-5" id="deleteModalLabel">안내</strong>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body" id="deleteResult">"해당 회원을 차단하시겠습니까?"</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
									<button type="submit" class="btn btn-danger" id="deleteBtn">확인</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		<!-- // 삭제버튼과 삭제확인 모달 -->	
		<!-- 복구버튼과 복구확인 모달 -->
			<div class="right float-end restore_content">
				<button class="btn btn-secondary black-btn" data-bs-toggle="modal" data-bs-target="#restoreModal">차단해제</button>
				<form id="restoreForm" action="${pageContext.request.contextPath }/admin/emp/block/?block=block">

					<div class="modal fade" id="restoreModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<strong class="modal-title fs-5" id="restoreModalLabel">안내</strong>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body" id="restoreResult">"PMS접근차단을 해제 하시겠습니까??"</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
									<button type="submit" class="btn btn-primary" id="restoreBtn">확인</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		<!-- //복구버튼과 복구확인 모달 -->
		</tfoot>
		<!--하단부 페이징 -->
		${pagingHTML }
			</div>
		</div>
		<!-- 하단부 페이징과 삭제버튼 -->
	</div>
</div>
<!--inner-->
<script src="${pageContext.request.contextPath }/resources/admin/js/adminMove.js"></script>
<script src="<c:url value='/resources/js/common/paging.js'/>"></script>


<!-- 체크박스 전체 선택 및 해제 스크립트-->
<script> 
	function selectAll(selectAll)  {
		const checkboxes = document.querySelectorAll('input[type="checkbox"]');
	   	checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked
	   });
	}
</script>
<!-- /체크박스 전체 선택 및 해제 스크립트-->


<!-- url 뒤 6자리에 따른 button 표시여부 스크립트-->
<script>
    // 현재 페이지 URL 가져오기
    var currentPageUrl = window.location.href;

    // URL 뒤의 세 글자 확인
    var lastSIxChars = currentPageUrl.substr(-6);

    // 삭제 및 복구 버튼 영역 선택
    var deleteContent = document.querySelector('.delete_content');
    var restoreContent = document.querySelector('.restore_content');

    // URL 뒤의 세 글자에 따라 조건 분기
    if (lastSIxChars === '/block'|| lastSIxChars === 'tblock' ) {
        // "ing"로 끝나는 경우, 삭제 버튼 영역 표시
        deleteContent.style.display = 'block';
        restoreContent.style.display = 'none'; // 다른 영역은 숨기기
    } else if (lastSIxChars === '=block'|| lastSIxChars === 'block=') {
        // "end"로 끝나는 경우, 복구 버튼 영역 표시
        deleteContent.style.display = 'none'; // 다른 영역은 숨기기
        restoreContent.style.display = 'block';
    } else {
        // 그 외의 경우, 모든 영역 숨기기
        deleteContent.style.display = 'none';
        restoreContent.style.display = 'none';
    }
</script>
<!-- / url 뒤 3자리에 따른 button 표시여부 스크립트-->
<script src="${pageContext.request.contextPath }/resources/admin/js/manageEmpBlock.js"></script>
