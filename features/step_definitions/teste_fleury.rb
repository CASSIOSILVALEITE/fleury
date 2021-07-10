Dado("que acesso o site fleury") do
    @home = Pagina_Inicial_Fleury.new
    @home.load
end

Quando("acesso a pagina de unidades e clico botão de facilidades") do 
    @home.unidades
    @home.facilidades
    @home.acessibilidade
end

Então("devo selecionar a primeira unidade e validar o nome") do 
    @home.ver_detalhes
    # validação para ver nova pagina
    expect(@home.detalhes).to eql 'Vila Mariana'
end