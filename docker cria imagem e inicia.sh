docker build -t fvslistas/bovespa-fii-frontend:0.0.1 .
docker run -d -p 8080:80 --rm --name bovespa-fii-frontend fvslistas/bovespa-fii-frontend:0.0.1  