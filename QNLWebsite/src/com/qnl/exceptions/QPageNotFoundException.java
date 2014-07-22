package com.qnl.exceptions;
/**
 * @author akoya
 */
public class QPageNotFoundException extends QBaseRTException {
	
	public QPageNotFoundException() {
		super( new String[]{"Mailer","Logger"});
	}

	private static final long serialVersionUID = 1L;

	
}
