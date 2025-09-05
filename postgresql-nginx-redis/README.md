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

Настройка `.env` postgresql
```env
DB_CONNECTION=pgsql
DB_HOST=postgres
DB_PORT=5432
DB_DATABASE=laravel_db
DB_USERNAME=laravel
DB_PASSWORD=password
```


Настройка `.env` redis
```env
REDIS_HOST=redis
REDIS_PASSWORD=null
REDIS_PORT=6379
# QUEUE_CONNECTION=redis
```

Запуск миграция 
```bash
docker compose run artisan migrate
```

Проверка redis
```bash
docker compose exec php php artisan tinker

Cache::store('redis')->put('foo', 'bar', 10);
Cache::store('redis')->get('foo');
```

Пример создания контроллера
```bash
docker compose run artisan make:controller AdminController
```

~={yellow}Примечание=~ 

Мы тут создали docker `pg_data`, чтобы данные сохранялись а не удалились после остановки докера
