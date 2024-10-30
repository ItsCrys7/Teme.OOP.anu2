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
        }
    %>
</body>
</html>
