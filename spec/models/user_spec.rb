require 'rails_helper'
describe User do
  before do
    @user = FactoryBot.build(:user)
  end

  context '新規登録がうまくいく時' do
    it '正しく入力されていれば登録できる' do
      expect(@user).to be_valid
    end
  end

  context '新規登録がうまくいかない時' do
    it 'ニックネームが必須であること' do
      @user.nickname = nil
      @user.valid?
      expect(@user.errors.full_messages).to include "ニックネームを入力してください"
    end

    it 'メールアドレスが必須であること' do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include "Eメールを入力してください"
    end

    it 'メールアドレスが一意性であること' do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include 'Eメールはすでに存在します'
    end

    it 'メールアドレスは、@を含む必要があること' do
      @user.email = 'bookcom'
      @user.valid?
      expect(@user.errors.full_messages).to include 'Eメールは不正な値です'
    end

    it 'パスワードが必須であること' do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include "パスワードを入力してください"
    end

    it 'パスワードは、6文字以上での入力が必須であること' do
      @user.password = '12345'
      @user.valid?
      expect(@user.errors.full_messages).to include 'パスワードは6文字以上で入力してください'
    end

    it 'パスワードは、半角英数字混合での入力が必須であること' do
      @user.password = '123456'
      @user.password_confirmation = '123456'
      @user.valid?
      expect(@user.errors.full_messages).to include 'パスワードは不正な値です'
    end

    it 'パスワードとパスワード（確認用）、値の一致が必須であること' do
      @user.password_confirmation = 'abc123'
      @user.valid?
      expect(@user.errors.full_messages).to include "パスワード（確認用）とパスワードの入力が一致しません"
    end

    it '年齢が必須であること' do
      @user.age = nil
      @user.valid?
      expect(@user.errors.full_messages).to include "年齢を入力してください"
    end

    it '年齢は半角数字での入力が必須であること' do
      @user.age = '３４'
      @user.valid?
      expect(@user.errors.full_messages).to include '年齢は数値で入力してください'
    end

    it '職業が必須であること' do
      @user.job_id = 1
      @user.valid?
      expect(@user.errors.full_messages).to include '職種は1以外の値にしてください'
    end

    it '性別が必須であること' do
      @user.gender_id = 1
      @user.valid?
      expect(@user.errors.full_messages).to include '性別は1以外の値にしてください'
    end

    it '自己紹介文が必須であること' do
      @user.introduce = nil
      @user.valid?
      expect(@user.errors.full_messages).to include "自己紹介を入力してください"
    end

    it "ユーザー画像が必須であること" do
      @user.image = nil
      @user.valid?
      expect(@user.errors.full_messages).to include "プロフィール画像を入力してください"
    end
  end
end
