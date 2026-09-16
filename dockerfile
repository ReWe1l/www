# Базовый (уже существующий) образ
FROM nginx:alpine

# Метаданные (необязательно, но приятно)
LABEL maintainer="student@example.com"
LABEL description="Лабораторная работа по Docker: статический сайт"

# Удаляем стандартную страницу nginx (заготовку)
RUN rm -rf /usr/share/nginx/html/*

# Копируем свой код в образ
COPY index.html /usr/share/nginx/html/
COPY about.html /usr/share/nginx/html/
COPY style.css  /usr/share/nginx/html/

# Документируем порт, который слушает nginx
EXPOSE 80

# Базовая команда nginx запускается автоматически из родительского образа