module Kramdown
  module Converter
    class Html < Base
      # Overriding method
      def convert_img(el, _indent)
        "<img#{html_attributes(el.attr)}>"
      end
    end
  end
end