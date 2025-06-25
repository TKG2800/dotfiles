#!/usr/bin/env zsh
set -e
# == == == == == == == == ==
# path設定(path setting)
# == == == == == == == == ==
# export path="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$path"
excluded_paths=(
  "$home/library"
  "$home/.trash"
  "$home/.tmux"
  "$home/.vim"
  "$home/.local"
  "$home/dotfiles/packages/tmux/.config/tmux/plugins/tpm"
  "$home/dotfiles/packages/tmux/.config/tmux/plugins/tmux-resurrect"
  "$home/dotfiles/packages/tmux/.config/tmux/plugins/tmux-continuum"
  "$home/dotfiles/packages/tmux/.config/tmux/plugins/tmux-fzf"
)
# == == == == == == == == ==
# 共通関数(common functions)
# == == == == == == == == ==
get_git_repos() {
  # -path 除外式を組み立て
  local find_cmd=(find "$home")
  for path in "${excluded_paths[@]}"; do
    find_cmd+=(-path "$path" -prune -o)
  done

  # 検索条件：.git ディレクトリのみ
  find_cmd+=(-type d -name ".git" -exec dirname {} \;)

  # 実行
  # "${find_cmd[@]}" | sort -u
}
# 出力：.git ディレクトリの親ディレクトリだけを表示
# get_git_repos | sed 's|/\.git$||'
# get_git_repos | while read repo; do
#   echo "✅ found repo: $repo"
#   git -c "$repo" status --short
# done

# == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
# 変更内容の自動分類支援
# == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==

# 行数: 理想値:20~100行 警戒ライン: 400行超
# ファイル数: 理想値: 1~5ファイル 警戒ライン: 15ファイル超
# 意図の一貫性: 理想値: 1種類の変更のみ 理想値: 複数混在
# レビュー時間: 理想値: ~20分 理想値: 30分超

# todo: コミット前の変更量チェックと強制的な分割提案(check changes before committing and force split proposal)
# todo: 差分からのキーワード抽出
# todo: 変更量の多角的な測定
#
# 行数(number of rows)
## git diff --staged --numstat
# ファイル名(file name)
## git diff --staged --name-only
repo="${dotfiles}"
# 各ファイルパスからディレクトリ部分を切り取り、(remove the directory portion from each file path)
files_path=$(git -C "$repo" diff --staged --name-only)
# echo "$files_path"
num=$(git -C "$repo" diff --staged --numstat)
# 行数: 理想値:20~100行 警戒ライン: 400行超

for paths in "${files_path[@]}"; do
  # echo "Full path: $paths"
  path_array=("${(s:/:)paths}")
  for i in {1..${#path_array[@]}}; do
    echo "index $((i-1)): ${path_array[$i]}"
  done
done
# echo "$num"
# フルパスだけを表示
# トップレベルディレクトリ(ベースディレクトリ)だけを表示
# サブディレクトリ(アプリ名/モジュール名)だけを表示
# サブディレクトリ(アプリ名/モジュール名)だけを表示
# ファイル名だけを表示

# 各ファイルパスからディレクトリ部分を切り取り、(remove the directory portion from each file path)ファイル名だけを表示(display only the file name)
# echo "$files_path"
# 各リポジトリからコミットの行数(number of lines committed from each repository)
added=$(git -C "$repo" diff --staged --numstat | awk '{ added += $1 } end { print added }')
deleted=$(git -C "$repo" diff --staged --numstat | awk '{ deleted += $2 } end { print deleted }')
total=$((added + deleted))

# added
# echo "total added lines: $added"
# deleted
# echo "total deleted lines: $deleted"
# total
# echo "added + deleted = $total"

# ファイル数(number of fileお)
count=$(git -C "$repo" diff --staged --name-only | wc -l)
# echo "ステージされたファイル数: $count"

# todo: カテゴリの自動推測と提案
# todo: ユーザーへの確認
# todo: lazygitへの情報連携(間接的)





# == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
# wip/todoコミットの抑制
# == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==



# == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
# 変更内容の自動分類支援
# == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==




# == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
# コミットのリマインダー
# == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==









