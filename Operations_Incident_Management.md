Управління Інцидентами Безпеки

Коли ваша організація запускає додатки в експлуатацію, ви, ймовірно, зіштовхнетеся з інцидентами безпеки. У цій моделі інцидент безпеки визначається як порушення або загроза неминучого порушення хоча б однієї з цілей безпеки активів, незалежно від того, чи викликано це зловмисними діями або недбалим поводженням. Прикладами інцидентів безпеки можуть бути: успішна атака типу «відмова в обслуговуванні» (DoS) на хмарний додаток, користувач додатка, який отримує доступ до приватних даних іншого користувача через вразливість безпеки, або зловмисник, який модифікує вихідний код додатка. Практика управління інцидентами (Incident Management, IM) зосереджується на вирішенні таких проблем у вашій організації.

Історично склалося так, що багато інцидентів безпеки виявлялися через місяці або навіть роки після початкового порушення. Під час цього «часу простою», до моменту виявлення інциденту, можуть завдаватися значні збитки, що ускладнює процес відновлення. Наш перший потік діяльності, **виявлення інцидентів**, зосереджується на скороченні цього часу простою.

Коли ви визначили, що постраждали від інциденту безпеки, необхідно реагувати дисципліновано та ретельно, щоб обмежити шкоду і якнайшвидше повернутися до нормальної роботи. Це є основною метою нашого другого потоку — **реагування на інциденти**.

---

| **Рівень зрілості** | **Потік A: Виявлення інцидентів**                                | **Потік B: Реагування на інциденти**                                  |
|----------------------|----------------------------------------------------------------|---------------------------------------------------------------------|
| **1**               | Використання доступних даних журналів для виявлення можливих інцидентів безпеки на основі найкращих зусиль. | Визначення ролей і відповідальності для реагування на інциденти.    |
| **2**               | Виконання добре задокументованого процесу виявлення інцидентів з акцентом на автоматизовану оцінку журналів. | Впровадження формального процесу реагування на інциденти та забезпечення належної підготовки персоналу до виконання їхніх ролей. |
| **3**               | Використання проактивно керованого процесу для виявлення інцидентів. | Залучення виділеної, добре навченої команди для реагування на інциденти. |

--- 

### Управління Інцидентами Безпеки  

Коли ваша організація запускає додатки в експлуатацію, ви, ймовірно, зіштовхнетеся з інцидентами безпеки. У цій моделі інцидентом безпеки вважається порушення або загроза його наближення, яке впливає на безпеку хоча б одного активу, незалежно від того, чи було це зловмисною дією або недбалістю. Прикладами інцидентів можуть бути: успішна атака типу Denial of Service (DoS) на хмарний додаток, доступ користувача додатка до приватних даних іншого користувача через вразливість безпеки або модифікація вихідного коду додатка зловмисником. Практика **управління інцидентами безпеки** (Incident Management, IM) допомагає ефективно вирішувати такі проблеми у вашій організації.  

#### Виявлення та реагування на інциденти  

Історично, багато інцидентів безпеки виявляються через місяці чи навіть роки після початкового порушення. У цей час, поки інцидент не виявлений (т.зв. "час приховування"), може завдатися значна шкода, що ускладнює відновлення.  

1. **Потік A: Виявлення інцидентів (Incident Detection)** – скорочення часу виявлення інцидентів.  
2. **Потік B: Реагування на інциденти (Incident Response)** – організоване та ефективне реагування для обмеження шкоди та швидкого повернення до нормальної роботи.  

---

### Рівні зрілості та ключові потоки  

#### Потік A: Виявлення інцидентів  

##### **Рівень Зрілості 1**  
**Переваги:**  
Здатність виявляти найбільш очевидні інциденти безпеки.  

