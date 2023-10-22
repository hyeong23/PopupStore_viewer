package popup.service;

import java.sql.Date;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.dto.Member;
import popup.mapper.MemberMapper;

@Service
public class MemberService {

	@Autowired
	MemberMapper memberMapper;
	
	public List<Member> getMember() throws SQLException, Exception{
		
		return memberMapper.getMember();
	}

	// 로그인
	public Member getMemberByIdAndPw(String memberId, String memberPw) throws Exception {

		Member member = memberMapper.getMemberByIdAndPw(memberId, memberPw);

		if (member == null) {
			throw new Exception("존재하지 않는 회원 입니다.");
		}

		return member;
	}

	// 회원가입(일반)
	public boolean insertGeneralMember(String memberId, String memberPw, String memberNickname, String memberEmail,
			long memberPhoneNum, int memberType) throws Exception {

		boolean member = memberMapper.insertGeneralMember(memberId, memberPw, memberNickname, memberEmail,
				memberPhoneNum, memberType);

		return member;
	}

	// 회원가입(비지니스)
	public boolean insertBusinessMember(String memberId, String memberPw, String memberEmail, String memberCompanyName,
			long memberCompanyNum, long memberPhoneNum, int memberType) throws Exception {

		boolean member = memberMapper.insertBusinessMember(memberId, memberPw, memberEmail, memberCompanyName,
				memberCompanyNum, memberPhoneNum, memberType);

		return member;
	}

	// ID체크
	public boolean getMemberById(String memberId) throws Exception {

		boolean result = true;

		Member check = memberMapper.getMemberById(memberId);

		if (check == null) {
			result = false;
		}

		return result;
	}

	// ID체크
	public Member getMemberById2(String memberId) throws Exception {

		Member check = memberMapper.getMemberById(memberId);

		return check;
	}

	// Email체크
	public boolean getMemberByEmail(String memberEmail) throws Exception {

		boolean result = true;

		Member check = memberMapper.getMemberByEmail(memberEmail);

		if (check == null) {
			result = false;
		}

		return result;
	}

	// NickName체크
	public boolean getMemberByNickname(String memberNickname) throws Exception {

		boolean result = true;

		Member check = memberMapper.getMemberByNickname(memberNickname);

		if (check == null) {
			result = false;
		}

		return result;
	}

	// CompanyName체크
	public boolean getMemberByCompanyName(String memberCompanyName) throws Exception {

		boolean result = true;

		Member check = memberMapper.getMemberByCompanyName(memberCompanyName);

		if (check == null) {
			result = false;
		}

		return result;
	}

	// CompanyNum체크
	public boolean getMemberByCompanyNum(int memberCompanyNum) throws Exception {

		boolean result = true;

		Member check = memberMapper.getMemberByCompanyNum(memberCompanyNum);

		if (check == null) {
			result = false;
			;
		}

		return result;
	}

	// PhoneNum체크
	public boolean getMemberByPhoneNum(long memberPhoneNum) throws Exception {
		boolean result = true;

		Member check = memberMapper.getMemberByPhoneNum(memberPhoneNum);

		if (check == null) {
			result = false;
			;
		}

		return result;
	}

	// 회원정보 수정 시 변경된 비밀번호 일치 체크
	public void updateMemberPassword(String memberId, String memberPw) throws Exception {

		Member member = memberMapper.getMemberById(memberId);

		// 변경된 비밀번호와 기존 비밀번호가 일치하는지 확인
		if (member.getMemberPw().equals(memberPw)) {
			throw new RuntimeException("변경된 비밀번호는 이전 비밀번호와 동일합니다.");
		}

		// 변경된 비밀번호로 업데이트
		member.setMemberPw(memberPw);

		// 멤버 정보를 업데이트
		memberMapper.updateMember(member);
	}

	public void updateMember(Member modifiedMember) {

	    // Member 객체에서 필요한 정보를 추출 HashMap으로 변환
	    HashMap<String, Object> memberInfo = new HashMap<>();
	    memberInfo.put("memberId", modifiedMember.getMemberId());
	    memberInfo.put("memberPw", modifiedMember.getMemberPw());
	    memberInfo.put("memberNickname", modifiedMember.getMemberNickname());
	    memberInfo.put("memberEmail", modifiedMember.getMemberEmail());
	    memberInfo.put("memberType", modifiedMember.getMemberType());
	    memberInfo.put("memberCompanyNum", modifiedMember.getMemberCompanyNum());
	   

	    memberMapper.updateMember(memberInfo);
	}

	// 회원 탈퇴
	public void deleteMember(String memberId) throws SQLException {
		try {
			// 회원 삭제 로직 수행
			memberMapper.deleteMember(memberId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<String> getBussinessMember() throws SQLException {
		
		List<String> companyName = memberMapper.getBussinessMember();

		return companyName;
	}
	
	//비지니스 회원 가입 승락
			public boolean businessupdate(int memberNum) throws SQLException, Exception{

				boolean result = false;
				
				int res = memberMapper.businessupdate(memberNum);

				if(res != 0) {
					result = true;
				} else {
					throw new Exception("수정 실패");
				}
				
				return result;
		}
		//비지니스 회원 가입 거절
		public boolean businessdelete(int member_num) throws SQLException, Exception{
			
			boolean result = false;
			
			int res = memberMapper.businessdelete(member_num);
			
			if(res != 0) {
				result = true;
			} else {
				throw new Exception("삭제 실패");
			}
			
			return result;
		}

}
