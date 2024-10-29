<!DOCTYPE html>
<html>
<head>
    <title>Paritate</title>
</head>
<body>
    <h2>Verificam daca un numar este par sau impar</h2>

    <% 
        String numarStr = request.getParameter("numar");

        if (numarStr != null) {
            try {
                int numar = Integer.parseInt(numarStr);
                
                String rezultat = (numar % 2 == 0) ? "par" : "impar";

                out.println("<h3>Numarul " + numar + " este " + rezultat + ".</h3>");
            } catch (NumberFormatException e) {
                out.println("<p style='color:red;'>Parametrul trebuie să fie un numar valid.</p>");
            }
        } else {
            out.println("<p style='color:red;'>Te rog sa trimiti parametrul 'numar' in URL.</p>");
        }
    %>
</body>
</html>
