def juego_cachipun(opcion_jugador)
  opciones = ["piedra", "papel", "tijera"]
  opcion_compu = rand(0..2)

  puts "Jugador: #{opciones[opcion_jugador]}"
  puts "PC: #{opciones[opcion_compu]}"

  if opcion_jugador == opcion_pc
    puts "Empatados 😭"
  elsif (opcion_jugador == 0 && opcion_compu == 2) ||
        (opcion_jugador == 1 && opcion_compu == 0) ||
        (opcion_jugador == 2 && opcion_compu == 1)
    puts "¡Ganaste!🤩"
  else
    puts "¡Perdiste!🤬"
  end
end


puts "Bienvenido/a a mi Cachipún, elige:"
puts "0. Piedra"
puts "1. Papel"
puts "2. Tijera"

opcion = gets.chomp.to_i

if opcion.between?(0, 2)
  juego_cachipun(opcion)
else
  puts "Opción inválida. Debes seleccionar piedra, papel o tijera."
end

