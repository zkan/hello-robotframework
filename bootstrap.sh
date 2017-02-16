apt-get update && apt-get install -y vim python-setuptools xvfb firefox

easy_install pip
pip install robotframework==3.0.2 \
  robotframework-selenium2library==1.8.0 \
  robotframework-xvfb==1.2.2 \
  selenium==3.0.2

su vagrant <<'EOF'
cp "/vagrant/bash_profile" "/home/vagrant/.bash_profile"
EOF
