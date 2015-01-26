module Jekyll
  class StarCountTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      @pageid = context.environments.first["page"]["id"]
      "#{@pageid} 5"
    end
  end
end

Liquid::Template.register_tag('star_count', Jekyll::StarCountTag)
