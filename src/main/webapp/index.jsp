<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Testing Maven Web App</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        body {
            margin: 0;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #1f1c2c, #928dab, #2c5364);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #ffffff;
        }

        .container {
            background: rgba(255, 255, 255, 0.08);
            padding: 45px 55px;
            border-radius: 14px;
            text-align: center;
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.35);
            max-width: 650px;
            backdrop-filter: blur(10px);
        }

        h1 {
            margin-bottom: 12px;
            font-size: 2.8rem;
            letter-spacing: 1px;
            color: #fbc531;
        }

        p {
            font-size: 1.1rem;
            line-height: 1.7;
            margin-bottom: 25px;
            opacity: 0.95;
        }

        .info {
            background: rgba(0, 0, 0, 0.25);
            padding: 22px;
            border-radius: 10px;
            text-align: left;
        }

        .info p {
            margin: 8px 0;
            font-size: 1rem;
        }

        .info strong {
            color: #00a8ff;
        }

        .devops-symbol {
            margin: 20px auto;
            width: 120px;
        }

        footer {
            margin-top: 25px;
            font-size: 0.9rem;
            opacity: 0.85;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Testing Maven Web App</h1>

    <p>
        A vibrant Java-based sample web application built by <strong>Nellore</strong>, 
        integrated with <strong>DevOps</strong> practices for automated testing and deployment.
    </p>

    <!-- DevOps Infinity Symbol -->
    <div class="devops-symbol">
        <img src="https://upload.wikimedia.org/wikipedia/commons/9/9f/Devops-toolchain.svg" alt="DevOps Symbol" width="120">
    </div>

    <div class="info">
        <p><strong>Application Type:</strong> Java Web Application</p>
        <p><strong>Build Tool:</strong> Maven</p>
        <p><strong>Java Version:</strong> JDK 17</p>
        <p><strong>Pipeline:</strong> Jenkins + JFrog + Tomcat</p>
        <p><strong>Packaging:</strong> WAR</p>
    </div>

    <footer>
       Automated pipeline setup for testing and deployment by Nellore Narasimha ✨
    </footer>
</div>

</body>
</html>
