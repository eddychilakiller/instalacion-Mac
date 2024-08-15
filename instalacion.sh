#!/bin/bash

# Instalar Homebrew si no está instalado
if ! command -v brew &> /dev/null
then
    echo "Homebrew no está instalado. Instalando Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew ya está instalado."
fi

# Actualizar Homebrew
echo "Actualizando Homebrew..."
brew update

# Instalar jenv para gestionar versiones de Java
echo "Instalando jenv..."
brew install jenv

# Instalar Java
echo "Instalando Java..."
brew install openjdk@17

# Agregar Java a jenv y configurar la versión predeterminada
echo "Configurando jenv con Java..."
jenv add /usr/local/opt/openjdk@17
jenv global 17

# Configurar variables de entorno para jenv
echo "Configurando variables de entorno para jenv..."
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc

# Instalar Maven
echo "Instalando Maven..."
brew install maven

# Instalar Python
echo "Instalando Python..."
brew install python

# Instalar pip (si no está instalado)
echo "Instalando pip..."
easy_install pip

# Instalar Docker
echo "Instalando Docker..."
brew install --cask docker

# Instalar Kubernetes CLI (kubectl)
echo "Instalando Kubernetes CLI (kubectl)..."
brew install kubectl

# Instalar Minikube (para ejecutar Kubernetes localmente)
echo "Instalando Minikube..."
brew install minikube

# Instalar Ansible
echo "Instalando Ansible..."
brew install ansible

# Instalar nvm (Node Version Manager)
echo "Instalando nvm..."
brew install nvm

# Crear el directorio para nvm si no existe
mkdir ~/.nvm

# Agregar nvm a zsh
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"' >> ~/.zshrc
echo '[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"' >> ~/.zshrc

# Instalar Node.js usando nvm
echo "Instalando Node.js..."
source ~/.zshrc
nvm install node

# Instalar JHipster
echo "Instalando JHipster..."
npm install -g generator-jhipster

# Instalar Jupyter
echo "Instalando Jupyter..."
pip install jupyter

# Instalar Visual Studio Code
echo "Instalando Visual Studio Code..."
brew install --cask visual-studio-code

# Instalar IntelliJ IDEA (para desarrollo en Java)
echo "Instalando IntelliJ IDEA..."
brew install --cask intellij-idea

# Instalar PyCharm (para desarrollo en Python)
echo "Instalando PyCharm..."
brew install --cask pycharm

# Instalar Git
echo "Instalando Git..."
brew install git

# Instalar herramientas para GTD (Getting Things Done)
echo "Instalando herramientas para GTD..."
brew install --cask notion

# Instalar herramientas para mapas mentales
echo "Instalando herramientas para mapas mentales..."
brew install --cask xmind

# Instalar herramientas para uso de LaTeX
echo "Instalando herramientas para LaTeX..."
brew install --cask mactex

# Instalar editores de texto
echo "Instalando editores de texto..."
brew install --cask sublime-text

# Instalar editores de imágenes
echo "Instalando editores de imágenes..."
brew install --cask gimp
brew install --cask inkscape

# Instalar Emacs
echo "Instalando Emacs..."
brew install --cask emacs

# Instalar Postman (para pruebas de API)
echo "Instalando Postman..."
brew install --cask postman

# Instalar iTerm2 (mejor terminal que la predeterminada)
echo "Instalando iTerm2..."
brew install --cask iterm2

# Instalar Slack (para comunicación)
echo "Instalando Slack..."
brew install --cask slack

# Instalar zsh y cambiar shell por defecto
echo "Instalando zsh..."
brew install zsh
echo "Cambiando shell por defecto a zsh..."
chsh -s /bin/zsh

# Instalar Oh My Zsh para una mejor experiencia con zsh
echo "Instalando Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Limpiar las cachés de Homebrew
echo "Limpiando las cachés de Homebrew..."
brew cleanup

echo "¡Instalación completa! Por favor, reinicia tu terminal para aplicar las configuraciones."

