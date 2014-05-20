class TwilioController < ApplicationController
  # Find the senior that has sent the text
  # senior = Senior.find_by(phone: params["From"])
  # # Get the question
  # question = params["Body"]
  # # Create the issue
  # issue = Issue.create(question: question)
  # # Associate senior with issue
  # senior.issues << issue
  def process_sms 
    # binding.pry
    # PROCESS NUMBER
    number  = params["From"][2..11]
    senior  = Senior.find_by(phone_number: number)
    content = params["Body"]
    issue   = Issue.create(content: content)
    senior.issues << issue
  end

end
