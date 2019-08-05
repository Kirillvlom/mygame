<div class="main-unit">
    <div class="reply" onclick="document.location.href='/';">
        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="#33304b">
            <path d="M10 9V5l-7 7 7 7v-4.1c5 0 8.5 1.6 11 5.1-1-5-4-10-11-11z"></path>
            <path d="M0 0h24v24H0z" fill="none"></path>
        </svg>
    </div>
    <div class="results">
        <div class="results_table">
            <div class="header-table">
                <div class="table-title">Результаты игр</div>
                <div class="table-name-colum">
                    <div class="colum-number">№</div>
                    <div class="colum-datetime">Дата и время</div>
                    <div class="colum-player">Первый игрок</div>
                    <div class="colum-player">Второй игрок</div>
                    <div class="colum-player">Третий игрок</div>
                </div>
            </div>
            <div class="header-content">
                <?
              for ($i=0; $i < count($data); $i++) { 
                   echo "<div class='content-row'>
                   <div class='colum-number'>".$data[$i]["id_results"]."</div>
                   <div class='colum-datetime'>".$data[$i]["dateTime"]."</div>
                   <div class='colum-player'>".$data[$i]["player_1"]."</div>
                   <div class='colum-player'>".$data[$i]["player_2"]."</div>
                   <div class='colum-player'>".$data[$i]["player_3"]."</div>
               </div>";
              }
                ?>
            </div>
        </div>
    </div>
</div>