<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Упс! Что-то пошло не так</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel='shortcut icon' href='icon.png' type='image/x-icon'>
    <link rel="stylesheet" href="templates/css/normalize.css">
    <link rel="stylesheet" href="templates/css/style.css?<?echo microtime()?>">
	<meta name="theme-color" content="#c45472">
</head>

<body>
	<main class="module-error">
		<div class="error-main">
			<div class="error-main-content">
				<div class="logo-site">
					<a href="/" class='link-header'>
						<img src="icon.png" alt="">
						<span>Своя игра</span>
					</a>
				</div>
			</div>
			<div class="error-main-content">
				<div class="content-404">
					<span class="error-text"><? echo $title_text ?></span>
				</div>
				<div class="content-404">
					<span class="error-info"><? echo $text_error ?></span>
				</div>

			</div>
		</div>
	</main>
</body>

</html>