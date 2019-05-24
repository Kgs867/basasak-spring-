package com.basasak.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.basasak.dto.CartDTO;
import com.basasak.dto.CookieDTO;
import com.basasak.dto.OdderDTO;

@Repository
public class CookieActionImpl extends SqlSessionDaoSupport implements CookieAction {

	@Override
	public List<CookieDTO> cookieList(Map<String, Object> map) throws Exception {
		System.out.println("cookie action list 실행");
		return getSqlSession().selectList("Cookie.CList",map);
	}
	public int cookieCount(Map<String, Object> map) {
		return getSqlSession().selectOne("Cookie.CCount",map);
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
		
		int max=1;
		if (getSqlSession().selectOne("Cart.CMax", id)==null) {
			System.out.println("max 값 "+max);
			return max;
		}else {
			System.out.println("max 값 "+max);
			max=getSqlSession().selectOne("Cart.CMax", id);
		}
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
	
	public List<CartDTO> listCart(String id) {
		return getSqlSession().selectList("Cart.CList",id);
	}
	
	public int odderMax(String id) {
		int omax=0;

		System.out.println("odderMax"+id);
		if (getSqlSession().selectOne("Cart.OMax",id)==null) {
			return omax=1;
		}else {
			return omax=getSqlSession().selectOne("Cart.OMax",id);
		}
	
		
	}
	public void addOdder(List<CartDTO> cart,String id,String addr) {
		System.out.println("addOdder#############"+cart.size()+"######"+ id);
		for (int i = 0; i < cart.size() ; i++) {
			OdderDTO odder=new OdderDTO();
			odder.setO_num(id+String.format("%03d",odderMax(id)));
			odder.setO_product(cart.get(i).getC_product());
			odder.setO_count(cart.get(i).getSb_count());
			odder.setO_price(cart.get(i).getSb_price());
			odder.setM_id(id);
			odder.setO_addr(addr);
			odder.setC_serial(cart.get(i).getC_serial());
			getSqlSession().insert("Cart.OAdd",odder);
		}
		deleteCart(id);
		
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

	@Override
	public void deleteCart(String id) {
		
		getSqlSession().delete("Cart.CDelete",id);
		System.out.println("cart 청소");
	}
	@Override
	public int cartCount(String id) {
		int count=0;
		if (getSqlSession().selectOne("Cart.CCount",id)==null) {
			return count;
		}else {
			return getSqlSession().selectOne("Cart.CCount",id);
		}
		
	}
	@Override
	public List<OdderDTO> odderList(String id) {
		
		return getSqlSession().selectList("Cart.OList",id);
	}
}