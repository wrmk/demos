FactoryBot.define do

  # создаем фабрику для тестирования article
  factory :article do
    #свойства создаём лишь для того чтобы фабрика заработала
    title { "Article title" }
    text { "Article text" }
  

    # фабрика для создания статьи с комментариями
    factory :article_with_comments do
      #после создания статьи создаем комментарии 3 штуки
      after :create do |article, evaluator|
        create_list :comment, 3, article: article
      end
    end
  end 
end