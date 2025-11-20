clear
docker ps
htop
sudo dnf install -y epel-release 
sudo dnf install -y htop
sudo vi /etc/yum.repos.d/epel.repo # in epel add  excludepkgs=zabbix*
rpm -Uvh https://repo.zabbix.com/zabbix/7.4/release/alma/9/noarch/zabbix-release-latest-7.4.el9.noarch.rpm
sudo rpm -Uvh https://repo.zabbix.com/zabbix/7.4/release/alma/9/noarch/zabbix-release-latest-7.4.el9.noarch.rpm
sudo dnf clean all
sudo dnf install zabbix-server-pgsql zabbix-web-pgsql zabbix-apache-conf zabbix-sql-scripts zabbix-selinux-policy zabbix-agent
sudo dnf update -y
sudo dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-9-x86_64/pgdg-redhat-repo-latest.noarch.rpm
sudo dnf install -y postgresql16-server
sudo /usr/pgsql-16/bin/postgresql-16-setup initdb
sudo systemctl enable postgresql-16
sudo systemctl start postgresql-16
sudo -u postgres createuser --pwprompt zabbix
sudo -u postgres createdb -O zabbix zabbix
zcat /usr/share/zabbix/sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix
sudo vi /etc/zabbix/zabbix_server.conf
systemctl restart zabbix-server zabbix-agent httpd php-fpm
sudo systemctl restart zabbix-server zabbix-agent httpd php-fpm
sudo systemctl enable zabbix-server zabbix-agent httpd php-fpm
ll
cd ..
ll
cd /home/alma/ansible-fgtech
docker ps
wget https://github.com/kubernetes-sigs/kind/releases/download/v0.30.0/kind-linux-amd64
sudo dnf install -y wget
wget https://github.com/kubernetes-sigs/kind/releases/download/v0.30.0/kind-linux-amd64
mv kind-linux-amd64 kind
chmod +x kind
sudo mv kind /usr/local/bin/kind
kind version
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl
vi .bashrc
source .bashrc
ks --version
ks version
ll
cd ansible-fgtech/
kind create cluster --name awx --config kind-config-cluster.yml
cd kind/
kind create cluster --name awx --config kind-config-cluster.yml
cd
git clone https://github.com/ansible/awx-operator.git
yum install git
sudo dnf install git
git clone https://github.com/ansible/awx-operator.git
cd awx-operator/
git checkout tags/2.19.1
git log --oneline 
vi kustomization.yaml
ks create ns awx
ks apply -k .
vi kustomization.yaml 
ks apply -k .
ks get pod -A
 kind delete cluster --name awx
cd ansible-fgtech/
cd ../ansible-fgtech/
cd kind 
kind create cluster --name awx --config kind-config-cluster.yml
cd ..
cd awx-operator/
ll
vi kustomization.yaml 
ks create ns awx
git log --oneline
ks apply -k .
ll
vi kustomization.yaml 
ks apply -k .
ll
vi awx-demo.yml 
vi kustomization.yaml 
ks apply -k .
ll
ks apply a
vi awx-demo.yml 
ks apply -k .
ks get pod
ks get pod -A
kubectl logs -f deployments/awx-operator-controller-manager -c awx-manager
kubectl config set-context --current --namespace=awx
kubectl logs -f deployments/awx-operator-controller-manager -c awx-manager
kubectl get pods -l "app.kubernetes.io/managed-by=awx-operator"
 awx-demo.yml 
