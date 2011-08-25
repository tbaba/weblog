module ApplicationHelper
  include ActsAsTaggableOn::TagsHelper
end

class Time
  def tokyo
    self.strftime('%Y/%m/%d %H:%M:%S')
  end
end
