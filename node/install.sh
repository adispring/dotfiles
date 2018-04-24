# Globally install with npm

echo "› npm install -g"

packages=(
    yarn
    tern
    prettier
    npm
    nodemon
    create-react-app
)

npm install -g "${packages[@]}"
