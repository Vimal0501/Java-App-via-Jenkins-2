<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🌟 About Us - Jenkins Java Web App</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
            line-height: 1.6; 
            color: #fff; 
            background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab, #f39c12, #667eea, #ff6b6b);
            background-size: 400% 400%;
            animation: rainbowBg 15s ease infinite;
            min-height: 100vh;
            padding: 20px;
        }
        @keyframes rainbowBg { 0% { background-position: 0% 50%; } 50% { background-position: 100% 50%; } 100% { background-position: 0% 50%; } }
        .container { 
            max-width: 1000px; 
            margin: 0 auto; 
            background: rgba(255,255,255,0.1); 
            backdrop-filter: blur(20px); 
            border-radius: 25px; 
            border: 1px solid rgba(255,255,255,0.2);
            box-shadow: 0 25px 50px rgba(0,0,0,0.2); 
            overflow: hidden;
        }
        header { 
            background: linear-gradient(135deg, #ff9a9e 0%, #fecfef 50%, #fecfef 100%); 
            color: #333; 
            text-align: center; 
            padding: 40px 20px; 
        }
        header h1 { 
            font-size: 2.8em; 
            background: linear-gradient(45deg, #ff6b6b, #4ecdc4, #45b7d1, #f9ca24); 
            -webkit-background-clip: text; 
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        nav { background: rgba(255,255,255,0.2); padding: 15px; text-align: center; }
        nav a { color: white; text-decoration: none; margin: 0 20px; font-weight: bold; font-size: 1.1em; transition: color 0.3s; }
        nav a:hover { color: #f9ca24; }
        .content { padding: 50px 40px; }
        .intro { text-align: center; margin-bottom: 40px; }
        .intro p { font-size: 1.2em; max-width: 700px; margin: 0 auto 20px; text-shadow: 1px 1px 2px rgba(0,0,0,0.5); }
        .skills-grid { 
            display: grid; 
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); 
            gap: 25px; 
            margin: 40px 0; 
        }
        .card { 
            background: linear-gradient(135deg, rgba(255,255,255,0.2), rgba(255,255,255,0.1)); 
            backdrop-filter: blur(10px); 
            padding: 30px; 
            border-radius: 20px; 
            border: 1px solid rgba(255,255,255,0.3);
            transition: all 0.4s; 
            text-align: center;
        }
        .card:hover { 
            transform: translateY(-10px); 
            box-shadow: 0 20px 40px rgba(0,0,0,0.3); 
        }
        .card h3 { color: #fff; margin-bottom: 15px; font-size: 1.4em; }
        .date { 
            background: rgba(255,255,255,0.2); 
            padding: 15px; 
            border-radius: 15px; 
            font-size: 1.1em; 
            text-align: center; 
            margin: 20px 0;
        }
        footer { 
            background: rgba(0,0,0,0.2); 
            padding: 20px; 
            text-align: center; 
            font-size: 0.9em;
        }
        @media (max-width: 768px) { 
            header h1 { font-size: 2em; } 
            .content { padding: 30px 20px; }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>👋 About Our Dev Team</h1>
        </header>
        
        <nav>
            <a href="index.html">🏠 Home</a>
            <a href="about.jsp">ℹ️ About</a>
        </nav>
        
        <div class="content">
            <div class="intro">
                <p>
                    We're a passionate team of early-career software developers from <strong>Delhi, India</strong>, 
                    mastering backend magic, APIs, and DevOps. This web app is our hands-on Jenkins practice—building, deploying, and shining!
                </p>
                
                <%
                    java.util.Date now = new java.util.Date(); 
                    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("MMMM dd, yyyy 'at' hh:mm a");
                %>
                <div class="date">
                    📅 Page dynamically updated: <%= sdf.format(now) %> (JSP Power!)
                </div>
            </div>
            
            <div class="skills-grid">
                <div class="card">
                    <h3>💻 Core Skills</h3>
                    <p>Java, JavaScript, SQL queries, and dynamic JSP scripting for robust apps.</p>
                </div>
                <div class="card">
                    <h3>🔌 API Mastery</h3>
                    <p>Designing & testing APIs with Postman, plus authentication flows.</p>
                </div>
                <div class="card">
                    <h3>🐢 DevOps Flow</h3>
                    <p>Jenkins pipelines for Git clone, Maven builds, Tomcat deploys—your CI/CD playground!</p>
                </div>
                <div class="card">
                    <h3>⚡ Version Control</h3>
                    <p>Git workflows, branching, and repo management from <code>Java-App-via-Jenkins-2</code>.</p>
                </div>
            </div>
        </div>
        
        <footer>
            <p>&copy; <%= new java.util.Date().getYear() + 1900 %> Bhavya's Dev Team, Delhi. Practicing Jenkins with flair! 🚀</p>
        </footer>
    </div>
</body>
</html>