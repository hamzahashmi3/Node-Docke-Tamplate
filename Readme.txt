## PROJECT STRUCTURE
├── Dockerfile
├── index.js
├── package.json
└── public
    └── index.html


BUILD THE APP
docker build -t simple-node-app .


# RUN THE APP
docker run -p 8080:8080 simple-node-app
