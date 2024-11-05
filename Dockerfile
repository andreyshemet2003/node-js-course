# Используем официальный образ nginx в качестве базового
FROM nginx

# Удаляем файлы по умолчанию
RUN rm -rf /usr/share/nginx/html/*

# Копируем файлы сайта в контейнер
COPY ./index.html /usr/share/nginx/html

# Открываем порт 80 для доступа к сайту
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]