**Діяльність:**  
- Аналізуйте доступні журнали подій (наприклад, журнали доступу, додатків, інфраструктури) відповідно до періодів їх збереження.  
- У малих системах це можна робити вручну за допомогою стандартних інструментів командного рядка. Для великих обсягів журналів використовуйте автоматизацію (наприклад, скрипти cron).  
- Об’єднуйте журнали з різних джерел у єдину систему, використовуючи принципи кореляції даних.  
- Навіть за відсутності цілодобового моніторингу забезпечте доступність контактної особи для створення інцидентів.  

**Якість:**  
- Наявність контактної особи для створення інцидентів.  
- Аналіз даних відповідає періодам збереження журналів.  
- Частота аналізу враховує критичність додатків.  

---

##### **Рівень Зрілості 2**  
**Переваги:**  
Своєчасне та послідовне виявлення очікуваних інцидентів.  

**Діяльність:**  
- Призначте відповідальну особу за процес виявлення інцидентів та забезпечте регулярне оновлення документації.  
- Використовуйте автоматизацію для збору та кореляції журналів із різних джерел.  
- Встановіть та регулярно оновлюйте чек-листи з потенційних атак.  
- Негайно повідомляйте відповідальних осіб про підтверджені інциденти.  

**Якість:**  
- Процес має відповідального власника.  
- Документація доступна усім зацікавленим сторонам.  
- Співробітники проходять навчання щодо процесу.  

---

##### **Рівень Зрілості 3**  
**Переваги:**  
Систематичне та незалежне від часу або дня виявлення інцидентів.  

**Діяльність:**  
- Забезпечте постійне покращення процесу через аналіз змін і регулярний перегляд чек-листів.  
- Інтегруйте дані з внутрішніх і зовнішніх джерел для виявлення підозрілих подій.  
- Вчасно виправляйте відсутність необхідних даних для аналізу.  

**Якість:**  
- Процес переглядається щонайменше раз на рік.  
- Чек-листи оновлюються на основі зовнішніх та внутрішніх даних.  

---

#### Потік B: Реагування на інциденти  

##### **Рівень Зрілості 1**  
**Переваги:**  
Здатність ефективно вирішувати найпоширеніші інциденти.  

**Діяльність:**  
- Визначте відповідальну особу за реагування на інциденти та забезпечте її ресурсами.  
- Призначте одну контактну особу для всього процесу.  
- Документуйте всі дії, пов’язані з інцидентом, і захищайте ці записи від несанкціонованого доступу.  

**Якість:**  
- Призначена відповідальна особа чи роль.  
- Інциденти документуються.  

---

##### **Рівень Зрілості 2**  
**Переваги:**  
Зрозуміле та ефективне управління більшістю інцидентів.  

**Діяльність:**  
- Розробіть формалізований процес реагування з чіткими правилами залучення зацікавлених сторін (PR, Legal, HR тощо).  
- Визначте правила пріоритизації інцидентів і проведення аналізу першопричин.  
- Забезпечте доступність інструментів аналізу та навчання команди.  

**Якість:**  
- Є погоджена класифікація інцидентів.  
- Процес включає аналіз першопричин.  
- Наявні інструменти для судової експертизи.  

---

##### **Рівень Зрілості 3**  
**Переваги:**  
Ефективне реагування незалежно від часу, місця чи типу інциденту.  

**Діяльність:**  
- Забезпечте доступність виділеної команди реагування.  
- Регулярно проводьте навчання та тренування для покращення процесів.  
- Збирайте, аналізуйте та вдосконалюйте процес на основі метрик.  

**Якість:**  
- Команда виконує аналіз першопричин для всіх серйозних інцидентів.  
- Процес переглядається щорічно.  






Once your organization has applications in operation, you are likely to face security incidents. In this model, we define a security incident as a breach, or the threat of an imminent breach, of at least one asset’s security goals, whether due to malicious or negligent behavior. Examples of security incidents might include: a successful Denial of Service (DoS) attack against a cloud application, an application user accessing private data of another by abusing a security vulnerability, or an attacker modifying application source code. The Incident Management (IM) practice focuses on dealing with these in your organization.

