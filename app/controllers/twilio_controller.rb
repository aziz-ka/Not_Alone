class TwilioController < ApplicationController

  def process_sms 
    # binding.pry
    # process the number of the sender
    number  = params["From"][2..11]
    # Find the senior that has sent the text
    senior  = Senior.find_by(phone_number: number)
    # Get the content of the message
    content = params["Body"]
    # Create new issue
    issue   = Issue.create(content: content)
    # Associate senior with new issue
    senior.issues << issue
  end

end