ks create -f  awx-demo.yml 
vi  awx-demo.yml 
ks create -f  awx-demo.yml 
kubectl get pods -l "app.kubernetes.io/managed-by=awx-operator"
ks get pod -A
docker ps
clear
kind delete cluster --name awx
vi kind.config
kind create cluster --name awx kind.config 
kk
ll
kind create cluster --name awx kind.config 
kind create cluster --name awx --config=kind.config 
kubectl cluster-info --context kind-kind
kubectl config set-context --current --namespace=awx
vi kustomization.yaml 
ks apply -k .
vi awx-demo.yml 
ks get pod -A
ks create -f  awx-demo.yml 
ks get pod -A
echo fs.inotify.max_user_watches=655360 | sudo tee -a /etc/sysctl.conf
echo fs.inotify.max_user_instances=1280 | sudo tee -a /etc/sysctl.conf
echo fs.file-max = 2097152 | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
kubectl get secret -n awx  awx-demo-admin-password -o jsonpath="{.data.password}" | base64 --decode ; echo
kubectl port-forward -n awx service/awx-demo-service 30540:80 --address='0.0.0.0' &
cd /home/alma/ansible-fgtech
ll
cd
ll
clear
docker images
docker ps
ssh-keygen -t rsa -b 4096
export DISTR='centos'
export VERSION='7'
export KEY_CONTENT=$(cat ~/.ssh/id_rsa.pub)
cd ansible-fgtech/
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .
export VERSION='10'
export DISTR='almalinux'
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .
clear
docker images
cd /tmp/
wget https://www.python.org/ftp/python/3.13.9/Python-3.13.9.tgz
tar xzf Python-3.13.9.tgz
cd Python-3.13.9
./configure --prefix=/opt/python3139/ --enable-optimizations --with-lto --with-computed-gotos --with-system-ffi 
sudo dnf groupinstall "Development tools"
./configure --prefix=/opt/python3139/ --enable-optimizations --with-lto --with-computed-gotos --with-system-ffi 
make -j "$(nproc)"
ll
docker ps
docker images
cd /home/alma/ansible-fgtech
cd /tmp
ll
cd Python-3.13.9
ll
make -j`nproc`
sudo make altinstall
python3 -V
vi ~/.bash_profile 
cd /opy
cd /opt
ll
sudo ln -s python3139/ python
ls
l
ll
source ~/.bash_profile 
python -V
cd python
ll
cd bin
ll
sudo ln -s python3.13/ python3
cd
python3 -V
which python3
source ~/.bash_profile 
which python3
exit
cd /home/alma/ansible-fgtech
python3 -V
which python3
vi  ~/.bash_profile 
cd /opt
ll
rm python
sudo rm python
sudo ln -s python3139/ python3
source ~/.bash_profile 
python3 -V
which python3
echo $PATH
exit
cd /home/alma/ansible-fgtech
python3 -V
echo $PATH
cd /opt
cd python3
cd bin
ll
suo rm python3
sudo rm python3
ll
sudo ln -s python3.13 python3
ll
exit
cd /home/alma/ansible-fgtech
python3 -V
cd ..
python3 -v venv venv
python3 -mvenv venv
python3 -m venv venv
ll
source venv/bin/activate
python3 -V
pip3 install wheel
pip install wheel
cd /home/alma/ansible-fgtech
source ~/venv/bin/activate
which pip
which pip3
cd /opt
cd python3
ll
cd bin
ll
sudo ln -s pip3.13 pip3
ls
ll
cd
pip3 install ansible
clear
df -h
docker ps
docker ps -a
docker images
cd /home/alma/ansible-fgtech
ansbile --version
ansible --version
source venv/bin/activate
source ~/venv/bin/activate
ansible --version
sudo install -y libffi-devel
sudo dnf install -y libffi-devel
cd /tmp
ll
cd Python-3.13.9
./configure --prefix=/opt/python3139/ --enable-optimizations --with-lto --with-computed-gotos --with-system-ffi 
make -j4
sudo make altinstall
ansible --version
cd /home/alma/ansible-fgtech
ansible-galaxy role search --help
ansible-galaxy role search glusterfs
OA
ansible-galaxy role search --help
OA
OAanabnggg
cd /home/alma/ansible-fgtech
ll
ansible-galaxy install geerlingguy.glusterfs
cd .ansible/
ll
cd roles
ll
cd geerlingguy.glusterfs/
lll
ll
cd tasks/
ll
cd ..
vi README.md 
clear
cd ~/.ssh/
ll
vi /etc/hosts
sudo vi /etc/hosts
cd /home/alma/ansible-fgtech
sudo vi /etc/hosts
cd /home/alma/ansible-fgtech
ll
rm -Rf almalinux/
rm centos
rm -Rf centos
rm -Rf kind
cd ..
ll
rm ansible-fgtech/
rm -Rf ansible-fgtech/
ll
docker ps
docker images
export DISTR='centos'
export VERSION='7'
docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
docker ps
docker exec -it systemd-centos-7 /bin/bash
cd /home/alma/ansible-fgtech
sudo vi /etc/hosts
source ~/venv/bin/activate
ll
cd ansible-fgtech/
ll
cd basic_commands/
ll
ansible all -m ping -i inventory 
ll
ping 1.home
sudo vi /etc/hosts
ping 1.home
ansible all -m ping -i inventory 
ssh-copy-id ansible@172.17.0.3
clear
cd ..
cd .ssh/
ll
cd authorized_keys 
cat authorized_keys 
cd ..
cd .ssh/
ll
cat id_rsa.pub 
ll
ssh 172.17.0.3@1.home
ssh ansible@1.home
cd
cd ansible-fgtech/
ll
cd basic_commands/
ansible all -m ping -i inventory
docker images
ll
cd ..
ll
export DISTR='almalinux'
export VERSION='10'
 docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
