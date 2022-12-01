package servlet;

import entity.Constant;
import entity.Result;
import entity.ResultsListBean;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ClearServlet", value = "/cleaner")
public class ClearServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
        req.getSession().setAttribute(Constant.ATTRIBUTE_NAME, null);
        req.getServletContext().setAttribute("counter", 0L);
        System.out.println("Counter has been reset");
    }
}
