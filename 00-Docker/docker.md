# Comandos Docker e Docker Compose

## Construção da Imagem

docker build -t nome_da_imagem:tag .

`-t nome_da_imagem:tag` : Nome e tag da imagem.
`.` : Diretório atual onde está o Dockerfile.

------------

## Execução de um Container

docker run -d -p 80:80 nome_da_imagem:tag

`-d` : Executa o container em segundo plano.
`-p 80:80` : Mapeia a porta 80 do host para a porta 80 do container.
`nome_da_imagem:tag` : Nome e tag da imagem a ser executada.

------------

## Parar um Container

docker stop id_do_container

`id_do_container` : ID ou nome do container que deseja parar.

------------

## Iniciar um Container Parado

docker start id_do_container

`id_do_container` : ID ou nome do container que deseja iniciar.

------------

## Remover um Container

docker rm id_do_container

`id_do_container` : ID ou nome do container que deseja remover.

------------

### Docker Compose

## Construção dos Serviços

docker-compose build

Constrói os serviços definidos no `docker-compose.yml`.

------------

## Iniciar os Serviços

docker-compose up

Inicia os serviços definidos no `docker-compose.yml` e mostra os logs.

------------

## Iniciar os Serviços em Segundo Plano

docker-compose up -d

Inicia os serviços em segundo plano.

------------

## Parar os Serviços

docker-compose down

Para e remove os containers, redes e volumes definidos no `docker-compose.yml`.

------------

## Parar os Serviços Temporariamente

docker-compose stop

Para os serviços sem remover os containers.

------------

## Reiniciar os Serviços Parados

docker-compose start

Reinicia os serviços que foram parados com `docker-compose stop`.

------------

## Monitoramento de Mudanças (watch)

docker-compose up --build

Reconstrói os serviços se houver mudanças nos arquivos.

------------