Historically, many security incidents have been detected months, or even years, after the initial breach. During the “dwell time” before an incident is detected, significant damage can occur, increasing the difficulty of recovery. Our first activity stream, Incident Detection, focuses on decreasing that dwell time.

Once you have identified that you are suffering from a security incident, it’s essential to respond in a disciplined, thorough manner to limit the damage, and return to normal operations as efficiently as possible. This is the focus of our second stream.

Maturity level		Stream A
Incident Detection	Stream B
Incident Response
1	Best-effort incident detection and handling	Use available log data to perform best-effort detection of possible security incidents.	Identify roles and responsibilities for incident response.
2	Formal incident management process in place	Follow an established, well-documented process for incident detection, with emphasis on automated log evaluation.	Establish a formal incident response process and ensure staff are properly trained in performing their roles.
3	Mature incident management	Use a proactively managed process for detection of incidents.	Employ a dedicated, well-trained incident response team.

Stream A Incident Detection
MATURITY LEVEL 1

Benefit

Ability to detect the most obvious security incidents

Activity

Analyze available log data (e.g., access logs, application logs, infrastructure logs), to detect possible security incidents in accordance with known log data retention periods.

In small setups, you can do this manually with the help of common command-line tools. With larger log volumes, employ automation techniques. Even a cron job, running a simple script to look for suspicious events, is a step forward!

If you send logs from different sources to a dedicated log aggregation system, analyze the logs there and employ basic log correlation principles.

Even if you don’t have a 24/7 incident detection process, ensure that unavailability of the responsible person (e.g., due to vacation or illness) doesn’t significantly impact detection speed or quality.

Establish and share points of contact for formal creation of security incidents.

Question

Do you analyze log data for security incidents periodically?

Quality criteria

You have a contact point for the creation of security incidents
You analyze data in accordance with the log data retention periods
The frequency of this analysis is aligned with the criticality of your applications
Answers

No
Yes, for some applications
Yes, for at least half of the applications
Yes, for most or all of the applications

MATURITY LEVEL 2

Benefit

Timely and consistent detection of expected security incidents

Activity

Establish a dedicated owner for the incident detection process, make clear documentation accessible to all process stakeholders, and ensure it is regularly reviewed and updated as necessary. Ensure employees responsible for incident detection follow this process (e.g., using training).

The process typically relies on a high degree of automation, collecting and correlating log data from different sources, including application logs. You may aggregate logs in a central place, if suitable. Periodically verify the integrity of analyzed data. If you add a new application, ensure the process covers it within a reasonable period of time.

Detect possible security incidents using an available checklist. The checklist should cover expected attack vectors and known or expected kill chains. Evaluate and update it regularly.

When you determine an event is a security incident (with sufficiently high confidence), notify responsible staff immediately, even outside business hours. Perform further analysis, as appropriate, and start the escalation process.

Question

Do you follow a documented process for incident detection?

Quality criteria

The process has a dedicated owner
You store process documentation in an accessible location
The process considers an escalation path for further analysis
You train employees responsible for incident detection in this process
You have a checklist of potential attacks to simplify incident detection
Answers

No
Yes, for some applications
Yes, for at least half of the applications
Yes, for most or all of the applications

Benefit

Ability to timely detect security incidents

Activity

Ensure process documentation includes measures for continuous process improvement. Check the continuity of process improvement (e.g., via tracking of changes).

Ensure the checklist for suspicious event detection is correlated at least from (i) sources and knowledge bases external to the company (e.g., new vulnerability announcements affecting the used technologies), (ii) past security incidents, and (iii) threat model outcomes.

Use correlation of logs for incident detection for all reasonable incident scenarios. If the log data for incident detection is not available, document its absence as a defect, triage and handle it according to your established Defect Management process.

The quality of the incident detection does not depend on the time or day of the event. If security events are not acknowledged and resolved within a specified time (e.g., 20 minutes), ensure further notifications are generated according to an established escalation path.

Question

Do you review and update the incident detection process regularly?

