module Fontawesome
  module Rails
    module Helpers
      module Helper
        FONT_TYPES = {
          solid: 'fas',
          regular: 'far',
          light: 'fal',
          duotone: 'fad',
          brands: 'fab'
        }.freeze
      
        def fa_icon(name, options = {})
          text = options[:text] || ''
          type = options[:type] || :regular
          ratio = options[:ratio] || '1x'
          fa_class = options[:class] || ''
          fa_style = options[:style] || ''
          text_class = options[:text_class] || ''
          text_style = options[:text_style] || ''
          spacing = options[:spacing] || '.2rem'
          capture do
            tag.span class: fa_class, style: fa_style do
              concat tag.i(nil, class: "#{FONT_TYPES[type]} fa-#{name} fa-#{ratio}")
              concat tag.span('', style: "display: inline-block; width: #{spacing};")
              concat tag.span(text, class: text_class, style: text_style) if text.present?
            end
          end
        end
      
        def fas_icon(name, options = {})
          options.reverse_merge! type: :solid
          fa_icon(name, options)
        end
      
        def far_icon(name, options = {})
          options.reverse_merge! type: :regular
          fa_icon(name, options)
        end
      
        def fal_icon(name, options = {})
          options.reverse_merge! type: :light
          fa_icon(name, options)
        end
      
        def fad_icon(name, options = {})
          options.reverse_merge! type: :duotone
          fa_icon(name, options)
        end
      
        def fab_icon(name, options = {})
          options.reverse_merge! type: :brands
          fa_icon(name, options)
        end
      end
    end
  end
end