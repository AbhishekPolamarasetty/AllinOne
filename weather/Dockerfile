#docker file for reactjs
From node:17-alpine
WORKDIR /usr/src/app 
COPY package*.json .
RUN npm install
Copy . .
RUn npm run build
RUN npm install -g serve
EXPOSE 3000
CMD ["serve","-s","-l","3000","build"]

-----
#updates dockerfile
From node:17-alpine                                                                                                                             
WORKDIR /app
COPY package*.json .
RUN npm install
Copy . .
<<<<<<< HEAD
EXPOSE 8080
CMD ["npm","start"]  
# if npm start is present in package.json else below 
CMD ["node","app.js"]
=======
RUn npm run build
EXPOSE 3000
CMD ["npm","start"]
>>>>>>> 5742c1ff2cf79ab3b7360ff86f6df8be7e626e5c
