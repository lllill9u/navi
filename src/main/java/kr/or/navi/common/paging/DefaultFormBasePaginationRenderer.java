package kr.or.navi.common.paging;

public class DefaultFormBasePaginationRenderer extends AbstractFormBasePaginationRenderer {

	public DefaultFormBasePaginationRenderer(String targetForm) {
		super(targetForm);
	}

	@Override
	public String renderPagination(PaginationInfo paging) {
		String aTagPtrn = "<a href='javascript:;' data-pg-role='pageLink' data-pg-page='%d' data-pg-target='"+ getTargetForm() +"'>%s</a>";
		String cPagePtrn = "<span class='active'>%d</span>";
		
		int startPage = paging.getStartPage();
		int endPage = paging.getEndPage();
		int totalPage = paging.getTotalPage();
		int blockSize = paging.getBlockSize();
		int currentPage = paging.getCurrentPage();
		
		StringBuffer html = new StringBuffer();
		
		if(startPage > blockSize) {
			html.append(
					String.format(aTagPtrn, startPage - blockSize , "이전")	
			);
		}
		
		for(int page = startPage; page <= endPage; page++) {
			if(page==currentPage) {
				html.append(
					String.format(cPagePtrn, page)	
				);
			}else {
				html.append(
					String.format(aTagPtrn, page , page)	
				);
				
			}
			
		}
		
		if(endPage < totalPage) {
			html.append(
					String.format(aTagPtrn, endPage + 1 , "다음")	
			);
		}
		
		return html.toString();
	}

}
