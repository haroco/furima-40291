require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    it 'nickname、email、password、password_confirmation、family_name、first_name、family_name_kana、first_name_kana、birth_dateが存在すれば登録できる' do
    end
    it 'nicknameが空では登録できない' do
    end
    it 'emailが空では登録できない' do     
    end
    it 'passwordが空では登録できない' do  
    end
    it 'passwordとpassword_confirmationが不一致では登録できない' do 
    end
    it '重複したemailが存在する場合は登録できない' do
    end
    it 'emailは@を含まないと登録できない' do
    end
    it 'passwordが5文字以下では登録できない' do
    end
    it 'passwordが129文字以上では登録できない' do
    end
    it 'family_nameが空では登録できない' do
    end
    it 'first_nameが空では登録できない' do
    end
    it 'family_name_kanaが空では登録できない' do
    end
    it 'first_name_kanaが空では登録できない' do
    end
    it 'birth_dateが空では登録できない' do
    end
    it 'family_nameが全角（漢字・ひらがな・カタカナ）以外では登録できない' do
    end
    it 'first_nameが全角（カタカナ）以外では登録できない' do
    end
  end
end
