class Pagina_Inicial_Fleury < SitePrism::Page
    set_url 'https://www.fleury.com.br/'
    # Estou mapeando pelo site prism pelo class pois não á Id
    elements :btn_unidades, '.boxcomponentstyle__Item-sc-43ermp-1.hhcXYp #button-title-desktop-header'
    element :select_facilidades, '.checkbox-selectcomponentstyle__CheckboxSelectPlaceholderStyled-sc-7ktrvg-2.jgzIlF'
    elements :option_acessibilidade, '.checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc-1mdajsk-0.DRDNI'
    elements :btn_ver_detalhes, '.buttoncomponentstyle__ButtonContentStyled-sc-11us3l0-3.bTUJDG' 
    element  :confirmacao_nome, '.typographycomponentstyle__H1-sc-1oox73n-1.lomAMa'       
    
    # Segue os metodos com suas respctivas ações 
    def unidades
        btn_unidades[3].click
    end

    def facilidades
        select_facilidades.click
    end

    def acessibilidade
        # Função para aguardar o elemento ficar visivel 
        wait_until_option_acessibilidade_visible
        option_acessibilidade[0].click
    end

    def ver_detalhes
        btn_ver_detalhes[5].click
    end

    def detalhes 
        # Logica para aguardar nova url
        100.times do
            break if page.current_path.eql?('/unidades/vila-mariana')
        end
        confirmacao_nome.text
    end
end