<#include "security.ftlh">

<html>
<head>
    <title>FUCK YOUUU</title>
</head>
<body>
<div>
    <form action="/logout" method="post">
        <input type="submit" value="Sign Out"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
    </form>
</div>
<#if isAdmin>
  <span><a href="/user">User list</a></span>
</#if>
<div>
    <form method="post" enctype="multipart/form-data">
        <input type = "text" name = "text" placeholder = "Напишите заметку">
        <input type = "text" name = "tag" placeholder="Тэг">
        <input type="file" name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type = "submit">Добавить</button>
    </form>
</div>

<div>Ваши заметки</div>
<form method="get" action="/main">
    <input type="text" name="filter" value = "${filter!""}">
    <button type="submit">Найти</button>
</form>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <strong>${message.authorName}</strong>
    <#if message.filename??>
        <img src="/img/${message.filename}">
    </#if>
</div>
<#else >
    No messages
</#list>
</body>
</html>