package of.coupon.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import of.member.model.Member;
import of.member.model.MemberRepository;

@Service("couponService")
@Transactional
public class CouponService {
	
	@Autowired
	private CouponRepository couponRepository;
	
	public Coupon insert(Coupon coupon){
		return couponRepository.save(coupon);
	}
	
}
