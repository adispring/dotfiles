#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi

  # 配置参考：https://www.jianshu.com/p/9537516a6ae8
  # 替换brew.git:
  cd "$(brew --repo)"
  # 中国科大:
  git remote set-url origin https://mirrors.ustc.edu.cn/brew.git

  # 替换homebrew-core.git:
  cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
  # 中国科大:

  # 替换homebrew-bottles:
  # 中国科大:
  echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.zshrc
  source ~/.zshrc

  # 应用生效:
  brew update

fi

exit 0
