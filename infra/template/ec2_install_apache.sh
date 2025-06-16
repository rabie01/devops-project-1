#! /bin/bash
# shellcheck disable=SC2164
cd /home/ubuntu
sudo apt update -y
sudo apt install python3 python3-pip python3-venv -y
git clone https://github.com/rabie01/python-mysql-db-proj-1.git
sleep 20
# shellcheck disable=SC2164
cd python-mysql-db-proj-1
# Create a virtual environment
python3 -m venv venv

# Activate it
source venv/bin/activate
pip3 install -r requirements.txt
#read db end point into env var
echo "export DB_HOST=__DB_ENDPOINT__ >> ~/.bashrc
export DB_HOST=__DB_ENDPOINT__
echo 'Waiting for 10 seconds before running the app.py'
nohup python3 -u app.py > /home/ubuntu/app.log 2>&1 &
sleep 10