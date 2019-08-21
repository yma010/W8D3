# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  text        :string           not null
#  question_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


class AnswerChoice < ApplicationRecord
    belongs_to :Question,
        class_name: 'Question',
        primary_key: :id,
        foreign_key: :question_id

    has_many :responses,
        class_name: 'Response',
        primary_key: :id,
        foreign_key: :response_id
end
