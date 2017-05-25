package kidshome.model;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;

public class KidshomeDAO {
	
	SqlMapClient sqlMap;
	
	public KidshomeDAO() {
		sqlMap = MySqlMapClient.getSqlMapInstance();
	}
	
	

}
