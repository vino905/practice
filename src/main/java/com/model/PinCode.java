package com.model;

public class PinCode {

	public String pincode;
	public String pcode;
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public PinCode(String pincode, String pcode) {
		super();
		this.pincode = pincode;
		this.pcode = pcode;
	}
	public PinCode() {
		super();
	}
	@Override
	public String toString() {
		return "Xyz [pincode=" + pincode + ", pcode=" + pcode + "]";
	}
	
}
