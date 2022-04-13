# caddy-codeserver-docker

    docker run -dit -p 8080:8080 -p 80:80 -p 443:443 \
      --restart=always \
      --name codeserver \
      -h vscode \
      -u root \
      -v /etc/localtime:/etc/localtime:ro \
      -e PASSWORD=S518418 \
      code:latest youdomain.com
