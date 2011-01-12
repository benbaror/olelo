description 'Emacs org-mode filter'
require 'org-ruby'

Filter.create :orgmode do |context, content|
  Orgmode::Parser.new(content.gsub("\\\\","\\\\\\\\\\\\\\\\")).to_html
end
