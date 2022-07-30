#!bin/bash

echo "Iniciando script, criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados..."
echo "Criando gruposde usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Diretórios criados..."
echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados..."
echo "Criando usuários..."

useradd carlos -m -c "Carlos do ADM" -s /bin/bash -p $(openssl passwd -5 Senha12345) -G GRP_ADM
useradd maria -m -c "Maria do ADM" -s /bin/bash -p $(openssl passwd -5 Senha12345) -G GRP_ADM
useradd joao -m -c "Joao do ADM" -s /bin/bash -p $(openssl passwd -5 Senha12345) -G  GRP_ADM

useradd debora -m -c "Debora do VEN" -s /bin/bash -p $(openssl passwd -5 senha12345) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana do VEN" -s /bin/bash -p $(openssl passwd -5 Senha12345) -G GRP_VEN
useradd roberto -m -c "Roberto do VEN" -s /bin/bash -p $(openssl passwd -5 Senha12345) -G GRP_VEN

useradd josefina -m -c "Josefina do SEC" -s /bin/bash -p $(openssl passwd -5 Senha12345) -G GRP_SEC
useradd amanda -m -c "Amandaa do SEC" -s /bin/bash -p $(openssl passwd -5 Senha12345) -G GRP_SEC
useradd rogerio -m -c "Rogerio do SEC" -s /bin/bash -p $(openssl passwd -5 Senha12345) -G GRP_SEC

echo "Usuários criados..."
echo "Especificando permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões concedidas...script finalizado."
