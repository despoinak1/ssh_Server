#!\bin\bash
#create a key
sh-keygen -t rsa -b 4096 -C d.karna@hotmail.com

#We add the path when prompted: Enter file in which to save the key (/home/despoina/.ssh/id_rsa): /home/despoina/.ssh/id_rsa_openstack

#the server uses my public key to add it to its list with authorised keys
cat id_rsa_openstack.pub | ssh muvva@openstack.cloudwick.com "mkdir -p ~/.ssh/ && cat >> ~/.ssh/authorized_keys"

ssh –i mykey muvva@openstack.cloudwick.com

