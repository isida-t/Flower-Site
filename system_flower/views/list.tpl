<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8" />
        <title>花検索の結果</title>
        <link rel="stylesheet" href="/static/style.css" />
    </head>
    <body>
        <h1>花検索の結果</h1>
        <ul>
          % for flower in flowers:
            <li><a href="/flower/{{flower.id}}">{{flower.name}}</a></li>
          % end
        </ul>
    </body>
</html>
