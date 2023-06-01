package com.giasuanhem.service;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpHeaders;

import java.io.IOException;

public class HeaderFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// Initialization logic if needed
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;

		httpResponse.setHeader("X-Content-Type-Options", "nosniff");
//		httpResponse.setHeader("Content-Security-Policy", "default-src 'self' data: https://www.google-analytics.com;"
//				+ " style-src 'self' https://fonts.googleapis.com https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css;"
//				+ " script-src 'self' https://kit.fontawesome.com 'unsafe-inline';"
//				+ " font-src 'self' https://ka-f.fontawesome.com;"
//				+ " connect-src 'self' https://ka-f.fontawesome.com;");

		httpResponse.setHeader("X-Frame-Options", "DENY");
		Cookie[] cookies = httpRequest.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("JSESSIONID")) {
					String cookieHeaderValue = cookie.getName() + "=" + cookie.getValue()
							+ ";HttpOnly ;Secure;SameSite=Lax";

					httpResponse.addHeader(HttpHeaders.SET_COOKIE, cookieHeaderValue);
				}
			}
		}

		// Forward the request to the next filter or servlet in the chain
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		// Cleanup logic if needed
	}
}
