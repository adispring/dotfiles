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
    livedown
)

npm install -g "${packages[@]}"
