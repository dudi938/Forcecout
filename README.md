# Forcecout exam


steps to run the project:

prerequisites:
1. docker + docker-compose
2. git


Up the spring application
1. clone the repo
2. cd to Forcecout/Spring/complete
3. run : chmod +x ./run.sh
4. run: ./run.sh

now you can access the spring app in 
http://<your_host>:8080/forsecout and http://<your_host>:8080
For every request to this url's the app will write a message in this format "<timestamp>: HttpRequest to /<specific routing>" to PV in /log called spring.log  

Up the ELK
5. run: docker-compose up -d (wait ~3-5 minuts)



All it's ready:
logstash listen on port 5044
ES listen on port 9200
Kibana listen on port 5601
filebeat track on every file with this conention <name>.log and push to logstash
