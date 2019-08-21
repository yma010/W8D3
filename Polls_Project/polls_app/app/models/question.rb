# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  text       :string           not null
#  poll_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Question < ApplicationRecord
    has_many :AnswerChoices,
        class_name: 'AnswerChoice',
        primary_key: :id,
        foreign_key: :question_id
    
    belongs_to :Poll,
        class_name: 'Poll',
        primary_key: :id,
        foreign_key: :poll_id

    
end
