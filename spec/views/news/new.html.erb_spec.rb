require 'rails_helper'

RSpec.describe "news/new", type: :view do
  before(:each) do
    assign(:news, News.new(
      :title => "MyString",
      :body => "MyText",
      :author => "MyString",
      :status => ""
    ))
  end

  it "renders new news form" do
    render

    assert_select "form[action=?][method=?]", news_index_path, "post" do

      assert_select "input#news_title[name=?]", "news[title]"

      assert_select "textarea#news_body[name=?]", "news[body]"

      assert_select "input#news_author[name=?]", "news[author]"

      assert_select "input#news_status[name=?]", "news[status]"
    end
  end
end
