require 'rails_helper'

RSpec.describe Article do
  it "can be created" do
    article = Article.create
    expect(article.title).to be_blank
    article.update title: "something"
    article.reload
    expect(article.title).to eq "something"
  end
end
