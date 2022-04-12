

class EquiposPage
    include Capybara::DSL
    
  def criar_anuncio(equipo)
    # checkpoint com timeout explícito
    page.has_css?("#equipoForm")

    upload(equipo[:thumb]) if equipo[:thumb].length > 0

    find('input[placeholder$=equipamento]').set equipo[:nome]
    find('#category').find('option', text: equipo[:categoria]).select_option
    find('#price').set equipo[:preco]
  
    click_button 'Cadastrar'
  end

  def upload(file_name)
    thumb = Dir.pwd + '/features/support/fixtures/images/' + file_name
    find('#thumbnail input[type=file]', visible: false).set thumb
  end
end 