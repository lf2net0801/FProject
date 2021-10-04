package of.member.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface MemberRepository extends JpaRepository<Member, String> {
	
	public List<Member> findByaidLike(String aid);
	
	public Member findByaid(String aid);
		
}
