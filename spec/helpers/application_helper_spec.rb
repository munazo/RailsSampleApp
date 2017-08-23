# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#page_title' do
    context '@titleが指定されていない場合' do
      it 'デフォルトタイトルが返されること' do
        stub_const('ApplicationHelper::APP_NAME', 'Rails Sample App')
        expect(helper.page_title).to eq('Rails Sample App')
      end
    end

    context '@titleが指定されている場合' do
      before do
        assign(:title, 'hoge')
      end

      it 'ページタイトルに@titleが入った文字列が返されること' do
        stub_const('ApplicationHelper::APP_NAME', 'Rails Sample App')
        expect(helper.page_title).to eq('Rails Sample App | hoge')
      end
    end
  end

  describe '#bootstrap_class_for' do
    it 'deviseのflashのキーを引数として、bootstrap用のクラスの文字列を返すこと' do
      expect(helper.bootstrap_class_for(:success)).to eq('success')
      expect(helper.bootstrap_class_for(:error)).to eq('danger')
      expect(helper.bootstrap_class_for(:alert)).to eq('warning')
      expect(helper.bootstrap_class_for(:notice)).to eq('info')
      expect(helper.bootstrap_class_for(:hoge)).to eq('hoge')
    end
  end
end
