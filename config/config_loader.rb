class ConfigLoader
  def initialize(root = nil, path_from_root)
    @filename = root.nil? ? path_from_root : File.join(root, path_from_root)
  end

  def to_hash(with_env=true)
    return Hash.new("") unless File.exists?(@filename)
    YAML::load(ERB.new(config_file.read).result(binding))
  end

  private
  def config_file
    File.open(@filename)
  end
end

ENV_CONFIG = ConfigLoader.new("#{Rails.root}/config/env_config.yml").to_hash
