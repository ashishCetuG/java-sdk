/**
 * 
 */
package com.velocity.models.request.authorize;

/**
 * This model class holds the data for InternetTrnsactionData
 * 
 * @author vimalk2
 * @date 30-December-2014
 */
public class InternetTransactionData {

	/* Attribute for InternetTransactionData value exists or not. */
	private boolean nillable = true;

	private String value = "";

	public boolean isNillable() {
		return nillable;
	}

	public void setNillable(boolean nillable) {
		this.nillable = nillable;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}