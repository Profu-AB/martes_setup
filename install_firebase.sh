sudo apt update
sudo apt install -y curl ca-certificates git build-essential

# Install Node LTS via nvm (per user, no sudo)
curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
. "$NVM_DIR/nvm.sh"

nvm install --lts
npm -v && node -v

# Install Firebase CLI
npm install -g firebase-tools
firebase --version