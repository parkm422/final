package test.app.project.vo;


/**
 * 업소이미지 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class HouseImgVo {


	/** 기본식별키. */
	private int house_img_num;

	/** 업소테이블. */
	private int house_num;

	/** 업소이미지원본명. */
	private String house_org_name;

	/** 업소이미지저장명. */
	private String house_save_name;

	/**
	 * 생성자.
	 */
	public HouseImgVo() {
	}

	public HouseImgVo(int house_img_num, int house_num, String house_org_name, String house_save_name) {
		super();
		this.house_img_num = house_img_num;
		this.house_num = house_num;
		this.house_org_name = house_org_name;
		this.house_save_name = house_save_name;
	}

	public int getHouse_img_num() {
		return house_img_num;
	}

	public void setHouse_img_num(int house_img_num) {
		this.house_img_num = house_img_num;
	}

	public int getHouse_num() {
		return house_num;
	}

	public void setHouse_num(int house_num) {
		this.house_num = house_num;
	}

	public String getHouse_org_name() {
		return house_org_name;
	}

	public void setHouse_org_name(String house_org_name) {
		this.house_org_name = house_org_name;
	}

	public String getHouse_save_name() {
		return house_save_name;
	}

	public void setHouse_save_name(String house_save_name) {
		this.house_save_name = house_save_name;
	}


}
