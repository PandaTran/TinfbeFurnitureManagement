package com.anhtien.tinfbefurnituremanagement.entity;

public class Category {
	private int id;
	private String name;
	private int parent;

	public Category() {}

	public Category(int id) {
		this.id= id;
	}
	
	public Category(int id, String name, int parent) {
		super();
		this.id = id;
		this.name = name;
		this.parent = parent;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getParent() {
		return parent;
	}

	public void setParent(int parent) {
		this.parent = parent;
	}
}
