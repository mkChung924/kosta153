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
	
	//아이디 중복확인
	public String idCheck(String id){
		String idC = null;
		try {
			idC = (String) sqlMap.queryForObject("kids.selectId",id);
			System.out.println("불러온 아이디: "+idC);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return idC;
	}	// idCheck()
	
	//로그인 하기
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
	
	//마이페이지 대여신청 가져오기
	public List<RentreqBeans> selectMyRentReq(String id){
		List<RentreqBeans> list = null;
		
		try {
			list = sqlMap.queryForList("kids.selectMyRentReq",id);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//마이페이지 대여 현황 가져오기
	public List<RentBeans> selectMyRent(String id){
		List<RentBeans> list = null;
		
		try {
			list = sqlMap.queryForList("kids.selectMyRent",id);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean delMyRentReq(HashMap<String, String> map){
		
		try {
			int t = sqlMap.delete("kids.rentReqDel", map);
			if(t==1) return true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean upInventory(String serial){
		
		try {
			int t = sqlMap.update("kids.upInventory", serial);
			if(t==1) return true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	
	//관리자가 대여신청에 대응하여 택배 또는 대여 버튼을 눌렀을 때
	//택배 배송일 경우
	public boolean insertRentInfoPost(HashMap map){
		
		try {
			sqlMap.insert("kids.insertRentInfoPost", map);
			return true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	//방문 대여일 경우
	public boolean insertVisit(HashMap<String,String> map){
		
		try {
			sqlMap.insert("kids.insertVisit", map);	
			return true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	//대여 후 재고 정보 수정
	public boolean updateStateOfInventory(String serial){
		
		try {
			int t = sqlMap.update("kids.updateinventory", serial);
			System.out.println("t: "+t);
			System.out.println("Inventory 수정됨");
			if(t == 1) return true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	//대여후 대여 신청 테이블 수정
	public boolean updateStateOfRentReq(HashMap<String,String> map){
		
		try {
			System.out.println(map.get("id"));
			int t = sqlMap.update("kids.updateRentReq", map);
			if(t == 1) return true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
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
	public List<String> foundId(ToyMembers user){	// 아이디 찾기
		List<String> list = null;
		try {
			list = sqlMap.queryForList("kids.foundid",user);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
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
	}//selectAllMember
	
	//재고 정보 가져오기
	public List<Toys> selectAllInventory() {
		List<Toys> list = null;
		try {
			list = (ArrayList<Toys>) sqlMap.queryForList("kids.selectAllInventory");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

	}
	
	//재고정보 업데이트
	public boolean updateTotal(Toys toyinfo) {
		try {
			int t = sqlMap.update("kids.updateTotal", toyinfo);
			if (t == 1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//모든 회원 대여 신청 불러오기
	public List<RentreqBeans> selectAllRentReq(){
		List<RentreqBeans> list = null;
		
		try {
			list = sqlMap.queryForList("kids.selectAllRentReq");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//이름으로 회원 대여 신청 불러오기
	public List<RentreqBeans> selectAllRentReqByName(String name){
		List<RentreqBeans> list = null;
		
		try {
			list = sqlMap.queryForList("kids.selectAllRentReqByName", name);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//전화번호로 회원 대여 신청 불러오기
	public List<RentreqBeans> selectAllRentReqByTel(String tel){
		
		List<RentreqBeans> list = null;
		tel = "%"+tel;
		try {
			list = sqlMap.queryForList("kids.selectAllRentReqByTel", tel);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//모든 대여 정보 불러오기
	public List<RentBeans> selectAllRent(){
		List<RentBeans> list = null;
		
		try {
			list = sqlMap.queryForList("kids.selectAllRent");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	//이름 검색으로 대여 정보 불러오기
	public List<RentBeans> selectAllRentByName(String name){
		List<RentBeans> list = null;
		
		try {
			list = sqlMap.queryForList("kids.selectAllRentByName", name);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return list;
	}
	//번호 검색으로 대여 정보 불러오기
	public List<RentBeans> selectAllRentByTel(String tel){
		List<RentBeans> list = null;
		tel = "%"+tel;
		try {
			list = sqlMap.queryForList("kids.selectAllRentByTel", tel);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return list;
	}
	
	public boolean checkIt(HashMap map){
		
		try {
			List<String> list = sqlMap.queryForList("kids.checkIt",map);
			if(list.get(0).equals("0")){
				
				return true;
				
			} else {
				return false;
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean countMaximum(String id){
		
		try {
			List<String> list = sqlMap.queryForList("kids.countMaximum",id);

			int count = Integer.parseInt(list.get(0));
			System.out.println("대여 신청중인 상품 개수: " + count);
			if(count >= 3){
				return false;
			} else {
				return true;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean checkVacant(String serial){
		
		try {
			int vacant = (Integer) sqlMap.queryForObject("kids.checkVacant",serial);
			if(vacant > 0){
				return true;
			} else {
				return false;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean updateInventory(String serial){
		
		try {
			int t = sqlMap.update("kids.updateInventory",serial);
			if(t==1) return true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean insertMyRentReq(HashMap map){
		
		try {
			sqlMap.insert("kids.InsertMyRentReq", map);
			return true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}
	
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
