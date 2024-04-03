<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<script type="text/javascript"
	src='/navi/resources/js/common/ckeditor5/super/ckeditor.js'></script>
<script type="text/javascript"
	src="/navi/resources/js/common/datepicker/jquery-ui.js"></script>
<script type="text/javascript"
	src="/navi/resources/js/common/datepicker/lang/datepicker-ko.js"></script>


<form id="deleteForm"
	action="${pageContext.request.contextPath }/admin/ano/del/${ano.bpId }">
	<div class="modal fade info" id="deleteModal" tabindex="-1"
		aria-labelledby="deleteModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<strong class="modal-title fs-5" id="deleteModalLabel">안내</strong>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body" id="deleteResult">"게시글을 삭제하시겠습니까?"</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-danger" id="deleteBtn">삭제</button>
				</div>
			</div>
		</div>
	</div>
</form>

<form:form action="${pageContext.request.contextPath }/admin/ano/mod/${ano.bpId }"
	id="updateForm" enctype="multipart/form-data" modelAttribute="ano">
	<div class="modal fade info" id="modifyModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<strong class="modal-title fs-5" id="exampleModalLabel">안내</strong>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body" id="updateResult">"게시글을 수정하시겠습니까?"</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="modifyBtn">확인</button>
				</div>
			</div>
		</div>
	</div>
	<!-- project veiw -->
	<div class="header-title select">
	<h2>
		<strong class="title-name">공지사항 관리</strong>
	</h2>
</div>


	<div class="side_inner">
		<div class="content-box">
					<div class="view task">
						<div class="view_inner">
							<div class="view-info">
								<strong class="view-tit d-flex align-items-center">
									<div class=" col-sm-1">
										<span class="category project">${ano.bpId }</span>
									</div> <input type="text" class="form-control" name="bpTitle"
									placeholder="제목을 입력해주세요" value="${ano.bpTitle}">
								</strong>
							
							<ul class="ul clearfix">
		
								<li><span class="list-tit">작성자</span> <span>관리자 </span>
								<li><span class="list-tit">등록일</span> <span
									class=" col-sm-6" aria-label="Default select example">
										${ano.bpRegDtStr } </span></li>
								<li><span class="list-tit">게시판 분류</span>
								<span>
									<select	class="form-select" name="bpNtcId" id="selectCase"
										aria-label="Default select example">
											<c:forEach items="${boardTypeList}" var="ps">
												 <c:choose>
										            <c:when test="${ps.cmId eq ano.bpNtcId}">
										                <option value="${ps.cmId}" selected="selected">${ps.cmName}</option>
										            </c:when>
										            <c:otherwise>
										                <option value="${ps.cmId}">${ps.cmName}</option>
										            </c:otherwise>
										        </c:choose>
											</c:forEach>
									</select>
								</span></li>
								<li><span class="list-tit">수정일</span> <span> <c:if
											test="${empty ano.bpModDt }">수정내역 없음</c:if> <c:if
											test="${not empty ano.bpModDtStr }">${ano.bpModDtStr }</c:if>
								</span></li>
								<li><span class="list-tit">조회수</span> <span>${ano.bpCnt }</span></li>
							</ul>
							</div>
						</div>
						<div class="view_content" id="viewEdit">${ano.bpCn }</div>
					</div>
			
				<!-- project veiw -->
		</div>
	<input type="hidden" name="bpId" value="${ano.bpId}">
	<input type="hidden" name="bpCn" id="bpCn">
	
	
	<div class="content">
		<div class="inner html">
		<strong class="d-flex align-items-center mb-3"> 
							<i class=""></i>첨부파일
						</strong>
						<c:if test="${empty bpfv}">
							<em class="file_name">첨부된 파일이 없습니다.</em>
						</c:if>
			<c:forEach items="${bpfv }" var="f">
				<div class="addfile">
					<ul class="fileList">
						<li class="d-flex file-row align-items-center justify-content-between mb-2">
							<i data-id="${f.bpFileId}" class="icon close"><em class="sr-only">첨부파일삭제</em></i> 
							<a href="${pageContext.request.contextPath}/admin/ano/download/${f.bpFileId}" class="file_item d-flex align-items-center">
								<c:choose>
									<c:when test="${empty f.bpFileGbId}">
										<em class="file_name">첨부된 파일이 없습니다.</em>
									</c:when>
									<c:otherwise>
										<c:if test="${f.bpFileGbId eq 'pdf' }">
											<i class="icon pdf"><em class="sr-only">${f.bpFileGbId }</em></i>
										</c:if>
										<c:if test="${f.bpFileGbId eq 'txt' }">
											<i class="icon txt"><em class="sr-only">${f.bpFileGbId }</em></i>
										</c:if>
										<c:if test="${f.bpFileGbId eq 'jpg'}">
											<i class="icon txt"><em class="sr-only">${f.bpFileGbId }</em></i>
										</c:if>
										<c:if test="${f.bpFileGbId eq 'png' }">
											<i class="icon txt"><em class="sr-only">${f.bpFileGbId }</em></i>
										</c:if>
										<c:if test="${f.bpFileGbId eq 'word' }">
											<i class="icon word"><em class="sr-only">${f.bpFileGbId }</em></i>
										</c:if>
										<c:if test="${f.bpFileGbId eq 'xlsx' }">
											<i class="icon xlsx"><em class="sr-only">${f.bpFileGbId }</em></i>
										</c:if>
										<c:if test="${f.bpFileGbId eq 'zip' }">
											<i class="icon zip"><em class="sr-only">${f.bpFileGbId }</em></i>
										</c:if>
										<c:if test="${f.bpFileGbId eq 'hwp' }">
											<i class="icon hangle"><em class="sr-only">${f.bpFileGbId }</em></i>
										</c:if>
										<c:if test="${f.bpFileGbId eq 'ppt' }">
											<i class="icon ppt"><em class="sr-only">${f.bpFileGbId }</em></i>
										</c:if>
										<c:if test="${f.bpFileGbId eq 'pptx' }">
											<i class="icon ppt"><em class="sr-only">${f.bpFileGbId }</em></i>
										</c:if>
									</c:otherwise>
								</c:choose> <span class=""> <em class="file_name">${f.bpOrgNm }</em></span>
						</a> <span class="file_size p-1 border border-dark-subtle fileSize">${f.bpFileSize }</span>
						</li>
					</ul>
				</div>
			</c:forEach>
			<div class="input-group my-2">
				<input type="file" name="bpAttchFile" multiple="multiple"
					class="form-control" id="addFileInput"
					aria-describedby="addFileBtn" aria-label="Upload">
			</div>
		</div>
			</div>
	</div>
