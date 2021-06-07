class MaxFee < ActiveYaml::Base
  include ActiveHash::Enum
  set_root_path "config/divisions"
  set_filename "fee"
end