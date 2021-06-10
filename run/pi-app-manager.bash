#!/usr/bin/env bash
curl https://raw.githubusercontent.com/NSK-1010/pi-app-manager/master/run/version.bash | bash
apt install git -y
git clone https://github.com/nsk-1010/pi-app-manager.git -b ${tag}
chmod 755 -R pi-app-manager
cd pi-app-manager
scriptdir=$(pwd)
./depends.sh
./pi-app-manager
echo "今後は 'bash ${scriptdir}/pi-app-manager' というコマンドを実行するとPi-App-Managerが起動します。"
cd ..
