exitv=13

Green='\033[0;32m'
NC='\033[0m' # No Color

echo -e "Seleccione el port forward"
echo -e -e "1-${Green}Install tools generals${NC}
2-${Green}nvm${NC} 
3-${Green}docker${NC} 
4-${Green}plugins zsh${NC} 
5-${Green}install Node${NC} 
6-${Green}install Fonts Power Line${NC} 
7-${Green}Update fonts terminal${NC} 
8-${Green}Install package Global NPM${NC} 
9-${Green}Install php 8.1${NC} 
10-${Green}Install Composer${NC} 
11-${Green}Install Stacer${NC} 
12-${Green}connect to the Docker daemon socket${NC} 
${exitv}-${Green}Salir${NC}"

echo -e "Developer tools for geranjian"

read x

while [ $x != $exitv ]
do
  case $x in
    1)
      	echo -e   "${Green} update - upgrade ${NC}"
      	sudo apt update ; sudo apt upgrade
        echo -e "${Green} git ${NC}"
      	sudo apt install git;
      	echo -e "${Green} git ${NC}"
      	sudo apt install git;
      	echo -e "${Green} zsh ${NC}"
      	sudo apt install zsh;
      	sudo chsh -s $(which zsh);
      	echo -e "${Green} ohmyzsh ${NC}"
	sudo apt install curl;
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
        exit
    ;;
    2)
    	echo -e "${Green} installing nvm ${NC}"
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
        exit
    ;;
    3)
    	echo -e "${Green} installing docker ${NC}"
    	sudo apt install apt-transport-https ca-certificates curl software-properties-common;

	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

	sudo apt-key fingerprint 0EBFCD88

	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"


	sudo apt update
	sudo apt install docker-ce

	sudo service docker start
	
	echo -e "${Green} installing docker ${NC}"
	sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

	sudo chmod +x /usr/local/bin/docker-compose

	docker-compose --version
	exit
    ;;
    4)	
    	echo -e "${Green} dir colors ${NC}"
    	curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark --output ~/.dircolors

	eval `dircolors ~/.dircolors`
	echo -e "${Green} autosuggestions ${NC}"
	cp -r $PWD/zsh-autosuggestions ~/.oh-my-zsh/plugins
	echo -e "${Green} highlighting ${NC}"
	cp -r $PWD/zsh-syntax-highlighting ~/.oh-my-zsh/plugins
	echo -e "${Green} wild-cherry.zsh-theme  ${NC}"
	cp -r $PWD/wild-cherry.zsh-theme ~/.oh-my-zsh/themes
	echo -e "${Green} .zshrc  ${NC}"
	cp -r $PWD/.zshrc ~/
	reset
	exit

    ;;
    5)
    	source ~/.nvm/nvm.sh
	echo -e "${Green} installing node ${NC}"
	nvm install node;
	echo -e "${Green} use node ${NC}"
	nvm use node;
		echo -e "${Green} Restart Terminal${NC}"
        exit
    ;;
    6)
	echo -e "${Green} git fonts ${NC}"
	git clone https://github.com/powerline/fonts.git --depth=1
	echo -e "${Green} cd fonst ${NC}"
	cd fonts
	echo -e "${Green} installing fonts sh ${NC}"
	./install.sh
	echo -e "${Green} clean fonts ${NC}"
	cd ..
	rm -rf fonts
        exit
    ;;
     7)
	echo -e "${Green} installing node ${NC}"
	gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ font 'Hack 12'

        exit
    ;;
    8)
    	echo -e "${Green}  install angular cli, nestjs, serverless, esling ${NC}"
    	npm i -g @angular/cli@13.3.10 @nestjs/cli@9.2.0 plop serverless eslint
    	exit
    ;;
     9)
    	echo -e "${Green}  install php8.1 ${NC}"
	sudo apt update
	sudo apt install --no-install-recommends php8.1
	php -v
	sudo apt-get install -y php8.1-cli php8.1-common php8.1-mysql php8.1-zip php8.1-gd php8.1-mbstring php8.1-curl php8.1-xml php8.1-bcmath
	exit
    ;;
    10)
    	sudo apt update
	sudo apt install php-cli unzip
	cd ~
	curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
	HASH=`curl -sS https://composer.github.io/installer.sig`
	echo $HASH
	php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
	sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
	
	exit
    ;;
       11)
    	echo -e "${Green}  install stacer${NC}"
    	sudo apt update
    	sudo apt install stacer
    	exit
    ;;
    12)
    	echo -e "${Green}  install permission docker whit daemon ${NC}"
    	sudo groupadd docker
	sudo usermod -aG docker ${USER}
	su -s ${USER}
	sudo chmod 666 /var/run/docker.sock
    	exit
    ;;
    $exitv)
        exit 0
    ;;
    esac
done



