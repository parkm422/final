package test.app.project.vo;


/**
 * 관리자정보 테이블 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class AdministratorVo {

	/** 관리자식별키. */
	private int anum;

	/** 관리자아이디. */
	private String aid;

	/** 관리자비밀번호. */
	private String apwd;

	/**
	 * 생성자.
	 */
	public AdministratorVo() {
	}

	public AdministratorVo(int anum, String aid, String apwd) {
		super();
		this.anum = anum;
		this.aid = aid;
		this.apwd = apwd;
	}

	public int getAnum() {
		return anum;
	}

	public void setAnum(int anum) {
		this.anum = anum;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getApwd() {
		return apwd;
	}

	public void setApwd(String apwd) {
		this.apwd = apwd;
	}


}
