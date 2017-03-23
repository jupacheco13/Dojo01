Dado(/^que esteja na home do Google$/) do
  visit "https://www.google.com.br"
end

Quando(/^pesquisar o site da Uol$/) do
  fill_in "q", :with => "Uol"
end

Quando(/^selecionar o site da Uol$/) do
  click_link('UOL - O melhor conteúdo')
end

Quando(/^confirmar que está no site da Uol$/) do
  assert_text('CONTA UOL')
end

Quando(/^selecionar o menu Economia$/) do
  click_link('Economia')
end

Então(/^Pegar o valor e comparar se é menor que (\d+)\.(\d+) encerrar o teste se não falhar o teste$/) do |arg1, arg2|
  valor_a_comparar = arg1 + "." + arg2
  puts valor_a_comparar
  dolar = page.find(:xpath,".//*[@id='cambio']/ul/li[1]/p[2]")
  puts dolar.text 
  valor_dolar = dolar.text.split(/ /).last
  puts valor_dolar
  valor_dolar = valor_dolar.gsub(",",".")
  puts valor_dolar	 
  case 
  when valor_dolar < valor_a_comparar
  else fail puts "Dolar maior que " + valor_a_comparar  
  	
  end
end
