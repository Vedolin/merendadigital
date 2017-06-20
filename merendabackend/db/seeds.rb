# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

case Rails.env
when "development"

  # Build an importer, as the data is available as a CSV file at http://dados.prefeitura.sp.gov.br/dataset/gestao-da-alimentacao-escolar#
  # It was downloaded to ../../lib/assets/tipodegestaoalimentacao.csv


  g1 = Group.create({name: '1'})
  g2 = Group.create({name: '2'})
  g3 = Group.create({name: '3'})
  g4 = Group.create({name: '4'})

  st1 = Execution.create({name: 'DIRETA'})
  st2 = Execution.create({name: 'MISTA'})
  st3 = Execution.create({name: 'TERCEIRIZADA'})

  s1 = School.create({group: g1, execution: st1, name: 'CEI CONV. RECANTO DA ALEGRIA I', address: 'R. FRANCISCO REBOLO, 6'})
  s2 = School.create({group: g1, execution: st1, name: 'CEI CONV. BELEZINHA PRIMAVERA', address: 'R. DOM VALENTIM, 69'})
  s3 = School.create({group: g3, execution: st3, name: 'EMEF PRES. NILO PEÇANHA - (TERCEI.)', address: 'R. ENÉAS LUIS CARLOS BARBANTI, 660'})

  a1 = Age.create({name: '7 meses'})
  a2 = Age.create({name: '8 a 11 meses'})
  a3 = Age.create({name: '2 a 6 anos'})

  k1 = Kind.create({name: 'DESJEJUM'})
  k2 = Kind.create({name: 'COLAÇÃO'})
  k3 = Kind.create({name: 'ALMOÇO'})
  k4 = Kind.create({name: 'LANCHE'})
  k5 = Kind.create({name: 'REFEIÇÃO DA TARDE'})

  m1 = Meal.create({school: s1, planned:'Arroz, feijao, abobrinha, frango desfiado, salada de alface', served:'Arroz, feijao, abobrinha, frango desfiado, salada de alface', scheduled_to:'#06/12/2017#', age: a1, kind: k3})
  m2 = Meal.create({school: s2, planned:'Arroz, feijao, abobrinha, frango desfiado, salada de alface', served:'Arroz, feijao, abobrinha, frango desfiado, salada de acelga', scheduled_to:'#06/12/2017#', age: a3, kind: k3})
  m3 = Meal.create({school: s3, planned:'Arroz, feijao, abobrinha, frango desfiado, salada de alface', served:'Arroz, feijao, cenoura, frango, salada de couve', scheduled_to:'#06/12/2017#', age: a3, kind: k3})


  # Group.create({{name: '1'}, {name: '2'},{name: '3'},{name: '4'}})
  # Service_type.create({{name: 'DIRETA'},{name: 'MISTA'},{name: 'TERCEIRIZADA'}})
  # School.create({{group: 1, service_type: 1, name: 'CEI CONV. RECANTO DA ALEGRIA I', address: 'R. FRANCISCO REBOLO, 6'}, {group: 1, service_type: 1, name: 'CEI CONV. BELEZINHA PRIMAVERA', address: 'R. DOM VALENTIM, 69'}, {group: 3, service_type: 3, name: 'EMEF PRES. NILO PEÇANHA - (TERCEI.)', address: 'R. ENÉAS LUIS CARLOS BARBANTI, 660'}})
  # Age.create({{name: '7 meses'},{name: '8 a 11 meses'},{name: '2 a 6 anos'}})
  # Kind.create({{name: 'DESJEJUM'},{name: 'COLAÇÃO'},{name: 'ALMOÇO'},{name: 'LANCHE'},{name: 'REFEIÇÃO DA TARDE'}})
  # Meal.create{{planned:'Arroz, feijao, abobrinha, frango desfiado, salada de alface', served:'Arroz, feijao, cenoura, frango desfiado, salada de couve', shceduled_to:'#06/12/2017#', Age:1, kind:3}


when "production"

end
