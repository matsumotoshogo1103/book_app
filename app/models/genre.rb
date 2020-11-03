class Genre < ActiveHash::Base
  # 新潮社参考
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '文学・評論' },
    { id: 3, name: 'ノンフィクション' },
    { id: 4, name: 'ビジネス・経済' },
    { id: 5, name: '歴史・地理' },
    { id: 6, name: '政治・社会' },
    { id: 7, name: '芸能・エンタメ' },
    { id: 8, name: 'アート・建築・デザイン' },
    { id: 9, name: '人文・思想・宗教' },
    { id: 10, name: '暮らし・健康・料理' },
    { id: 11, name: 'サイエンス・テクノロジー' },
    { id: 12, name: '趣味・実用' },
    { id: 13, name: '教育・自己啓発' },
    { id: 14, name: 'スポーツ・アウトドア' },
    { id: 15, name: '事典・年鑑・本・ことば' },
    { id: 16, name: '音楽' },
    { id: 17, name: '旅行・紀行' },
    { id: 18, name: '絵本・児童書' },
    { id: 19, name: 'コミックス' }
  ]
end
