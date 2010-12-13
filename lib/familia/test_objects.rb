require 'storable'

class Bone < Storable
  include Familia
  field :token
  field :name
  def index
    [token, name].join(':')
  end
  list   :owners
  set    :tags
  zset   :metrics
  hash   :props
  string :msg, :default => "GREAT!"
end
