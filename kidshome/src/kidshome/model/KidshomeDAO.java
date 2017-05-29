package kidshome.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;

public class KidshomeDAO {
	
	SqlMapClient sqlMap;
	
	public KidshomeDAO() {
		
		sqlMap = MySqlMapClient.getSqlMapInstance();
	}
	
	public List<String> selectNewToy(){
		List<String> list = null;
		
		try {
			list = sqlMap.queryForList("kids.selectNewToy");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public List<String> selectPopToy(){
		List<String> list = null;
		
		try {
			list = sqlMap.queryForList("kids.selectPopToy");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public List<Toys> selectToys(){
		List<Toys> list = null;
		
		try {
			list = sqlMap.queryForList("kids.selectToys");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean update(ToyMembers mem){
		
		try {
			int t = sqlMap.update("kids.updateMem",mem);
			if(t == 1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public String idCheck(String id){
		String idC = null;
		try {
			idC = (String) sqlMap.queryForObject("kids.selectId",id);
			System.out.println("æ∆¿Ãµ ∞°¡Æø¿¥œ"+idC);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return idC;
	}	// idCheck()
	
	public String selectLogin(String id,String pass){	//
		String mem = null;
		try {
			String passC = (String) sqlMap.queryForObject("kids.selectLogin",id);
			if(passC == null) {
				mem = "idN";
				return mem;
			}
			
			if(!passC.equals(pass)) {
				mem = "passN";
				return mem;
			}
			
			if(pass.equals(pass)){
				mem = "passY";				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mem;
	}
	
	public List<ToyMembers> selectUp(String id){
		List<ToyMembers> list = null;
		
		try {
			list = (List<ToyMembers>) sqlMap.queryForList("kids.selectAll",id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int selectAuth(String id){
	      int auth = 0;
	      
	      try {
	         auth = (int) sqlMap.queryForObject("kids.selectAuth",id);
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      
	      return auth;
	   }
	
	//기부 신청
	
	public boolean giveReq(Give give){
		try {
			
			sqlMap.insert("kids.giveInsert", give);
			return true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}	
		return false;
	}
	
	//기부 불러오기
	
	public List<Give> giveList(String id){
		
		List<Give> list = null;
		
		try {
			list = sqlMap.queryForList("kids.selectMyGive",id);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<ReqToy> myToyReqList(String id){
		
		List<ReqToy> list = null;
		
		try {
			list = sqlMap.queryForList("kids.selectMyToyReq",id);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	//장난감 요청
	public boolean reqToy(ReqToy reqToy){
		try {
			
			sqlMap.insert("kids.toyreqInsert", reqToy);
			return true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}	
		return false;
	}
	
	//대여신청 삭제
	public boolean delRentReq(int no) {

		try {
			int t = sqlMap.delete("kids.rentRequestdelete",no);
			if (t == 1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}//delete
	
	/*
	 * 회원가입
	 */
	
	public boolean insert(ToyMembers member) {
		try {
			sqlMap.insert("kids.insert", member);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}// insert
	
	public boolean delete(String id) {

		try {
			int t = sqlMap.delete("kids.userinfodelete", id);
			if (t == 1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}//delete
	
	//아이디 찾기 및 비밀번호 변경
	public String foundId(ToyMembers user){	// 아이디 찾기
		String id = null;
		try {
			id = (String) sqlMap.queryForObject("kids.foundid",user);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
	
	public List<ToyMembers> foundPass(String id){	// 비밀번호 찾기
		List<ToyMembers> list = null;
		try {
			list = (List<ToyMembers>) sqlMap.queryForList("kids.selectPass",id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public String secureC(String anw){			// 보안코드 확인
		String anwC = null;
		
		try {
			anwC = (String) sqlMap.queryForObject("kids.selectSecure",anw);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return anwC;
	}
	
	public boolean passUpdate(ToyMembers user){		// 비밀번호 변경
		try {
			int t = sqlMap.update("kids.updatePass",user);
			System.out.println("수정확인 성공 " +t);
			if(t==1)return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//회원정보 불러오기
	public ArrayList<ToyMembers> selectAllMember(){
		ArrayList<ToyMembers> list=null;
		try {
			list = (ArrayList<ToyMembers>) sqlMap.queryForList("kids.selectAllMember");
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	  return list;
	}//selectAll
	
}
