package control;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.tiles.TilesRequestProcessor;

public class MyRequestProcessor extends TilesRequestProcessor{
	
	 @Override
	protected boolean processPreprocess(HttpServletRequest request, HttpServletResponse response) {
		
		 try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		 
		return super.processPreprocess(request, response);
	}

}
