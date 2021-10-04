package of.coupon.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import of.member.model.Member;

@Entity
@Table(name = "coupon")
@Component("coupon")
public class Coupon implements Serializable{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="couponid")
	private int couponid;
	
	@Column(name="coupontake")
	private String coupontake;

	@Column(name="couponnottake")
	private String couponnottake;
	
	@ManyToOne
	@JoinColumn(name = "aid")
	private Member member;

}
