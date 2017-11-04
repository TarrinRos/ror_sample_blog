require 'rails_helper'

describe Article do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end
  describe 'assosiations' do
    it { should have_many :comments }
  end
  describe '#subject' do
    it 'returns the article title' do
      # Creating object 'article' by tricky method
      article = create(:article, title: 'Lorem ipsum')

      # assert, проверка
      expect(article.subject).to eq 'Lorem ipsum'
    end
  end
end
