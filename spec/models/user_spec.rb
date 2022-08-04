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
      it 'nickname, email, password, password_confirmationが存在する場合、保存ができる' do
      end
    end
  end
end
