# from which image you want to derive your image (node:10) 
# the from command decides what is the base of your image 
FROM node:10

#we create a directory to hold any code or any application binaries 
WORKDIR /app

# copy the desired file 
# if you wish to escape certainfile in you app .dockerignore 
COPY package*.json ./ 
COPY *.js  ./ 

# run some preactivity command so the run time binaries 
# run time suppored files libraries all wiill be download 
# create dir 
# delete 
# anything that is accepted by linux 
RUN npm install

RUN ls 

RUN node -v 

RUN echo "Will now Start the Application" 

EXPOSE 8181 

#start kick of your application ----- 
# SRP as long as the node awaits for the request it will run if the application does not then the container exits 

CMD [ "node", "index.js" ]





