require 'rails_helper'

RSpec.describe Output type: :model do
  before do
    @output = FactoryBot.build(:output)
  end

  describe 'アウトプット投稿機能' do
    context 'アウトプット投稿できる時' do
      it 'title、descriptionが存在すれば投稿できる' do
        expect(@output).to be_valid
      end
    end

    context 'アウトプット投稿ができない時' do
      it 'titleが存在しなければ投稿できない' do
        @output.title = ''
        @output.vallid?
        expect(@output.errors.full_messages).to include("")
      end

      it 'descriptionが存在しなければ投稿できない' do
        @output.description = ''
        @output.vallid?
        expect(@output.errors.full_messages).to include("")
      end

      it 'userが紐付いていないと投稿できない' do
        @output.user = nil
        @output.valid?
        expect(@output.errors.full_messages).to include('User must exist')
      end
    end

  end
end