Quality criteria

You perform reviews at least annually
You update the checklist of potential attacks with external and internal data
Answers

No
Yes, for some applications
Yes, for at least half of the applications
Yes, for most or all of the applications

MATURITY LEVEL 3

Benefit

Ability to timely detect security incidents

Activity

Ensure process documentation includes measures for continuous process improvement. Check the continuity of process improvement (e.g., via tracking of changes).

Ensure the checklist for suspicious event detection is correlated at least from (i) sources and knowledge bases external to the company (e.g., new vulnerability announcements affecting the used technologies), (ii) past security incidents, and (iii) threat model outcomes.

Use correlation of logs for incident detection for all reasonable incident scenarios. If the log data for incident detection is not available, document its absence as a defect, triage and handle it according to your established Defect Management process.

The quality of the incident detection does not depend on the time or day of the event. If security events are not acknowledged and resolved within a specified time (e.g., 20 minutes), ensure further notifications are generated according to an established escalation path.

Question

Do you review and update the incident detection process regularly?

Quality criteria

You perform reviews at least annually
You update the checklist of potential attacks with external and internal data
Answers

No
Yes, for some applications
Yes, for at least half of the applications
Yes, for most or all of the applications

Stream B Incident Response

MATURITY LEVEL 1

Benefit

Ability to efficiently solve most common security incidents

Activity

The first step is to recognize the incident response competence as such, and define a responsible owner. Provide them the time and resources they need to keep up with current state of incident handling best practices and forensic tooling.

At this level of maturity, you may not have established a dedicated incident response team, but you have defined the participants of the process (usually different roles). Assign a single point of contact for the process, known to all relevant stakeholders. Ensure that the point of contact knows how to reach each participant, and define on-call responsibilities for those who have them.

When security incidents happen, document all actions taken. Protect this information from unauthorized access.

Question

Do you respond to detected incidents?

Quality criteria

You have a defined person or role for incident handling
You document security incidents
Answers

No
Yes, for some incidents
Yes, for at least half of the incidents
Yes, for most or all of the incidents

MATURITY LEVEL 2

Benefit

Understanding and efficient handling of most security incidents

Activity

Establish and document the formal security incident response process. Ensure documentation includes information like:

most probable/common scenarios of security incidents and high-level instructions for handling them; for such scenarios, also use public knowledge about possibly relevant third-party incidents
rules for triaging each incident
rules for involvement of different stakeholders including senior management, Public Relations, Legal, privacy, Human Resources, external (law enforcement) authorities, and customers; specify mandatory timeframe to do so, if needed
the process for performing root-cause analysis and documentation of its results
Ensure a knowledgeable and properly trained incident response team is available both during and outside of business hours. Define timelines for action and a war room. Keep hardware and software tools up to date and ready for use anytime.

Question

Do you use a repeatable process for incident handling?

Quality criteria

You have an agreed upon incident classification
The process considers Root Cause Analysis for high severity incidents
Employees responsible for incident response are trained in this process
Forensic analysis tooling is available

MATURITY LEVEL 3

Benefit

Efficient incident response independent of time, location, or type of incident

Activity

Establish a dedicated incident response team, continuously available and responsible for continuous process improvement with the help of regular RCAs. For distributed organizations, define and document logistics rules for all relevant locations if sensible.

Document detailed incident response procedures and keep them up to date. Automate procedures where appropriate. Keep all resources necessary for these procedures (e.g., separate communicating infrastructure or reliable external location) ready to use. Detect and correct unavailability of these resources in a timely manner.

Carry out incident and emergency exercises are regularly. Use the results for process improvement.

Define, gather, evaluate, and act upon metrics on the incident response process, including its continuous improvement.

Question

Do you have a dedicated incident response team available?

Quality criteria

The team performs Root Cause Analysis for all security incidents unless there is a specific reason not to do so
You review and update the response process at least annually
Answers

No
Yes, some of the time
Yes, at least half of the time
Yes, most or all of the time