docker ps
sudo vi /etc/hosts
ll
ls -alrt
cd ..
cd /etc/
ll
ls
ll *swp
ll *.swp
sudo vi /etc/hosts
cd
cd ansible-fgtech/basic_commands/
ansible alma10 -m ping -i inventory
ping 2.home
ssh ansible@172.17.0.4
ansible alma10 -m ping -i inventory
vi /etc/hosts
ssh ansible@172.17.0.4
ssh ansible@2.home
ansible alma10 -m ping -i inventory
ansible centos7 -m ping -i inventory
ansible centos7 -vvv -m ping -i inventory
 ansible centos7 -i inventory -m raw -a "sudo yum install -y python-simplejson"  -k  -u root -vvvv
 ansible centos7 -i inventory -m raw -a "sudo yum instal
ansible centos7  -m ping -i inventory
ansible centos7 -m ping -i inventory
ansible centos7 -vvv -m ping -i inventory
ansible centos7  -m ping -i inventory -e 'ansible_python_interpreter=/usr/bin/python'
ansible centos7  -m ping -m raw -i inventory -e 'ansible_python_interpreter=/usr/bin/python'
ansible centos7  -m ping raw -i inventory -e 'ansible_python_interpreter=/usr/bin/python'
clear
ll
ansible centos7 -vvv -m ping -i inventory
ssh ansible@1.home
ansible centos7 -vvv -m ping -i inventory
ansible centos7 -i inventory -m raw   -a 'echo "Connexion OK" && exit 0'   -e 'ansible_python_interpreter=/usr/bin/python'
ansible centos7 -vvv -m ping -i inventory
ll
clear
ansible alma10 -vvv -m ping -i inventory
cd /home/alma/ansible-fgtech
docker ps
docker exec -it systemd-centos-7 /bin/bash
ll
df -h
clear
export DISTR='centos'
export VERSION='7'
export KEY_CONTENT=$(cat ~/.ssh/id_rsa.pub)
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .

export DISTR='centos'
export VERSION='7'
export KEY_CONTENT=$(cat ~/.ssh/id_rsa.pub)
docker ps
docker rm -f systemd-centos7
docker rm -f systemd-centos-7
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .
 docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
docker ps
cd /home/alma/ansible-fgtech
clear
docker ps
docker rm -f systemd-centos-7
export DISTR='centos'
export VERSION='7'
docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}

