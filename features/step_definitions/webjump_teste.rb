Dado("que acesse a página inicial da Webjump") do
    @home = Home.new
    @home.load
end
  
Quando("clicar nos botoes One, Two e Four") do
    @home.botao1.click
    @home.botao2.click
    @home.botao4.click
end
  
Então("os botoes não devem mais estar visiveis na tela") do
    binding.pry
    aggregate_failures do
        expect(page).to have_no_css('button#btn_one')
        expect(page).to have_no_css('button#btn_two')
        expect(page).to have_no_css('button#btn_link')
    end
end

Quando("clicar nos botoes One, Two e Four dentro do Iframe") do
    @home.clicaBotoesIframe
end

Então("os botoes não devem mais estar visiveis no iframe") do
    @home.validaIframe
end

Quando("preencher o campo nome") do
    @home.primeiroNome.set "Teste"
end
  
Quando("clicar no botao One") do
    @home.botao1.click
end
  
Quando("clicar na opcao tres") do
    @home.opcao3.click
end
  
Quando("selecionar a opcao dois no checkbox") do
    @home.comboBox.select("ExampleTwo")
    binding.pry

end
  
  Entao("a imagem do selenium deve estar visivel") do
    pending # Write code here that turns the phrase above into concrete actions
  end