<%-- Document : profile Created on : 20-May-2024, 6:31:46 pm Author : PC2 --%>
<%@page import="mycart.Cartitem"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        <title>JSP Page</title>


        <style>
            .product
            {
                width: 200px;
                height: 390px;
                background-color: gray;
                display: flex;
                flex-direction: column;
                border-radius: 7px ;
                box-shadow: 5px 8px 14px red;
                box-shadow: rgb(95, 75, 75);
                margin-top: 12%;
                box-sizing: border-box;
               
            }
            .imagebox
            {
                height: 200px;
                width: 100%;
                background-color: salmon;
            }
            
            body
            {
                margin: 0;
            }
            .header
            {
                width: 100%;
                height: 100px;
                background-color: black;
                color: white;
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 0 30px 0 30px;
                box-sizing: border-box;
            }
            a
            {
                text-decoration: none;
                color: yellow;
                
               
            }
            .page
            {
                width: 100%;
                height: 100vh;                
                display: grid;
                grid-template-columns: auto auto auto auto ;
                grid-template-rows: auto auto auto auto;
                row-gap: 25px;
            }
            img
            {
                width: 100%;
                height: 100%;

            }
            p
            {
                font-size: medium;
                font-weight: 400px;
                color: aliceblue;
             
            }
           

        </style>
    </head>

    <body>
        
        <% String user = (String) session.getAttribute("user"); %>
        <div class="header">
            <h1>
                Hello <% out.println(user); %>
            </h1>
            <a href="viewcartjsp.jsp">
                View Cart
            </a>
            <a  href="index.html">
                Log Out
            </a>
            
        </div>

        <div class="page">

            <%

            Connection con;
            Statement st;
            ResultSet rs;
            
           
          try
          {
          
           Class.forName("com.mysql.cj.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost/javaproject","root","1234");
           st=con.createStatement();
           rs = st.executeQuery("select * from products");
           
           while(rs.next())
           {
            %>
            <form action="MyCart" method="get">
                <input type="hidden" name ="id" value="<% out.print(rs.getString("id")); %>">
                <input type="hidden" name ="image" value="<% out.print(rs.getString("image")); %>">
                <input type="hidden" name ="price" value="<% out.print(rs.getString("price")); %>">
                <input type="hidden" name ="title" value="<% out.print(rs.getString("title")); %>">
                
                
                   <div class="product">
                    
                       <div class="imagebox">
                           <img src="<% out.print(rs.getString("image")); %>" alt="">
                       </div>
                       <p align="center">
                           <% out.print(rs.getString("title")); %>
                       </p>
                       <p align="center">
                        Rs. <% out.print(rs.getString("price")); %>
                       </p>
                       <p align="center">
                        <% out.print(rs.getString("rating")); %><ion-icon name="star-outline"></ion-icon>

                    </p>
                    <p align="center">
                        <button type="submit" class="btn btn-primary"> Add To Cart</button>
                    </p>
                   </div>
                </form>
                   
           
            <%
           }

          
           con.close();
           
          }
           catch(Exception e)
          {
          out.println(e);
          }
          ArrayList<Cartitem>list =  new ArrayList();
           
           list = (ArrayList<Cartitem>)session.getAttribute("list");
           System.out.println("xyz");
           System.out.println(list.size());
           for(Cartitem item:list)
            {
               System.out.println(item);
               }
           %>
   
        </div>


        
    </body>

</html>