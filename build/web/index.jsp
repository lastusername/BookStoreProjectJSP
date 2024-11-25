<%-- 
    Document   : index
    Created on : Oct 28, 2019, 12:19:35 PM
    Author     : 00220682
    Edited by : Bookstore Group 1 Members
    Edited on : 11/22/2024
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/connection.jspf" %>
<%--
    <!--Was used in origional code to select books on sale and display on the home page.-->
    <%
        ResultSet rs = stmt.executeQuery("select * from Books where Special = 1");
    %>
--%>
<%@include file="WEB-INF/jspf/head.jspf" %>
<%--    <article>
        <header>
            <h1>The Bookstore</h1>
            <p>We specialize in finding books by software developers for software developers.  Need to learn web development?  Database development? Graphic Design?  We have books for you!</p>
            <h2>Books on Sale</h2>
            <hr/>
        </header>
        
<%@include file="WEB-INF/jspf/results.jspf" %>
    </article>--%>
<!-- Needs To Be Re-done for Generating BooksRather Than a Set Amount -->
<!-- Main Content -->
    <div id="main">
        <!-- First Row of Books -->
        <div class="book-row">
            <div class="book-card">   
                <!--Problem: currently you have to manually type in the isbn to link to the right page and also the cover img-->
                <a href="specificBookPage.jsp"> 
                    <img src="images/English_Harry_Potter_6_Epub_9781781100257.jpg" alt="Book 1"/>
                </a>
                <p class="book-description">Description of Book 1.</p>
            </div>
            <div class="book-card">
                <a href="specificBookPage.jsp?isbn=0-201-44787-8">
                    <img src="images/PracticalSQL.JPG" alt="Book 2"/>
                </a>
                <p class="book-description">Description of Book 2.</p>
            </div>
            <div class="book-card">
                <a href="specificBookPage.jsp"> 
                    <img src="images/Harry.png" alt="Book 3"/>
                </a>
                <p class="book-description">Description of Book 3.</p>
            </div>
            <div class="book-card">
                <a href="specificBookPage.jsp"> 
                    <img src="images/Jaws-Book-Cover-1023x1536.jpg" alt="Book 4"/>
                </a>
                <p class="book-description">Description of Book 4.</p>
            </div>
            <div class="book-card">
                <a href="specificBookPage.jsp"> 
                    <img src="images/OIP (1).jfif" alt="Book 5">
                </a>
                <p class="book-description">Description of Book 5.</p>
            </div>
            <div class="book-card">
                <a href="specificBookPage.jsp"> 
                    <img src="images/OIP.jfif" alt="Book 6">
                </a>
                <p class="book-description">Description of Book 6.</p>
            </div>
            <div class="book-card">
                <a href="specificBookPage.jsp"> 
                    <img src="images/R (1).jfif" alt="Book 7">
                </a>
                <p class="book-description">Description of Book 7.</p>
            </div>
        </div>
    
<%@include file="WEB-INF/jspf/footer.jspf" %>
<%@include file="WEB-INF/jspf/close.jspf" %>
