<%-- 
    Document   : footer
    Created on : May 12, 2016, 10:18:48 PM
    Author     : DouglasJones
--%>
<%@page import="java.util.Calendar, java.util.GregorianCalendar"%>
<%  
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>
<p>&copy; Copyright <%= currentYear %> Douglas Jones Web Applications</p>
<a href="mailto:dougj80@gmail.com?Subject=A&R%20Aquarium">Contact Developer</a>
