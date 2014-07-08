# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :evidence do
    argument "This is a test argument that is better than all the rest"
    # mediatype "written"
    # party "user_id"
    # CR - had to refactor to get tests passing
    cases_user_id 1
  end
end
