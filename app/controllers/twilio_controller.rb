class TwilioControllehr < ApplicationController
  def process_sms
    # Find the senior that has sent the text
    senior = Senior.find_by(phone: params["From"])
    # Get the question 
    question = params["Body"]
    # Create the issue 
    issue = Issue.create(question: question)
    # Associate senior with issue 
    senior.issues << issue

  end
end


# Started GET "/twilio?ToCountry=US&ToState=NJ&SmsMessageSid=SMc3bad0ce844237352324f43d0e8f7b95&NumMedia=0&ToCity=NEW+BRUNSWICK&FromZip=01930&SmsSid=SMc3bad0ce844237352324f43d0e8f7b95&FromState=MA&SmsStatus=received&FromCity=BILLERICA&Body=what+is+the+good+word&FromCountry=US&To=%2B17329936801&ToZip=08816&MessageSid=SMc3bad0ce844237352324f43d0e8f7b95&AccountSid=AC877d12a6bed8d852b0e3e70ff65cf3e7&From=%2B19788216511&ApiVersion=2010-04-01" for 127.0.0.1 at 2014-05-16 16:25:08 -0400
# Started GET "/twilio?ToCountry=US&ToState=NJ&SmsMessageSid=SMc3bad0ce844237352324f43d0e8f7b95&NumMedia=0&ToCity=NEW+BRUNSWICK&FromZip=01930&SmsSid=SMc3bad0ce844237352324f43d0e8f7b95&FromState=MA&SmsStatus=received&FromCity=BILLERICA&Body=what+is+the+good+word&FromCountry=US&To=%2B17329936801&ToZip=08816&MessageSid=SMc3bad0ce844237352324f43d0e8f7b95&AccountSid=AC877d12a6bed8d852b0e3e70ff65cf3e7&From=%2B19788216511&ApiVersion=2010-04-01" for 127.0.0.1 at 2014-05-16 16:25:08 -0400
# Processing by TwilioController#process_sms as */*
# Processing by TwilioController#process_sms as */*
#   Parameters: {"ToCountry"=>"US", "ToState"=>"NJ", "SmsMessageSid"=>"SMc3bad0ce844237352324f43d0e8f7b95", "NumMedia"=>"0", "ToCity"=>"NEW BRUNSWICK", "FromZip"=>"01930", "SmsSid"=>"SMc3bad0ce844237352324f43d0e8f7b95", "FromState"=>"MA", "SmsStatus"=>"received", "FromCity"=>"BILLERICA", "Body"=>"what is the good word", "FromCountry"=>"US", "To"=>"+17329936801", "ToZip"=>"08816", "MessageSid"=>"SMc3bad0ce844237352324f43d0e8f7b95", "AccountSid"=>"AC877d12a6bed8d852b0e3e70ff65cf3e7", "From"=>"+19788216511", "ApiVersion"=>"2010-04-01"}
#   Parameters: {"ToCountry"=>"US", "ToState"=>"NJ", "SmsMessageSid"=>"SMc3bad0ce844237352324f43d0e8f7b95", "NumMedia"=>"0", "ToCity"=>"NEW BRUNSWICK", "FromZip"=>"01930", "SmsSid"=>"SMc3bad0ce844237352324f43d0e8f7b95", "FromState"=>"MA", "SmsStatus"=>"received", "FromCity"=>"BILLERICA", "Body"=>"what is the good word", "FromCountry"=>"US", "To"=>"+17329936801", "ToZip"=>"08816", "MessageSid"=>"SMc3bad0ce844237352324f43d0e8f7b95", "AccountSid"=>"AC877d12a6bed8d852b0e3e70ff65cf3e7", "From"=>"+19788216511", "ApiVersion"=>"2010-04-01"}
# ap gem not found.  Try typing 'gem install awesome_print' to get super-fancy output.



# From: /Users/azizka/code/wdi/projects/not_alone/app/controllers/twilio_controller.rb @ line 3 TwilioController#process_sms:

#     2: def process_sms
#  => 3:   binding.pry
#     4: end

# [1] pry(#<TwilioController>)> params
# => {"ToCountry"=>"US",
#  "ToState"=>"NJ",
#  "SmsMessageSid"=>"SMc3bad0ce844237352324f43d0e8f7b95",
#  "NumMedia"=>"0",
#  "ToCity"=>"NEW BRUNSWICK",
#  "FromZip"=>"01930",
#  "SmsSid"=>"SMc3bad0ce844237352324f43d0e8f7b95",
#  "FromState"=>"MA",
#  "SmsStatus"=>"received",
#  "FromCity"=>"BILLERICA",
#  "Body"=>"what is the good word",
#  "FromCountry"=>"US",
#  "To"=>"+17329936801",
#  "ToZip"=>"08816",
#  "MessageSid"=>"SMc3bad0ce844237352324f43d0e8f7b95",
#  "AccountSid"=>"AC877d12a6bed8d852b0e3e70ff65cf3e7",
#  "From"=>"+19788216511",
#  "ApiVersion"=>"2010-04-01",
#  "action"=>"process_sms",
#  "controller"=>"twilio"}
# [2] pry(#<TwilioController>)> Senior.find_by(number: params["From"].gsub("+)
