#dotfiles

* 自分の開発環境をgit cloneしてmakeすれば、すぐに整う
* tigやeditorconfigのアップデートを行える

インストール
```
bash -c "$(curl -L raw.githubusercontent.com/yutaza/dotfiles/master/install)"
```

シェル切り替え
```
chsh -s /bin/zsh
```

go
```
goenv install 1.6 && goenv global 1.6 && go get github.com/peco/peco/cmd/peco && go get github.com/github/hub
```


アップデート
```
make update
```

削除
```
make distclean
```

