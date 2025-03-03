<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!-- ui : 포토공간목록 s -->

<!-- project veiw -->
<div class="view">
	<div class="view_inner">
		<div class="view-info">
			<strong class="view-tit icon-tit"> <span class="icon photo"></span>
				<em>새글 HVDC 수전전력 단가 관련 문의</em></strong>
			<ul class="ul clearfix">

				<li><span class="list-tit">작성자</span><span>유길상(개발2팀)</span></li>
				<li><span class="list-tit">등록일</span><span>2024.04.05</span></li>
				<li><span class="list-tit">답변상태</span><span>미답변</span></li>
				<li><span class="list-tit">수정일</span><span>2024.04.05</span></li>

			</ul>
		</div>
		<div class="view_content">
안녕하세요~!
다름아니라 육지-제주 hvdc 관련 궁금한 점이 있어 문의드립니다.



1) 현재 제주에서 hvdc #1, #2를 통해 육지로부터 전기를 공급받을 수 있다고 알고 있습니다.
그렇다면 hvdc 전기를 제주에 판매할 때, 단가는 육지 smp를 적용하여 판매되나요?
(아니면 제주 smp를 적용하는지, 또는 제3의 가격결정방식이 있는지 궁금합니다. )


1-1) 더불어 hvdc 수전전력에 대한 정산단가가 따로 산정되는지도 궁금합니다.
(전기 1kwh를 생산할 때의 원가)


2) 그렇다면 반대로 hvdc #3을 통해 제주에서 육지로 전기를 역송하면 육지에 전기를 판매하게 될텐데
이 경우에는 육지 smp / 제주 smp 중 어떤 가격을 적용하나요?



