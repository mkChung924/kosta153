package kidshome.model;

import java.sql.SQLException;
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
			int t = sqlMap.update("toy.updateMem",mem);
			if(t == 1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public String idCheck(String id){
		String idC = null;
		try {
			idC = (String) sqlMap.queryForObject("toy.selectId",id);
			System.out.println("æ∆¿Ãµ ∞°¡Æø¿¥œ"+idC);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return idC;
	}	// idCheck()
	
	public String selectLogin(String id,String pass){	// ∑Œ±◊¿Œ »Æ¿Œ
		String mem = null;
		try {
			String passC = (String) sqlMap.queryForObject("toy.selectLogin",id);
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
			list = (List<ToyMembers>) sqlMap.queryForList("toy.selectAll",id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	

}
