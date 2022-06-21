require 'logger'
require 'yaml'

def get_element(screen)
  dir = "#{Dir.pwd}/features/elements/#{screen}_screen.yml"
  element_map = YAML.load_file(dir)
  @map = element_map[screen]
  if File.exist?("#{Dir.pwd}/features/support/data/#{screen}.yml")
    dirData = "#{Dir.pwd}/features/support/data/#{screen}.yml"
    data_mappings = YAML.load_file(dirData)
    $data = data_mappings
  end
end

def replace_new_line_to_space(text)
  text.tr("\n", ' ')
end
