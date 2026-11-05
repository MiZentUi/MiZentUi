#import "@preview/basic-resume:0.2.9": *

#let name = "Денис Скробот"
#let location = "Минск, Беларусь"
#let email = "mizentui@gmail.com"
#let github = "github.com/MiZentUi"
#let linkedin = "linkedin.com/in/mizentui"
#let telegram = "t.me/mizentui"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  accent-color: "#52268b",
  font: "New Computer Modern",
  paper: "us-letter",
  personal-site: telegram,
  author-position: left,
  personal-info-position: left,
  lang: "ru",
)

/*
 * Lines that start with == are formatted into section headings
 * You can use the specific formatting functions if needed
 * The following formatting functions are listed below
 * #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
 * #work(company: "", dates: "", location: "", title: "")
 * #project(dates: "", name: "", role: "", url: "")
 * certificates(name: "", issuer: "", url: "", date: "")
 * #extracurriculars(activity: "", dates: "")
 * There are also the following generic functions that don't apply any formatting
 * #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
 * #generic-one-by-two(left: "", right: "")
 */

== О себе

Java Backend-разработчик с коммерческим опытом разработки инфраструктурного SDK и микросервисных систем. Проектирую интеграции и backend-компоненты, работаю с Kafka, gRPC, PostgreSQL и инструментами observability. Интересуюсь архитектурой и надёжностью распределённых систем. В свободное время читаю статьи и книги по системному программированию и проектированию.

== Образование

#edu(
  institution: "Белорусский государственный университет информатики и радиоэлектроники",
  location: "Минск, Беларусь",
  dates: dates-helper(start-date: "Сен 2024", end-date: "Июнь 2028"),
  degree: "Факультет компьютерных систем и сетей / Информатика и технологии программирования",
  consistent: true,
)

#edu(
  institution: "Т-Академия",
  dates: dates-helper(start-date: "Сен 2025", end-date: "Дек 2026"),
  degree: "Backend-разработка на Java",
  consistent: true,
)

== Опыт

#work(
  title: "Java-разработчик",
  company: "ООО \"Т-Финтех Разработка\"",
  dates: dates-helper(start-date: "Июнь 2026", end-date: "Окт 2026"),
)

- Разработка корпоративного SDK и библиотек для микросервисов на Spring Boot
- Стандартизация наблюдаемости сервисов: метрики, трейсы и логи по отраслевому стандарту OpenTelemetry
- Создание единой модели атрибутов телеметрии как общего источника данных для Kafka- и HTTP-компонентов
- Автоматическое проставление тегов метрик, покрытие интеграционными тестами и проверка в Grafana
- Реализация декларативных аннотаций для логирования и метрик, проверка их использования на этапе компиляции

#work(
  title: "Fullstack-разработчик",
  company: "Osmanov Dev Studio",
  dates: dates-helper(start-date: "Апр 2024", end-date: "Дек 2024"),
)

- Разработка backend на Python и клиентской части на JavaScript для Telegram WebApp
- Работа с SQLite, интеграция с Telegram API и поддержка серверной части
- Реализованные проекты: магазин игр и каталог вакансий для аутсорсинговой компании

== Проекты

#project(
  name: [Корпоративный SDK для микросервисов #text(weight: 200)[-- ООО \"Т-Финтех Разработка\"]],
  dates: dates-helper(start-date: "Июнь 2026", end-date: "Настоящее"),
)

Проект объединяет инструменты наблюдаемости, интеграции с Kafka и HTTP, декларативные API и кодогенерацию.
В работе использовал Spring Micrometer Observation, OpenTelemetry, Prometheus и Grafana: развивал единый подход к сбору метрик, логов и трассировок, расширял annotation processing и автоматизировал генерацию исходного кода и документации. Отдельно занимался инструментами тестового стенда, а именно централизованным управлением сбоями без перезапуска сервисов и проверкой изменений после деплоя.

#project(
  name: "Link Tracker",
  url: "github.com/MiZentUi/link-tracker",
)

Отказоустойчивая событийно-ориентированная система из трёх микросервисов для мониторинга веб-ресурсов и обработки обновлений.
Спроектировал архитектуру на основе DDD, реализовал взаимодействие через gRPC и Kafka, паттерны Transactional Outbox/Inbox для надёжной обработки событий и worker pool для их параллельной обработки. Оптимизировал работу с БД с помощью cursor-based pagination и устранения N+1 запросов, добавил кэширование через Valkey.

#project(
  name: "Fractal Flame",
  url: "github.com/MiZentUi/fractal-flame",
)

Микросервисное веб-приложение для генерации и публикации фрактальных изображений.
Разработал Java/Spring Boot backend с API Gateway и сервисом генерации, реализовал асинхронную обработку задач с многопоточными worker'ами и потоковой передачей прогресса через gRPC/SSE. Реализовал JWT-аутентификацию, взаимодействие микросервисов через gRPC, хранение метаданных в PostgreSQL и файлов в MinIO/S3.

== Достижения

#certificates(
  name: link("https://drive.google.com/file/d/1gi_ANee2yxS03vDKTUJ2joLhpigkGUPE/view?usp=sharing")[Базы данных],
  issuer: "Т-Академия",
  date: "2025",
)

#certificates(
  name: link(
    "https://drive.google.com/file/d/1euSMBnWlFtulmV60hQLIbDNNotJ6_uU5/view?usp=sharing",
  )[Алгоритмы и структуры данных],
  issuer: "Т-Академия",
  date: "2025",
)

#certificates(
  name: link(
    "https://drive.google.com/file/d/12axv6Fd8VHx8TLneoXfLFA4cMUAVYinw/view?usp=sharing",
  )[Диплом III степени],
  issuer: "ICPC Belarus Qualification 2024",
  date: "2024",
)

== Технические навыки

- *Языки программирования*: Java, C/C++, C\#, Python, JavaScript
- *Backend*: Spring (Boot/Data/Security), PostgreSQL, SQLite, Kafka, Redis, gRPC, S3, JWT/OAuth2, OpenTelemetry
- *Инструменты*: Git, Docker, Kubernetes, UNIX/Linux, Bash, Grafana, Prometheus, OpenAPI, Typst
