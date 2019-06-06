<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>全ての花から選択</title>
	<link rel="stylesheet" href="/static/main.css">
</head>
<body>
    
    <!-- header始まり -->
	<header>
		<h1>全ての花から選択</h1>
		<a href="index.tpl"><img src="/static/image/home.jpg" alt="rebun"></a>
	</header>
	<!-- header終わり -->
  
    <!-- search始まり -->
	<div class="search">
		<h2></h2>
        <ul>
          % for flower in flowers:
            <li><a href="/flower/{{flower.id}}">{{flower.name}}</a></li>
          % end
        </ul>
	</div>
	<!-- search終わり -->
    
    <!-- footer始まり -->
	<footer>
		<small>(C)2018 Isida-Takuya.</small>
	</footer>
	<!-- footer終わり -->

</body>
</html>