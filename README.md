# Gameplay --- Aula 1 (em construção)

Projeto criado durante a NLW Together 2021 da Rocketseat.

Aplicativo mobile utilizando REACT NATIVE.

Aplicativo para agendamento de jogos entre amigos através do discord

# Requisitos

- Git
- Docker Engine
- Docker Compose
- Expo Go no smartphone

# Instalação

- Faça o clone do repositório para seu ambiente de desenvolvimento:

    ```
    git clone https://github.com/johnny0408/gameplay.git
    ```

- Acesse a pasta do projeto:

    ```
    cd gameplay
    ```
- Abra o arquivo docker-compose.yml e altere o valor do parâmetro REACT_NATIVE_PACKAGER_HOSTNAME com o IP do seu ambiente de desenvolvimento:

    ```
    REACT_NATIVE_PACKAGER_HOSTNAME=SEU_IP
    ```

- Para encontrar o valor do seu IP digite ipconfig no Windows ou ifconfig no Linux ou Mac.

- Faça build do contêiner, inicie o contêiner e inicie o aplicativo:

    ```
    docker-compose up --build
    ```

- Acesse http://SEU_IP:19002

- Altere o tipo de conexão para Túnel.

- Acesse o Expo Go no smartphone e leia o QR Code mostrado no browser do computador