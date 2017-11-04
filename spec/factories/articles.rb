# This will guess the Article class
FactoryBot.define do
  factory :article do
    title 'Article title'
    text 'Artcile text'
    # creating articls with comments factory
    # with many of comments
    factory :article_with_comments do
      # after article cteation
      after :create do |article, evaluator|
        # creating comments list (3)
        create_list :comment, 3, article: article
      end
    end

  end
end
