<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
	<%-- 추천모달버튼 --%>
<div class ="d-flex justify-content-end">
	<button type="button" class="btn btn-primary mb-3 " data-bs-toggle="modal" data-bs-target="#recomModal">
	   뉴스추천
	</button>
</div>

<%-- 추천모달버튼 --%>



<%-- 추천모달 --%>
<div class="modal fade recomModal" id="recomModal" tabindex="-1"    aria-labelledby="recomModal" aria-hidden="true">
                     
   <div class="modal-dialog modal-fullsize">
      <div class="modal-content">
         <div class="modal-header bg-primary text-white">
            <strong class="modal-title" id="recomModal">추천</strong>
         </div>
         <div class="modal-body">
            
            <!-- modal bottom -->
            <div class="cal-Modal_table">

               <table class="table text-center">
                  <caption class="sr-only">추천테이블입니다</caption>

                  <colgroup>
                     <col style="width: 5%;">
                     <col style="width: 10%;">
                     <col style="width: 10%;">
                     <col style="width: auto;">
                     <col style="width: 10%;">
                     <col style="width: 8%;">
                     <col style="width: 8%;">
                     <col style="width: 8%;">
                  </colgroup>

                  <thead>
                     <tr>
                        <th scope="col">
                           <input type="checkbox">
                        </th>
                        <th scope="col">번호</th>
                        <th scope="col">상태</th>
                        <th scope="col">제목</th>
                        <th scope="col">담당자</th>
                        <th scope="col">등록일</th>
                        <th scope="col">마감일</th>
                        <th scope="col">진행률</th>
                     </tr>
                  </thead>
                  <tbody>
                     <!-- 일감없음 -->
                     <tr>
                        <td class="text-center" colspan="8">분배된 일감이 없습니다</td>
                     </tr>
                     <!-- 일감없음 -->
                  </tbody>

               </table>

               <!-- page -->            
         
               <div class="pageBox">
                  <ul class="pagination justify-content-center">
                     <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                           <span aria-hidden="true">«</span>
                        </a>
                     </li>
                     <li class="page-item"><a class="page-link" href="#">1</a></li>
                     <li class="page-item"><a class="page-link" href="#">2</a></li>
                     <li class="page-item"><a class="page-link" href="#">3</a></li>
                     <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                           <span aria-hidden="true">»</span>
                        </a>
                     </li>
                  </ul>
               </div>      
               <!-- page -->
            </div>
            <!-- modal bottom -->
         </div>
         <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-light btn-outline-secondary" data-bs-dismiss="modal">닫기</button>
            <button type="button" class="btn btn-primary"> 확인</button>
         </div>
      </div>
   </div>
</div>
<%-- 추천모달 --%>
		<!-- ui : 포토공간목록 s -->
<div class="row row-cols-1 row-cols-md-4 g-4 photo_list mb-4">
	<!-- col -->
	<div class="col">
		<div class="card">
			<div class="photo_img">
				<div class="img-in no-img">
					<img src="./resources/images/prog/navi.jpg" class="card-img-top" alt="">
				</div>
			</div>
			<div class="card-body">
				<strong class="card-title">
				<em class="text-elipsis">영화보러간날 영화보러 간 날 영화보러간날 영화보러 간 날영화보러간날 영화보러 간 날영화보러간날 영화보러 간 날영화보러간날 영화보러 간 날영화보러간날 영화보러 간 날영화보러간날 영화보러 간 날영화보러간날 영화보러 간 날영화보러간날 영화보러 간 날영화보러간날 영화보러 간 날영화보러간날 영화보러 간 날영화보러간날 영화보러 간 날</em>
				</strong>
				<button class="kinBtn border-0">
					<i class="icon kin"></i>
					<i class="sr-only">즐겨찾기버튼</i>
				</button>
			</div>
			<ul class="card-footer d-flex justify-content-between border-0 py-0">
				<li>
					<button class="likeBtn active border-0"><i class="icon like"><em class="sr-only">좋아요</em></i>999k</button>
				</li>
				<li>
					<span><i class="icon writer"><em class="sr-only">작성자</em></i>
					정민지
					</span>
				</li>
				<li>
					<span><i class="icon date"><em class="sr-only">날짜</em></i>24.05.04
					</span>
				</li>
			</ul>
		</div>
	</div>
	<!-- col -->
	
</div>
<!-- 스크립트 넣기  -->
<script>
	//like,kin 버튼 클릭 시 .active 클래스 토글 , 
	//kin은 저정
	//like 는 클릭횟수에 대한 숫자증가

</script>
<!-- 스크립트 넣기  -->
<!-- ui : 포토공간목록 e -->