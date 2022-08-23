FROM nginx:latest
COPY . /usr/share/nginx/html

#docker build -t bbytegroupcom/website-templates:v1 -f Dockerfile .
# docker tag home:v2 bbytegroupcom/website-templates:v1
# docker push bbytegroupcom/website-templates:v1