#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

create_user()
{
  USER=$1
  GROUP=$2

  useradd $USER -m -s /bin/bash -p $(openssl passwd Senha123) -G $GROUP
}

create_user carlos GRP_ADM
create_user maria GRP_ADM
create_user joao GRP_ADM

create_user debora GRP_VEN
create_user sebastina GRP_VEN
create_user roberto GRP_VEN

create_user josefina GRP_SEC
create_user amanda GRP_SEC
create_user rogerio GRP_SEC

echo "Expecificando permições dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
