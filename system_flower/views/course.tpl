<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>コースから選択</title>
	<link rel="stylesheet" href="/static/main.css">
</head>
<body>

    <!-- header始まり -->
	<header>
		<h1>コースから選択</h1>
		<a href="index.tpl"><img src="/static/image/home.jpg" alt="rebun"></a>
	</header>
	<!-- header終わり -->
  
    <!-- search始まり -->
	<div class="wrap">
		<h2>コースを選択してください</h2>
		<nav class="global-nav">
        <form action="#" method="get" >
            <select name="course">
                <option>すべて</option>
                <option>8時間コース</option>
                 <option>桃岩展望台</option>
                 <option>礼文林道コース</option>
                 <option>宇遠内コース</option>
                 <option>礼文滝コース</option>
                <ul>
                </form>
                % for flower in flowers:
                <li><a href="/flower/{{flower.id}}">{{flower.name}}</a></li>
                % end
        </ul>
		</nav>
	</div>
	<!-- search終わり -->
    
    <!-- footer始まり -->
	<footer>
		<small>(C)2018 Isida-Takuya.</small>
	</footer>
	<!-- footer終わり -->
    
</body>
</html>