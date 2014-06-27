class TwilioController < ApplicationController

  def process_sms
    number  = params["From"][2..11]
    senior  = Senior.find_by(phone_number: number)
    content = params["Body"]
    issue   = Issue.create(content: content)
    senior.issues << issue
  end

end
