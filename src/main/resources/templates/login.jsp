<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Unique Login Page</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #6e8efb, #a777e3);
            overflow: hidden;
        }
        
        .login-container {
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px);
            text-align: center;
            color: #fff;
            position: relative;
            z-index: 2;
        }

        .login-container h1 {
            margin-bottom: 20px;
            font-size: 2rem;
            letter-spacing: 2px;
        }

        .input-field {
            width: 100%;
            padding: 10px 15px;
            margin: 10px 0;
            border: none;
            border-radius: 25px;
            background: rgba(255, 255, 255, 0.2);
            color: #fff;
            font-size: 1rem;
            outline: none;
        }

        .input-field::placeholder {
            color: #ddd;
        }

        .login-btn {
            width: 100%;
            padding: 10px 15px;
            margin-top: 20px;
            border: none;
            border-radius: 25px;
            background: #fff;
            color: #6e8efb;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s, color 0.3s;
        }

        .login-btn:hover {
            background: #6e8efb;
            color: #fff;
        }

        /* Animated Background */
        .background {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            overflow: hidden;
            z-index: 1;
        }

        .background::before, .background::after {
            content: '';
            position: absolute;
            width: 200%;
            height: 200%;
            top: -50%;
            left: -50%;
            background: radial-gradient(circle, rgba(255,255,255,0.2) 0%, rgba(255,255,255,0) 70%);
            animation: rotate 20s linear infinite;
            transform-origin: center center;
        }

        .background::after {
            animation-delay: 10s;
            background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, rgba(255,255,255,0) 70%);
        }

        @keyframes rotate {
            from { transform: rotate(0); }
            to { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <div class="background"></div>
    <div class="login-container">
        <h1>Login</h1>
        <form action="{loginsts}" method="get">
            <input type="text" class="input-field" name="username" placeholder="Username" required>
            <input type="password" class="input-field" name="password" placeholder="Password" required>
            <button type="submit" class="login-btn">Login</button>
        </form>
    </div>
</body>
</html>