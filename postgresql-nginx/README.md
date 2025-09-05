Запуск
```bash
docker compose up -d
```

Если я что-то поменяю там, нужно собрать заного 
```bash
docker compose up -d --build
```


Запускаем для создания поекта, отрабаотвает и остановится контейнер compose
```bash
docker  compose run composer create-project laravel/laravel .
```

Выдать права
```bash
# Назначаем владельца www-data, но оставляем права группе
docker compose exec php chown -R www-data:www-data storage bootstrap/cache
docker compose exec php chmod -R 775 storage bootstrap/cache
```

Настройка `.env`
```env
DB_CONNECTION=pgsql
DB_HOST=postgres
DB_PORT=5432
DB_DATABASE=laravel_db
DB_USERNAME=laravel
DB_PASSWORD=password
```



Запуск миграция 
```bash
docker compose run artisan migrate
```

Пример создания контроллера
```bash
docker compose run artisan make:controller AdminController
```



~={yellow}Примечание=~ 

Мы тут создали docker `pg_data`, чтобы данные сохранялись а не удалились после остановки докера
