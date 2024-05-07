<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会員登録</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 300px;
        }

        h2 {
            margin-bottom: 20px;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
            width: 100%;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>会員登録</h2>
    <form action="/SignUpServlet" method="post">
        <label for="userid">ユーザーID:</label>
        <input type="text" id="userid" name="userid" required>

        <label for="password">パスワード:</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">登録</button>
    </form>
</div>
</body>
</html>
