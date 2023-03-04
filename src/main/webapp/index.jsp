<%@ page import="java.time.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Welcome to COMP367</title>
  </head>
  <body>
    <%
      // Get the current time
      LocalDateTime now = LocalDateTime.now();

      // Set the cutoff time for morning vs. afternoon
      LocalDateTime cutoff = LocalDateTime.of(now.getYear(), now.getMonth(), now.getDayOfMonth(), 12, 0);

      // Get the student name 
      String studentName = "Shreyas Singh";

      // Determine whether it is morning or afternoon
      String greeting;
      if (now.isBefore(cutoff)) {
        greeting = "Good morning";
      } else {
        greeting = "Good afternoon";
      }
    %>

    <h1><%= greeting + ", " + studentName + ", Welcome to COMP367" %></h1>
  </body>
</html>
