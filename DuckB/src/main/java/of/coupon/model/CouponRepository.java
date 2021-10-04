package of.coupon.model;

import org.springframework.data.jpa.repository.JpaRepository;

import of.member.model.Member;

public interface CouponRepository extends JpaRepository<Coupon, Integer>{

}
