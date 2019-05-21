package com.basasak.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.basasak.dto.CartDTO;
import com.basasak.dto.CookieDTO;
import com.basasak.dto.OdderDTO;

@Repository
public class CookieActionImpl extends SqlSessionDaoSupport implements CookieAction {

	@Override
	public List<CookieDTO> cookieList() throws Exception {
		System.out.println("cookie action list 실행");
		return getSqlSession().selectList("Cookie.CList");
	}

	@Override
	public CookieDTO cookieView(CookieDTO cookieDTO) throws Exception {
		System.out.println("cookie action 실행 CookieView" + cookieDTO);
		try {
			return getSqlSession().selectOne("Cookie.CView", cookieDTO);
		} catch (Exception e) {
			System.out.println("sql 에러" + e);
			return null;
		}
	}

	public int cartMax(String id) {
		System.out.println("cart action 실행 CartMax" + id);
		int max=getSqlSession().selectOne("Cart.CMax", id);
		System.out.println("max 값 "+max);
		return max;
	}
	
	public void addCart(String id,CartDTO cartDTO) {
		int max=cartMax(id);
		String valId=id+String.format("%03d",max);
		System.out.println(valId+" "+cartDTO.getC_serial());
		try {
			cartDTO.setSb_serial(valId);
			System.out.println(cartDTO.getC_price()+"   a"+cartDTO.getSb_count()+"#########################");
			cartDTO.setM_id(id);
			cartDTO.setSb_price(cartDTO.getC_price()*cartDTO.getSb_count());
			getSqlSession().insert("Cart.CAdd",cartDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	public int odderMax(String id) {
		int omax;
		if (getSqlSession().selectOne("Cart.OMax")!=null) {
			omax=getSqlSession().selectOne("Cart.OMax");
		}else {
			omax=1;
		}
		return omax;
		
	}
	public void addOdder(OdderDTO odder,String id) {
		odder.setO_num(id+String.format("%03d",odderMax(id)));
		getSqlSession().insert("Cart.OAdd", odder);
		
//		pstmt.setString(1, maxid);
//		System.out.println("여기까진 완료 --1"+rs.getString("c_product"));
//		pstmt.setString(2, rs.getString("c_product"));
//		System.out.println("여기까진 완료 --2");
//		pstmt.setInt(3,rs.getInt("sb_count"));
//		pstmt.setInt(4,rs.getInt("sb_price"));
//		pstmt.setInt(5,rs.getInt("sb_point"));
//		System.out.println("여기까진 완료 --5");
//		pstmt.setString(6, "배송중");
//		pstmt.setString(7,addr);
//		System.out.println("여기까진 완료 --7");
//		pstmt.setString(8,id);
//		System.out.println("여기까진 완료 --8");
//		pstmt.setString(9, rs.getString("c_serial"));
	}
}