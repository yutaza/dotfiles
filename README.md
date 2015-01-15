#dotfiles

* 自分の開発環境をgit cloneしてmakeすれば、すぐに整う
* tigやeditorconfigのアップデートを行える
* ansibleのbuildがうまくいっていないので、初期設定が終わった後、homebrewでインストール

### 例

初期設定
```
    % cd ~
    % mkdir data
    % git clone リポジトリ ~/data/dotfiles
    % cd ~/data/dotfiles
    % cp -a Makefile.sample Makefile 
    % vim Makefile
    % make
    % chsh -s /bin/zsh
```

アップデート
```
make update
```

開発環境の削除
```
make distclean
```

Makefile
```
include ./config/Makefile.d/var.d/*.mk
include ./config/Makefile.d/register.d/ansible.mk
include ./config/Makefile.d/register.d/dotenv.mk
include ./config/Makefile.d/register.d/editorconfig.mk
include ./config/Makefile.d/register.d/oh-my-zsh.mk
include ./config/Makefile.d/register.d/phpenv.mk
include ./config/Makefile.d/register.d/pyenv.mk
include ./config/Makefile.d/register.d/tig.mk

# Mac用
include ./config/Makefile.d/register.d/homebrew.mk

include ./config/Makefile.d/task.d/*.mk
```