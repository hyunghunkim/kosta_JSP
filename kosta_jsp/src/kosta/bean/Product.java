package kosta.bean;

public class Product {
	private String fruit;
	private int price;
	private int amount;
	
	public Product() {}

	public Product(String fruit, int price, int amount) {
		super();
		this.fruit = fruit;
		this.price = price;
		this.amount = amount;
	}

	public String getFruit() {
		return fruit;
	}

	public void setFruit(String fruit) {
		this.fruit = fruit;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
}
