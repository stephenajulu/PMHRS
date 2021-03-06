class Staff < ActiveRecord::Base

    attr_encrypted :ssn, :key => Rails.application.secrets.encryption_key

    # Include default devise modules. Others available are:
    #  and :omniauthable, :confirmable, :lockable, :rememberable,
    devise :database_authenticatable, :registerable,
        :recoverable, :trackable, :validatable,
        :timeoutable
    belongs_to :record

    has_many :hospitals, through: :assingments

    has_and_belongs_to_many :hospitals
end
