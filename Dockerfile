FROM nginx:latest
COPY . /usr/share/nginx/html

#docker build -t home:latest -f Dockerfile .
# docker tag home:latest bonglv/home:latest
# docker push bonglv/home:latest