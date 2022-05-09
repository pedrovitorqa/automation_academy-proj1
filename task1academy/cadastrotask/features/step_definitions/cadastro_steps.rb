Dado('que eu acesso a página de cadastro') do
    visit 'https://magento.nublue.co.uk/customer/account/create/'
end
  
Quando('cadastro com {string} e {string}') do |senha, senhaConfirme|
    @email = Faker::Internet.email(domain: 'viavarejo')

    find('#firstname').set Faker::Name.first_name
    find('#lastname').set  Faker::Name.last_name
    find('#email_address').set @email
    find('#password').set senha
    find('#password-confirmation').set senhaConfirme

    click_button 'Create an Account' 

end
  
Então('devo ser cadastrado com sucesso') do
    expect(page).to have_content @email
end
  
Então('devo ver a mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
end
  

  