</form:form>




<!-- button -->
<input type="hidden" name="bpId" value="${prais.bpId}">
<!-- ui : e -->
<div class="btn-box clearfix mt-4 formmod_footbtn">
	<a href="${pageContext.request.contextPath }/admin/ano"><button	class="btn btn-secondary">목록</button></a>
	<div class="right float-end">
		<button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">삭제</button>
		<button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modifyModal">수정</button>
	</div>
</div>	
<!--inner-->

<script>
// $(function(){
// 	var postId = "${ano.bpNtcId}";
// 	$("#selectCase").val(postId);
// });
</script>

<script>

$(document).ready(function(){
	let editor;
	function getCsrfToken(){
		return document.querySelector('meta[name="_csrf"]').getAttribute('content');
	}
	function getCsrfHeader(){
		return document.querySelector('meta[name="_csrf_header"]').getAttribute('content');
	}
 let viewEdit = document.querySelector("#viewEdit")
   CKEDITOR.ClassicEditor.create(viewEdit, {
               
                toolbar: {
                    items: [
                        'exportPDF','exportWord', '|',
                        'findAndReplace', 'selectAll', '|',
                        'heading', '|',
                        'bold', 'italic', 'strikethrough', 'underline', 'code', 'subscript', 'superscript', 'removeFormat', '|',
                        'bulletedList', 'numberedList', 'todoList', '|',
                        'outdent', 'indent', '|',
                        'undo', 'redo',
                        '-',
                        'fontSize', 'fontFamily', 'fontColor', 'fontBackgroundColor', 'highlight', '|',
                        'alignment', '|',
                        'link', 'uploadImage', 'blockQuote', 'insertTable', 'mediaEmbed', 'codeBlock', 'htmlEmbed', '|',
                        'specialCharacters', 'horizontalLine', 'pageBreak', '|',
                        'textPartLanguage', '|',
                        'sourceEditing'
                    ],
                    shouldNotGroupWhenFull: true
                },
             
                language: 'ko',
                list: {
                    properties: {
                        styles: true,
                        startIndex: true,
                        reversed: true
                    }
                },
               
                heading: {
                    options: [
                        { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                        { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                        { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' },
                        { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                        { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' },
                        { model: 'heading5', view: 'h5', title: 'Heading 5', class: 'ck-heading_heading5' },
                        { model: 'heading6', view: 'h6', title: 'Heading 6', class: 'ck-heading_heading6' }
                    ]
                },
                
                placeholder: 'Welcome to CKEditor 5!',
              
                fontFamily: {
                    options: [
                        'default',
                        'Arial, Helvetica, sans-serif',
                        'Courier New, Courier, monospace',
                        'Georgia, serif',
                        'Lucida Sans Unicode, Lucida Grande, sans-serif',
                        'Tahoma, Geneva, sans-serif',
                        'Times New Roman, Times, serif',
                        'Trebuchet MS, Helvetica, sans-serif',
                        'Verdana, Geneva, sans-serif'
                    ],
                    supportAllValues: true
                },
               
                fontSize: {
                    options: [ 10, 12, 14, 'default', 18, 20, 22 ],
                    supportAllValues: true
                },
             
                htmlSupport: {
                    allow: [
                        {
                            name: /.*/,
                            attributes: true,
                            classes: true,
                            styles: true
                        }
                    ]
                },
                
                htmlEmbed: {
                    showPreviews: true
                },
              
                link: {
                    decorators: {
                        addTargetToExternalLinks: true,
                        defaultProtocol: 'https://',
                        toggleDownloadable: {
                            mode: 'manual',
                            label: 'Downloadable',
                            attributes: {
                                download: 'file'
                            }
                        }
                    }
                },
             
                mention: {
                    feeds: [
                        {
                            marker: '@',
                            feed: [
                                '@apple', '@bears', '@brownie', '@cake', '@cake', '@candy', '@canes', '@chocolate', '@cookie', '@cotton', '@cream',
                                '@cupcake', '@danish', '@donut', '@dragée', '@fruitcake', '@gingerbread', '@gummi', '@ice', '@jelly-o',
                                '@liquorice', '@macaroon', '@marzipan', '@oat', '@pie', '@plum', '@pudding', '@sesame', '@snaps', '@soufflé',
                                '@sugar', '@sweet', '@topping', '@wafer'
                            ],
                            minimumCharacters: 1
                        }
                    ]
                },
            
                removePlugins: [
                 
                    'AIAssistant',
                    'CKBox',
                    'CKFinder',
                    'EasyImage',
                    'RealTimeCollaborativeComments',
                    'RealTimeCollaborativeTrackChanges',
                    'RealTimeCollaborativeRevisionHistory',
                    'PresenceList',
                    'Comments',
                    'TrackChanges',
                    'TrackChangesData',
                    'RevisionHistory',
                    'Pagination',
                    'WProofreader',
                    'MathType',
                    'SlashCommand',
                    'Template',
                    'DocumentOutline',
                    'FormatPainter',
                    'TableOfContents',
                    'PasteFromOfficeEnhanced',
                    'CaseChange'
                ]
            }).then(newEditor=>{
            	editor=newEditor;
            	
            	//삭제요청
            	$(".close").on("click",function(e){
            		let issffId = $(this).data("id");
            		$(this).parent().remove();
            		fetch("${pageContext.request.contextPath}/admin/ano/file/del/"+issffId,{
						method:"POST",
						headers:{
							"Accept":"application/json",
							[getCsrfHeader()]: getCsrfToken()
						}
					}).then(resp=>{
						if(resp.ok){
							return resp.json();
						}else{
							throw new Error(`상태코드 ${resp.status} 수신`,{cause:resp})
						}
					}).then(jsonObj=>{
						console.log(jsonObj)
					}).catch(err=>{
						console.error(err);
					})
            		
            	})
            	
            	$(deleteBtn).on("click",function(e){
            		fetch(deleteForm.action,{
						method:"DELETE",
						headers:{
							"Accept":"application/json",
							[getCsrfHeader()]: getCsrfToken()
						}
					}).then(resp=>{
						if(resp.ok){
							return resp.json();
						}else{
							throw new Error(`상태코드 ${resp.status} 수신`,{cause:resp})
						}
					}).then(jsonObj=>{
						console.log(jsonObj)
						if(jsonObj.msg=='ok'){
							deleteResult.innerHTML="삭제처리가 완료되었습니다."
							window.location.href="${pageContext.request.contextPath}/admin/ano"
						}else{
							deleteResult.innerHTML="삭제처리에 실패했습니다."
						}
					}).catch(err=>{
						console.error(err);
					})
            		
            	})
            	$(modifyBtn).on("click",function(e){
           			console.log(e.target)
           			$(bpCn).val(editor.getData())
           			
           			let data={};
					let formData= new FormData(updateForm);
// 					for(let n of formData.keys()){
// 						data[n]=formData.get(n)
// 					}
					let body=formData;
           			console.log(body)
           			fetch(updateForm.action,{
						method:"POST",
						headers:{
							"Accept":"application/json",
// 							"Content-type":"application/json",
							[getCsrfHeader()]: getCsrfToken()
						},body:body
					}).then(resp=>{
						if(resp.ok){
							return resp.json();
						}else{
							throw new Error(`상태코드 ${resp.status} 수신`,{cause:resp})
						}
					}).then(jsonObj=>{
						console.log(jsonObj)
						if(jsonObj.msg=="ok"){
							deleteResult.innerHTML="수정처리가 완료되었습니다."
							window.location.href="${pageContext.request.contextPath}/admin/ano"
						}else if(jsonObj.msg=="fail"){
							deleteResult.innerHTML="수정처리에 실패했습니다."
							location.reload();
						}else{
							deleteResult.innerHTML="잘못된 요청입니다."
							window.location.href="${pageContext.request.contextPath}/admin/ano"
						}
					}).catch(err=>{
						console.error(err);
					})
           		})
            })
})
</script>