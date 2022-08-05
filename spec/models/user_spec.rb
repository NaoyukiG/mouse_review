require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録ができる場合' do
      it 'nickname, email, password, password_confirmation、hand_sizeが存在する場合、保存ができる' do
        expect(@user).to be_valid
      end

      it 'nickname, email, password, password_confirmationが存在し、hand_sizeが空の場合、保存ができる' do
        @user.hand_size = ''
        expect(@user).to be_valid
      end
    end

    context '新規登録ができない場合' do
      it 'nicknameが空の場合、保存ができない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end

      it 'emailが空の場合、保存ができない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it 'emailに@が含まれていない場合、保存ができない' do
        @user.email = 'testmail'
        @user.valid?
        expect(@user.errors.full_messages).to include("Email is invalid")
      end

      it 'emailが既に登録されている場合、保存ができない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end

      it 'passwordが空の場合、保存ができない' do
        @user.password = ''
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it 'passwordとpassword_confirmationが一致しない場合、保存ができない' do
        @user.password = 'test123'
        @user.password_confirmation = 'test124'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it 'passwordが5文字以下の場合、保存ができない' do
        @user.password = 'test1'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end

      it 'passwordが129文字以上の場合、保存ができない' do
        @user.password = Faker::Internet.password(min_length: 129)
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too long (maximum is 128 characters)")
      end

      it 'passwordが全角文字が含まれている場合、保存ができない' do
        @user.password = 'test１２３'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid. Input half-width characters.")
      end

      it 'passwordが半角英字のみ場合、保存ができない' do
        @user.password = 'testab'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid. Input half-width characters.")
      end

      it 'passwordが半角数字のみ場合、保存ができない' do
        @user.password = '123456'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid. Input half-width characters.")
      end

      it 'adminの値がtrueの場合、保存ができない' do
        @user.admin = true
        @user.valid?
        expect(@user.errors.full_messages).to include("Admin is invalid value entered")
      end
    end
  end
end