export KEY_CONTENT=$(cat ~/.ssh/id_rsa.pub)
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .
docker rm -f systemd-centos-7
docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
docker exec -it systemd-centos-7 /bin/bash
docker rm -f systemd-centos-7
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .
docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
docker exec -it  systemd-centos-7 /bin/bash
cd /home/alma/ansible-fgtech
docker ps
docker exec -it systemd-centos-7 /bin/bash
cd /home/alma/ansible-fgtech
sudo vi /etc/hosts
ll
cd basic_commands/
ll
ansbile 4.home -m ping -i inventory
source ~/venv/bin/activate
ansible 4.home -m ping -i inventory
ll
ansible 4.home -m ping -i inventory
ssh-copy-id ansible@10.200.15.228
ll
ping 10.200.15.228
ssh ansible@10.200.15.228
ssh -vvv ansible@10.200.15.228
cd 
cd .ssh/
ll
ssh -vvv ansible@10.200.15.228
cd
cd ansible-fgtech/basic_commands/
ssh ansible@10.200.15.228
cd
cd .ssh/
ll
ssh ansible@10.200.15.228
ssh -vvv ansible@10.200.15.228
sudo vi /etc/ssh/ssh_config
sudo systemctl restart sshd
ssh -vvv ansible@10.200.15.228
cd /home/alma/ansible-fgtech
cd basic_commands/
ll
docker ps
ll
ls alrt
ls -alrt
ll
ansible-playbook -i inventory create_file.yml --limit centos7
ansible-playbook -i inventory essai_ansible_pull.yml --limit centos7
ansible-galaxy init centos7
ll
cd centos7
ll
cd tasks/
cd ..
ll
cd ..
ansible-playbook -i inventory essai_ansible_pull.yml --limit centos7
vi inventory
ansible-playbook -i inventory essai_ansible_pull.yml --limit centos7
ansible-playbook -vvv -i inventory essai_ansible_pull.yml --limit centos7
cd /home/alma/ansible-fgtech
cd basic_commands/
cat /etc/hosts
vi inventory
ansible-playbook -i inventory add_lininfile.yml --limit alma10
docker ps
docker ps -a
docker start systemd-almalinux-10
ansible-playbook -i inventory add_lininfile.yml --limit alma10
docker logs systemd-almalinux-10
docker ps
docker logs systemd-almalinux-10
ansible-playbook -i inventory add_lininfile.yml --limit alma10
ssh ansible@2.home
sudo vi /etc/hosts
ansible-playbook -i inventory add_lininfile.yml --limit alma10
ansible-playbook -i inventory add_lininfile_backup.yml --limit alma10
export DISTR='centos'
export VERSION='7'
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .
cd ..
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .
docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
docker ps
sudo vi /etc/hosts
cd basic_commands/
sudo vi /etc/hosts
vi inventory
ansible-playbook -i inventory collecte_facts.yml
vi ~/.ssh/known_hosts
ansible-playbook -i inventory collecte_facts.yml
vi inventory
ansible-playbook -i inventory collecte_facts.yml
cd /home/alma/ansible-fgtech
source ~/venv/bin/activate
cd basic_commands/
ansible-playbook -i inventory collecte_facts.yml
pip3 install natsort
ansible-playbook -i inventory collecte_facts.yml
cd /home/alma/ansible-fgtech
ll
vf basic_commands/
ll
cd basic_commands/
ll -alrt
cat collecte_facts.yml 
history
sourc ~/venv/bin/activate
source ~/venv/bin/activate
ansible-playbook -i inventory collecte_facts.yml
ansible-playbook -vvv -i inventory collecte_facts.yml
docker exec -it systemd-centos-7 /bin/bash
cd /home/alma/ansible-fgtech
htop
cat /etc/hosts
docker ps
cd basic_commands/
ll
source ~/venv/bin/activate
ansible-playbook -i inventory loops.yml
clear
cd ..
ll
ls -alrt
cd ansible-fgtech/
ls -alrt
cd basic_commands/
ls -alrt
vi collecte_facts.yml 
ansible-playbook -i inventory ping.yml
ansible-playbook -i inventory ansible_ping.yml
ansible-playbook -i inventory ansible_facts_using_assert.yml
sudo vi /etc/hosts
vi inventory
ansible-playbook -i inventory ansible_ping.yml
ansible-playbook -i inventory setup.yml
ansible-playbook -i inventory propagate_ssh_key.yml
vi inventory
ansible-playbook -i inventory new_filter.yml
cd /home/alma/ansible-fgtech
ll
docker ps
clear
ll
cd ansible-fgtech/
ll
cd basic_commands/
source ~/venv/bin/activate
clear
export DISTR='centos'
export VERSION='7'
export KEY_CONTENT=$(cat ~/.ssh/id_rsa.pub)
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .
cd ..
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .
 docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
