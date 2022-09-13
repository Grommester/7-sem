# 7sem
## Содержание
- [Ссылки](https://github.com/sanyagribanov/7sem/blob/main/README.md#ссылки)
- [Скриншоты](https://github.com/sanyagribanov/7sem/blob/main/README.md#скриншоты)
- [Организация](https://github.com/sanyagribanov/7sem/blob/main/README.md#организация)
## Ссылки
- [Информация по демоэкзамену](https://api.dp.worldskills.ru/api/esatk/docs/4d0d9337-1f31-4306-89bb-f3b279e80642)
- [Презентация](https://vk.com/away.php?utf=1&to=https%3A%2F%2Fdocs.google.com%2Fdocument%2Fd%2F17dkgRFIxEAdOvFsUuCD5TGeWHCqcC7U-Ha5MJ0EfdtI%2Fedit%23)
## Скриншоты
![изображение](https://user-images.githubusercontent.com/86486142/188391263-0ad59825-ea59-4a24-8a28-72737fdf1875.png)
## Организация
Модуль 1: Анализ и проектирование требований, бизнес-процессов - UML-диаграмма<br>
Модуль 2: Проектирование реляционного хранилища данных - создание БД<br>
Модуль 3: Разработка баз данных, объектов баз данных и импорт - импорт из Excel-файла, текстового и CSV-файла<br>
Модуль 4: Разработка desktop-приложений - WPF<br>
Модуль 6: Создание инсталляторов - Inno Setup<br>
## UML - Унифицированный язык моделирования
Минусы:
трата времени;
необходимость знания различных диаграмм и их нотаций
Плюсы:
возможность посмотреть на задачу с разных точек зрения;
проще в понимании для других пользователей
простые для прочтения диаграммы
## Зачем она
пользователи - актОры
Действия, которые выполняют - прицеденты
## Предметная область
для построенияя юстиц диаграммы открыть предметную область<br>
предметная область - часть реального мира, которые будут отражены в разоабатываемом прораммном решении<br>
## Что такое отношения
отношения = линия<br>
линия делется на сплошную и пунктирную: Include Extend<br>
прямая линия <b>Ассоциация</b> - использует<br>
Include - используем если без этого действия нельзя выполнить основное<br>
Extend - необязательное действие<br>
## ЕR-Deagramma
ER-diagramma - Entity-Relationship model, модель «сущность — связь». В БД сущность - таблица.<br>
ER делиться на концептуацльная и физическая - диаграмма, которую СУБД строит автоматически<br>
<b>Физическая</b><br>
1. нивилируется автоматически<br>
2. отображается тип данных<br>
3. могут ли быть нулевые значения (ставим галочку, если поле необязательное<br>
4. Всё написано на английском<br>

<b>Концептуальная</b><br>
1. нет типа данных<br>
2. заполняется на русском<br>
3. строится вручную в visio<br>
4. связи многие ко многим<br>

<b>Нормальные формы</b><br>
НФ1 - 1 ячейка - одно значение<br>
НФ2 - вынести повторяющиеся элементы в отдельную таблицу<br>
НФ3 - смотрим на взаимосвязи столбцов, если столбцы друг от друга не зависят, то выносим их в разные таблицы<br>

## Создание БД<br>
1. ПКМ по базе<br>
2. Создание скрипта<br>
3. Написание скрипта<br>
4. выполнить запрос<br>

<b>Отношения</b> - таблица<br>
<b>Кортеж</b> - соответствует строке этой таблицы<br>
<b>Атрибут</b> - столбец<br>
![image](https://user-images.githubusercontent.com/90381005/189851799-a0516368-6a12-4597-931d-dea4d01b8bf6.png)<br>
отключать автоинкримент, если первичный ключ - это паспортные двнные или другие данные, которые не идут попорядку<br>
связь - 1 ко многим = внешний ключ<br>
таблица у которой один выбираем первичный ключ и ведём связь к столбцу таблицы много (в одной стране много отелей)<br>
многие ко многим (много книг нравятся многим людям)
отдельная таблица с двумя первичными ключами
