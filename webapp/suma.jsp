<!DOCTYPE html>
<html>
<head>
    <title>Suma</title>
</head>
<body>
   <% 
         int a = Integer.parseInt(request.getParameter("a"));
         int b = Integer.parseInt(request.getParameter("b"));
         int sum = a + b;
         %>
        <p> Suma parametrilor a + b este: <b> <%= sum %> </b></p>
</body>
</html>
