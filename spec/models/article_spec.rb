require 'rails_helper'

describe Article do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "assotiations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      article = create(:article, title: 'Kiki')
      expect(article.subject).to eq 'Kiki'
    end
  end

  describe "#last_comment" do
    it "returns the last comment" do
    end
  end
end