docker ps
docker ps -a
docker rm -f systemd-centos-7
 docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
clear
docker ps
ll
cd centos
ll
 docker cp centos_ansible.py systemd-${DISTR}-${VERSION}:/usr/local/bin
cd /home/alma/ansible-fgtech
htop
cd /home/alma/ansible-fgtech
ssh alma@10.200.0.4
cd ~/.ssh/
ll
cd authorized_keys 
cat authorized_keys 
clear
ssh-keygen
ll
cd /home/alma/ansible-fgtech
ll
cd basic_commands/
ll
ansible-playbook -i inventory ansible_ping.yml 
docker ps
cat /etc/hosts
cat inventory
ssh-copy-id alma@172.17.0.3
ssh ansisble@172.17.0.3
ssh ansible@172.17.0.3
ssh-copy-id ansible@172.17.0.3
ansible-playbook -i inventory ansible_ping.yml 
vi ~/.ssh/known_hosts
ansible-playbook -i inventory ansible_ping.yml 
vi /etc/hosts
sudo vi /etc/hosts
ansible-playbook -i inventory ansible_ping.yml 
vi ~/.ssh/known_hosts
ansible-playbook -i inventory ansible_ping.yml 
ssh-copy-id ansible@172.17.0.4
ansible-playbook -i inventory ansible_ping.yml 
ansible-playbook -i inventory collecte_facts.yml
cd /home/alma/ansible-fgtech
cd .ssh
cd ~/.ssh/
ll
cat id_rsa.pub 
ssh alma@10.200.0.4
cd
clear
ll
sudo vi /etc/hosts
cd ansible-fgtech/
cd basic_commands/
vi inventory
cd /home/alma/ansible-fgtech
ll
cd basic_commands/
ansible-playbook -i inventory collecte_facts.yml
ansible-playbook -vvv -i inventory collecte_facts.yml
ansible-playbook  -i inventory collecte_facts.yml
ansible-playbook -vvv -i inventory collecte_facts.yml
ansible-playbook  -i inventory collecte_facts.yml
clear
cd /home/alma/ansible-fgtech
cd basic_commands/
ansible-playbook  -i inventory collecte_facts.yml
ansible-playbook  -i inventory ansible_ping.yml
ansible-playbook  -i inventory container_docker.yml
pip3 install requests
ansible-playbook  -i inventory container_docker.yml
docker ps
clear
docker ps -a
docker logs centos7_test_node
docker images
ansible-playbook  -i inventory container_docker.yml
cd /home/alma/ansible-fgtech
clear
source venv/bin/activate
ll
cd auditing/
ansible-galaxy init reports
ll
find . -type d -empty -not -path "./.git/*" -not -path "." -exec touch {}/.gitkeep \;
ll
cd reports/
ll
cd files/
ll
ls -alrt
vi .bashrc
vi ~/.bashrc
source ~/.bashrc 
ll
cd ..
..
cd /home/alma/ansible-fgtech
ll
cd ..
ll
cd zabbix_auditing/
source ~/venv/bin/activate
clear
ansible-galaxy init auditing
ll
cd auditing/
ll
clear
cd /home/alma/auditing
ll
docker ps
ll
rm  -Rf reports/
clear
ll
cd ..
docker cp auditing/ systemd-centos-7:/tmp
docker ps
docker cp -r auditing/ systemd-centos-7:/tmp
docker cp auditing  systemd-centos-7:/tmp
docker ps
docker cp auditing  systemd-centos-7:/home/ansible
cd auditing/
ll
rm auditing_tasks.yml 
cd ..
docker cp auditing  systemd-centos-7:/home/ansible
cd /home/alma/auditing
htop
cd /home/alma/ansible-fgtech
export DISTR='centos'
export VERSION='7'
export KEY_CONTENT=$(cat ~/.ssh/id_rsa.pub)
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .
docker ps 
docker rm -f systemd-centos-7
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .
 docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
