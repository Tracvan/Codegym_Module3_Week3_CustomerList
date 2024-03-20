package controller;

import model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name="CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {

    private static List<Customer> customerList;
    static {
        customerList = new ArrayList<>();
        customerList.add(new Customer("Nguyễn Văn A","1/1/1999","Hà Nội", " " ));
        customerList.add(new Customer("Nguyễn Văn B","2/2/2000","Hà Nội", " " ));
        customerList.add(new Customer("Nguyễn Văn C","1/1/2000","Hà Nội", " " ));
        customerList.add(new Customer("Nguyễn Văn D","1/1/2000","Hà Nội", " " ));
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.sendRedirect("/customer");
        req.setAttribute("customerList",customerList);
        req.getRequestDispatcher("/customerList.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
