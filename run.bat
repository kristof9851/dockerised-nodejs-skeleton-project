docker run -i -t -p 80:8080 -v %~dp0/project:/data/app test nodemon /data/app/index.js --watch /data/app/index.js
