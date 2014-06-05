package com.qnl.facade;

import java.util.Date;

import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Parameter;
import com.restfb.types.FacebookType;

public class FacebookFacade {
	final static String ACCESS_TOKEN = "CAACEdEose0cBAHuu2J5TK31jn2qQplKZBAXqLPgjaRxqRIb4mkOGyCo8jYBdZBZCLG13JOuW3sBkZBmJb66R7ecmF6zWt8RZAJrrRLkhuQEZAnuxLHmm19aOa2zrRDYULUO5cLMQ9JPUwz2YUB6zeof83SCysCBpY2yP27jrQIWG2Nof0yHSLyIejsoIHt5NIBUTvQ4ZCFSdQZDZD";
										
	final static String FACEBOOK_PAGE_ID = "436689453060614";
	private FacebookClient facebookClient = null;

	public FacebookFacade() {
		this(FacebookFacade.ACCESS_TOKEN);
	}

	public FacebookFacade(String AccessToken) {
		facebookClient = new DefaultFacebookClient(AccessToken);
	}

	public String publishPost(String msg, String caption) {
		try {
			FacebookType publishMessageResponse = facebookClient.publish(
					FACEBOOK_PAGE_ID + "/feed", FacebookType.class,
					Parameter.with("message", msg),
					Parameter.with("caption", caption));
			return publishMessageResponse.getId();
		} catch (Exception ex) {
			ex.printStackTrace();
			return ex.getMessage();
		}
	}

	public String publishPost(String msg, String caption, String imgURL) {
		try {
			FacebookType publishMessageResponse = facebookClient.publish(
					FACEBOOK_PAGE_ID + "/feed", FacebookType.class,
					Parameter.with("message", msg),
					Parameter.with("caption", caption),
					Parameter.with("picture", imgURL));
			return publishMessageResponse.getId();
		} catch (Exception ex) {
			ex.printStackTrace();
			return ex.getMessage();
		}
	}

	public String publishLinkPost(String msg, String caption, String link) {
		try {
			FacebookType publishMessageResponse = facebookClient.publish(
					FACEBOOK_PAGE_ID + "/feed", FacebookType.class,
					Parameter.with("message", msg),
					Parameter.with("caption", caption),
					Parameter.with("link", link));
			return publishMessageResponse.getId();
		} catch (Exception ex) {
			ex.printStackTrace();
			return ex.getMessage();
		}
	}

	public String publishVideoPost(String msg, String caption, String videoURL) {
		try {
			FacebookType publishMessageResponse = facebookClient.publish(
					FACEBOOK_PAGE_ID + "/feed", FacebookType.class,
					Parameter.with("message", msg),
					Parameter.with("caption", caption),
					Parameter.with("source", videoURL));
			return publishMessageResponse.getId();
		} catch (Exception ex) {
			ex.printStackTrace();
			return ex.getMessage();
		}
	}

	public String publishEvent(String msg, String caption, String imgURL,
			String venue, Date startDate, Date endDate) {
		try {
			FacebookType publishMessageResponse = facebookClient.publish(
					FACEBOOK_PAGE_ID + "/events", FacebookType.class,
					Parameter.with("description", msg),
					Parameter.with("name", caption),
					Parameter.with("venue", venue),
					Parameter.with("start_time", startDate),
					Parameter.with("end_time", endDate));
			return publishMessageResponse.getId();
		} catch (Exception ex) {
			ex.printStackTrace();
			return ex.getMessage();
		}
	}
}
