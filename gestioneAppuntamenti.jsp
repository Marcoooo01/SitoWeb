<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Gestione Appuntamenti</title>
   <style>
     body, html {
         font-family: 'Montserrat', 'sans-serif';
     }
    </style>
</head>
   
<body>

   <%
   String cognome = request.getParameter("cognome");
   if (cognome.equals("")) { %>
    
   <h2>Attenzione, devi inserire il cognome!</h2>
   
   <% } else { %>
   
    <h2>Benvenuto <%= cognome %></h2>
  
   <% }
   String classe = request.getParameter("classe");
   if(classe.equals("")) { %>
   
    <h2>Non hai selezionato una classe</h2>
    
   <% } else { %>
   
    <h2>Classe: <%= classe %>
   
   <% } %>
   
   <% String compiti = request.getParameter("compiti");
   if (compiti.equals("yes")) { %>
   
    <h2>Hai scelto di visualizzare i compiti in classe</h2>

    <% } else { %>
    
    <h2>Hai scelto di non visualizzare i compiti in classe </h2>
    <% } %>
    
    <h4>Colloqui:</h4>
    
    <% String[] professori = {"Giraldi Laura", "Titze Walter", "Spadoni Riccardo", "Capozzi Giuseppe", "Carrara Maria Grazia", "Malizia Fabio", "Apicella Annalisa", "Bellocco Paola", "Arcostanzo Piero"};
    int contProf = 0;
    for(int i=0; i<8; i++){
        String prof = request.getParameter(professori[i]);
        if(prof != null) {
            out.println(professori[i]); %> <br> <%
        } else {
            contProf++;
        }
    }
    
    if(contProf == 8) {
            out.println("Non hai selezionato nessun prof.");
    }%>

    
</body>
</html>
