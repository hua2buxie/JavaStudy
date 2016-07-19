package com.levi.servletajax;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.levi.domain.Product;

/**
 * Servlet implementation class AjaxDemo2
 */
public class AjaxDemo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Product>products=new ArrayList<Product>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxDemo2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	public void init() throws ServletException
	{
		products.add(new Product(1, "篮球", 300));
		products.add(new Product(2, "足球", 100));
		products.add(new Product(3, "乒乓球",50));
		products.add(new Product(4, "羽毛球",100));
		products.add(new Product(5, "排球", 120));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("products", products);
		request.getRequestDispatcher("/listProducts.jsp").forward(request, response);
	}

}
