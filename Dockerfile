# specify base image
FROM node:15

#setting the work directory
WORKDIR /app

#copy the package to the '.' which means current directory specified as WORKDIR
COPY package.json .

#installing dependencies --- building the image
RUN npm install

#copying every single file to the current directory --- the only layer of image which is really changing
COPY . ./

ENV PORT 3000

EXPOSE $PORT

#running the image with command 'node index.js'
CMD ["npm", "run", "dev"]

#run with commands: 
#docker compose up --build
