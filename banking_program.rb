def banking_program
  p "Enter the clients first name:"
  @first_name = gets.chomp
  p "Enter the clients last name:"
  @last_name = gets.chomp
  p "Enter the clients email adress:"
  @email = gets.chomp
end

clients = []

def create_client(_banking_program)
  {
    first_name: @first_name,
    last_name: @last_name,
    email: @email,
    account_number: '%010d' % rand(10 ** 10)
  }
end

2.times do
  clients.push(create_client(banking_program))
end

p clients

def print_client(clients)
  clients.each do |client|
    p "FIRST NAME: #{client[:first_name]}"
    p "LAST NAME: #{client[:last_name]}"
    p "EMAIL: #{client[:email]}"
    p "ACCOUNT NUMBER: #{client[:account_number]}"
  end
end

print_client(clients)