ssh ansible@172.17.0.3
ping 172.17.0.3
cd /home/alma/ansible-fgtech
git clone   https://github.com/crunchy-devops/ansible-fgtech.git 
docker ps
docker images
ansible --version
docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
cd ansible-fgtech/
export DISTR='almalinux'
export VERSION='10'
docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
docker start systemd-${DISTR}-${VERSION}
docker ps
sudo vi /etc/hosts
cd /home/alma/ansible-fgtech
sudo vi /etc/hosts
cd /home/alma/ansible-fgtech
sudo vi /etc/hosts
cd basic_commands/
ll
vi inventory
ansible-playbook -i inventory ansible_ping.yml 
cat .ssh/id_rsa.pub 
ssh ansible@34.155.71.245
cd .ssh/
ll
vi known_hosts
ssh ansible@34.155.71.245
ssh-keygen -t rsa -b 4096
cat id_rsa.pub 
ssh ansible@34.155.71.245
ssh alma@34.155.71.245
cd
ll
cd disk_mount/
ansible -i inventory -m ping 
ansible all -i inventory -m ping 
cd /home/alma/ansible-fgtech
cd basic_commands/
ll
cat inventory
ansible-playbook container_docker.yml 
docker ps -a
export DISTR='almalinux'
export VERSION='10'
docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
docker run -d --name systemd-${DISTR}-${VERSION}-1 --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
ll
cd /home/alma/disk_mount
ll
rm -Rf .venv/
ll
sourc ~/venv/bin/activate
source ~/venv/bin/activate
ansible all -m ping -i inventory
ansible-playbook 0 -i inventory install_centos_ansible.yml 
ansible-playbook  -i inventory install_centos_ansible.yml 
ll
ansible-playbook  -i inventory install_centos_ansible.yml 
cd /home/alma/ansible-fgtech
clear
ll
sudo vi /etc/hosts
cd /home/alma/ansible-fgtech
ll
cd /etc/
ls
ll
rm .hosts.swp
sudo rm .hosts.swp
sudo vi /etc/hosts
cd /home/alma/ansible-fgtech
htop
cd /home/alma/ansible-fgtech
sudo vi /etc/hosts
sudo nano /etc/hosts
sudo yum install nano
sudo nano /etc/hosts
clear
ll
vi inventory/
cd basic_commands/
vi inventory
cd /home/alma/ansible-fgtech
nano inventory
cd basic_commands/
nano inventory
ansible-playbook -i  inventory runtime_inventory_additions.yml
cat inventory
export DISTR='almalinux'
export VERSION='10'
export KEY_CONTENT=$(cat ~/.ssh/id_rsa.pub)
cd ..
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .
docker images
df -h
clear
ll
docker ps -a
 docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
 docker run -d --name systemd-${DISTR}-${VERSION}-1 --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
