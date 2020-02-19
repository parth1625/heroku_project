# heroku_project python setup

# Pre-requisites:
- free Heroku account
- Python installed locally
- Postgres installed locally

# Install heroku:
- sudo snap install heroku --classic

# Login to heroku command line:
- heroku login

# Clone project from Git(Locally):
- git clone https://github.com/heroku/(project-name).git
- cd (project-name)

# Create heroku app:
- heroku create 
- OR you can use Heroku GUI

# Create heroku remote:     (For existing app)  
- heroku git:remote -a (app-name)

# Deploy app to Heroku:
- git push heroku master

# Define a Procfile(on local root project directory):
- web: gunicorn mysite.wsgi  (Folder which contains your settings.py file)

# Declare app dependencies:
- pip3 install -r requiremenst.txt
- pip3 freeze > requirements.txt

# Collect static files(Locally):
- python3 manage.py collectstatic

# Deploy again after changes:
- git add .
- git commit -m "Demo"
- git push heroku master
- heroku open






