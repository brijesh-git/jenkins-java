<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.presidio.beans.*,com.presidio.dao.*,com.presidio.mybatis.*" %>

<html >
<head>
  <meta charset="UTF-8">
  <title>Product Information </title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="main.css">
</head>

<body>

  <div id="wrapper">
<%

ProductDao dao = new ProductDao(MyBatisConnectionFactory.getSqlSessionFactory());
List<Product> products = dao.selectAll();



%> 
  <h1>Product Information</h1>
  
  <table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
        <th><span>Id</span></th>
        <th><span>Name</span></th>
        <th><span>Category</span></th>
        <th><span>Description</span></th>
    <!--     <th><span>Category</span></th> --> 
      </tr>
    </thead>
    <tbody>
    <%
		  for(Product p : products) {
			  
			  
    %>    
      <tr>
        <td class="lalign"><%= p.getId() %></td>
        <td class="lalign"><%= p.getName() %></td>
        <td class="lalign"><%= p.getCategory() %></td>
        <td class="lalign"><%= p.getDescription() %></td>
<!--          <td class="lalign"><%= p.getCategory() %></td>-->
      </tr>    
     <%
	   }
      %>    
    </tbody>
  </table>
  </div>
  <br>
</body>
</html>