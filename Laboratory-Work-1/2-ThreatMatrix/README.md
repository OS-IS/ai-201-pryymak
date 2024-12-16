### Заповнення матриці реалізації загроз

| **Компоненти інформаційної системи**                                                             | **Загроза порушення конфіденційності**                                                                                       | **Загроза порушення цілісності**                                                                                   | **Загроза порушення доступності**                                                                                 |
|--------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| **Апаратне забезпечення (АЗ): - серверне АЗ - робочі станції споживачів**                       | Витік даних через фізичний доступ до серверів (незахищені серверні приміщення).                                              | Пошкодження або зміна конфігурацій серверів через атаки або фізичний доступ.                                        | Вихід із ладу серверів або робочих станцій через фізичний збій обладнання або відмову внаслідок атаки.            |
| **Програмне забезпечення (ПЗ): - системне ПЗ (ОС, СКБД) - прикладне ПЗ**                        | Несанкціонований доступ до бази даних через вразливості в програмному забезпеченні.                                          | Порушення цілісності даних через SQL-ін'єкції або інші уразливості в програмному забезпеченні.                      | Збої в операційній системі або програмному забезпеченні через атаки типу "черв'як", що викликають зависання системи.|
| **Дані: - системні (конфігураційні файли ОС та прикладного ПЗ) - прикладні дані (файли та БД)**  | Перехоплення трафіку між клієнтом і сервером через незашифровані з'єднання (наприклад, HTTP замість HTTPS).                 | Порушення структури бази даних через непередбачене втручання або зловмисне редагування даних.                      | Втрати даних через шифрування файлів (ransomware) або видалення конфігураційних файлів без резервних копій.       |
| **Персонал: - обслуговуючий персонал (адміністратори системи) - споживачі прикладного ПЗ**       | Соціальна інженерія, фішинг або обман для отримання доступу до облікових даних користувачів або адміністраторів.            | Помилки або ненавмисні дії персоналу, що призводять до порушення цілісності даних (наприклад, некоректне налаштування). | Відсутність обслуговування або помилки при реагуванні на інциденти через перевантаженість або некомпетентність персоналу.  |