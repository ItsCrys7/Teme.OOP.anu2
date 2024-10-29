<!DOCTYPE html>
<html>
<head>
    <title>Vocale</title>
</head>
<body>
    <h2>Numarul de vocale</h2>

    <% 
        String text = request.getParameter("text");

        if (text != null) {
            int numarVocale = 0;
            
            text = text.toLowerCase();

            for (int i = 0; i < text.length(); i++) {
                char ch = text.charAt(i);
                if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
                    numarVocale++;
                }
            }

            out.println("<h3>Textul \"" + text + "\" contine " + numarVocale + " vocale.</h3>");
        } else {
            out.println("<p style='color:red;'>Te rog sa trimiti parametrul 'text' in URL.</p>");
        }
    %>
</body>
</html>
