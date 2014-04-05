class AgronegocioPage

  URLS = { :production => ENV["URL_APP"]+"agronegocio" }

  def initialize(browser)
    @browser = browser
  end

  def noticias
    noticia_section.ul.lis
  end

  def noticia_section
    @browser.element(:tag_name => 'section', :class => 'noticias')
  end

  def method_missing(sym, *args, &block)
    @browser.send sym, *args, &block
  end

  def visit
    @browser.goto URLS[:production]
  end

end
