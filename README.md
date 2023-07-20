# Django-Template
Удобная универсальная структура проекта на django.
- Django
- PostgreSQL
- Redis
- Celery
- Flower
## Первый запуск:
```bash
python -m venv env
pip install -r requirements.txt
docker-compose up --build
```
## Для создания приложения:
```bash
mkdir apps/newapp
docker-compose run --rm web-app sh -c "python manage.py startapp newapp apps/newapp"
```
измените newapp/apps.py на:
```python
from django.apps import AppConfig


class NewappConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'apps.newapp'
```
и settings.py
```python
INSTALLED_APPS = [
    ...,
    'apps.newapp.NewappConfig',
]
```
## Вспомогательные команды
```bash
docker-compose run --rm web-app sh -c "python manage.py shell"
```
```bash
docker-compose run --rm web-app sh -c "python manage.py makemigrations"
docker-compose run --rm web-app sh -c "python manage.py migrate"
```

