class BusinessManner < ActiveYaml::Base
  include ActiveHash::Enum
  set_root_path "config/divisions"
  set_filename "ability_level"
end