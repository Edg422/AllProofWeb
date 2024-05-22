sudo apt update
sudo apt install python3-venv python3-dev libpq-dev postgresql postgresql-contrib nginx curl
sudo -u postgres psql
mkdir ~/allproof
cd ~/allproof
python3 -m venv allproofenv
source allproofenv/bin/activate
pip install django gunicorn psycopg2-binary
django-admin startproject allproof ~/allproof
ls
nano ~/allproof/allproof/settings.py
~/myprojectdir/manage.py makemigrations
~/myprojectdir/manage.py migrate
~/allproof/manage.py makemigrations
~/allproof/manage.py migrate
sudo ~/myprojectdir/manage.py migrate
sudo ~/allproof/manage.py migrate
~/allproof/manage.py migrate
GRANT postgres TO edg
postgres=# GRANT postgres TO edg
sudo -u postgres psql
~/allproof/manage.py migrate
psql allproof -c "GRANT ALL ON ALL TABLES IN SCHEMA public to edg;"
psql allproof -c "GRANT ALL ON ALL SEQUENCES IN SCHEMA public to edg;"
psql allproof -c "GRANT ALL ON ALL FUNCTIONS IN SCHEMA public to edg;"
~/allproof/manage.py migrate
sudo -u postgres psql
~/allproof/manage.py migrate
~/allproof/manage.py createsuperuser
~/allproof/manage.py collectstatic
sudo ufw allow 8000
~/allproof/manage.py runserver 0.0.0.0:8000
nano ~/allproof/allproof/settings.py
~/allproof/manage.py runserver 0.0.0.0:8000
cd ~/allproof
gunicorn --bind 0.0.0.0:8000 allproof.wsgi
deactivate
sudo nano /etc/systemd/system/gunicorn.socket
sudo nano /etc/systemd/system/gunicorn.service
sudo systemctl start gunicorn.socket
sudo systemctl enable gunicorn.socket
cd /run
ls
sudo systemctl status gunicorn.socket
file /run/gunicorn.sock
sudo systemctl status gunicorn
curl --unix-socket /run/gunicorn.sock localhost
sudo systemctl status gunicorn
sudo nano /etc/nginx/sites-available/allproof
sudo ln -s /etc/nginx/sites-available/allproof /etc/nginx/sites-enabled
sudo nginx -t
sudo systemctl restart nginx
sudo ufw delete allow 8000
sudo ufw allow 'Nginx Full'
sudo snap install core; sudo snap refresh core
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
sudo nano /etc/nginx/sites-available/allproof
sudo nginx -t
sudo ufw status
sudo certbot --nginx -d all-proof.com -d www.all-proof.com
