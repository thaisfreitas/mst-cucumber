# encoding: utf-8
module Watir
  module Container
    alias_method :link,  :a
    alias_method :links, :as
  end # Container


  class Anchor < HTMLElement

    #
    # @todo temporarily add href attribute
    #
    # @see https://www.w3.org/Bugs/Public/show_bug.cgi?id=23192
    #
    attributes :string => [:href]

  end # Anchor
end # Watir
