#!/bin/sh
docker rm -f bovespa-fii-frontend
docker build -t fvslistas/bovespa-fii-frontend:0.0.2 .
docker run -d -p 8080:80 --network bovespa --rm --name bovespa-fii-frontend fvslistas/bovespa-fii-frontend:0.0.2