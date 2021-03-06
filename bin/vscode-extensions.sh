#!/usr/bin/env bash
# source ../../lib.sh

bot "Installing Visual Studio code extensions and config."

code -v > /dev/null
if [[ $? -eq 0 ]];then
    read -r -p "Do you want to install VSC extensions? [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        ok "Installing extensions please wait..."
        code --install-extension stevencl.adddoccomments
        code --install-extension patbenatar.advanced-new-file
        code --install-extension aaron-bond.better-comments
        code --install-extension christian-kohler.npm-intellisense
        code --install-extension coenraads.bracket-pair-colorizer
        code --install-extension msjsdiag.debugger-for-chrome
        code --install-extension dzannotti.vscode-babel-coloring
        code --install-extension joelday.docthis
        code --install-extension dbaeumer.vscode-eslint
        code --install-extension t-sauer.autolinting-for-javascript
        code --install-extension capaj.vscode-exports-autocomplete
        code --install-extension eamodio.gitlens
        code --install-extension vincaslt.highlight-matching-tag
        code --install-extension christian-kohler.path-intellisense
        code --install-extension oderwat.indent-rainbow
        code --install-extension orta.vscode-jest
        code --install-extension ms-vsliveshare.vsliveshare
        code --install-extension xyz.local-history
        code --install-extension pkief.material-icon-theme
        code --install-extension whtouche.vscode-js-console-utils
        code --install-extension wix.vscode-import-cost
        code --install-extension equinusocio.vsc-material-theme
        code --install-extension ms-vscode.node-debug2
        code --install-extension esbenp.prettier-vscode
        code --install-extension shinnn.stylelint

        ok "Extensions for VSC have been installed. Please restart your VSC."
    else
        ok "Skipping extension install.";
    fi

    read -r -p "Do you want to overwrite user config? [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        read -r -p "Do you want to back up your current user config? [Y|n] " backupresponse
        if [[ $backupresponse =~ ^(n|no|N) ]];then
            ok "Skipping user config save."
        else
            cp $HOME/Library/Application\ Support/Code/User/settings.json $HOME/Library/Application\ Support/Code/User/settings.backup.json
            ok "Your previous config has been saved to: $HOME/Library/Application Support/Code/User/settings.backup.json"
        fi
        cp ./settings.json $HOME/Library/Application\ Support/Code/User/settings.json

        ok "New user config has been written. Please restart your VSC."
    else
        ok "Skipping user config overwriting.";
    fi
else
    error "It looks like the command 'code' isn't accessible."
    error "Please make sure you have Visual Studio Code installed"
    error "And that you executed this procedure: https://code.visualstudio.com/docs/setup/mac"
fi