감사합니다~!!!
<!-- 			<!-- img  -->
<!-- 			<div class="photo-view_img"> -->
<!-- 				<strong class="d-flex align-items-center"> <i -->
<!-- 					class="icon camera"></i>첨부된 이미지 -->
<!-- 				</strong> -->
<!-- 				<div class=""> -->
<!-- 					<ul class="scroll_x my-2 py-3"> -->
<!-- 						item -->
<!-- 						<li class="photo-img_item"> -->
<!-- 							<div class="img-in"> -->
<!-- 								<img src="https://via.placeholder.com/150" -->
<!-- 									class="img-thumbnail me-2" alt="이미지1"> -->
<!-- 							</div> -->
<!-- 						</li> -->
<!-- 						item -->
<!-- 						item -->
<!-- 						<li class="photo-img_item"> -->
<!-- 							<div class="img-in"> -->
<!-- 								<img src="https://via.placeholder.com/150" -->
<!-- 									class="img-thumbnail me-2" alt="이미지1"> -->
<!-- 							</div> -->
<!-- 						</li> -->
<!-- 						item -->
<!-- 						item -->
<!-- 						<li class="photo-img_item"> -->
<!-- 							<div class="img-in"> -->
<!-- 								<img src="https://via.placeholder.com/150" -->
<!-- 									class="img-thumbnail me-2" alt="이미지1"> -->
<!-- 							</div> -->
<!-- 						</li> -->
<!-- 						item -->
<!-- 						item -->
<!-- 						<li class="photo-img_item"> -->
<!-- 							<div class="img-in"> -->
<!-- 								<img src="https://via.placeholder.com/150" -->
<!-- 									class="img-thumbnail me-2" alt="이미지1"> -->
<!-- 							</div> -->
<!-- 						</li> -->
<!-- 						item -->
<!-- 						item -->
<!-- 						<li class="photo-img_item"> -->
<!-- 							<div class="img-in"> -->
<!-- 								<img src="https://via.placeholder.com/150" -->
<!-- 									class="img-thumbnail me-2" alt="이미지1"> -->
<!-- 							</div> -->
<!-- 						</li> -->
<!-- 						item -->
<!-- 						item -->
<!-- 						<li class="photo-img_item"> -->
<!-- 							<div class="img-in"> -->
<!-- 								<img src="https://via.placeholder.com/150" -->
<!-- 									class="img-thumbnail me-2" alt="이미지1"> -->
<!-- 							</div> -->
<!-- 						</li> -->
<!-- 						item -->
<!-- 						item -->
<!-- 						<li class="photo-img_item"> -->
<!-- 							<div class="img-in"> -->
<!-- 								<img src="https://via.placeholder.com/150" -->
<!-- 									class="img-thumbnail me-2" alt="이미지1"> -->
<!-- 							</div> -->
<!-- 						</li> -->
<!-- 						item -->
<!-- 						item -->
<!-- 						<li class="photo-img_item"> -->
<!-- 							<div class="img-in"> -->
<!-- 								<img src="https://via.placeholder.com/150" -->
<!-- 									class="img-thumbnail me-2" alt="이미지1"> -->
<!-- 							</div> -->
<!-- 						</li> -->
<!-- 						item -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<!-- img --> -->
<!-- 		</div> -->
	</div>
	<!-- commentForm -->
	<form class="comment mb-5">
		<legend class="comment-tit">댓글쓰기</legend>
		<div class="card bg-light">
			<div class="card-body comment-body">
				<!-- comment list -->
				<div class="comment-list">
					<ul class="ul depth1 clearfix">
						<li class="li">
							<div class="depth-row">
								<div class="comment-content">
									<div class="imgbox">
										<div class="img-in no-img">
											<!-- no-img일때  -->
											<img src="./resources/images/prog/navi.jpg" alt="작성자프로필이미지">
											<!-- no-img일때  -->
										</div>
									</div>
									<div class="writebox">
										<span>집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고
											싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요
											집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고
											싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요
											집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고
											싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요</span>
									</div>


								</div>
								<div class="comment-info d-flex justify-content-between">

									<div class="left  d-flex ">
										<span class="comment-writer"> <i class="icon writer"></i>
											<em>유길상(개발1팀)</em>
										</span> <span class="comment-date  ms-4"> <i class="icon date"></i>2024.01.03
										</span>


									</div>
									<button type="button" class="btn btn-danger ms-1"
										data-bs-toggle="modal" data-bs-target="#exampleModal">삭제</button>
								</div>
							</div> <!-- depth2 -->
							<ul class="ul depth2 border-top">
								<li>
									<div class="depth-row">
										<div class="comment-content">
											<div class="imgbox">
												<div class="img-in no-img">
													<!-- no-img일때  -->
													<img src="./resources/images/prog/navi.jpg" alt="작성자프로필이미지">
													<!-- no-img일때  -->
												</div>
											</div>
											<div class="writebox">
												<span>나눔하고 싶습니다.</span>
											</div>

										</div>
									</div>
									<div class="comment-info d-flex justify-content-between">

										<div class="left  d-flex ">
											<span class="comment-writer"> <i class="icon writer"></i>
												<em>유길상(개발1팀)</em>
											</span> <span class="comment-date  ms-4"> <i
												class="icon date"></i>2024.01.03
											</span>


										</div>
										<button type="button" class="btn btn-danger ms-1"
											data-bs-toggle="modal" data-bs-target="#exampleModal">삭제</button>
									</div>
								</li>

							</ul> <!-- depth2 -->
						</li>
						<li class="li border-top">
							<div class="depth-row">
								<div class="comment-content">
									<div class="imgbox">
										<div class="img-in no-img">
											<!-- no-img일때  -->
											<img src="./resources/images/prog/navi.jpg" alt="작성자프로필이미지">
											<!-- no-img일때  -->
										</div>
									</div>
									<div class="writebox">
										<span>나눔하고 싶습니다.</span>
									</div>

								</div>
								<div class="comment-info d-flex justify-content-between">

									<div class="left  d-flex ">
										<span class="comment-writer"> <i class="icon writer"></i>
											<em>유길상(개발1팀)</em>
										</span> <span class="comment-date  ms-4"> <i class="icon date"></i>2024.01.03
										</span>
									</div>
									<button type="button" class="btn btn-danger ms-1"
										data-bs-toggle="modal" data-bs-target="#exampleModal">삭제</button>
								</div>
							</div>
						</li>
					</ul>

				</div>
				<!-- comment list -->
				<!-- comment-input -->
				<div class="d-flex mb-4 comment-input w-100">
					<label for="textarea"><span class="sr-only">댓글입력창</span></label>
					<textarea class="form-control" rows="5" placeholder="댓글을 입력해주세요"
						id="textarea"></textarea>
					<input class="btn btn-secondary register" type="submit" value="등록">
				</div>
				<!-- comment-input -->

			</div>
		</div>
	</form>
	<!-- commentForm -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<strong class="modal-title fs-5" id="exampleModalLabel">안내</strong>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">"댓글을 삭제하시겠습니까?"</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">확인</button>
				</div>
			</div>
		</div>
	</div>
	<!-- modal -->
	<!-- commentForm -->

</div>

 
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
		location.href = "${pageContext.request.contextPath }/board/qna"
	}
	function moveMod() {
		location.href = "${pageContext.request.contextPath }/board/qna/modify"
	}
</script>