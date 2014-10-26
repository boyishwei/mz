class Message
  include Mongoid::Document

  field :phone, type: Integer
  field :email, type: String
  field :message, type: String
  field :created_at, type: Time
  field :updated_at, type: Time

  validate :phone_mail_must_at_least_have_one 

  validates :phone,  length: {is: 11, message: "手机号码长度不正确,检查下是否少输或者多输入了!"}, if: "phone.present?" 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX,message:"Email地址不正确，请再次确认!" }, if: "email.present?" 
  validates :message, presence: {message: "Are you kidding me? 跟我们留言，至少得跟我们说点什么吧!"} 

  def phone_mail_must_at_least_have_one
    errors[:base] << "手机号码或者Email地址，至少得留一个给我们吧" if !phone.present? && !email.present? 
    #phone.present? || email.present? ? true : false  
  end
end
