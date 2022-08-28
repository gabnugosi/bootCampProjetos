#!/bin/bash
echo "Apagando as pastas"
rmdir /publico
rmdir /adm
rmdir /ven
rmdir /sec

echo "Apagando os usuários"
userdel carlos -f
userdel maria -f
userdel joao_ -f
userdel debora -f
userdel sebastiana -f
userdel roberto -f
userdel josefina -f
userdel amanda -f
userdel rogerio -f

echo "Apagando os grupos"
groupdel GRP_ADM 
groupdel GRP_VEN
groupdel GRP_SE
