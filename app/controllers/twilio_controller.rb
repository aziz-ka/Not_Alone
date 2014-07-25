class TwilioController < ApplicationController

  def process_sms 

    # process the number of the sender
    number = params["From"][2..11]

    # Get the content of the message
    content = params["Body"]

    if Senior.exists?(phone_number: number)

      # Create new issue
      issue = Issue.create(content: content)

      # Find the senior that has sent the text
      senior = Senior.find_by(phone_number: number)

      # Associate senior with new issue
      senior.issues << issue

    end

  end

end
