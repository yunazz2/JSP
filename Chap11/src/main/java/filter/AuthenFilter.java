package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter implements Filter {

	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("AuthenFilter 초기화 - init()...");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// 필터 기능 작성
		System.out.println("AuthenFilter 필터 - doFilter()...");
		
		String name = request.getParameter("name");
		
		if(name == null || name.equals("")) {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			String msg = "name이 null 입니다.";
			writer.println(msg);
			return;
		}
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		System.out.println("AuthenFilter 해제 - destroy()...");
	}
}
