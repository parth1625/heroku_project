# heroku_project python setup

# Pre-requisites:
- free Heroku account
- Python installed locally
- Postgres installed locally

# Install heroku:
	sudo snap install heroku --classic

# Login to heroku command line:
	heroku login

# Clone project from Git(Locally):
	git clone https://github.com/heroku/(project-name).git
	cd (project-name)

# Create heroku app:
	heroku create 
- OR you can use Heroku GUI

# Create heroku remote:     (For existing app)  
	heroku git:remote -a (app-name)

# Deploy app to Heroku:
	git push heroku master

# Define a Procfile(on local root project directory):
	web: gunicorn mysite.wsgi  (Folder which contains your settings.py file)

# Declare app dependencies:
	pip3 install -r requiremenst.txt
	pip3 freeze > requirements.txt

# Collect static files(Locally):
	python3 manage.py collectstatic

# Creating DB in Heroku:

1. Install postgresql in your local system

2. Start the service

3. Create the databse on Heroku-
	
		heroku addons:create heroku-postgresql:hobby-dev	

4. See the details of the database url-
		
		heroku pg:info

5. Get database credentials-

		heroku pg:credentials:url HEROKU_POSTGRESQL_BRONZE(Add-on name of your database)

	Pay attention to the above database user and connection url as we will use it in the following steps.

6. Configure Django db settings-	

	In the DATABASE section of yourapp/settings.py, set the DATABASES['TEST']['NAME'] key with the database name of the new db, e.g. d1jjjjjjj23b

	Visit here for example: https://simpleit.rocks/python/django/use-postgresql-database-in-heroku-for-testing-django/

7. Set DATABASE_URL environment-

	For Linux/Mac,
	
		export DATABASE_URL='<connection URL>'

	For Windows,
	
		set DATABASE_URL='<connection URL>'

# Deploy again after changes:
- git add .
- git commit -m "Demo"
- git push heroku master
- heroku open