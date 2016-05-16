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
    <script language="javascript" src="core.js"></script> 
    <script language="javascript">


var numberOfBubbles = 20; // change this as you see fit

function bubble(objName,x,y,z) {
	this.name = objName;
	this.x = x;
	this.y = y;
	this.z = z;
	this.count = Math.random(40);
	this.remX = x;
	this.remY = y;
	this.moveUp = moveUp;
	this.loopID = objName+""+x+""+y+""+z;
	makeDiv(objName,x,y,'<img src="images/bubble'+z+'.gif">');
}

function randomizeX() { return randomize((browserWidth()-40)); }
function randomizeY() { return (browserHeight()-randomize(40)-40); }

function moveUp() {
	this.count+=Math.random()*10;
	this.y -= this.z;
	this.x+=(Math.cos(this.count));
	if (this.y<-20) { this.y = randomizeY();this.x = randomizeX(); }
	move(this.name,this.x,this.y);
}


// have to do it like this so it wont get look bad in FireFox
function startBubbles(nmCount) {
	if (nmCount<numberOfBubbles) {
		var bubbleNm = "bubble"+nmCount;
		var ranX = randomizeX();
		var ranY = randomizeY();
		var ranZ = randomize(3);
		eval(bubbleNm+' = new bubble("'+bubbleNm+'",ranX,ranY,ranZ);  ');
		eval(bubbleNm+'.loopID = setInterval("'+bubbleNm+'.moveUp();",20);  ');
		nmCount++;
		setTimeout('startBubbles('+nmCount+');',300);
	}
}



</script>
    
</html>
