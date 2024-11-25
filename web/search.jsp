<%-- 
    Document   : search
    Created on : Nov 11, 2019, 12:39:28 PM
    Author     : 00220682
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/connection.jspf" %>
<%
    ResultSet rs = stmt.executeQuery("select distinct category from Books");
%>
<%@include file="WEB-INF/jspf/head.jspf" %>
    <article>
        <header>
            <h1>Search The Bookstore</h1>
            <p>We specialize in finding books by software developers for software developers.  Need to learn web development?  Database development? Graphic Design?  We have books for you!</p>

        </header>
        <section>
            <h3>Search By Category</h3>
            <form action="searchResults.jsp" method="get">
                <select name="keyword">
                    <option value="">Choose A Category</option>
        <%
            while(rs.next()){
        %>
        <option value="<%= rs.getString("category") %>"><%= rs.getString("category") %></option>
        <%
            }
        %>
                </select>
                <button class="button" onClick="this.form.submit()"><i class="material-icons">search</i></button>
            </form>
            <hr/>
        </section>
        <section>
            <h3>Search By Keyword</h3>
            <form action="searchResults.jsp" method="get">
                <input type="text" name="keyword" placeholder="Enter a keyword" />
                <button class="button" onClick="this.form.submit()"><i class="material-icons">search</i></button>
            </form>
            <hr/>
        </section>
    </article>
<%@include file="WEB-INF/jspf/footer.jspf" %>
<%@include file="WEB-INF/jspf/close.jspf" %>

