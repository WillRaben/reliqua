class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, , :timeoutable and :omniauthable
  devise :database_authenticatable, :trackable, :validatable, :registerable, :lockable
  class Roles
		GUEST     =   0
    STANDARD  =  10
    ADMIN     =  50
    SUPER     = 100
    GOD_ROLE  = 999

    LABELS = { GUEST => "Invitado", STANDARD => "Usuario", ADMIN => "Supervisor", SUPER => "Super Admin" }

    def self.options_for_select
        LABELS.sort.collect { |arr| arr.reverse }
    end
	end
	 
	# ROLES
	# 
	# Tests self.role vs Roles::GUEST
	def guest?
	  role == Roles::GUEST
	end

	# Tests self.role vs Roles::STANDARD
	def standard?
	  role == Roles::STANDARD
	end

	# Tests self.role vs Roles::ADMIN
	def admin?
	  role == Roles::ADMIN
	end

	# Tests self.role vs Roles::SUPER
	def super?
	  role == Roles::SUPER
	end

	# Tests self.role vs Roles::GOD_ROLE
	def god?
	  role == Roles::GOD_ROLE
	end
end
