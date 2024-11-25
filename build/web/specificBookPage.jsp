<%-- 
    Document   : specificBookPage
    Created on : Nov 22, 2024, 10:47:07 AM
    Author     : 3012188
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/connection.jspf" %>
<%
    String isbn = request.getParameter("isbn");
    ResultSet rs = stmt.executeQuery("select * from BooksQuery where isbn = '" + isbn + "'");
    try{
        rs.next();
    
%>
<%@include file="WEB-INF/jspf/head.jspf" %>

    <div class="container">
        <div class="row">
            <!--Cover & Details-->
            <div class="col-sm-4 column-left">
                <div class="book-cover">
                    <img id="cover" src="<%= rs.getString("coverpic") %>" alt="Image Cover">
                </div>
                <div class="book-details">
                    <p><b>Category:</b> <%= rs.getString("category") %></p>                   
                    <p><b>Publishing:</b> <%= rs.getString("pub_name") %>, <i><%= rs.getString("pubdate") %></i></p>
                    <p><b>ISB:</b> <%= rs.getString("isbn") %></p>

                </div>

            </div>
                
            <!--Title, Author & Description-->
            <div class="col-sm-5 column-middle">
                <h3><%= rs.getString("title") %></h3>
                    <%
                        StringBuilder author = new StringBuilder(32);
                        author.append(rs.getString("au_firstname"));
                        String midName = rs.getString("au_midname");
                        if(!midName.equals("null"))
                            author.append(" " + midName);
                        author.append(" " + rs.getString("au_lastname"));
                    %>
                <h4><%= "Author: " + author.toString() %></h4>
                <div class="description">
                    <p>
                        <i><%= "Published by: " + rs.getString("pub_name") %></i><br><br>
                        <%= rs.getString("description") %>
                    </p>
                </div>
            </div>
                
            <!-- Pricing and Add to Cart-->
            <div class="col-sm-3 column-right">
                <div>
                    <h1>$<%= rs.getString("price") %></h1>
                    <p class="details">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                    </p>
                    <div class="purchase-options">
                        <a href="showCart.jsp?isbn=<%= isbn %>"><button id="add-to-cart">Add to Cart</button></a><br/>
                        
                        <button id="buy-now">Buy Now</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%--
<article>
    <header>
        <h1><%= rs.getString("title") %></h1>
    </header>
    <section>
        <h3></h3>
        <p class="thumbnail">
            <img src="<%= rs.getString("coverpic") %>" alt=""/>
            <a href="showCart.jsp?isbn=<%= isbn %>"><i class="material-icons button">add_shopping_cart</i></a><br/>
            $<%= rs.getString("price") %>
        </p>
        <p class="description">
            <%
                StringBuilder author = new StringBuilder(32);
                author.append(rs.getString("au_firstname"));
                String midName = rs.getString("au_midname");
                if(!midName.equals("null"))
                    author.append(" " + midName);
                author.append(" " + rs.getString("au_lastname"));
            %>
            <span style="font-weight:bold"><%= author.toString() %><br/>
            <%= rs.getString("pub_name") %><br/>
            <%= isbn %><br/></span>
            <%= rs.getString("description") %>
        </p>
        <hr/>
    </section>
</article>--%>
            <%
                }catch(Exception e){
                    
                }
            %>
        
<%@include file="WEB-INF/jspf/footer.jspf" %>
<%@include file="WEB-INF/jspf/close.jspf" %>