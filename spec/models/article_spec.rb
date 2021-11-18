require 'rails_helper'

RSpec.describe Article do
  it "can be created" do
    article = Article.create
    expect(article.title).to be_blank
    article.update title: "something"
    article.reload
    expect(article.title).to eq "something"
  end

  it "infer type from directory structure without infer_spec_type_from_file_location!" do
    expect(my_model_helper).to be true
  end
end
