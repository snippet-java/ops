#Use the existing node image
FROM node

#Set working directory to /usr/src/app 
WORKDIR /usr/src/app

#Copy package.json file in working directory
COPY package*.json ./

#Install npm
RUN npm install

##Copy all files from local machine to image in working directory
COPY . .

#Expose port 8080
EXPOSE 8080

#start npm service
CMD [ "npm", "start" ]
