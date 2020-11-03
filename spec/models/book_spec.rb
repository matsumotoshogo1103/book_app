require 'rails_helper'
describe Book do
  before do
    @book = FactoryBot.build(:book)
  end

  context '本の投稿がうまくいく時' do
    it '正しく入力されていれば投稿できる' do
      expect(@book).to be_valid
    end
  end

  context '本の投稿がうまくいかない時' do
    it 'タイトルが必須であること' do
      @book.title = nil
      @book.valid?
      expect(@book.errors.full_messages).to include "Title can't be blank"
    end

    it 'ジャンルの情報が必須であること' do
      @book.genre_id = 1
      @book.valid?
      expect(@book.errors.full_messages).to include 'Genre must be other than 1'
    end

    it '著者の情報が必須であること' do
      @book.autor = nil
      @book.valid?
      expect(@book.errors.full_messages).to include "Autor can't be blank"
    end

    it '値段の情報が必須であること' do
      @book.price = nil
      @book.valid?
      expect(@book.errors.full_messages).to include "Price can't be blank"
    end

    it '値段は半角数字のみ保存可能であること' do
      @book.price = '１２３０'
      @book.valid?
      expect(@book.errors.full_messages).to include 'Price is not a number'
    end

    it '本の感想の情報が必須であること' do
      @book.text = nil
      @book.valid?
      expect(@book.errors.full_messages).to include "Text can't be blank"
    end
  end
end
