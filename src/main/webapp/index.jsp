<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java App - Built & Deployed via Jenkins</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
            line-height: 1.6; 
            color: #333; 
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px;
        }
        .container { 
            max-width: 900px; 
            margin: 0 auto; 
            background: rgba(255,255,255,0.95); 
            border-radius: 20px; 
            box-shadow: 0 20px 40px rgba(0,0,0,0.1); 
            overflow: hidden;
            animation: fadeIn 1s ease-in;
        }
        @keyframes fadeIn { from { opacity: 0; transform: translateY(30px); } to { opacity: 1; transform: translateY(0); } }
        header { 
            background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%); 
            color: white; 
            text-align: center; 
            padding: 40px 20px; 
        }
        header h1 { 
            font-size: 2.5em; 
            margin-bottom: 10px; 
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        header p { font-size: 1.2em; opacity: 0.9; }
        .content { padding: 40px 30px; text-align: center; }
        .content p { 
            font-size: 1.1em; 
            margin-bottom: 30px; 
            max-width: 600px; 
            margin-left: auto; 
            margin-right: auto;
        }
        .features { 
            display: grid; 
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); 
            gap: 20px; 
            margin-top: 40px; 
        }
        .card { 
            background: white; 
            padding: 25px; 
            border-radius: 15px; 
            box-shadow: 0 10px 20px rgba(0,0,0,0.1); 
            transition: transform 0.3s, box-shadow 0.3s; 
        }
        .card:hover { transform: translateY(-10px); box-shadow: 0 15px 30px rgba(0,0,0,0.2); }
        .card h3 { color: #4facfe; margin-bottom: 10px; font-size: 1.3em; }
        .btn { 
            display: inline-block; 
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); 
            color: white; 
            padding: 12px 30px; 
            text-decoration: none; 
            border-radius: 50px; 
            font-weight: bold; 
            transition: all 0.3s; 
            margin-top: 20px;
        }
        .btn:hover { transform: scale(1.05); box-shadow: 0 10px 20px rgba(0,0,0,0.2); }
        @media (max-width: 768px) { 
            header h1 { font-size: 2em; } 
            .content { padding: 30px 20px; } 
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1> Welcome to Java Web App</h1>
            <p>Successfully Built & Deployed via Jenkins Pipeline!</p>
        </header>
        <div class="content">
            <p>
                Hello! This modern Java web application demonstrates CI/CD automation. 
                We're practicing Jenkins for the second timecloning Git repos, Maven builds, 
                and manual Tomcat deployments. Your workspace at <code>C:\ProgramData\Jenkins\.jenkins\workspace\Java Web-App Automation and deployy</code> is ready for action.
            </p>
            <div class="features">
                <div class="card">
                    <h3> Jenkins Automation</h3>
                    <p>Git clone from <strong>https://github.com/Vimal0501/Java-App-via-Jenkins-2.git</strong>, Maven clean install, and WAR deployment.</p>
                </div>
                <div class="card">
                    <h3>Tech Stack</h3>
                    <p>Java Servlets, JSP, HTML/CSS/JS, Apache Tomcat, MySQL integration coming soon.</p>
                </div>
                <div class="card">
                    <h3> Responsive Design</h3>
                    <p>Fully mobile-friendly with gradients, animations, and hover effects for better UX.</p>
                </div>
            </div>
            <a href="about.jsp" class="btn">Explore About Page </a>
        </div>
    </div>
</body>
</html>