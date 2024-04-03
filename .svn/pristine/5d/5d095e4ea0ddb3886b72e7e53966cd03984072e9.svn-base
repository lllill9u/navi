<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
				<!-- retreive -->
				<div class="">
					<!-- form -->
					<form class="commonForm" action="">
						<fieldset>
							<legend>
								<span class="sr-only">?? 수정</span>
							</legend>
			
							<!-- 프로필 -->
							<div class="row profil">
								<div class="label col-sm-3">
									<label for="profilFile" class="form-label">프로필</label>
								</div>
								<div class="form_content col-sm-6">
									<div class="profil_img block">
										<div class="img-in">
											<img src="./resources/images/prog/navi.jpg" alt="프로필이미지">
										</div>
									</div>
									<div class="file block">
										<span class="filebtn btn btn-secondary">파일첨부</span>
										<input class="fileInput" id="profilFile" type="file">
										<!-- accept="image/png, image/jpeg, image/gif" -->
									</div>
								</div>
								<!-- profil script -->
								<script>
									function profilImg() {
										// 첨부 input 변수 가져오기
										let addfile = document.querySelector("#profilFile");
										// 첨부된 이미지 요소
										let imgPath = document.querySelector(".profil_img img");
			
										addfile.addEventListener("change", (event) => {
											let thisTarget = event.target;
											let fileType = thisTarget.files[0].type;
			
											// 마임 타입이 이미지가 아니면 종료
											if (!fileType.match(/image\//)) {
												alert("이미지 파일을 첨부해주세요.");
												return;
											}
			
											// 파일 리더 생성
											let reader = new FileReader();
			
											// 파일을 읽었을 때의 이벤트 처리
											reader.onload = function () {
												// 이미지 경로 설정
												imgPath.src = reader.result;
											};
			
											// 파일을 읽기 시작
											reader.readAsDataURL(thisTarget.files[0]);
										});
									}
			
									profilImg();
			
								</script>
								<!-- profil script -->
							</div>
							<!-- 프로필 -->
			
							<!-- 이름 -->
							<div class="row text">
								<div class="label col-sm-3">
									<label for="disabledTextInput" class="form-label">성명</label>
								</div>
								<div class="form_content col-sm-6">
									<input type="text" class="form-control" placeholder="성명입력">
								</div>
							</div>
							<!-- 이름 -->
							<!-- 담당자 -->
							<div class="row text">
								<div class="label col-sm-3">
									<label for="disabledTextInput" class="form-label">담당자</label>
								</div>
								<div class="form_content col-sm-9">
									<input type="text" class="form-control" placeholder="담당자입력">
								</div>
							</div>
							<!-- 담당자 -->
							<!-- 핸드폰 -->
							<div class="row tel">
								<div class="label col-sm-3">
									<label for="disabledTextInput" class="form-label">전화번호</label>
								</div>
								<div class="form_content col-sm-9 d-flex">
									<div class="input col-sm-3">
										<select class="form-select" aria-label="Default select example"
											title="첫번째 전화번호를 선택해주세요">
											<option selected>010</option>
											<option value="1">063</option>
											<option value="2">042</option>
											<option value="3">02</option>
										</select>
									</div>
									<span class="entity">-</span>
									<div class="input col-sm-3">
										<input type="text" class="form-control" title="두번째 전화번호를 입력해주세요">
									</div>
									<span class="entity">-</span>
									<div class="input col-sm-3">
										<input type="text" class="form-control" title="3번째 전화번호를 입력해주세요">
									</div>
								</div>
							</div>
							<!-- 핸드폰 -->
							<!-- 주민번호 -->
							<div class="row identifyNum">
								<div class="label col-sm-3">
									<label for="disabledTextInput" class="form-label">주민번호</label>
								</div>
								<div class="form_content col-sm-6 d-flex">
									<div class="input col-sm-6">
										<input type="text" class="form-control" placeholder="주민번호 앞자리립력">
									</div>
									<span class="entity">-</span>
									<div class="input col-sm-6">
										<input type="text" class="form-control" placeholder="주민번호 뒷자리입력">
									</div>
								</div>
							</div>
							<!-- 주민번호 -->
							<!-- 이메일 -->
							<div class="row email">
								<div class="label col-sm-3">
									<label for="disabledTextInput" class="form-label">이메일</label>
								</div>
								<div class="form_content col-sm-9 d-flex">
									<div class="input col-sm-3">
										<input type="text" class="form-control" placeholder="이메일 아이디입력">
									</div>
									<span class="entity">@</span>
									<div class="input col-sm-4">
										<input type="text" class="form-control" placeholder="이메일 주소입력">
									</div>
									<div class="input col-sm-2 ms-1">
										<select class="form-select" aria-label="Default select example"
											title="이메일선택">
											<option selected="">직접입력</option>
											<option value="1">naver.com</option>
											<option value="2">daum.com</option>
											<option value="3">gmail.com</option>
										</select>
									</div>
								</div>
							</div>
							<!-- 이메일 -->
							<!-- 주소 -->
							<div class="row address">
								<div class="label col-sm-3">
									<label for="disabledTextInput" class="form-label">주소</label>
								</div>
								<div class="form_content col-sm-9">
									<div class="input col-sm-6  d-flex mb-1">
										<input type="text" class="form-control" placeholder="주소입력">
										<button type="submit" class="btn btn-secondary ms-1">주소검색</button>
									</div>
									<div class="input col-sm-9">
										<input type="text" class="form-control" placeholder="상세주소입력">
									</div>
								</div>
							</div>
							<!-- 주소 -->
							<!-- 셀렉트박스1 -->
							<div class="row select">
								<div class="label col-sm-3">
									<label for="disabledTextInput" class="form-label">선택박스</label>
								</div>
								<div class="form_content col-sm-9 d-flex">
									<div class="input col-sm-3 mx-1">
										<select class="form-select" aria-label="Default select example"
											title="첫번째 전화번호를 선택해주세요">
											<option selected>010</option>
											<option value="1">063</option>
											<option value="2">042</option>
											<option value="3">02</option>
										</select>
									</div>
								</div>
							</div>
							<!-- 셀렉트박스1-->
							<!-- 셀렉트박스2 -->
							<div class="row select">
								<div class="label col-sm-3">
									<label for="disabledTextInput" class="form-label">선택박스</label>
								</div>
								<div class="form_content col-sm-9 d-flex">
									<div class="input col-sm-3 mx-1">
										<select class="form-select" aria-label="Default select example"
											title="첫번째 전화번호를 선택해주세요">
											<option selected>010</option>
											<option value="1">063</option>
											<option value="2">042</option>
											<option value="3">02</option>
										</select>
									</div>
									<div class="input col-sm-3 mx-1">
										<select class="form-select" aria-label="Default select example"
											title="첫번째 전화번호를 선택해주세요">
											<option selected>010</option>
											<option value="1">063</option>
											<option value="2">042</option>
											<option value="3">02</option>
										</select>
									</div>
									<div class="input col-sm-3 mx-1">
										<select class="form-select" aria-label="Default select example"
											title="첫번째 전화번호를 선택해주세요">
											<option selected>010</option>
											<option value="1">063</option>
											<option value="2">042</option>
											<option value="3">02</option>
										</select>
									</div>
								</div>
							</div>
							<!-- 셀렉트박스2 -->
			
							<!-- 체크박스 -->
							<div class="row checkbox">
								<div class="label col-sm-3">
									<label for="disabledTextInput" class="form-label">체크박스</label>
								</div>
								<div class="form_content col-sm-9 d-flex">
			
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox" id="inlineCheckbox1"
											value="option1">
										<label class="form-check-label" for="inlineCheckbox1">1</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox" id="inlineCheckbox2"
											value="option2">
										<label class="form-check-label" for="inlineCheckbox2">2</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox" id="inlineCheckbox3"
											value="option3" disabled>
										<label class="form-check-label" for="inlineCheckbox3">3 (disabled)</label>
									</div>
			
								</div>
							</div>
							<!-- 체크박스 -->
			
							<!-- 라디오 -->
							<div class="row checkbox">
								<div class="label col-sm-3">
									<label for="disabledTextInput" class="form-label">라디오</label>
								</div>
								<div class="form_content col-sm-9 d-flex">
			
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="inlineRadioOptions"
											id="inlineRadio1" value="option1">
										<label class="form-check-label" for="inlineRadio1">1</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="inlineRadioOptions"
											id="inlineRadio2" value="option2">
										<label class="form-check-label" for="inlineRadio2">2</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="inlineRadioOptions"
											id="inlineRadio3" value="option3" disabled>
										<label class="form-check-label" for="inlineRadio3">3 (disabled)</label>
									</div>
			
								</div>
							</div>
							<!-- 라디오 -->
			
			
							<!-- 여러줄 텍스트 -->
							<div class="row">
								<div class="label col-sm-3">
									<label for="disabledTextInput" class="form-label">텍스트
									</label>
								</div>
								<div class="form_content col-sm-9">
									<textarea class="form-control" name="" id="" cols="30" rows="10"></textarea>
								</div>
							</div>
							<!--여러줄 텍스트 -->
						</fieldset>
					</form>
					<!-- form -->
					<div class="btn-box clearfix mt-4">
						<button class="btn btn-secondary">뒤로</button>
						<div class="right float-end">
							<!-- <button class="btn btn-danger">취소</button> -->
							<button class="btn btn-danger">취소</button>
							<button class="btn btn-primary">완료</button>
						</div>
					</div>
				</div>
				<!-- retreive -->