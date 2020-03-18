module GraphqlDocgen
  class Config
    DEFAULT_CONFIGS = {
    }

    DEFAULT_CONFIGS.each do |config_name, default_value|
      self.cattr_accessor config_name, instance_accessor: false
      self.send(config_name.to_s + '=', default_value)
    end
  end
end