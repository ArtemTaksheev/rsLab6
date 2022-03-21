<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Music</title>
    </head>
    <body>
        <p>
            Chosen Song: <%= request.getParameter("music")%>
        </p>
    </body>
</html>