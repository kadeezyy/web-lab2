<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="results"
             scope="session"
             class="entity.ResultsListBean"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Web | Lab #2</title>
    <link href="images/favicon.ico" rel="icon">
    <link rel="stylesheet/less" type="text/css" href="css/styles.less"/>
    <script src="https://cdn.jsdelivr.net/npm/less"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<div class="header">
    <h2>
        Тороев Канатбек
        <br>
        Группа: P32131
    </h2>
</div>
<div class="fields">
    <form id="main_form">
        <div class="input">
            <label for="value_X">Выберите значение X</label>
            <br>
            <select id="value_X" form="main_form">
                <option>-3</option>
                <option>-2</option>
                <option>-1</option>
                <option>0</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
            </select>
            <br>
        </div>
        <div class="input">
            <label for="value_Y">Введите значение Y</label>
            <br>
            <input id="value_Y" type="text" maxlength="6"
                   placeholder="Введите число в диапазоне [-3;3]" size="30">
            <br>
        </div>
        <div class="input">
            <label>Выберите значение R</label>
            <br>
            <input id="first_value_R" name="value_R" type="radio">
            <label class="radio-label" for="first_value_R">1</label>
            <input id="second_value_R" name="value_R" type="radio">
            <label class="radio-label" for="second_value_R">2</label>
            <input id="third_value_R" name="value_R" type="radio">
            <label class="radio-label" for="third_value_R">3</label>
            <input id="fourth_value_R" name="value_R" type="radio">
            <label class="radio-label" for="fourth_value_R">4</label>
            <input id="fifth_value_R" name="value_R" type="radio">
            <label class="radio-label" for="fifth_value_R">5</label>
            <br>
        </div>
        <div class="form-buttons">
            <input id="clear" type="reset" value="Очистить">
            <input id="submit_button" type="button" value="Отправить">
        </div>
    </form>
</div>
<div class="plot">
    <svg height="400" width="400">
        <polygon fill="#1e88e5" class="plot_part" points="340,200 200,200 200,130"></polygon>
        <rect fill="#1e88e5" class="plot_part" x="200" y="200" height="70" width="140"></rect>
        <path fill="#1e88e5" class="plot_part" d="M 60 200 A 140 140, 90, 0, 0, 200 340 L 200 200 Z"></path>

        <line stroke="black" x1="0" x2="400" y1="200" y2="200"></line>
        <line stroke="black" x1="200" x2="200" y1="0" y2="400"></line>
        <polygon fill="black" points="200,0 190,15 210,15"></polygon>
        <polygon fill="black" points="400,200 385,210 385,190"></polygon>

        <line stroke="black" x1="270" x2="270" y1="205" y2="195"></line>
        <line stroke="black" x1="340" x2="340" y1="205" y2="195"></line>

        <line stroke="black" x1="60" x2="60" y1="205" y2="195"></line>
        <line stroke="black" x1="130" x2="130" y1="205" y2="195"></line>

        <line stroke="black" x1="195" x2="205" y1="130" y2="130"></line>
        <line stroke="black" x1="195" x2="205" y1="60" y2="60"></line>

        <line stroke="black" x1="195" x2="205" y1="270" y2="270"></line>
        <line stroke="black" x1="195" x2="205" y1="340" y2="340"></line>

        <text fill="black" x="270" y="220">½R</text>
        <text fill="black" x="340" y="220">R</text>

        <text fill="black" x="55" y="220">-R</text>
        <text fill="black" x="120" y="220">-½R</text>

        <text fill="black" x="175" y="135">½R</text>
        <text fill="black" x="180" y="65">R</text>

        <text fill="black" x="168" y="273">-½R</text>
        <text fill="black" x="175" y="343">-R</text>

        <text fill="black" x="210" y="10">Y</text>
        <text fill="black" x="390" y="190">X</text>

        <circle fill="black" cx="200" cy="200" r="2"></circle>
        <svg id="dots" height="400" width="400"></svg>
    </svg>
    <div id = 'for-error' style="background-color: transparent"></div>
</div>
<div class="result_table">
    <table>
        <thead>
        <tr>
            <th>Номер</th>
            <th>Значение X</th>
            <th>Значение Y</th>
            <th>Значение R</th>
            <th>Попадание</th>
            <th>Тип получения</th>
            <th>Время нажатия</th>
            <th>Время выполнения, мкс</th>
        </tr>
        </thead>
        <tbody id="output">
        <%= results %>
        </tbody>
    </table>
</div>

<script src="js/main.js"></script>
<script src="js/plot.js"></script>
<script src="js/requester.js"></script>
<script src="js/validator.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>

