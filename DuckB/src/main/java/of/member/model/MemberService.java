package of.member.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("memberService")
@Transactional
public class MemberService {

	@Autowired
	private MemberRepository memberRepository;

	public List<Member> getAllMembers() {
		return memberRepository.findAll();
	}
	
	public List<Member> getByLike(String queryVal){
		return memberRepository.findByaidLike(queryVal);
	}
	
	public Member getA_id(String queryVal){
		return memberRepository.findByaid(queryVal);
	}
	
	public Member insert(Member member){
		return memberRepository.save(member);
	}
	
	public Member update(Member member) {
		return memberRepository.save(member);
    }
	
	public void deletea_id(String aid){
		memberRepository.deleteById(aid);
	}
	
	public Member getA_idAjax(String queryVal){
		return memberRepository.findByaid(queryVal);
	}
	
	
}
