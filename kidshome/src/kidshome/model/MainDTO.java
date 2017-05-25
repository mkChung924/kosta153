package kidshome.model;

/*
 * 메인 페이지에 출력될
 * 1. 최신 장난감 정보
 * 2. 인기 장난감 정보
 * 3. 최신 공지사항 글 4개
 * 4. 최신 자유게시글 4개
 * 5. 최신 후기게시글 4개
 * 에 대한 DTO 정리
 */

public class MainDTO {
	
	private String newToyImage;
	private String popToyImage;
	private String announce;
	private String free;
	private String after;
	
	public MainDTO() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public String getNewToyImage() {
		return newToyImage;
	}

	public void setNewToyImage(String newToyImage) {
		this.newToyImage = newToyImage;
	}

	public String getPopToyImage() {
		return popToyImage;
	}

	public void setPopToyImage(String popToyImage) {
		this.popToyImage = popToyImage;
	}

	public String getAnnounce() {
		return announce;
	}

	public void setAnnounce(String announce) {
		this.announce = announce;
	}

	public String getFree() {
		return free;
	}

	public void setFree(String free) {
		this.free = free;
	}

	public String getAfter() {
		return after;
	}

	public void setAfter(String after) {
		this.after = after;
	}


	
	

}
