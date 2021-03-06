package test.app.project.vo;


/**
 * 자주묻는질문 테이블 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class FaqVo {


	/** 문의번호. */
	private int fnum;

	/** 자주묻는질문. */
	private String ftitle;

	/** 답변. */
	private String fcontent;

	/** 질문카테고리. */
	private int fcnum;

	/**
	 * 생성자.
	 */
	public FaqVo() {
	}

	public FaqVo(int fnum, String ftitle, String fcontent, int fcnum) {
		super();
		this.fnum = fnum;
		this.ftitle = ftitle;
		this.fcontent = fcontent;
		this.fcnum = fcnum;
	}

	public int getFnum() {
		return fnum;
	}

	public void setFnum(int fnum) {
		this.fnum = fnum;
	}

	public String getFtitle() {
		return ftitle;
	}

	public void setFtitle(String ftitle) {
		this.ftitle = ftitle;
	}

	public String getFcontent() {
		return fcontent;
	}

	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}

	public int getFcnum() {
		return fcnum;
	}

	public void setFcnum(int fcnum) {
		this.fcnum = fcnum;
	}

}
