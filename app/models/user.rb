class User < ApplicationRecord
  def self.find_or_create_from_auth_hash(auth)
    Rails.logger.debug auth.inspect
    provider = auth[:provider]
    uid = auth[:uid]
    self.find_or_create_by(provider: provider, uid: uid)
  end
end
