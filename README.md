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

アップデート
```
make update
```

削除
```
make distclean
```

