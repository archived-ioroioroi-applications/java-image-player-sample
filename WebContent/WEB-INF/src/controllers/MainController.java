package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

import models.MainModel;

/**
 * Servlet implementation class MainController
 */
@WebServlet(urlPatterns={"/main", "/main/upload"})
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 // Modelの生成
	    MainModel mainModel = new MainModel();
	    mainModel.setMessage("Hello SampleCode2 !");
	    
	    // ViewへModelデータを渡す準備
	    request.setAttribute("model", mainModel);
		
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// Viewを表示
	    this.getServletContext()
	    	.getRequestDispatcher("/src/views/main/index.jsp")
	        .forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		// TODO Auto-generated method stub
		doGet(request, response);
		*/
		
		Part part = request.getPart("filename");
		String name = this.getFileName(part);
		
		request.setAttribute("model", mainModel);
		
		
		this.getServletContext()
    	.getRequestDispatcher("/src/views/main/index.jsp")
        .forward(request, response);
		
	}
	
	private String getFileName(Part part) {
		String name = null;
		for (String dispotion : part.getHeader("Content-Disposition").split(";")) {
			if (dispotion.trim().startsWith("filename")) {
				name = dispotion.substring(dispotion.indexOf("=") + 1).replace("\"", "").trim();
				name = name.substring(name.lastIndexOf("\\") + 1);
				break;
			}
		}
		return name;
	}

}
