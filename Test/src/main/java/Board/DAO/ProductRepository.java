// JDBConnection 파일을 상속 받으면 연결 자체는 JDB~가 해주겠죠?!
// JDBConnection을 사용해서 mysql에 접근하려면 라이브러리 로드 필요 => WEB-INF 폴더 안의 lib에 추가해주기
package Board.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Board.DTO.Board;


public class ProductRepository extends JDBConnection {
	
	/**
	 * 상품 목록
	 * @return
	 */
	public List<Board> list() {
		
		ArrayList<Board> productList = new ArrayList<Board>();
		
		String sql = " SELECT * FROM product ";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while( rs.next() ) {
				Board product = new Board();
				
				product.setBoardNo( rs.getInt("board_no") );
				product.setTitle( rs.getString("title") );
				product.setWriter( rs.getString("writer") );
				product.setContent( rs.getString("content") );
				product.setRegDate( rs.getString("reg_date") );
				product.setUpdDate( rs.getString("upd_date") );
				product.setFile( rs.getString("file") );

				//////////////////////////////////////////////
				//				여기부터 마저 바꿔야 함!!!			//
				//////////////////////////////////////////////
				
				productList.add(product);
			}
			
		} catch (SQLException e) {
			System.err.println("상품 목록 조회 시, 에러 발생");
			e.printStackTrace();
		}
		return productList; 
	}
	
	/**
	 * 상품 조회
	 * @param productId
	 * @return
	 */
	public Product getProductById(String productId) {
		Product product = new Product();
		
		String sql = " SELECT * FROM product WHERE product_id = ? ";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, productId);
			rs = psmt.executeQuery();
			
			if( rs.next() ) {
				product.setProductId( rs.getString("product_id") );
				product.setName( rs.getString("name") );
				product.setUnitPrice( rs.getInt("unit_price") );
				product.setDescription( rs.getString("description") );
				product.setManufacturer( rs.getString("manufacturer") );
				product.setCategory( rs.getString("category") );
				product.setUnitsInStock( rs.getLong("units_in_stock") );
				product.setCondition( rs.getString("condition") );
				// [NEW] file 경로 가져오기
				product.setFile(rs.getString("file"));
			}
		} catch (SQLException e) {
			System.err.println("상품 조회 시, 에러 발생");
			e.printStackTrace();
		}
		return product;
	}
	
	
	/**
	 * 상품 등록
	 * @param product
	 * @return
	 */
	public int insert(Product product) {
		int result = 0;
		
		String sql = " INSERT INTO product (product_id, name, unit_price, description, manufacturer, category, units_in_stock, `condition`, file) "
				   + " VALUES( ?, ?, ?, ?, ?, ?, ?, ?, ?) ";
		
		int no = 1;
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(no++, product.getProductId());
			psmt.setString(no++, product.getName());
			psmt.setInt(no++, product.getUnitPrice());
			psmt.setString(no++, product.getDescription());
			psmt.setString(no++, product.getManufacturer());
			psmt.setString(no++, product.getCategory());
			psmt.setLong(no++, product.getUnitsInStock());
			psmt.setString(no++, product.getCondition());
			// [NEW] - file 경로 추가
			psmt.setString(no++, product.getFile());
			result = psmt.executeUpdate();			// 상품 등록 요청
			
		} catch (SQLException e) {
			System.err.println("상품 등록 중, 에러 발생!");
			e.printStackTrace();
		}
		System.out.println("상품 " + result + "개가 등록되었습니다.");
		return result;
	}

}





