Given(/^Eu como visitante na pagina de agronegocio$/) do
  @agronegocio_page = AgronegocioPage.new(@browser)
  @agronegocio_page.visit
end

When(/^Olho na sessao de noticias$/) do
  @agronegocio_page.noticia_section.present?
end

Then(/^Preciso ver (\d+) noticias recentes$/) do |many|
  noticias = @agronegocio_page.noticias
  noticias.size == many
end
