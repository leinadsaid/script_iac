#!/bin/bash

# Criação dos diretórios
sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

# Definição do dono dos diretórios
sudo chown root:root /publico
sudo chown root:root /adm
sudo chown root:root /ven
sudo chown root:root /sec

# Definição das permissões dos diretórios
sudo chmod 777 /publico

# Criação dos grupos
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

# Criação dos usuários e adição aos grupos correspondentes
sudo useradd -m -s /bin/bash -G GRP_ADM carlos
sudo useradd -m -s /bin/bash -G GRP_ADM maria
sudo useradd -m -s /bin/bash -G GRP_ADM joao

sudo useradd -m -s /bin/bash -G GRP_VEN debora
sudo useradd -m -s /bin/bash -G GRP_VEN sebastiana
sudo useradd -m -s /bin/bash -G GRP_VEN roberto

sudo useradd -m -s /bin/bash -G GRP_SEC josefina
sudo useradd -m -s /bin/bash -G GRP_SEC amanda
sudo useradd -m -s /bin/bash -G GRP_SEC rogerio

# Definição das permissões dos diretórios para cada grupo
sudo chown :GRP_ADM /adm
sudo chmod 770 /adm

sudo chown :GRP_VEN /ven
sudo chmod 770 /ven

sudo chown :GRP_SEC /sec
sudo chmod 770 /sec
