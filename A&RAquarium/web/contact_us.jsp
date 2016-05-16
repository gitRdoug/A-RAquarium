<%-- 
    Document   : contact_us
    Created on : May 12, 2016, 11:21:33 PM
    Author     : DouglasJones
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <c:import url="/header.html" />
    <body bgcolor="#1F72CD" onLoad=startBubbles(0);>
        <c:import url="/navigation.html" />
        <h1>Contact Us</h1>
        <p>To obtain a service estimate, ask a service related question, or for any
            other inquiries please complete the form below and we will 
            respond to you as soon as possible.</p>
        <form method="post" name="contact_us" action="MAILTO:dougj80@gmail.com"
              enctype="text/plain">
            Name: <br>
            <input type="text" name="name" value="first and last name"><br>
            Email: <br>
            <input type="email" name="email" value="someone@example.com"><br>
            Phone Number: <br>
            <input type="tel" name="telephone" value="555-555-5555"><br>
            Comments: <br>
            <input type="text" name="comments" value=""><br>
            <input type="submit" value="Send" >
            <input type="reset" value="Reset" >
        </form>
        <p>For urgent concerns please contact us @ <a href="tel:727-204-7569">727-204-7569</a></p>
        
        
       
    </body>
    
     <c:import url="/footer.jsp" />  
    
    
</html>
