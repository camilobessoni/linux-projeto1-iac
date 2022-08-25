#!/bin/bash

#####

echo "Apagando usuários do sistema..."

userdel -rf carlos
userdel -rf maria
userdel -rf joao
userdel -rf debora
userdel -rf sebastiana
userdel -rf roberto
userdel -rf josefina
userdel -rf amanda
userdel -rf rogerio

echo "Usuários apagados!"

#####

echo "Apagando diretórios /publico, /adm, /ven e /sec"

rmdir -r /publico
echo "Diretorio /publico removido..."
rmdir -r /adm
echo "Diretorio /adm removido..."
rmdir -r /ven
echo "Diretorio /ven removido..."
rmdir -r /sec
echo "Diretorio /sec removido..."

echo "Diretórios apagados!"

#####
#
#echo "Editando administrações e permissões de diretórios"
#
#chown root:root /publico
#chown root:GRP_ADM /adm
#chown root:GRP_VEN /ven
#chown root:GRP_SEC /sec
#
#chmod 777 /publico
#chmod 770 /adm
#chmod 770 /ven
#chmod 770 /sec
#
#echo "Permissões atualizadas!"
#
#####
#
#####

echo "Apagando grupos GRP_ADM, GRP_VEN e GRP_SEC"

groupdel -f GRP_ADM
echo "Grupo GRP_ADM apagado..."
groupdel -f GRP_VEN
echo "Grupo GRP_VEN apagado..."
groupdel -f GRP_SEC
echo "Grupo GRP_SEC apagado..."

echo "Grupos apagados!"
