import java.sql.SQLException;

import com.anhtien.tinfbefurnituremanagement.service.OrderService;
import com.anhtien.tinfbefurnituremanagement.service.ProductService;

public class Main {
	public static void main(String[] args) throws SQLException {
		ProductService productService = new ProductService();
		productService.showAllProduct();
		OrderService orderService = new OrderService();
		orderService.showAllOrder();
	}
}
