<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<title>Update Notes   ${thesessioncount}</title>
<style>
div.scrolling {
    background-color: #FFFJFF;
    width: 1100px;
    height: 400px;
    overflow: scroll;
}

</style>
</head>

<body>
<center> <h1> Select a Version</h1></center> 
   <hr />
   <font size="+1">
<c:set var="this_version" scope="page"  value="${theBean.version_id}" />
<c:if test="${this_version == 0}">
    <c:set var="this_version"  value=""/><p>
</c:if>
   <form method="get" action="http://hoare.cs.umsl.edu/servlet/j-moyseyev/sessionServlet" >

      Java Source: <input type="text" name="java_source" value="${theBean.file_name}">
      
      &nbsp;&nbsp;&nbsp;
      Version: <input type="text"
       name="version" value="${this_version}">
      <br>
     
      <input type="hidden" name="task" value="1">
      <input type="hidden" name="myString" value="${requestScope.myString}">
      <input type="submit" value="Submit">
   
</form>
   <hr />
   
   <form method="get" action="http://hoare.cs.umsl.edu/servlet/j-moyseyev/sessionServlet" target="_blank">
      <center>
         <h2>Notes: ${theBean.file_name} ${this_version}</h2>
      </center>
      <textarea rows="5" cols="100"  name="notes">
      ${theBean.notes}
      </textarea> <br>
<input type="hidden" name="java_source" value="${theBean.file_name}">
	
       <input type="hidden" name="version" value="${theBean.version_id}">
      <input type="hidden" name="task" value="2">
	
	<input type="hidden" name="myString" value="${requestScope.myString}">
	  <input type="submit" value="Submit">
   </form>

	<form method="link" action="logout.jsp">
	
      <input type="hidden" name="myString" value="${requestScope.myString}">
 
	<center> <input type="submit" value="Logout"></center>
        </form>

   <hr />

   <center> <h2>The file:</h2> </center>
   <div class="scrolling">
      <pre><font size="+1"><b>
    ${theBean.this_version}
</b></font></pre>

   </div>

   </font>

</body>
</html>
