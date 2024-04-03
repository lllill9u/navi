<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

    
    
<!-- project veiw -->
						<div class="view task">
							<div class="view_inner">
								<div class="view-info">
									<strong class="view-tit">
										<span class="category project">T00001</span>
										<em>2024대덕인재개발원 리뉴얼</em></strong>
									<ul class="ul clearfix">

										<li><span class="list-tit">담당자</span>
											<span>우민규(디자인1팀, 사원)</span>
											<!-- <select class="select-box" aria-label="Default select example">
                                    <option selected>우민규(디자인1팀, 사원)</option>
                                    <option value="1">유길상(디자인1팀, 사원)</option>
                                    <option value="2">정민지(디자인1팀, 사원)</option>
                                    <option value="4">이상철(디자인1팀, 사원)</option>
                                    <option value="5">김태은(디자인1팀, 사원)</option>
                                </select> -->
										</li>
										<!-- <li><span class="list-tit">진행기간</span><span>2024.04.05</span></li> -->
										<li>
											<span class="list-tit">진행율</span>
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													aria-label="Example with label" style="width: 30%;"
													aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">30%</div>
											</div>
											<!-- <select class="select-box" aria-label="Default select example">
                                    <option selected>10%</option>
                                    <option value="1">30%</option>
                                    <option value="2">50%</option>
                                    <option value="3">70%</option>
                                    <option value="4">90%</option>
                                    <option value="5">99%</option>
                                </select> -->
										</li>
										<li><span class="list-tit">처리기한</span>
											<span>2024.08.31</span>

										</li>
										<li><span class="list-tit">수정일</span>
											<span>2024.04.05</span>
										</li>
										<li><span class="list-tit">등록일</span><span>2024.04.04</span></li>
										<!-- 프로젝트 상태값:
                                        <li><span class="">상태</span><span>신규</span></li>
                                        <li><span class="">상태</span><span>안정</span></li>
                                        <li><span class="">상태</span><span>긴급</span></li>
                                -->

									</ul>
								</div>
								<div class="view_content">
									(삭제예정)<br>
									진행율을 선택하면 데이터베이스에 처리상태가 자동반영 -> 오늘의 일정.<br>

									진행률 = 처리상태<br>
									10% = 대기<br>
									30%, 50%, 70%, 90% = 진행중<br>
									99% = 처리완료<br>
									100% = 최종완료<br>
									99% -> 30% = 반려<br>
									진행률이 선택되면 처리상태가 자동반영<br>
									<br>
									첨부파일은 위키 상세, 수정과 동일

								</div>
							</div>

						</div>
						<!-- project veiw -->
						<!-- button -->
						<div class="btn-box clearfix mt-4">
							<button onclick="moveList()" class="btn btn-secondary">목록</button>
							<div class="right float-end">
								<!-- <button class="btn btn-danger">취소</button> -->
								<button class="btn btn-danger">삭제</button>
								<button onclick="moveMod()" class="btn btn-primary">수정</button>
							</div>
						</div>
						<!-- button -->
						
 <script>
	function moveList() {
		location.href = "${pageContext.request.contextPath }/wiki"
	}
	function moveMod() {
		location.href = "${pageContext.request.contextPath }/wiki/modify"
	}
</script>