<!DOCTYPE html>
<html>
<head>
    <title>Paritate</title>
</head>
<body>
    <% 
         int num = Integer.parseInt(request.getParameter("num"));
         if(num % 2 == 0){
    %>
        	 <p> Numarul <b> <%= num %> </b> este: par</p>
    <% 
         }
         else
         {
    %>
          <p> Numarul <b><%= num %></b> este: impar</p>
    <%
         }   
     %>
</body>
</html>
