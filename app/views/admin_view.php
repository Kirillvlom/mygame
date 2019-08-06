<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><? echo $nameSite ?></title>
    <link rel='shortcut icon' href='/icon.png' type='image/x-icon'>
    <link rel="stylesheet" href="/templates/css/normalize.css?<? echo microtime() ?>">
    <link rel="stylesheet" href="/templates/css/style.css?<? echo microtime() ?>">
    <script src="/templates/js/jquery/jquery-3.2.1.min.js"></script>
    <script src="/templates/js/js.cookie.js"></script>
    <script src="/templates/js/admin.js?<? echo microtime() ?>"></script>
</head>
<div id="loader">
    <div class="spinner"></div>
</div>
<script>
    window.addEventListener("load", () => {
        const loader = document.getElementById('loader');
        setTimeout(() => {
            loader.classList.add('fadeOut');
        }, 100);
    });
</script>
<div class="main-unit-admin">
    <div class="sidebar">
        <div class="sidebar-header">
            <a href="/" class='link-header'>
                <img src="/icon.png" alt="">
                <span>Своя игра</span>
            </a>
        </div>
        <div class="sidebar-menu">
            <ul class="menu">
                <li>
                    <div class='link-menu' data-link="questions">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="#2196f3">
                            <path fill="none" d="M0 0h24v24H0V0z" />
                            <path d="M11 23.59v-3.6c-5.01-.26-9-4.42-9-9.49C2 5.26 6.26 1 11.5 1S21 5.26 21 10.5c0 4.95-3.44 9.93-8.57 12.4l-1.43.69zM11.5 3C7.36 3 4 6.36 4 10.5S7.36 18 11.5 18H13v2.3c3.64-2.3 6-6.08 6-9.8C19 6.36 15.64 3 11.5 3zm-1 11.5h2v2h-2zm2-1.5h-2c0-3.25 3-3 3-5 0-1.1-.9-2-2-2s-2 .9-2 2h-2c0-2.21 1.79-4 4-4s4 1.79 4 4c0 2.5-3 2.75-3 5z" />
                        </svg>
                        <span>Вопросы</span>
                    </div>
                </li>
                <li>
                    <div class='link-menu' data-link="topics">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="#ff5722">
                            <path fill="none" d="M0 0h24v24H0V0z" />
                            <path d="M7 15h7v2H7zm0-4h10v2H7zm0-4h10v2H7zm12-4h-4.18C14.4 1.84 13.3 1 12 1c-1.3 0-2.4.84-2.82 2H5c-.14 0-.27.01-.4.04-.39.08-.74.28-1.01.55-.18.18-.33.4-.43.64-.1.23-.16.49-.16.77v14c0 .27.06.54.16.78s.25.45.43.64c.27.27.62.47 1.01.55.13.02.26.03.4.03h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7-.25c.41 0 .75.34.75.75s-.34.75-.75.75-.75-.34-.75-.75.34-.75.75-.75zM19 19H5V5h14v14z" />
                        </svg>
                        <span>Темы</span>
                    </div>
                </li>
                <li>
                    <div class='link-menu' data-link="results">

                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="#673ab7">
                            <path fill="none" d="M0 0h24v24H0V0z" />
                            <path d="M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V5h14v14zM7 10h2v7H7zm4-3h2v10h-2zm4 6h2v4h-2z" />
                        </svg>
                        <span>Результаты</span>
                    </div>
                </li>
                <li>
                    <div class='link-menu' data-link="export">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="#009688">
                            <path fill="none" d="M0 0h24v24H0V0z" />
                            <path d="M9 3L5 6.99h3V14h2V6.99h3L9 3zm7 14.01V10h-2v7.01h-3L15 21l4-3.99h-3z" /></svg>
                        <span>Экспорт</span>
                    </div>
                </li>
                <li>
                    <div class='link-menu' data-link="statistics">

                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24" height="24" viewBox="0 0 24 24" fill="#e91e63">
                            <defs>
                                <path id="a" d="M0 0h24v24H0z" />
                            </defs>
                            <clipPath>
                                <use xlink:href="#a" overflow="visible" />
                            </clipPath>
                            <defs>
                                <path id="b" d="M0 0h24v24H0z" />
                            </defs>
                            <clipPath>
                                <use xlink:href="#b" overflow="visible" />
                            </clipPath>
                            <path d="M23 8c0 1.1-.9 2-2 2-.18 0-.35-.02-.51-.07l-3.56 3.55c.05.16.07.34.07.52 0 1.1-.9 2-2 2s-2-.9-2-2c0-.18.02-.36.07-.52l-2.55-2.55c-.16.05-.34.07-.52.07s-.36-.02-.52-.07l-4.55 4.56c.05.16.07.33.07.51 0 1.1-.9 2-2 2s-2-.9-2-2 .9-2 2-2c.18 0 .35.02.51.07l4.56-4.55C8.02 9.36 8 9.18 8 9c0-1.1.9-2 2-2s2 .9 2 2c0 .18-.02.36-.07.52l2.55 2.55c.16-.05.34-.07.52-.07s.36.02.52.07l3.55-3.56C19.02 8.35 19 8.18 19 8c0-1.1.9-2 2-2s2 .9 2 2z" />
                        </svg>
                        <span>Статистика</span>
                    </div>
                </li>
                <li>
                    <div class='link-menu' data-link="help-gitHub">

                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="#ff9800">
                            <path fill="none" d="M0 0h24v24H0V0z" />
                            <path d="M11 18h2v-2h-2v2zm1-16C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm0-14c-2.21 0-4 1.79-4 4h2c0-1.1.9-2 2-2s2 .9 2 2c0 2-3 1.75-3 5h2c0-2.25 3-2.5 3-5 0-2.21-1.79-4-4-4z" />
                        </svg>
                        <span>О приложении</span>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="page-container">
        <div class="page-container-header">
            <div class="header-user">
                <div><? echo $_SERVER['PHP_AUTH_USER'] ?></div>
            </div>
        </div>
        <div class="page-container-content">