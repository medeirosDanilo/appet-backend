class JsonWebToken
  HMAC_SECRET = ENV['SECRET_KEY_BASE']

  def self.encode(payload, exp = (24.hours.from_now.to_i * 1000))
    payload[:exp] = exp.to_i
    JWT.encode(payload, HMAC_SECRET)
  end

  def self.decode(token, validation = true)
    body = JWT.decode(token, HMAC_SECRET, validation)[0]
    HashWithIndifferentAccess.new body
  end
end
