# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  answer_choice_id :integer          not null
#  response_id      :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#


class Response < ApplicationRecord
    belongs_to :AnswerChoice,
        class_name: 'AnswerChoice',
        primary_key: :id,
        foreign_key: :answer_choice_id

    belongs_to :Respondent,
        class_name: 'User',
        primary_key: :id,
        foreign_key: :response_id
    
end
