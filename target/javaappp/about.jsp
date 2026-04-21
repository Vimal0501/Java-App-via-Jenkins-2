<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>About Us</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        header { background: #007bff; color: white; padding: 20px; text-align: center; }
        section { max-width: 800px; margin: 20px auto; }
        footer { background: #f8f9fa; padding: 10px; text-align: center; }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to Our Website</h1>
    </header>
    
    <section>
        <h2>About Us</h2>
        <p>We are a team of software developers based in Delhi, specializing in backend programming, API development, and DevOps tools like Jenkins.</p>
        
        <% 
            java.util.Date now = new java.util.Date(); 
            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("MMMM dd, yyyy");
        %>
        <p>Page last updated: <%= sdf.format(now) %></p>
        
        <h3>Our Skills</h3>
        <ul>
            <li>Java and JavaScript programming</li>
            <li>SQL database management</li>
            <li>API testing with Postman</li>
            <li>Git version control</li>
        </ul>
    </section>
    
    <footer>
        <p>&copy; 2026 Our Company. All rights reserved.</p>
    </footer>
</body>
</html>