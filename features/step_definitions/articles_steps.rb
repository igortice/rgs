Dado(/^que estou na página de "(.*?)"$/) do |arg1|
  visit articles_path

  expect(current_path).to eq "/#{arg1.downcase}"
end

Quando(/^clicar "(.*?)"$/) do |arg1|
  visit current_url.gsub('://', '://dhh:secret@') + '/new'

  visit articles_path

  click_link(arg1)
end

E(/^for redirecionado para página de "(.*?)"$/) do |arg1|
  has_content?('New Article')
end

E(/^preencher o formulário$/) do
  fill_in('Title', with: Faker::Lorem.sentence(2))
  fill_in('Text', with: Faker::Lorem.paragraph(2, true, 4))
end

E(/^clicar no botão "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Então(/^receberei a mensagem "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end
