class Category < ActiveHash::Base
  # post_textのcategoryカラムのデータを設定。
  # dbに保存せず、上記のデータを取り出し可能。
  self.data = [
    { id: 1, name: 'ゲーム' }, { id: 2, name: '観光' }, { id: 3, name: 'キャンプ' },
    { id: 4, name: 'イベント' }, { id: 5, name: '勉強会' }, { id: 6, name: 'その他' },
  ]
end