Dado(/^que estou na página de "(.*?)"$/) do |arg1|
  visit articles_path

  expect(current_path).to eq "/#{arg1.downcase}"
end

Quando(/^clicar "(.*?)"$/) do |arg1|
  visit current_url.gsub('://', '://dhh:secret@') + '/new'

  visit articles_path

  click_link('New Article')
end

E(/^for redirecionado para página de "(.*?)"$/) do |arg1|
  has_content?('New Article')
end
