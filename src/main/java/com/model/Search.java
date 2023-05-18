package com.model;

public class Search {
	
	
	private String searchingvalue;
	

	public Search() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public Search(String searchingvalue) {
		super();
		this.searchingvalue = searchingvalue;
	}


	public String getSearchingvalue() {
		return searchingvalue;
	}

	public void setSearchingvalue(String searchingvalue) {
		this.searchingvalue = searchingvalue;
	}


	@Override
	public String toString() {
		return "Search [searchingvalue=" + searchingvalue + "]";
	}
	
	

}
