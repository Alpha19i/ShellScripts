#!/bin/bash

echo "Removendo configurações das aulas."

rm -Rf /testes
userdel -r usuariotest
groupdel GRP_ADM
groupdel GRP_VEN

echo "Criando diretórios."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e adicionando aos grupos."

useradd carlos -m -s /bin/bash -p $(openssl passwd -cript Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -cript Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -cript Senha123) -G GRP_ADM

useradd debora-m -s /bin/bash -p $(openssl passwd -cript Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -cript Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -cript Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -cript Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -cript Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -cript Senha123) -G GRP_SEC
