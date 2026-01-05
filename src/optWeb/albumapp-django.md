# [Album App for Django](https://github.com/jobsta/albumapp-django)

![](https://img.shields.io/github/license/jobsta/albumapp-django)

## install

```sh
git clone --depth=1 https://github.com/jobsta/albumapp-django
cd albumapp-django
uv venv
.venv\Scripts\activate
uv pip install django reportbro-lib
python manage.py makemigrations albums
python manage.py migrate
python manage.py compilemessages
```

## usage

```sh
python manage.py runserver localhost:8010
```

Visit `http://localhost:8010/albums`.

## appdedix

![albumapp-django](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/albumapp-django.png)