cd basic_commands/
ansible-playbook -i  inventory runtime_inventory_additions.yml
cd ..
docker build --build-arg SSH_PUBLIC_KEY="${KEY_CONTENT}" -t docker-systemd:${DISTR}-${VERSION} -f ${DISTR}/${VERSION}.Dockerfile .
 docker run -d --name systemd-${DISTR}-${VERSION} --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
 docker run -d --name systemd-${DISTR}-${VERSION}-1 --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:rw  --hostname=${DISTR}.home --cgroupns=host docker-systemd:${DISTR}-${VERSION}
docker ps
cd basic_commands/
ansible-playbook -i  inventory propagate_ssh_key.yml
ll
rm -Rf ansible-fgtech/
rm -Rf disk_mount/
ll
cd /home/alma/ansible-fgtech
pwd
git clone https://github.com/DBrusson/ansible-fgtech.git
cd /home/alma/ansible-fgtech
htop
ansible --version
ls
docker rm -f portainer
docker run -d -p 32125:8000 -p 443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:2.27.0-alpine
ll
ls
cd ..
rm -rf *
ls
cd ansible-fgtech/
ls
cd basic_commands/
ls
cd
cd -
ls
cat inventory 
sudo vi /etc/hosts
vim /etc/hosts 
ansible all -m ping -i inventory
vim /etc/hosts 
ansible all -m ping -i inventory
ansible all -vvv -m ping -i inventory
vim inventory 
cat ~/.ssh/id_rsa
ansible all -vvv -m ping -i inventory
sudo vim /etc/hosts 
ansible all -m ping -i inventory
cat ~/.ssh/id_rsa
vim ~/.ssh/known_hosts
rm ~/.ssh/known_hosts*
ansible all -m ping -i inventory
ssh ansible@1.home
ansible all -m ping -i inventory
ansible all -vvv -m ping -i inventory
ansible all -m ping -i inventory
ansible 1.home -m dnf -a "name=elinks state=latest" -i inventory
which ansible
ansible -b 1.home -m dnf -a "name=elinks state=latest" -i inventory
ansible all 1.home -m dnf -a "name=elinks state=latest" -i inventory
ansible all -b 1.home -m dnf -a "name=elinks state=latest" -i inventory
ansible -b all -m dnf -a "name=elinks state=latest" -i inventory
ansible all --list-hosts inventory
ansible all --list-hosts -i inventory
ansible all setup -i inventory
ansible all -m setup -i inventory
ansible all -m setup -a "filter=ansible_distribution" -i inventory
ansible all -m setup -a "filter=ansible_memory_mb" -i inventory
ansible all -m setup -a "filter=ansible_distribution" -i inventory
ansible all -m setup -a "filter=ansible_distribution_version" -i inventory
ansible all -m command -a "df -h" -i inventory
ansible all -m setup -a 'filter=ansible_processor*,ansible_mem*,ansible_devices*,ansible_*product*,ansible_*serial*' -i inventory
ansible all -m command -a "df -h" -i inventory
ansible all -a "gather_subset=hardware" -m setup -i inventory
pwd
ansible all -m file -a "dest=/home/alma/ansible-fgtech/basic_commands/testfile touch" -i inventory
ansible alma10 -m file -a "dest=/home/alma/ansible-fgtech/basic_commands/testfile touch" -i inventory
ansible alma10 -m file -a "dest=/home/alma/ansible-fgtech/basic_commands/testfile state=touch" -i inventory
pwd
cd ..
ansible alma10 -m file -a "dest=/home/alma/ansible-fgtech/basic_commands/testfile state=touch" -i inventory
cd -
ansible alma10 -m file -a "dest=/home/alma/ansible-fgtech/basic_commands/testfile state=touch" -i inventory
ansible alma10 -m file -a "dest=/home/alma/ansible-fgtech/basic_commands/testfile state=present" -i inventory
ansible alma10 -m file -a "dest=/home/alma/ansible-fgtech/basic_commands/testfile state=touch" -i inventory
ansible alma10 -m file -a "dest=/home/alma/testfile state=touch" -i inventory
ansible alma10 -m file -a "dest=/home/alma/testfile state=file" -i inventory
ansible all -m file -a "dest=/home/alma/testfile state=touch" -i inventory
ansible 1.home -m file -a "dest=/home/alma/testfile state=touch" -i inventory
ls /home/alma/
ansible alma10 -m file -a "dest=/home/ansible/testfile state=touch" -i inventory
cd ..
ls
cd basic_commands/
ansible-playbook ansible_ping.yml -i inventory
ansible-playbook create_file.yml -i inventory
cd
vim .ssh/authorized_keys 
ssh alma10
ssh 1.home
ssh root@1.home
ls
ssh ansible@1.home
cd ansible-fgtech/basic_commands/
ansible-playbook ansible_facts_using_when.yml -i inventory
ansible-playbook test_file.yml -i inventory
vim ansible.cfg 
ansible-playbook test_file.yml -i inventory
ansible-playbook ansible_facts_using_when.yml -i inventory
vim ansible.cfg 
vim runtime_inventory_additions.yml 
ansible-playbook runtime_inventory_additions.yml -i inventory
vim propagate_ssh_key.yml 
vim inventory
vim propagate_ssh_key.yml 
ansible-playbook propagate_ssh_key.yml -i inventory
vim propagate_ssh_key.yml 
vim motd.yml 
ls
cat template.j2 
vim motd.yml 
vim template.j2 
cp template.j2 motd.j2
vim motd.j2 
vim motd.yml 
vim motd.j2 
vim motd.yml 
vim motd.j2 
ansible-playbook motd.yml -i inventory
vim motd.j2 
vim motd.yml 
ansible-playbook motd.yml -i inventory
vim motd.yml 
ansible-playbook motd.yml -i inventory
vim motd.yml 
vim filter_plugins/
vim filter_plugins/my_filters.py 
vim new_filter.yml 
ansible-playbook new_filter.yml -i inventory
vim new_filter.yml 
ls
cd ansible-fgtech/
ls
cd basic_commands/
ls
vim create_file.yml 
ansible-playbook create_file.yml -i inventory
cat inventory
vim create_file.yml 
ssh 1.home
vim create_file.yml 
ansible-playbook create_file.yml -i inventory
vim test
ssh ansible@1.home
vim create_users.yml 
ansible-playbook create_user.yml -i inventory
ansible-playbook create_users.yml -i inventory
vim create_users.yml 
ansible-playbook create_users.yml -i inventory
vim create_users.yml 
ansible-playbook create_users.yml -i inventory
vim create_users.yml 
ansible-playbook create_users.yml -i inventory
vim ansible.cfg 
ansible-playbook create_users.yml -i inventory
vim ansible.cfg 
ansible-playbook create_users.yml -i inventory
vim ansible_facts_using_when.yml 
ansible-playbook ansible_facts_using_when.yml -i inventory
vim ansible_facts_using_when.yml 
vim install_on_multios.yml 
vim ansible_facts_using_assert.yml 
ansible-playbook ansible_facts_using_assert.yml -i inventory
vim inventory
sudo vim /etc/fstab 
sudo vim /etc/hosts 
vim inventory
ansible all -m ping -i inventory
ansible-playbook ansible_facts_using_assert.yml -i inventory
vim test_file
vim test_file.yml
ansible-playbook ansible_facts_using_assert.yml -i inventory
vim test_file.yml
vim LES_PLAYBOOKS.md 
vim runtime_inventory_additions.yml 
ansible-playbook runtime_inventory_additions.yml 
ansible-playbook runtime_inventory_additions.yml -i inventory
ssh ansible@2.home
ssh root@2.home
ssh ansible@2.home
ssh ansible@1.home
ssh ansible@2.home
ssh ansible@1.home
ssh ansible@2.home
ssh ansible@1.home
