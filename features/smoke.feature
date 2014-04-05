# language: pt

Funcionalidade: Smoke Test

  Cenário: Agronegocio
    Dado Eu como visitante na pagina de agronegocio
    Quando Olho na sessao de noticias 
    Então Preciso ver 3 noticias recentes
