require 'mail'
require 'io/console'


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



		Mail.deliver do



wrong2 = "Please enter yes or no: "
print "Do you want to send it to multiple people? yes/no: "

 multi = gets.strip

     if multi == 'yes' || multi == 'YES'
          puts "ATTENTION ! Make sure the text file is inside mailer folder"
          puts "ATTENTION ! Make sure that each email within the text file
          is seprate with a coma or else it wont be able to read"

         print "Enter File Name: "
           to File.read(gets.chomp)
   

          from email

		  print "Enter Subject: "
		  subject gets  
 
   		 puts "##################### PREVIEW #######################################"

		 puts "\t\tFrom: > #{email}"
		  
		 puts "\t\tTo: > #{to}"
		  
		 puts "\t\tSubject: > #{subject}"
		  
		 puts "#####################################################################"
		  
		 puts "\n"

		 puts "ATTENTION ! Make sure the text file is inside mailer folder"
		 print "Enter File Name: "
		 body File.read(gets.chomp)




     elsif multi == 'no' || multi == 'NO'

			print"Enter Recipient Email: "
			to gets
			   
			from email

			print "Enter Subject: "
			subject gets  
 
 
			  puts "##################### PREVIEW #######################################"
			  puts "\t\tFrom: > #{email}"
			  
			  puts "\t\tTo: > #{to}"
			  
			  puts "\t\tSubject: > #{subject}"
			  
			  puts "#####################################################################"
				  
				puts "\n"
				puts "ATTENTION ! Make sure the text file is inside mailer folder"
				  
				  print "Enter File Name: "
				     body File.read(gets.chomp)
				  
				  puts "EMAIL HAS BEEN SENT [ ✔ ]"
				  
				  puts "Press any key to return back to menu"
				  gets
				  gets #waits for any user input
				 
                     system "ruby Mailer.rb" ###calls the main ruby script


           else 

                puts "Wrong input"
                print wrong2

     end

 end
