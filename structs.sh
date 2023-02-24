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