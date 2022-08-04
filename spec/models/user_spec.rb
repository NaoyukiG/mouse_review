require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録ができる場合' do
      it 'nickname, email, password, password_confirmationが存在する場合、保存ができる' do
        
      end
    end

    context '新規登録ができない場合' do
      it 'nicknameが空の場合、保存ができない' do
      end

      it 'emailが空の場合、保存ができない' do
      end

      it 'emailに@が含まれていない場合、保存ができない' do
      end

      it 'emailが既に登録されている場合、保存ができない' do
      end

      it 'passwordが空の場合、保存ができない' do
      end

      it 'passwordとpassword_confirmationが一致しない場合、保存ができない' do
      end

      it 'passwordが5文字以下の場合、保存ができない' do
      end

      it 'passwordが256文字以上の場合、保存ができない' do
      end

      it 'passwordが全角英数の場合、保存ができない' do
      end

      it 'passwordが半角英字のみ場合、保存ができない' do
      end

      it 'passwordが半角数字のみ場合、保存ができない' do
      end
    end
  end
end
