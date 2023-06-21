# Django-Template
Удобная универсальная структура проекта на django.
- Django
- PostgreSQL
- Redis
- Celery
- Flower
## Для создания приложения
```sh
mkdir apps/newapp
docker-compose run --rm web-app sh -c "python manage.py startapp newapp apps/newapp"
```
## Вспомогоательные команды
```sh
docker-compose run --rm web-app sh -c "python manage.py shell"
```
```sh
docker-compose run --rm web-app sh -c "python manage.py makemigrations"
docker-compose run --rm web-app sh -c "python manage.py migrate"
```
