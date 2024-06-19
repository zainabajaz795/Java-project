<%-- Document : viewcartjsp Created on : 04-Jun-2024, 3:18:16 pm Author : PC2 --%>


    <%@page import="mycart.Cartitem" %>
        <%@page import="java.util.ArrayList" %>
            <%@page import="mycart.Cartitem" %>

                <%@page contentType="text/html" pageEncoding="UTF-8" %>
                    <!DOCTYPE html>
                    <html>

                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                        <title>JSP Page</title>
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
                        <style>
                            .mainbox {

                                width: 750px;
                                height: 150px;
                                background-color: rgba(245, 245, 245, 0.659);
                                display: flex;                                
                                border-radius: 7px;
                                box-shadow: 5px 8px 14px red;
                                box-shadow: rgb(95, 75, 75);
                                margin-top: 2%;
                                box-sizing: border-box;

                            }
                            .billing
                            {
                                width: 400px;
                                height: 160px;
                                position: fixed;
                                top: 25%;
                                left: 800px;
                               align-content:center ;
                               background-color: rgba(187, 210, 210, 0.849);
                               color: red;
                               
                               

                            }

                            .image {

                                width: 20%;
                                height: 100%;
                                background-color: rgb(163, 177, 182);

                            }
                            .description
                            {
                                width: 50%;
                                height: 100%;
                                background-color: aqua;
                                display: flex;
                                flex-direction: column;
                                justify-content: space-evenly;
                                align-items: center;

                            }

                            .body {
                                margin: 0%;
                                color: rgba(241, 248, 247, 0.928);
                                display: flex;
                            }

                            img {
                                width: 100%;
                                height: 100%;

                            }

                           .description p:nth-child(1)
                           {
                                font-size: 25px;
                           }
                        </style>
                    </head>

                    <body>
                        <h1>Shopping Item</h1>
                        <% int total=0,count=0; %>    

                        <% ArrayList<Cartitem> list = (ArrayList<Cartitem>) session.getAttribute("list");
                                for (Cartitem item : list) 
                                {
                                    total = total+item.getPrice();
                                    ++count;

                                        %>


                                <div class="mainbox">
                                    
                                    <div class="image">
                                        <img src="<% out.print(item.getImage()); %>" alt="alt" />
                                    </div>

                                    <div class="description card">
                                        
                                            <p align="center">
                                                <% out.print(item.getTitle().toString()); %>
                                            </p>
        
                                            <p align="center">
                                                Rs. <% out.print(item.getPrice()); %>
                                            </p>
                                        
                                       
                                      
                                    </div>

                                </div>
                               

                                    <% out.print("<br>");

                              }

                                   

                     %>
                                       
                     <div class="billing card">
                        <div class="card-header bg-primary text-warning">
                            <h2>Billing Section</h2>
                        </div>
                        <div class="card-body">
                            <h2>
                                Bill Amount = <% out.print(total); %>
                            </h2>
                            <h3">
                                Total Items = <% out.print(count); %>
                            </h3>
                        </div>
                        <div class="card-footer">
                            <button class="btn btn-primary">Proceed to Payment  </button>    
                        </div>
                        
                </div>         

                    </body>

                    </html>