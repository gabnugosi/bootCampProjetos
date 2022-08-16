#!/bin/bash
echo "Criando as pastas"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos"
groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

echo "Definindo dono dos grupos"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


echo "Criando os usuários"
useradd carlos -c 'Carlos Silva' -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd maria -c 'Maria Papapa' -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd joao_ -c 'Carlos blablabla' -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd debora -c 'debora Silva' -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd sebastiana -c 'sebatiana Carolos' -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd roberto -c 'Roberto Silva' -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd josefina -c 'Josevina Silva' -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd amanda -c 'Amanda Silva' -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd rogerio -c 'Rogerio Silva' -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC

echo "Dando as permissões"
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
