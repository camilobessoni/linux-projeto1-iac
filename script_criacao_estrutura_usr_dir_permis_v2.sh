#!/bin/bash

#####

echo "Criando grupos GRP_ADM, GRP_VEN e GRP_SEC"
echo "..."
groupadd GRP_ADM
echo "GRP_ADM criado..."
groupadd GRP_VEN
echo "GRP_VEN criado..."
groupadd GRP_SEC
echo "GRP_SEC criado..."
echo "..."
echo "Grupos criados!"

#####

echo "Criando usuários do sistema..."
echo "..."
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
passwd carlos -e
echo "Criado usuário carlos..."
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
passwd maria -e
echo "Criada usuária maria..."
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
passwd joao -e
echo "Criado usuário joao..."
useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
passwd debora -e
echo "Criada usuária debora..."
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
passwd sebastiana -e
echo "Criada usuária sebastiana..."
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
passwd roberto -e
echo "Criado usuário roberto..."
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
passwd josefina -e
echo "Criada usuária josefina..."
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
passwd amanda -e
echo "Criada usuária amanda..."
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
passwd rogerio -e
echo "Criado usuário rogerio..."
echo "..."
echo "Usuários criados!"

#####

echo "Criando diretórios /publico, /adm, /ven e /sec"
echo "..."
mkdir /publico
echo "Criado o diretório /publico..."
mkdir /adm
echo "Criado o diretório /adm..."
mkdir /ven
echo "Criado o diretório /ven..."
mkdir /sec
echo "Criado o diretório /sec..."
echo "..."
echo "Diretórios criados!"

#####

echo "Editando administrações e permissões de diretórios"

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões atualizadas!"

#####