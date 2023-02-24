#!/bin/bash

echo "Removendo configurações das aulas."

rm -Rf /testes
userdel -r usuariotest
groupdel GRP_ADM
groupdel GRP_VEN