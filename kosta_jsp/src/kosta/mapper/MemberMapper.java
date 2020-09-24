package kosta.mapper;

import java.util.List;

import kosta.bean.Member;

public interface MemberMapper {
	List<Member> listMember();
	int insertMember(Member member);
}
