<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

	<%
		String driver = "com.mysql.jdbc.Driver"; //대소문자 기억! 
		Class.forName(driver); //클래스명을 집어넣어주면 자동으로 객체를 만들어주는 함수. 
		String url = "jdbc:mysql://localhost:3306/basasak?useUnicode=true&characterEncoding=UTF-8"; //sql의 포트번호와 SID적기 
		String userName = "root";
		String passWord = "1234";
		Connection con = DriverManager.getConnection(url, userName, passWord);
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		try {

			//DB에 데이터 넣기

			String sql = "select sb_serial,sb_count,sb_price,c_price,c_product,c_img1 from shopb,cookie where shopb.c_serial=cookie.c_serial and m_id=? order by sb_serial asc";
			pstmt = con.prepareStatement(sql);
			String id = (String) request.getSession().getAttribute("id");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				do {
					String sb_serial = rs.getString("sb_serial");
					int sb_count = rs.getInt("sb_count");
					int sb_price = rs.getInt("sb_price");
					int c_price = rs.getInt("c_price");
					String c_product = rs.getString("c_product");
					String c_img1=rs.getString("c_img1");
					String data = "<tr><td class='info-col'><div class='product'><figure><a href='product.html'title='Product Name'><img src='"+c_img1+"'alt='Product image'class='product-image'><img src='assets/images/products/product1-hover.jpg'alt='Product image'class='image-hover'></a></figure><div class='product-info'><h3 class='product-title'><a href='product.html'>"
							+ c_product
							+ "</a></h3></div></div><!--End.product--></td><td class='price-col'>"//</h3><ul><li><span>Size:</span>SM</li><li><span>Color:</span>Black</li><li><span>Dimension:</span>16 x 20 x 30</li></ul>
							+ c_price
							+ "</td><td class='quantity-col'><input type='number'name='cartcnt'class='form-control cnt'min='1'max='999'placeholder=''value=" + sb_count
							+ "><input type='hidden'id='sb_serial'name='sb_serial'value='" + sb_serial
							+ "'sb_serial'><input type='hidden'name='c_price'value='" + c_price
							+ "'></td><td class='subtotal-col'>" + sb_price
							+ "</td><td class='delete-col'><div class='delete-btn del'title='Delete product'><i class='fa fa-times'></i></div>"
							+"<input type='hidden'name='sb_serial'value='" + sb_serial+ "'></td></tr>";

					out.write(data);
				} while (rs.next());

			}
		} catch (Exception e) {
			System.out.println("Cartdata 에러" + e);
		}
			con.close();
			pstmt.close();
			rs.close();
		
	%>