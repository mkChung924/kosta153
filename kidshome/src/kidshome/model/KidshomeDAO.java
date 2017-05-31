package kidshome.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public int count(){
		int count = 0;
		
		try {
			count = (Integer) sqlMap.queryForObject("kids.toyCount");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
	public ArrayList<Toys> selectPage(int page, int recordCount){
		int max = page*recordCount;
		int min = max-(recordCount-1);
		ArrayList<Toys> list = null;
		
		try {
			Map<String, Integer> map = new HashMap<>();
			map.put("min", min);
			map.put("max", max);
			
			list = (ArrayList<Toys>) sqlMap.queryForList("kids.selectPage", map);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public Toys selectDetailToy(String serial){
		Toys toy = null;
		
		try {
			
			toy = (Toys) sqlMap.queryForObject("kids.selectToyDetail", serial);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return toy;
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
	
	public List<Give> giveList(){
		
		List<Give> list = null;
		
		try {
			list = sqlMap.queryForList("kids.selectGive");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<ReqToy> ToyReqList(){
		
		List<ReqToy> list = null;
		
		try {
			list = sqlMap.queryForList("kids.selectToyReq");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public boolean updateToyReq(int num){
		
		try {
			int t = sqlMap.update("kids.updateToyReq",num);
			if(t == 1) return true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean updateToyReqNo(int num){
		
		try {
			int t = sqlMap.update("kids.updateToyReqNo",num);
			if(t == 1) return true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean updateGiveReq(int num){
		
		try {
			int t = sqlMap.update("kids.updateGiveReq",num);
			if(t == 1) return true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
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
	
	public int searchToyCount(String tn,String age,String kind){
		int count=0;
		Map<String,String> sm = new HashMap<>();
		sm.put("toyname",tn);
		sm.put("toyage",age);
		sm.put("toykind",kind);
			try {
				if(tn==null && age==null && kind==null)
				{
					count = (int)sqlMap.queryForObject("kids.selectcount",sm);
				}
				else if(tn!=null && age==null && kind==null)
				{
					
					count = (int)sqlMap.queryForObject("kids.selectcountn",sm);
				}
				else if(tn==null && age!=null && kind==null)
				{
					count = (int)sqlMap.queryForObject("kids.selectcounta",sm);
				}
				else if(tn==null && age==null && kind!=null)
				{
					count = (int)sqlMap.queryForObject("kids.selectcountk",sm);
				}
				else if(tn!=null && age==null && kind!=null)
				{
					count = (int)sqlMap.queryForObject("kids.selectcountnk",sm);
				}
				else if(tn!=null && age!=null && kind==null)
				{
					count = (int)sqlMap.queryForObject("kids.selectcountna",sm);
				}
				else if(tn==null && age!=null && kind!=null)
				{
					count = (int)sqlMap.queryForObject("kids.selectcountak",sm);
				}
				else
				{
					count = (int)sqlMap.queryForObject("kids.selectcountnak",sm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return count;
	}
	public List searchToy(String tn,String age,String kind,int page,int maxct){
		Map<String,String> sm = new HashMap<>();
		String min_ct;
		String max_ct;
		min_ct=""+((maxct*page)-(maxct-1));
		max_ct=""+(maxct*page);
		if(tn!=null)
			tn="%"+tn+"%";
		sm.put("toyname",tn);
		sm.put("toyage",age);
		sm.put("toykind",kind);
		sm.put("min_ct",min_ct);
		sm.put("max_ct",max_ct);
		System.out.println(sm.get("toy_name"));
		List<Toys> toylist = null;
		try {
			if(tn==null && age==null && kind==null)
			{
				toylist=(List<Toys>)sqlMap.queryForList("kids.searchtoy",sm);
			}
			else if(tn!=null && age==null && kind==null)
			{
				
				toylist=(List<Toys>)sqlMap.queryForList("kids.searchtoyn",sm);
			}
			else if(tn==null && age!=null && kind==null)
			{
				toylist=(List<Toys>)sqlMap.queryForList("kids.searchtoya",sm);
			}
			else if(tn==null && age==null && kind!=null)
			{
				toylist=(List<Toys>)sqlMap.queryForList("kids.searchtoyk",sm);
			}
			else if(tn!=null && age==null && kind!=null)
			{
				toylist=(List<Toys>)sqlMap.queryForList("kids.searchtoynk",sm);
			}
			else if(tn!=null && age!=null && kind==null)
			{
				toylist=(List<Toys>)sqlMap.queryForList("kids.searchtoyna",sm);
			}
			else if(tn==null && age!=null && kind!=null)
			{
				toylist=(List<Toys>)sqlMap.queryForList("kids.searchtoyak",sm);
			}
			else
			{
				toylist=(List<Toys>)sqlMap.queryForList("kids.searchtoynak",sm);
			}
			return toylist;
		} catch (SQLException e) {
			
		}
		return toylist;
	}
	
}
