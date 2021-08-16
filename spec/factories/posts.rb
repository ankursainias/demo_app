FactoryBot.define do
  factory :post, class: Post do
    title { 'My Amazing Article' }
    body { 'Jon Snow' }
    category { 1 }
    contact_details { '7351525337' }
    email { ' testing@yopmail.com' }
  end

  factory :invalid_email_post, class: Post do
    title { 'My Amazing Article' }
    body { 'Jon Snow' }
    category { 1 }
    contact_details { '7351525337' }
    email { 'testing' }
  end

  factory :post_without_title, class: Post do
    body { 'Jon Snow' }
    category { 1 }
    contact_details { '7351525337' }
    email { ' testing@yopmail.com' }
  end

  factory :post_without_body, class: Post do
    title { 'My Amazing Article' }
    category { 1 }
    contact_details { '7351525337' }
    email { ' testing@yopmail.com' }
  end

  factory :post_without_email, class: Post do
    title { 'My Amazing Article' }
    body { 'Jon Snow' }
    category { 1 }
    contact_details { '7351525337' }
  end

  factory :post_without_category, class: Post do
    title { 'My Amazing Article' }
    body { 'Jon Snow' }
    contact_details { '7351525337' }
    email { ' testing@yopmail.com' }
  end
end
