#!/bin/bash
# Configurações Git padrão Aegro
# Rode uma vez ao fazer onboarding

git config --global init.defaultBranch dev
git config --global core.autocrlf input

echo "Configurações Git aplicadas:"
echo "  init.defaultBranch = dev"
echo "  core.autocrlf = input"
