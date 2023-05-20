require "cpf_cnpj"

def check (cpf_number)
 check = CPF.valid?(cpf_number)
 if check == true
    return true
 else
    false
 end
end

def checkc (cpf_number)
    check = CNPJ.valid?(cpf_number)
    if check == true
       return true
    else
       false
    end
   end



loop do
puts "Ola, seja bem Vindo ao Programa de Consulta de CPF/CNPJ"
puts "[1] - CPF"
puts "[2] - CNPJ"
opt = gets.chomp()

if opt == "1"

puts "Digite seu CPF"
cpif = gets.chomp

if cpif.size >= 11
    if check(cpif) == true
        system "clear"
        cpf = CPF.new(cpif)
        puts "Seu CPF: #{cpf.formatted} e valido."
        break
    else
        system "clear"
        cpf = CPF.new(cpif)
        puts "Seu CPF: #{cpf.formatted} e invalido."
        break
    end
else
    puts "Digite um numero correto."
end


elsif opt == "2"

            puts "Digite seu CNPJ"
            cpif = gets.chomp

            if cpif.size >= 11
                if checkc(cpif) == true
                    system "clear"
                    cpf = CNPJ.new(cpif)
                    puts "Seu CNPJ: #{cpf.formatted} e valido."
                    break
                else
                    system "clear"
                    cpf = CNPJ.new(cpif)
                    puts "Seu CNPJ: #{cpf.formatted} e invalido."
                    break
                end
            else
                puts "Digite um numero correto."
            end

        end
    end
