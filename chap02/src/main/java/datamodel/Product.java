package datamodel;

public class Product {
	String  name;
	Integer price;
	Double  weight;
	String  type;
	
	public Product(String name, Integer price, Double weight, String type) {
		this.name 	= name;
		this.price 	= price;
		this.weight = weight;
		this.type 	= type;
	}
	
	@Override
	public String toString() {
		return String.format("<table border=\"1\">"
				+ "<tr><th>제품명</th><td>%s</td></tr>"
				+ "<tr><th>가격</th><td>%s원</td></tr>"
				+ "<tr><th>무게</th><td>%.2fkg</td></tr>"
				+ "<tr><th>종류</th><td>%s</td></tr>"
				+ "</table>", name, price, weight, type);
	}
}
