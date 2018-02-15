<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="static/main.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="contaner">
		<header><h1>Viðburðarsíða</h1></header>
		<section class="wrapper">
			% for x in data['results']:
				<div class="event">
					<h4 class="fyrirsogn">Nafn viðburðs:</h4>
					<h2 class="data" style="height: {{x['lineheight']}}px">{{x['eventDateName']}}</h2>
					<h4 class="fyrirsogn">Staðsetning:</h4>
					<h4 class="data">{{x['eventHallName']}}</h4>
					<h4 class="fyrirsogn">Dagsetning:</h4>
					<h4 class="data">{{x['dateOfShow'][:10]}}</h4>
					<h4 class="fyrirsogn">Klukkann:</h4>
					<h4 class="data">{{x['dateOfShow'][11:16]}}</h4>
					<img src="{{x['imageSource']}}">
				</div>
			% end
		</section>
	</div>

	<footer><h5>verkefni 5 - Vefforritun - ⒸRóbert Ingi Hálfdanarson</h5></footer>
</body>
</html>  