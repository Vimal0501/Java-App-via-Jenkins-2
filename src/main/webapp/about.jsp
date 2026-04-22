<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🎨 Elite About - Jenkins Mastery</title>
    <style>
        :root {
            --primary-glow: linear-gradient(45deg, #ff6b6b, #4ecdc4, #45b7d1, #f9ca24, #f0932b);
            --glass-bg: rgba(255,255,255,0.1);
            --glass-border: rgba(255,255,255,0.25);
            --neon-glow: 0 0 30px rgba(255,255,255,0.5);
        }
        
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { 
            font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
            background: radial-gradient(ellipse at bottom, #1e3c72 0%, #2a5298 50%, #0f0f23 100%);
            overflow-x: hidden;
            min-height: 100vh;
            position: relative;
        }
        
        /* Floating particles */
        body::before {
            content: '';
            position: fixed; top: 0; left: 0; width: 100%; height: 100%;
            background: 
                radial-gradient(2px 2px at 20px 30px, #eee, transparent),
                radial-gradient(2px 2px at 40px 70px, rgba(255,255,255,0.8), transparent),
                radial-gradient(1px 1px at 90px 40px, #fff, transparent),
                radial-gradient(1px 1px at 130px 80px, rgba(255,255,255,0.6), transparent);
            background-repeat: repeat;
            background-size: 200px 100px;
            animation: float 20s linear infinite;
            z-index: -1;
        }
        
        @keyframes float { 0% { transform: translateY(0px) rotate(0deg); } 100% { transform: translateY(-20px) rotate(360deg); } }
        
        .container { 
            max-width: 1200px; margin: 0 auto; padding: 20px;
            perspective: 1000px;
        }
        
        .glass-panel {
            background: var(--glass-bg);
            backdrop-filter: blur(25px) saturate(180%);
            border: 1px solid var(--glass-border);
            border-radius: 30px;
            box-shadow: var(--neon-glow), 0 40px 80px rgba(0,0,0,0.3);
            overflow: hidden;
            position: relative;
            animation: glowPulse 3s ease-in-out infinite alternate;
        }
        
        @keyframes glowPulse {
            0% { box-shadow: var(--neon-glow), 0 40px 80px rgba(0,0,0,0.3); }
            100% { box-shadow: 0 0 50px rgba(255,255,255,0.8), 0 60px 100px rgba(0,0,0,0.4); }
        }
        
        header { 
            background: var(--primary-glow);
            background-size: 400% 400%;
            animation: gradientShift 4s ease infinite;
            padding: 60px 40px;
            text-align: center;
            position: relative;
            transform-style: preserve-3d;
        }
        
        @keyframes gradientShift { 0%, 100% { background-position: 0% 50%; } 50% { background-position: 100% 50%; } }
        
        header h1 { 
            font-size: 3.5em; 
            background: var(--primary-glow);
            background-clip: text;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-shadow: none;
            position: relative;
            animation: textGlow 2s ease-in-out infinite alternate;
        }
        
        @keyframes textGlow {
            from { filter: drop-shadow(0 0 10px rgba(255,255,255,0.8)); }
            to { filter: drop-shadow(0 0 20px rgba(255,255,255,1)); }
        }
        
        nav { 
            background: rgba(255,255,255,0.15); 
            padding: 20px; 
            text-align: center; 
            backdrop-filter: blur(10px);
        }
        nav a { 
            color: rgba(255,255,255,0.95); 
            text-decoration: none; 
            margin: 0 30px; 
            font-weight: 700; 
            font-size: 1.2em;
            position: relative;
            transition: all 0.3s;
        }
        nav a::after {
            content: ''; position: absolute; width: 0; height: 3px; bottom: -5px; left: 50%;
            background: var(--primary-glow); transition: all 0.3s; border-radius: 2px;
        }
        nav a:hover::after { width: 100%; left: 0; }
        nav a:hover { color: #fff; text-shadow: 0 0 10px rgba(255,255,255,0.8); }
        
        .hero-section {
            padding: 80px 60px;
            text-align: center;
            position: relative;
        }
        
        .hero-title {
            font-size: 2.2em; 
            background: var(--primary-glow);
            background-clip: text;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 30px;
            animation: slideInUp 1s ease;
        }
        
        @keyframes slideInUp { from { opacity: 0; transform: translateY(50px); } to { opacity: 1; transform: translateY(0); } }
        
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 30px;
            margin: 60px 0;
        }
        
        .stat-card {
            background: rgba(255,255,255,0.12);
            backdrop-filter: blur(15px);
            padding: 40px 30px;
            border-radius: 25px;
            border: 1px solid var(--glass-border);
            text-align: center;
            position: relative;
            overflow: hidden;
            transition: all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        }
        
        .stat-card::before {
            content: '';
            position: absolute;
            top: 0; left: -100%; width: 100%; height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.3), transparent);
            transition: left 0.5s;
        }
        
        .stat-card:hover::before { left: 100%; }
        .stat-card:hover {
            transform: translateY(-20px) scale(1.05) rotateX(10deg);
            box-shadow: var(--neon-glow);
        }
        
        .stat-icon { font-size: 3em; margin-bottom: 15px; display: block; }
        .stat-number { font-size: 2.5em; font-weight: 800; color: #fff; margin-bottom: 10px; }
        .stat-label { font-size: 1.1em; opacity: 0.9; }
        
        .live-date {
            background: rgba(0,255,150,0.2);
            border: 2px solid rgba(0,255,150,0.5);
            padding: 25px;
            border-radius: 20px;
            text-align: center;
            margin: 40px 0;
            box-shadow: 0 10px 30px rgba(0,255,150,0.3);
            animation: pulseGlow 2s infinite;
        }
        
        @keyframes pulseGlow {
            0%, 100% { box-shadow: 0 10px 30px rgba(0,255,150,0.3); }
            50% { box-shadow: 0 10px 40px rgba(0,255,150,0.6); }
        }
        
        footer { 
            background: rgba(0,0,0,0.4); 
            padding: 30px; 
            text-align: center; 
            font-size: 1em;
            backdrop-filter: blur(10px);
        }
        
        @media (max-width: 768px) {
            header h1 { font-size: 2.5em; }
            .hero-section { padding: 50px 30px; }
            nav a { display: block; margin: 10px 0; }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="glass-panel">
            <header>
                <h1>⚡ Elite Dev Collective</h1>
            </header>
            
            <nav>
                <a href="index.html">🏠 Home Portal</a>
                <a href="about.jsp">👥 Team Core</a>
            </nav>
            
            <div class="hero-section">
                <h2 class="hero-title">Delhi's Premier Backend Architects</h2>
                <p style="font-size: 1.3em; max-width: 800px; margin: 0 auto 40px; opacity: 0.95; line-height: 1.7;">
                    Pioneering CI/CD excellence through Jenkins mastery. From Git orchestration to Tomcat deployments, 
                    we architect scalable Java ecosystems with surgical precision. This platform showcases our live DevOps workflow.
                </p>
                
                <%
                    java.util.Date now = new java.util.Date(); 
                    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("EEEE, MMMM dd, yyyy 'at' hh:mm:ss a z");
                %>
                <div class="live-date">
                    <span style="font-size: 1.4em; font-weight: 700; color: #00ff96;">🕐 LIVE UPDATE</span><br>
                    <span style="font-size: 1.8em; color: #fff;"><%= sdf.format(now) %></span><br>
                    <small style="opacity: 0.8;">JSP • Tomcat • Jenkins Pipeline Active</small>
                </div>
            </div>
            
            <div class="stats-grid">
                <div class="stat-card">
                    <span class="stat-icon">☕</span>
                    <div class="stat-number">500+</div>
                    <div class="stat-label">Java Modules Deployed</div>
                </div>
                <div class="stat-card">
                    <span class="stat-icon">🐛</span>
                    <div class="stat-number">25+</div>
                    <div class="stat-label">Jenkins Pipelines</div>
                </div>
                <div class="stat-card">
                    <span class="stat-icon">🌐</span>
                    <div class="stat-number">100+</div>
                    <div class="stat-label">APIs Mastered</div>
                </div>
                <div class="stat-card">
                    <span class="stat-icon">⚡</span>
                    <div class="stat-number">99.9%</div>
                    <div class="stat-label">Uptime Achieved</div>
                </div>
            </div>
        </div>
        
        <footer>
            <p style="color: rgba(255,255,255,0.9);">
                © <%= new java.util.Date().getYear() + 1900 %> | Bhavya's Elite DevOps Crew | 
                <strong>Live from Delhi via Jenkins → Tomcat</strong> 🚀
            </p>
        </footer>
    </div>
</body>
</html>