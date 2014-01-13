class Fluent::EC2MetadataOutput < Fluent::BufferedOutput
  Fluent::Plugin.register_output('ec2-metadata', self)

  # config_param :hoge, :string, :default => 'hoge'

  def initialize
    super
    # require 'hogepos'
  end

  def configure(conf)
    super
    # @path = conf['path']
  end

  def start
    super
    # init
  end

  def shutdown
    super
    # destroy
  end

  def format(tag, time, record)
    [tag, time, record].to_msgpack
  end

  def write(chunk)
    records = []
    chunk.msgpack_each { |record|
      # records << record
    }
    # write records
  end
end
