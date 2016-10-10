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



	puts "ATTENTION ! Make sure the text file is inside mailer folder".red
	puts "ATTENTION ! Make sure that each email within the text file
	is seprate with a coma or else it wont be able to read".red

	print "Enter File Name: "
	to File.read(gets.chomp)
	   
	from email

	print "Enter Subject: "
	subject gets  
	  
	print "Do you want to send any attachments? yes/no: " #sending attaching prompt
	choice = gets.strip

         if choice == 'yes' || choice == 'YES'
  
              Dir.chdir"/"do #changing working directory to root for easy access to file
              system "pwd" #prnting working directory for user to know where he/she is
 
              puts "ATTENTION ! Default working directory is set to root (/) as seen above"

              print 'Enter File Path: '
                 add_file gets.strip

end
 
     		  puts "##################### PREVIEW #######################################"
			  puts "\t\tFrom: > #{email}"
			  
			  puts "\t\tTo: > #{to}"
			  
			  puts "\t\tSubject: > #{subject}"
			  
			  puts "\t\tAttachment Uploaded!"
  
			  puts "#####################################################################"
			  
			puts "\n"
			  puts "[!] IMPORTANT type 'SND' in full uppercase then PRESS ENTER to send the Email"
			 
			  puts"Enter Your Message Below"
			 
			  print " Message > "
			 
			      the_body = ""
			 
			        loop do
				      line = gets
				      break if line.include? "SND"
			   
			         the_body << line
			        end
			  
				    (body the_body)

         elsif choice == 'no' || choice == 'NO'

			  puts "##################### PREVIEW #######################################"
			  puts "\t\tFrom: > #{email}"
			  
			  puts "\t\tTo: > #{to}"
			  
			  puts "\t\tSubject: > #{subject}"
			  
			  puts "#####################################################################"
			  
			puts "\n"

			  puts "[!] IMPORTANT type 'SND' in full uppercase then PRESS ENTER to send the Email"
			  
			  puts"Enter Your Message Below"
			  print " Message > "
			 
			       the_body = ""
			 
			        loop do
				      line = gets
				    break if line.include? "SND"
			    
			          the_body << line
			        end
			  
				      body the_body
         end
		
			 
	 end
			  
			  puts "EMAIL HAS BEEN SENT [ ✔ ]"
			  
			  puts "Press any key to return back to menu"
			  
			  gets #waits for any user input
		         system "ruby Mailer.rb" ###calls the main ruby script

