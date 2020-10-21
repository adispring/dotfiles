# Globally install with npm

echo "› npm install -g"

packages=(
    yarn
    npm
    prettier
    eslint
    typescript-language-server
    typescript
    vls
    nodemon
    webpack
    tern
    livedown
)

npm install -g "${packages[@]}"
