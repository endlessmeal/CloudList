<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&display=swap&subset=cyrillic"
          rel="stylesheet">
    <script src="https://kit.fontawesome.com/f7c380e976.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/static/styles/style.css">

    <title>CloudList</title>
</head>

<body>

<div class="mouse-parallax">
    <div class="mouse-parallax__background"></div>

    <div class="cloudlist-body">
        <div class="cloud-title">
            <h1 class="title">ВСЕ ПЛАНЫ НА ДЕНЬ В <br> ВАШЕМ БРАУЗЕРЕ</h1>
            <h2 class="subtitle">Начните пользоваться <span class="bold">CloudList</span> <br>
                после регистрации на сайте </h2>
        </div>
        <div class="list-body">
            <form class="list-form" action="/registration" method="post">
                <p class="form-title">Регистрация</p>
                <div class="form-inputs">
                    <p class="form-input-title">Имя пользователя</p>
                    <input type="text" name="username" class="form-input">
                    <p class="form-input-title">Пароль</p>
                    <input type="password" name="password" class="form-input">
                    <p class="form-input-title">${message?ifExists}</p>
                    <input type="hidden" name="_csrf" value="${_csrf.token}" />
                </div>
                <div class="form-footer">
                    <button class="btn">Регистрация</button>
                </div>
            </form>
        </div>
        <div class="list-footer">
            <a href="#" class="github"><i class="fab fa-github"></i></a>
            <a href="#">Политика конфидециальности</a>
        </div>
    </div>

</div>

<script src="/static/js/jquery-3.4.1.min.js"></script>
<script src="/static/js/parallax.js"></script>
</body>

</html>