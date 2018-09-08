# Globally install with npm

echo "› npm install -g"

packages=(
    yarn
    npm
    nodemon
    create-react-app
    webpack
    tern
    prettier
    js-beautify
)

npm install -g "${packages[@]}"
