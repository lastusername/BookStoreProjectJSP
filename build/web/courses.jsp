<%-- 
    Document   : courses
    Created on : Nov 22, 2024, 11:11:50 AM
    Author     : 3012188
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/connection.jspf" %>
<%@include file="WEB-INF/jspf/head.jspf" %>

<!-- Main Content -->
    <main>
        <p>Complete info below for one or more courses to view the required and recommended course materials.</p>

        <div class="course-selector">
            <div class="course-form">
                <div class="course-row">
                    <select>
                        <option>Term</option>
                    </select>
                    <select>
                        <option>Department</option>
                    </select>
                    <select>
                        <option>Course #</option>
                    </select>
                    <select>
                        <option>Section</option>
                    </select>
                    <button class="clear-btn">Clear</button>
                </div>
                
                <button class="add-course">ADD ANOTHER COURSE</button>
                <button class="retrieve">RETRIEVE MATERIALS</button>
            </div>
        </div>
    </main>

        
<%@include file="WEB-INF/jspf/footer.jspf" %>
