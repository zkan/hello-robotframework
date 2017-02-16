apt-get update
apt-get install -y vim python-setuptools xvfb firefox libssl-dev

# To support Thai in Firefox
# http://xn--vps-gklo2ixdufb5e.blogspot.com/2014/04/firefox-ubuntu.html
apt-get install -y ttf-thai-tlwg xfonts-thai xfonts-thai-etl \
    xfonts-thai-manop xfonts-thai-nectec xfonts-thai-poonlap \
    xfonts-thai-vor fonts-tlwg-waree
fc-cache -f -v

easy_install pip
pip install robotframework==3.0.2 \
            robotframework-selenium2library==1.8.0 \
            robotframework-xvfb==1.2.2 \
            selenium==3.0.2

su vagrant <<'EOF'
cp "/vagrant/bash_profile" "/home/vagrant/.bash_profile"
EOF

# Syntax color in vim
# https://github.com/mfukar/robotframework-vim
#su vagrant <<'EOF'
#git clone git://github.com/mfukar/robotframework-vim.git
#mkdir ~/.vim
#cd robotframework-vim && cp -R * ~/.vim/
#cp "/vagrant/bashprofile" "/home/vagrant/.bash_profile"
#EOF
