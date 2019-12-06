package test.app.project.vo;

import java.sql.Date;

/**
 * Q&A게시판 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class QnaboardVo {


	/** 문의번호. */
	private int qna_num;

	/** 회원테이블. */
	private String mid;

	/** Q&A카테고리. */
	private int qna_category_num;

	/** 문의제목. */
	private String qna_title;

	/** 문의내용. */
	private String qna_content;

	/** 답변. */
	private String anwser;

	/** 문의작성일. */
	private Date qna_date;

	/** 답변작성일. */
	private Date anwser_date;

	/**
	 * 생성자.
	 */
	public QnaboardVo() {
	}

	public QnaboardVo(int qna_num, String mid, int qna_category_num, String qna_title, String qna_content,
			String anwser, Date qna_date, Date anwser_date) {
		super();
		this.qna_num = qna_num;
		this.mid = mid;
		this.qna_category_num = qna_category_num;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.anwser = anwser;
		this.qna_date = qna_date;
		this.anwser_date = anwser_date;
	}

	public int getQna_num() {
		return qna_num;
	}

	public void setQna_num(int qna_num) {
		this.qna_num = qna_num;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public int getQna_category_num() {
		return qna_category_num;
	}

	public void setQna_category_num(int qna_category_num) {
		this.qna_category_num = qna_category_num;
	}

	public String getQna_title() {
		return qna_title;
	}

	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}

	public String getQna_content() {
		return qna_content;
	}

	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}

	public String getAnwser() {
		return anwser;
	}

	public void setAnwser(String anwser) {
		this.anwser = anwser;
	}

	public Date getQna_date() {
		return qna_date;
	}

	public void setQna_date(Date qna_date) {
		this.qna_date = qna_date;
	}

	public Date getAnwser_date() {
		return anwser_date;
	}

	public void setAnwser_date(Date anwser_date) {
		this.anwser_date = anwser_date;
	}

}