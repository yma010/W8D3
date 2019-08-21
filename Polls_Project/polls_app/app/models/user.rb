# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class User < ApplicationRecord    
    has_many :Authored_Polls,
        class_name: 'Poll',
        primary_key: :id,
        foreign_key: :author_id

    has_many :Responses,
        class_name: 'Response',
        primary_key: :id,
        foreign_key: :response

end
