if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TELEZEN/TESTING-COL-1.git /TESTING-COL-1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TESTING-COL-1
fi
cd /TESTING-COL-1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
