<!DOCTYPE html>
<html>
<head>
    <title>Suma</title>
</head>
<body>
    <h2>Suma a doua numere</h2>

    <% 
        String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");

        if (num1Str != null && num2Str != null) {
            try {
                int num1 = Integer.parseInt(num1Str);
                int num2 = Integer.parseInt(num2Str);
                int suma = num1 + num2;

                out.println("<h3>Rezultatul sumei: " + suma + "</h3>");
            } catch (NumberFormatException e) {
                out.println("<p style='color:red;'>Parametrii trebuie să fie numere valide.</p>");
            }
        } else {
            out.println("<p style='color:red;'>Te rog să trimiți parametrii 'num1' și 'num2' în URL.</p>");
        }
    %>
</body>
</html>
