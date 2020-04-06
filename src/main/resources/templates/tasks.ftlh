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
    <main class="cloudlist">
        <div class="container">
            <div class="cloudlist-row">
                <div class="cloudlist-col">
                    <p class="tasks-p">Задачи</p>
                    <div class="task-body">

                        <form class="task-input" method="post">
                            <input class="list-input" type="text" name="text" placeholder="Введите задачу на сегодня">
                            <button class="list-add-btn" type="submit"><i class="fas fa-plus-circle"></i></button>
                        </form>

                        <div class="task-list">
                            <#list messages as message>
                                <div class="task-card">
                                    <p class = "task-card-p">${message.text}</p>
                                    <button class="task-card-btn"></button>
                                </div>
                            </#list>
                        </div>
                    </div>
                </div>
                <!-- /.cloudlist-col -->
                <div class="cloudlist-col">
                    <p class="tasks-p">Заметки</p>
                    <div class="task-body">
                        <form class="task-input" action="">
                            <input class="notes-input" type="text" value="Введите вашу заметку">
                            <button class="notes-btn" type="submit"><i class="fas fa-plus-circle"></i></button>
                        </form>
                        <div class="notes-list">
                            
                    
                        </div>
                    </div>
                </div>
                <!-- /.cloudlist-col -->
            </div>
            <!-- /.cloudlist-body -->
        </div>
    </main>
    <!-- /.cloudlist -->
    <script src="/static/js/script.js"></script>
</body>

</html>