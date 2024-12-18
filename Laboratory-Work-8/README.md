### Криптографічний захист клієнт-серверної взаємодії в СКБД PostgreSQL

1. Встановити OpenSSL-пакет. В терміналі командного рядку запустити утиліту openssl та переглянути перелік доступних 

<img width="639" alt="image" src="https://github.com/user-attachments/assets/c93b4ad2-9e50-47d6-97bc-8b71bd05688d" />



2. Створити самопідписаний сертифікат для сервера СКБД PostgreSQL з наступними параметрами: − атрибути C=UA, L=Odessa, O=OPU, OU=group, CN=surname.op.edu.ua, де group

– назва вашої групи латиницею, surname ваше прізвище латиницею

− строк дії сертифікату = (variant * 10) днів, де variant значення вашого варіанту.

<img width="625" alt="image" src="https://github.com/user-attachments/assets/6235ebd3-8082-4179-ac59-13979bcee41b" />

3. Переглянути вміст сертифікату та визначити алгоритми створення відкритого ключа, а також алгоритм встановлення цифрового підпису

<img width="619" alt="image" src="https://github.com/user-attachments/assets/484faf94-7ea9-44f5-95b9-4c6f833e2973" />

4. Скопіювати створений сертифікат відкритого ключа та закритий ключ до каталогу сервера СКБД PostgreSQL, яка використовувалася у попередній лабораторній роботі. У конфігураційному файлі postgresql.conf налаштувати значення SSL-параметрів для підтримки SSL-з'єднання між сервером та клієнтами.

<img width="570" alt="image" src="https://github.com/user-attachments/assets/294a6fe6-98b4-4622-a5cf-43b7db053985" />


<img width="601" alt="image" src="https://github.com/user-attachments/assets/ea78f206-a6f2-48cc-86a1-804123415f69" />

5. Використовуючи програму psql, встановити TSL/SSL-з'єднання з БД за прикладом з попередньої лабораторної роботи, але використовуючи формат параметрів "host=var1 port=var2 dbname=var3 user=var4 password=var5 sslmode=var6". Визначити версію TSL-протоколу та перелік використаних криптоалгоритмів.

<img width="714" alt="image" src="https://github.com/user-attachments/assets/fa854dae-6f9f-469c-b086-04e877eab5af" />


6. Встановити ПЗ контейнерної віртуалізації Docker та запустити Docker через ваш Docker-обліковий запис.
<img width="1265" alt="image" src="https://github.com/user-attachments/assets/03b8956a-53ce-460b-b206-54e6b9da0eab" />

7. Запустити Docker-контейнер СКБД PostgreSQL, використовуючи раніше розглянуті приклади (порт прослуховування запитів СКБД PostgreSQL = 5466).
<img width="992" alt="image" src="https://github.com/user-attachments/assets/8eb60c63-e5e5-4100-b4e5-4b7f7710486b" />

8. У Docker-контейнері встановити програмний пакунок аналізу мережевих пакетів tcpdump. Отримати перелік мережевих інтерфейсів на вашому комп’ютері.

<img width="555" alt="image" src="https://github.com/user-attachments/assets/3058cf75-a6d2-4294-9004-64b47830a473" />

<img width="629" alt="image" src="https://github.com/user-attachments/assets/e137dd4a-a56c-4485-abd7-2f72102a8857" />

9. Провести запуск програми аналізу мережевих пакетів для кожного мережевого інтерфейсу поки не буде знайдено активний інтерфейс, який взаємодіє з мережею Internet та виводить на екран інформацію про ці пакети.

<img width="812" alt="image" src="https://github.com/user-attachments/assets/922cf903-da62-4e8d-8d8a-aece55721fe9" />


<img width="827" alt="image" src="https://github.com/user-attachments/assets/2f7930b2-5c00-499b-ba05-d4a3fb46058e" />

10. Запустити програму аналізу мережевих пакетів в режимі прослуховування обраного мережевого інтерфейсу та налаштувати її на перегляд пакетів, які пов`язані з портом 5466, зберігаючи зміст пакетів в окремому файлі через перенаправлення потоку, наприклад, > res.dump. Результати роботи будуть використанні у наступних завданнях.

<img width="685" alt="image" src="https://github.com/user-attachments/assets/d1f86f4d-3cd8-421d-82a4-77926532aeda" />

11. Запустити окрему термінальну консоль та становити зв'язок із СКБД PostgreSQL, яка запущена через Docker-контейнер. Після успішного встановлення визначити версію TSL- протоколу та перелік використаних криптографічних алгоритмів.


<img width="880" alt="image" src="https://github.com/user-attachments/assets/2fd19656-d7f1-45e2-8b40-97c6b515a1f8" />


12. Виконати команду створення користувача за прикладом з лабораторної роботи No6.
<img width="396" alt="image" src="https://github.com/user-attachments/assets/7706f085-ee7e-4584-af7b-757e0881d6dd" />

13. Проаналізувати вміст перехоплених пакетів, які було збережено у файлі, наприклад, res.dump. Підтвердити передачу деяких даних у відкритому вигляді.









