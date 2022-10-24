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
Отключать автоинкримент, если первичный ключ - это паспортные двнные или другие данные, которые не идут попорядку<br>
Связь - 1 ко многим = внешний ключ<br>
Таблица у которой один выбираем первичный ключ и ведём связь к столбцу таблицы много (в одной стране много отелей)<br>
Многие ко многим (много книг нравятся многим людям)<br>
Отдельная таблица с двумя первичными ключами<br>
<b>Генерация скрипта</b><br>
![image](https://user-images.githubusercontent.com/90381005/189865740-ef8d7f44-e9f1-4c48-b2cb-6f06d59fd966.png)<br>
<b>если не созраняется</b><br>
![image](https://user-images.githubusercontent.com/90381005/189873578-90d6bab2-5b65-4ce1-9413-e479fc371032.png)<br>
убрать галочку: запретить сохранение...
## Типы данных<br>
числовые int, char, varchar, nvarchar(255), money, varbinary(50)<br>
логические bool<br>
символьные text<br>
дата date datetime<br>

# WPF
WinForms-WPF-UWP<br>
Возможности WPF:
- адаптивная верстка
-привязка данных
Выбирать WPF App нужно будет с расширением (.NET Framework)
Элементы компоновки(контейнеры):
- Grid
- StackPanel
- WrapPanel
Элементы таблицы:
- RowDefinitions - строки
- ColumnDefinitions - столбцы
- Grid.ColumnSpan - разделение по кол-ву столбцов (RowSpan - разделение по строкам)<br>
Авторазмер - подгоняет элемент под размер окна<br>
Абсолютный размер - занимает строго столько места, сколько указано<br>
StackPanel - располагает все элементы в ряд по вертикали или горизонтали<br>
Вместо отступов лучше использовать Alignment<br>
WrapPanel - располагает все элементы в одной строке или колонке<br>
Заливка для текста - foreground; для фона- background;<br>

Cтиль прописывается в файле App.xaml
![изображение](https://user-images.githubusercontent.com/86486142/191473222-3d8b1e67-bb06-40ee-a424-5404fba8a1a3.png)
![изображение](https://user-images.githubusercontent.com/86486142/191473620-531da4a7-5c3e-4cbe-8817-91b93d3c1cbb.png)
![изображение](https://user-images.githubusercontent.com/86486142/191474429-fde29c0b-abbc-4958-b2ae-a4317f24533f.png)
## Импорт даннх
<br>
## BD
![image](https://user-images.githubusercontent.com/90608498/196682451-a6dc1e17-83ed-4edb-8016-33fe0a327400.png)
![image](https://user-images.githubusercontent.com/90608498/196682730-0e44b621-f300-4045-aae7-89a93c1e97a9.png)
![image](https://user-images.githubusercontent.com/90608498/196682835-700d3805-47f5-4646-b420-057fa4f1cbbb.png)
![image](https://user-images.githubusercontent.com/90608498/196682911-a0b9d7f8-6f12-47b3-a3fa-edd55fe2167d.png)
![image](https://user-images.githubusercontent.com/90608498/196683335-227a564c-1ccc-4874-85b5-c1c44b78b64d.png)
![image](https://user-images.githubusercontent.com/90608498/196683593-0ab1eda6-7a68-4a6f-ba10-d0c1fdccc253.png)
![image](https://user-images.githubusercontent.com/90608498/196683635-27ee7a70-06e5-48dc-a71b-996ba8f20aca.png)
![image](https://user-images.githubusercontent.com/90608498/196683966-94fcb1e7-a1f7-4b00-9fbb-6a21c09abec1.png)
