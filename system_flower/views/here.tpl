<!DOCTYPE html>
<html>
	<head>
	    <meta name="viewport" content="initial-scale=1.0">
		<meta charset="utf-8">
		<title>現在地から選択</title>
		<link rel="stylesheet" href="/static/main.css">
	</head>
	<body>

    	<!-- header始まり -->
		<header>
			<h1>現在地から選択</h1>
			<a href="index.tpl"><img src="/static/image/home.jpg" alt="rebun"></a>
         <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDAnLC4hpMXUs10uRB6rGp4U058dUR5fE8&callback=initMap">
    	</script>
		</header>
		<!-- header終わり -->
  
    	<div id="map"><div>
            <script>
    			var MyLatLng = new google.maps.LatLng(45.375046, 141.025489);
				var Options = {
 					zoom: 11,
					center: MyLatLng,
					mapTypeId: 'roadmap'
				};
				var map = new google.maps.Map(document.getElementById('map'), Options);
    		</script>
            
    	<!-- footer始まり -->
		<footer>
			<small>(C)2018 Isida-Takuya.</small>
		</footer>
		<!-- footer終わり -->
    
	</body>
</html>