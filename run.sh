PORT = 8000

pid=$(lsof -t -i :$port)

if [ -n "$pid"];then
    echo "Killing process with PID $pid"
    kill pid
else
    echo "No process on port $port"
fi

export PORT=$port

rm -rf .gitignore
touch .gitignore
# echo "*.sh" >> .gitignore
echo "/.DS_Store" >> .gitignore
echo "/__pycache__" >> .gitignore

pip3 install -r requirements.txt

echo "Running Server"
uvicorn main:app





# pip3 freeze > requirements.txt 

# docker build -t fastapi .

# wsl -t docker-desktop
# wsl --shutdown
# wsl --unregister docker-desktop