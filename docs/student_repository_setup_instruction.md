# Задание - подготовить репозиторий sample-platform-app

## Цель

Тебе нужно подготовить приватный репозиторий для учебного Go-приложения `sample-platform-app`.

На этом этапе ты создаешь только репозиторий и настраиваешь доступ. Starter-код приложения я загружу сам в отдельную ветку.

---

## Что нужно сделать сейчас

### Создай приватный репозиторий

Создай новый приватный репозиторий с названием:

```text
sample-platform-app
```

Репозиторий должен быть пустым или почти пустым. Если платформа предлагает создать `README.md`, можно оставить его.

---

### Добавь мне доступ

Добавь пользователя:

```text
iurii-anfinogenov
```

Права:

```text
Developer
```

или:

```text
Maintainer
```

Если есть выбор, лучше выдать `Maintainer`, чтобы я мог создать ветку и загрузить starter-код.

---

### Пришли ссылку

После создания репозитория пришли мне ссылку на него.

---

## Важно - пока не создавай эти файлы

Пока не создавай:

```text
Dockerfile
.dockerignore
compose.yaml
```

Эти файлы будут твоим следующим практическим заданием.

---

## Важно - не создавай go.mod

Не выполняй:

```bash
go mod init sample-platform-app
```

Файл `go.mod` будет уже в starter-коде, который я загружу.

`go.mod` не индивидуальный для каждого студента. Это часть проекта.

---

## Как будет загружен starter-код

Я загружу starter-код не напрямую в `main`, а в отдельную ветку, например:

```text
starter
```

или:

```text
starter-app
```

Твоя задача будет самостоятельно смержить эту ветку в `main`.

Это обязательная часть задания, чтобы сразу потренироваться работать с Git:

```text
branch -> merge -> check -> continue development
```

---

## Что нужно будет сделать после загрузки starter-кода

Когда я скажу, что starter-код загружен, выполни:

```bash
git clone <repo-url>
cd sample-platform-app
git branch -a
```

Переключись на `main`:

```bash
git checkout main
git pull
```

Смержи starter-ветку в `main`.

Если ветка называется `starter`:

```bash
git merge origin/starter
```

Если я назову другую ветку, используй ее имя вместо `origin/starter`.

---

## Проверь, что код появился в main

После merge выполни:

```bash
find . -maxdepth 3 -type f | sort
```

Ожидаемо должны появиться файлы примерно такой структуры:

```text
./.gitignore
./Makefile
./README.md
./cmd/api/main.go
./go.mod
```

---

## Проверь локальный запуск приложения

Выполни:

```bash
go test ./...
```

Ожидаемо:

```text
?    sample-platform-app/cmd/api    [no test files]
```

Запусти приложение:

```bash
go run ./cmd/api
```

Во втором терминале проверь:

```bash
curl -s http://localhost:8080/healthz
curl -s http://localhost:8080/version
```

Ожидаемые ответы:

```json
{"status":"ok"}
```

```json
{"version":"dev"}
```

---

## Что будет в starter-приложении

В starter-коде уже будет Go HTTP API:

```text
GET  /healthz
GET  /readyz
GET  /version

POST /api/v1/tasks
GET  /api/v1/tasks
GET  /api/v1/tasks/{id}
POST /api/v1/tasks/{id}/done
```

Данные пока будут храниться in-memory. Это значит, что после рестарта приложения tasks исчезают. Это нормально для первого этапа.

---

## Что будет следующим заданием

После того как ты смержишь starter-код в `main` и проверишь локальный запуск, следующим заданием будет самостоятельно создать:

```text
Dockerfile
.dockerignore
compose.yaml
```

И запустить приложение через Docker и Docker Compose.

---

## Короткий чек-лист

Сейчас нужно сделать только это:

```text
1. Создать приватный репозиторий sample-platform-app.
2. Добавить iurii-anfinogenov с правами Developer или Maintainer.
3. Не создавать Dockerfile, .dockerignore, compose.yaml.
4. Не выполнять go mod init.
5. Прислать ссылку на репозиторий.
```
