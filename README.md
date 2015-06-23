#dotfiles

* 自分の開発環境をgit cloneしてmakeすれば、すぐに整う
* tigやeditorconfigのアップデートを行える

### 例

初期設定
```
    % cd ~
    % mkdir data
    % git clone リポジトリ ~/data/dotfiles
    % cd ~/data/dotfiles
    % make
    % chsh -s /bin/zsh
```

アップデート
```
make update
```

削除
```
make distclean
```

peco
```
goenv install 1.4 && goenv global 1.4 && go get github.com/peco/peco/cmd/peco
```
