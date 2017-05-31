package kidshome.model;

public class SetPage {
	private int endpage;
	private int startpage;
	public SetPage(int page,int mpage) {
		setStartPage(page);
		setEndPage(mpage,page);
	}
	private void setStartPage(int page){
		if(page%10==0)
			this.startpage=page-9;
		else
			this.startpage=((page)-(page%10)+1);
	}
	private void setEndPage(int mpage,int page){
		if(page%10==0)
			endpage=page;
		else if((mpage/10)==(page/10))
			endpage=mpage;
		else
			endpage=((page/10)+1)*10;
		
		
		
	}
	public int getStartPage(){
		return startpage;
	}
	public int getEndPage(){
		return endpage;
	}
}
