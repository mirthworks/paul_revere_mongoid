class Announcement
  include Mongoid::Document
  include Mongoid::Timestamps

  field :body

  def self.current
    first(sort: [[ :created_at, :desc ]]) || new
  end

  def exists?
    !new_record?
  end
end
