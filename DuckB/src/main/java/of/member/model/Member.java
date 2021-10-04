package of.member.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;


@Entity
@Table(name = "account")
@Component("member")
public class Member implements Serializable{
	
	@Id
	private String aid;
	private String apassword;
	private String abirthday;
	private String aname;
	private String aphone;
	private String aaddress;
	private String aavatar;
	private Integer arank;


	public String getAid() {
		return aid;
	}


	public void setAid(String aid) {
		this.aid = aid;
	}


	public String getApassword() {
		return apassword;
	}


	public void setApassword(String apassword) {
		this.apassword = apassword;
	}


	public String getAbirthday() {
		return abirthday;
	}


	public void setAbirthday(String abirthday) {
		this.abirthday = abirthday;
	}


	public String getAname() {
		return aname;
	}


	public void setAname(String aname) {
		this.aname = aname;
	}


	public String getAphone() {
		return aphone;
	}


	public void setAphone(String aphone) {
		this.aphone = aphone;
	}


	public String getAaddress() {
		return aaddress;
	}


	public void setAaddress(String aaddress) {
		this.aaddress = aaddress;
	}


	public String getAavatar() {
		return aavatar;
	}


	public void setAavatar(String aavatar) {
		this.aavatar = aavatar;
	}


	public Integer getArank() {
		return arank;
	}


	public void setArank(Integer arank) {
		this.arank = arank;
	}
	
	
	

}
