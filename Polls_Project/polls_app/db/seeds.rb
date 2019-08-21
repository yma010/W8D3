# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p = Poll.create!(title: 'Cheeseburger', author_id: 1)

q = Question.create!(text: 'Which restaurant makes the best cheeseburger?', poll_id: p.id)

a1 = AnswerChoice.create!(text:'InNOut', question_id: q.id)
a2 = AnswerChoice.create!(text: 'ShakeShack', question_id: q.id)

r1 = Response.create!(response_id: 1 , answer_choice_id: a1.id)
r2 = Response.create!(response_id: 3 , answer_choice_id: a2.id)