package com.vr.Model;

public class MemberDTO {
	// 이름
	private String mname;
	// 아이디
	private String id;
	// 비밀번호
	private String pw;
	// 차트번호
	private String rrn;
	// 성별
	private String gender;
	// 생년월일
	private String birth;
	// 나이
	private int age;
	// 로그인 관리
	private int login_value;
	// 의사면허번호
	private String dl;
	//진료과
	private String md;
	//관리자
	private String position;
	//차트 수정일
	private String modi; 
	//입원일
	private String hospital;
	//퇴원일
	private String exitd;
	//작성일
	private String disease; 
	//진단명
	private String dn;
	//진단내용
	private String content;
	//문서 번호
	private String db;
	//확인서 번호
	private String hc;
	//의사 이름
	private String docname;
	//수술일
	private String oper;
	
	//진료과 지정 값 만 보여주기
	private String speciality;
	
	
	
	
	
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getModi() {
		return modi;
	}
	public void setModi(String modi) {
		this.modi = modi;
	}
	public String getDocname() {
		return docname;
	}
	public void setDocname(String docname) {
		this.docname = docname;
	}
	public String getHc() {
		return hc;
	}
	public void setHc(String hc) {
		this.hc = hc;
	}
	public String getExitd() {
		return exitd;
	}
	public void setExitd(String exitd) {
		this.exitd = exitd;
	}
	public String getDn() {
		return dn;
	}
	public void setDn(String dn) {
		this.dn = dn;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDb() {
		return db;
	}
	public void setDb(String db) {
		this.db = db;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getDl() {
		return dl;
	}
	public void setDl(String dl) {
		this.dl = dl;
	}
	public String getMd() {
		return md;
	}
	public void setMd(String md) {
		this.md = md;
	}
	
	public String getHospital() {
		return hospital;
	}
	public void setHospital(String hospital) {
		this.hospital = hospital;
	}
	public String getOper() {
		return oper;
	}
	public void setOper(String oper) {
		this.oper = oper;
	}
	public int getLogin_value() {
		return login_value;
	}
	public void setLogin_value(int login_value) {
		this.login_value = login_value;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getRrn() {
		return rrn;
	}
	public void setRrn(String rrn) {
		this.rrn = rrn;
	}
	@Override
	public String toString() {
		return "MemberDTO [mname=" + mname + ", id=" + id + ", pw=" + pw + ", rrn=" + rrn + ", gender=" + gender
				+ ", birth=" + birth + ", age=" + age + ", login_value=" + login_value + ", dl=" + dl + ", md=" + md
				+ ", position=" + position + ", hospital=" + hospital + ", modi=" + modi + ", exitd=" + exitd + ", dn="
				+ dn + ", content=" + content + ", db=" + db + ", hc=" + hc + ", docname=" + docname + ", oper=" + oper
				+ "]";
	}
	
	
} 
   