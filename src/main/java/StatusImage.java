

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class StatusImage
 */
@MultipartConfig( maxFileSize= 16177215)
@WebServlet("/StatusImage")
public class StatusImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StatusImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("ind do post method i add servlet");
		Part filePart=request.getPart("image_type");
		String imageFileStringName=filePart.getSubmittedFileName();
		System.out.println("selected image file name :"+imageFileStringName);
		
		
		String uploadPath="C:/Users/Students/eclipse-workspace/Miss University/src/main/webapp/web/images/"+imageFileStringName;
		System.out.println("Upload path :"+uploadPath);
		
		try {
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=filePart.getInputStream();
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		}catch(Exception e) {
			e.printStackTrace();		
			}
	
		Connection connection=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/miss","root","");
			PreparedStatement stmt;
			String query="insert into iamges  values (?,?)";
			stmt=connection.prepareStatement(query);
			
			stmt.setString(1, null);
			stmt.setString(2,imageFileStringName);

			
			int rows=stmt.executeUpdate();
			
			if(rows>0) {
				System.out.println("the product is registered successfuly");
				//response.sendRedirect("draft.jsp");
			}
			else {
				System.out.println("oops");
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}
	}


