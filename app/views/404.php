<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Упс! Что-то пошло не так)</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="https://fonts.googleapis.com/css?family=Lora" rel="stylesheet">
	<link rel="stylesheet" href="/assets/css/normalize.css">
	<link rel="stylesheet" href="/assets/css/style.css?v=<?echo microtime(1);?>">
	<link rel="stylesheet" href="/assets/css/main.css?v=<?echo microtime(1);?>">
	<link rel="icon" type="image/png" href="/icon.png"/>
	<meta name="theme-color" content="#c45472">
</head>
<body>
	<main class="module-error">
		<div class="error-main">
			<div class="error-main-content">
				<div class="logo-site">
					<a href="/">Мойунивер.рф</a>
				</div>
			</div>
			<div class="error-main-content">
				<div class="content-404">
					<span class="error-text"><? echo $title_text?></span>
				</div>
				<div class="content-404">
					<span class="error-info"><? echo $text_error?></span>
				</div>
				<div class="content-404">
					<a href="<?echo $page_url_previous?>" class='error-go-back'>Вернуться обратно</a>
				</div>
			</div>
			<div class="error-main-content">
				<span class="company-info">
					Copyright © 2018 <a href="https://jooit.ru"> jooit.ru</a>
				</span>
			</div>
		</div>
	</main>
</body>
</html>