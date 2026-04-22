<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Java App - Jenkins Magic!</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
            line-height: 1.6; 
            color: #fff; 
            background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab, #f39c12, #667eea, #ff6b6b);
            background-size: 400% 400%;
            animation: rainbowBg 15s ease infinite, fadeIn 1s ease-in;
            min-height: 100vh;
            padding: 20px;
            overflow-x: hidden;
        }
        @keyframes rainbowBg { 0% { background-position: 0% 50%; } 50% { background-position: 100% 50%; } 100% { background-position: 0% 50%; } }
        @keyframes fadeIn { from { opacity: 0; transform: translateY(30px); } to { opacity: 1; transform: translateY(0); } }
        @keyframes pulse { 0%, 100% { transform: scale(1); } 50% { transform: scale(1.05); } }
        @keyframes float { 0%, 100% { transform: translateY(0px); } 50% { transform: translateY(-20px); } }
        .container { 
            max-width: 1000px; 
            margin: 0 auto; 
            background: rgba(255,255,255,0.1); 
            backdrop-filter: blur(20px); 
            border-radius: 25px; 
            border: 1px solid rgba(255,255,255,0.2);
            box-shadow: 0 25px 50px rgba(0,0,0,0.2); 
            overflow: hidden;
            animation: float 6s ease-in-out infinite;
        }
        header { 
            background: linear-gradient(135deg, #ff9a9e 0%, #fecfef 50%, #fecfef 100%); 
            color: #333; 
            text-align: center; 
            padding: 50px 20px; 
            position: relative;
            overflow: hidden;
        }
        header::before {
            content: ''; font-size: 3em; position: absolute; top: 10px; left: 20px; animation: pulse 2s infinite;
        }
        header h1 { 
            font-size: 3em; 
            margin-bottom: 15px; 
            text-shadow: 3px 3px 6px rgba(0,0,0,0.3);
            background: linear-gradient(45deg, #ff6b6b, #4ecdc4, #45b7d1, #f9ca24); 
            -webkit-background-clip: text; 
            -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: pulse 2s infinite;
        }
        header p { font-size: 1.4em; opacity: 0.95; font-weight: bold; }
        .content { padding: 50px 40px; text-align: center; }
        .content p { 
            font-size: 1.2em; 
            margin-bottom: 40px; 
            max-width: 700px; 
            margin-left: auto; 
            margin-right: auto;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.5);
        }
        .features { 
            display: grid; 
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); 
            gap: 25px; 
            margin-top: 50px; 
        }
        .card { 
            background: linear-gradient(135deg, rgba(255,255,255,0.2), rgba(255,255,255,0.1)); 
            backdrop-filter: blur(10px); 
            padding: 30px; 
            border-radius: 20px; 
            border: 1px solid rgba(255,255,255,0.3);
            transition: all 0.4s; 
            position: relative;
            overflow: hidden;
        }
        .card::before {
            content: ''; position: absolute; top: -50%; left: -50%; width: 200%; height: 200%; background: linear-gradient(45deg, transparent, rgba(255,255,255,0.3), transparent); transform: rotate(45deg); transition: all 0.5s;
        }
        .card:hover::before { animation: shine 0.5s; }
        @keyframes shine { 0% { transform: translateX(-100%) translateY(-100%) rotate(45deg); } 100% { transform: translateX(100%) translateY(100%) rotate(45deg); } }
        .card:hover { 
            transform: translateY(-15px) scale(1.02); 
            box-shadow: 0 20px 40px rgba(0,0,0,0.3); 
            border-color: rgba(255,255,255,0.5);
        }
        .card h3 { 
            color: #fff; 
            margin-bottom: 15px; 
            font-size: 1.5em; 
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }
        .card p { color: rgba(255,255,255,0.9); }
        .btn { 
            display: inline-block; 
            background: linear-gradient(45deg, #ff6b6b, #feca57, #ff9ff3, #54a0ff); 
            color: white; 
            padding: 15px 40px; 
            text-decoration: none; 
            border-radius: 50px; 
            font-weight: bold; 
            font-size: 1.1em;
            transition: all 0.3s; 
            margin-top: 30px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
            animation: pulse 2s infinite;
        }
        .btn:hover { 
            transform: scale(1.1) rotate(2deg); 
            box-shadow: 0 15px 30px rgba(0,0,0,0.3); 
        }
        @media (max-width: 768px) { 
            header h1 { font-size: 2.2em; } 
            .content { padding: 40px 25px; } 
            body { padding: 10px; }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Java Web App Live made by Vimal Singh!</h1>
            <p>Powered by Jenkins CI/CD Pipeline  Second Practice Run Success! </p>
        </header>
        <div class="content">
            <p>
                Welcome to this dazzling Java web app! We've nailed Git cloning from <strong>https://github.com/Vimal0501/Java-App-via-Jenkins-2.git</strong>, 
                Maven builds in workspace <code>C:\ProgramData\Jenkins\.jenkins\workspace\Java Web-App Automation and deployy</code>, 
                and manual Tomcat deployment. Time to shine! 
            </p>
            <div class="features">
                <div class="card">
                    <h3> Jenkins Superpowers</h3>
                    <p>Automated builds, Git integration, and deployment magic at your fingertips.</p>
                </div>
                <div class="card">
                    <h3>Colorful Tech Stack</h3>
                    <p>Java, JSP, Servlets, Tomcat, with vibrant CSS for that wow factor.</p>
                </div>
                <div class="card">
                    <h3>Mobile Magic</h3>
                    <p>Blazing fast, fully responsive design that pops on any screen.</p>
                </div>
                <div class="card">
                    <h3>Future Features</h3>
                    <p>MySQL DB, API endpoints, and more Jenkins pipelines incoming!</p>
                </div>
            </div>
            <a href="about.jsp" class="btn">Dive into About Page! </a>
        </div>
    </div>
</body>
</html>