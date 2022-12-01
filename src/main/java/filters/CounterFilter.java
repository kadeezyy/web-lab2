package filters;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;


public class CounterFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        Long counter;

        if (req.getServletContext().getAttribute("counter") == null) {
            counter = 1L;
            req.getServletContext().setAttribute("counter", counter);
            System.out.println("Attribute counter has been set");
            System.out.println("It's value is " + counter);
        } else {
            counter = (Long) req.getServletContext().getAttribute("counter");
            req.getServletContext().setAttribute("counter", ++counter);
            System.out.println("Counter's value is " + counter);
        }
        chain.doFilter(req, response);
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
