

require 'colorize'

system"clear"
puts"\n"

system"sudo service tor start"
system"sudo ifconfig eth1 down"
system"sudo ifconfig eth0 down"
system"sudo ifconfig wlan0 down"
system"sudo macchanger -r eth1"
system"sudo macchanger -r eth0"
system"sudo macchanger -r wlan0"
system"sudo ifconfig eth1 up"
system"sudo ifconfig eth0 up"
system"sudo ifconfig wlan0 up"

puts"[+] Tor service running"
puts"[+] Mac address changed"
             
print "\t███╗   ███╗ █████╗ ██╗██╗     ███████╗██████╗     
\t████╗ ████║██╔══██╗██║██║     ██╔════╝██╔══██╗    
\t██╔████╔██║███████║██║██║     █████╗  ██████╔╝    
\t██║╚██╔╝██║██╔══██║██║██║     ██╔══╝  ██╔══██╗    
\t██║ ╚═╝ ██║██║  ██║██║███████╗███████╗██║  ██║    
\t╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚══════╝╚══════╝╚═╝  ╚═╝     
                                                       "


puts"\n"

     print "[!]IMPORTANT!".red
     print "You will have to enable less secure apps for your gmail address and 
     yahoo if you will use it.By default its off for security reasons you will 
     have to turn so that it can send and email through smtp.".yellow
 
     puts"\n"
 
          print "1:FOR GMAIL GO =" 
          print "https://www.google.com/settings/security/lesssecureapps".red  

          puts"\n"

          print "1:FOR YAHOO GO =" 
          print "https://login.yahoo.com/account/security?.intl=us&.lang=en-US&.scrumb=mAgGmUQY/Ft&.scrumb2=C463nV8mRHS".red  

		  puts"\n"
     	  puts"\n"

	     	puts"=========================================================".yellow
			print"[!] NOTE".red
			print" Allowing this may leave your account                   
			vulnerable so i highly recommend that you create 
			a fake account to use this tool and not your real account."
			puts"\n"
			puts"=========================================================".yellow
			puts"\n"


            puts"***I AM NOT RESPONSIBLE FOR YOUR ACTION! USE AT YOUR OWN RISK***".red

            

             
                             

			puts"\n"
			puts "Mailer options".yellow
			puts "1: Send Single Mail"
			puts "2: Send Email With Attachment"
			puts "3: Send Emails To Multiple People At A Time (Attachement Optional)"
			puts "4: Send Email From Pre-Defined Text File (Multi Sender Optional)"
			puts "5: Flood Someone's Email With Messages"
			puts "6: Flood Multiple Emails At The Same Time"
			again ="Enter Choice: "
			print "Enter Choice: "

			while choice = Integer(gets)
			  case choice
			########################################################################
			   when 1
				 again2 = "Please enter correct name: "
				 print "Do you want to send email using gmail or yahoo? : "

					while mail1=gets.strip

					   if mail1=='gmail' || mail1 == 'GMAIL'

							system "ruby Singlemail/gmail.rb"# calling script with the singlemail folder


					   elsif mail1=='yahoo' || mail1 == 'YAHOO'

							system "ruby Singlemail/yahoo.rb"# calling script with the singlemail folder


					   else

							puts "Wrong input".red
							print again2

					   end
					end
			############################### choice 1 end #########################################
				when 2
				   again3 = "Please enter correct name: "
				   print "Do you want to send email using gmail or yahoo? : "

					   while mail1=gets.strip

						  if mail1=='gmail' || mail1 == 'GMAIL'
							 system "ruby Attachment/gmail.rb"# calling script with the singlemail folder

						  elsif mail1=='yahoo' || mail1 == 'YAHOO'
							 system "ruby Attachment/yahoo.rb"# calling script with the singlemail folder


						  else
							 puts "Wrong input".red
							 print again3

						  end
					   end

			##################################### choice 2 end ###############################

			   when 3
				   again4 = "Please enter correct name: "
				   print "Do you want to send email using gmail or yahoo? : "

				  while mail1=gets.strip
					  if mail1=='gmail' || mail1 == 'GMAIL'
						 
						 system "ruby Multimailer/gmail.rb"# calling script with the singlemail folder


					  elsif mail1=='yahoo' || mail1 == 'YAHOO'
					   
						 system "ruby Multimailer/yahoo.rb"# calling script with the singlemail folder


					  else
						 puts "Wrong input".red
						 print again4

					  end
				  end

			########################################## choice 3 end ################################

			   when 4
				   again5 = "Please enter correct name: "
				   print "Do you want to send email using gmail or yahoo? : "

					  while mail1=gets.strip
						   if mail1=='gmail' || mail1 == 'GMAIL'

								system "ruby Predefined/gmail.rb"# calling script with the singlemail folder

						   elsif mail1=='yahoo' || mail1 == 'YAHOO'

								system "ruby Predefined/yahoo.rb"# calling script with the singlemail folder


						   else

								puts "Wrong input".red
								print again5

						   end
					  end

			########################################### choice 4 end ################################

			   when 5
				   again5 = "Please enter correct name: "
				   print "Do you want to send email using gmail or yahoo? : "

					  while mail1=gets.strip

						   if mail1=='gmail' || mail1 == 'GMAIL'
								  
								  system "ruby Flood/gmail.rb"



						   elsif mail1=='yahoo' || mail1 == 'YAHOO'

								  system "ruby Flood/yahoo.rb"


						   else

								  puts "Wrong input".red
								  print again5

						   end
					  end



			########################################### choice 5 end #################################

			   when 6
				   again6 = "Please enter correct name: "
				   print "Do you want to send email using gmail or yahoo? : "

					  while mail1=gets.strip

						   if mail1=='gmail' || mail1 == 'GMAIL'
								  
								  system "ruby Floodmulti/gmail.rb"



						   elsif mail1=='yahoo' || mail1 == 'YAHOO'

								  system "ruby Floodmulti/yahoo.rb"


						   else

								  puts "Wrong input".red
								  print again6

						   end
					  end


				else
					puts "Wrong input try again".red
					print again
			  
			  end 

			end
