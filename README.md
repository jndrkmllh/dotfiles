## Toolset
- [iterm2](https://iterm2.com/)
- [oh-my-zsh](http://ohmyz.sh/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [git](https://git-scm.com/)
- [asdf version manager](https://asdf-vm.com/)

## How to Start
1. Install iTerm2: 
   ```bash
   brew install --cask iterm2
   ```

2. Install Oh My Zsh: 
   ```bash 
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

3. Install Git: 
   ```bash
   brew install git
   ```

4. Install GitHub CLI: 
   ```bash
   brew install gh
   ```

5. Install VSCode: 
   ```bash
   brew install --cask visual-studio-code
   ```

6. Install asdf: 
   ```bash
   brew install asdf
   ```

7. Install MesloLGS NF Font (recommended for powerlevel10k): 
   ```bash
   brew install --cask font-meslo-lg-nerd-font
   ```

8. Install powerlevel10k theme: 
   ```bash
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
   ```

9. From the home directory `~` create the directories for this repo: 
   ```bash
   mkdir -p Code/jndrkmllh && cd Code/jndrkmllh
   ```

10. Authorize on Github with HTTPS as protocol: 
    ```bash
    gh auth login
    ```

11. Clone the repo: 
    ```bash
    gh repo clone jndrkmllh/dotfiles
    ```

12. Run `install.sh`: 
    ```bash
    sh install.sh
    ```
