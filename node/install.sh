# Globally install with npm

echo "› npm install -g"

packages=(
    yarn
    tern
    prettier
    npm
    nodemon
)

npm install -g "${packages[@]}"
