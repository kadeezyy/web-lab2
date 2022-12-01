package servlet;

import com.google.gson.Gson;
import entity.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(name = "SaveDotsServlet", value = "dotsSaver")
public class SaveDotsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Result> results = ((ResultsListBean) request.getSession()
                .getAttribute(Constant.ATTRIBUTE_NAME)).getResults();
        response.getWriter().println(results.stream()
                .map(Result::getPointString)
                .collect(Collectors.joining()));
    }
}
