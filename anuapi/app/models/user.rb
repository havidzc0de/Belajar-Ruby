class User < ApplicationRecord

	validates :username, uniqueness: true , length: {in: 3..10}
	
#format: buat regex

#allow_nil: true untuk kalau update nggak usah pake password lagi
#numricality: { only_integer: true } agar input integer

	has_secure_password
	validates :password, presence: true, allow_nil: true


end

