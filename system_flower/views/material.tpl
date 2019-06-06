<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8" />
        <title>詳細表示</title>
        <link rel="stylesheet" href="/static/style.css" />
    </head>
    <body>
        <h1>詳細表示</h1>
        <table>
            <tr><th>名前</th><td class="name">{{flower.name}}</td></tr>
            <tr><th>花の色</th><td class="color">{{flower.color}}</td></tr>
            <tr><th>場所</th><td class="place">{{flower.places}}</td></tr>
            <tr><th>見頃</th><td class="schedule">{{flower.schedules}}</td></tr>
            <tr><th>写真</th><td class="pic"><img class="normal"src="http://localhost:8080/static/image/{{flower.pic}}"></td></tr>
    </body>
</html>
