<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<!-- modal -->


    <div class="modal fade" id="exampleModalLong" tabindex="-1" aria-labelledby="exampleModalLgLabel" style="display: none;" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-4" id="exampleModalLgLabel">회원 상세조회</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                    <div class="modal-body">
                        <p>회원 상세조회</p>
                    </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-dark">차단</button>
                    <button type="button" class="btn btn-danger">삭제</button>
                </div>
            </div>
        </div>
    </div>

<!-- modal -->
			<!-- project veiw -->
			<div class="view">
				<div class="view_inner">
					<div class="view-info">
						<strong class="view-tit">
							<span class="category project">P00001</span> <em>2024대덕인재개발원 리뉴얼</em></strong>
						<ul class="ul clearfix">
						
							<li><span class="list-tit">담당자</span><span>유길상 (개발2팀)</span></li>
							<li><span class="list-tit">진행기간</span><span>2024.04.05</span></li>
							<li><span class="list-tit">마감일</span><span>2024.04.05</span></li>
							<li><span class="list-tit">등록일</span><span>2024.04.05</span></li>
							<li><span class="list-tit">수정일</span><span>2024.04.05</span></li>
							<li><span class="list-tit">상 태</span><span>신규</span></li>
							<!-- 프로젝트 상태값:
									<li><span class="">상태</span><span>신규</span></li>
									<li><span class="">상태</span><span>안정</span></li>
									<li><span class="">상태</span><span>긴급</span></li>
							-->
						</ul>
					</div>
					<div class="view_content">


					</div>
				</div>

			</div>
			<!-- project veiw -->
			<!-- button -->
			<div class="btn-box clearfix mt-4">
				<button class="btn btn-secondary">목록</button>
				<div class="right float-end">
					<!-- <button class="btn btn-danger">취소</button> -->
					<button class="btn btn-danger">삭제</button>
					<button class="btn btn-primary">수정</button>
				</div>
			</div>
		<!-- button -->