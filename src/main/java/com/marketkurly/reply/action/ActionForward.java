package com.marketkurly.reply.action;

public class ActionForward {
	// true:redirect, false : forward
	private boolean isRedirect; 
	private String path;
	
	public ActionForward(boolean isRedirect, String path) {
		super();
		this.isRedirect = isRedirect;
		this.path = path;
	}
	
	public ActionForward() {
		
	}

	
	
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	 
}
