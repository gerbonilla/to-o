Coverage.destroy_all
Plan.destroy_all
Accident.destroy_all
HealthRequest.destroy_all
HealthContract.destroy_all

# TODO Revisar bien los deducibles
# Seguro de accidentes
paligAccidentes1 = Accident.create(min_age: 18, max_age: 59, company: "PALIG", contract_type: "Familiar", family: {principal: "100%", spouse: "50%", children: "25%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 250000, deductible: 5000, important: true, accident: paligAccidentes1)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 250000, deductible: 5000, important: true, accident: paligAccidentes1)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2500, deductible: 200, important: true, accident: paligAccidentes1)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 7500, deductible: 200, important: true, accident: paligAccidentes1)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 75, deductible: 0, important: true, accident: paligAccidentes1)
Plan.create(plan_type: "mensual", amount_cents: 11845, annual_installments: 12, annual_amount_cents: 142140, accident: paligAccidentes1)
Plan.create(plan_type: "trimestral", amount_cents: 35420, annual_installments: 4, annual_amount_cents: 141680, accident: paligAccidentes1)
Plan.create(plan_type: "semestral", amount_cents: 70840, annual_installments: 2, annual_amount_cents: 141680, accident: paligAccidentes1)
Plan.create(plan_type: "anual", amount_cents: 141795, annual_installments: 1, annual_amount_cents: 141795, accident: paligAccidentes1)
puts "Created #{paligAccidentes1}"

paligAccidentes2 = Accident.create(min_age: 18, max_age: 59, company: "PALIG", contract_type: "Familiar", family: {principal: "100%", spouse: "50%", children: "25%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 500000, deductible: 10000, important: true, accident: paligAccidentes2)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 500000, deductible: 10000, important: true, accident: paligAccidentes2)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2500, deductible: 200, important: true, accident: paligAccidentes2)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 7500, deductible: 200, important: true, accident: paligAccidentes2)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 75, deductible: 0, important: true, accident: paligAccidentes2)
Plan.create(plan_type: "mensual", amount_cents: 20930, annual_installments: 12, annual_amount_cents: 251160, accident: paligAccidentes2)
Plan.create(plan_type: "trimestral", amount_cents: 62675, annual_installments: 4, annual_amount_cents: 250700, accident: paligAccidentes2)
Plan.create(plan_type: "semestral", amount_cents: 125465, annual_installments: 2, annual_amount_cents: 250930, accident: paligAccidentes2)
Plan.create(plan_type: "anual", amount_cents: 250815, annual_installments: 1, annual_amount_cents: 250815, accident: paligAccidentes2)
puts "Created #{paligAccidentes2}"

paligAccidentes3 = Accident.create(min_age: 18, max_age: 59, company: "PALIG", contract_type: "Titular", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 250000, deductible: 5000, important: true, accident: paligAccidentes3)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 250000, deductible: 5000, important: true, accident: paligAccidentes3)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2500, deductible: 200, important: true, accident: paligAccidentes3)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 7500, deductible: 200, important: true, accident: paligAccidentes3)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 75, deductible: 0, important: true, accident: paligAccidentes3)
Plan.create(plan_type: "mensual", amount_cents: 6785, annual_installments: 12, annual_amount_cents: 81420, accident: paligAccidentes3)
Plan.create(plan_type: "trimestral", amount_cents: 20240, annual_installments: 4, annual_amount_cents: 80960, accident: paligAccidentes3)
Plan.create(plan_type: "semestral", amount_cents: 40480, annual_installments: 2, annual_amount_cents: 80960, accident: paligAccidentes3)
Plan.create(plan_type: "anual", amount_cents: 80960, annual_installments: 1, annual_amount_cents: 80960, accident: paligAccidentes3)
puts "Created #{paligAccidentes3}"

paligAccidentes4 = Accident.create(min_age: 18, max_age: 59, company: "PALIG", contract_type: "Titular", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 500000, deductible: 10000, important: true, accident: paligAccidentes4)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 500000, deductible: 10000, important: true, accident: paligAccidentes4)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2500, deductible: 200, important: true, accident: paligAccidentes4)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 7500, deductible: 200, important: true, accident: paligAccidentes4)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 75, deductible: 0, important: true, accident: paligAccidentes4)
Plan.create(plan_type: "mensual", amount_cents: 11960, annual_installments: 12, annual_amount_cents: 143520, accident: paligAccidentes4)
Plan.create(plan_type: "trimestral", amount_cents: 35880, annual_installments: 4, annual_amount_cents: 143520, accident: paligAccidentes4)
Plan.create(plan_type: "semestral", amount_cents: 71645, annual_installments: 2, annual_amount_cents: 143290, accident: paligAccidentes4)
Plan.create(plan_type: "anual", amount_cents: 143405, annual_installments: 1, annual_amount_cents: 143405, accident: paligAccidentes4)
puts "Created #{paligAccidentes4}"

# Vida protegida plus - 18/59, minimum coverage, titula
paligAccidentes5 = Accident.create(min_age: 18, max_age: 59, company: "PALIG", contract_type: "Titular", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 25000, deductible: 1000, important: true, accident: paligAccidentes5)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 25000, deductible: 1000, important: true, accident: paligAccidentes5)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2000, deductible: 200, important: true, accident: paligAccidentes5)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 2500, deductible: 250, important: true, accident: paligAccidentes5)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 50, deductible: 0, important: true, accident: paligAccidentes5)
Coverage.create(coverage_type: "Emergencia Dental", amount: 1000, deductible: 0, important: false, accident: paligAccidentes5)
Plan.create(plan_type: "mensual", amount_cents: 1150, annual_installments: 12, annual_amount_cents: 13800, accident: paligAccidentes5)
Plan.create(plan_type: "trimestral", amount_cents: 3335, annual_installments: 4, annual_amount_cents: 13340, accident: paligAccidentes5)
Plan.create(plan_type: "semestral", amount_cents: 6785, annual_installments: 2, annual_amount_cents: 13570, accident: paligAccidentes5)
Plan.create(plan_type: "anual", amount_cents: 13570, annual_installments: 1, annual_amount_cents: 13570, accident: paligAccidentes5)
puts "Created #{paligAccidentes5}"

# Vida protegida plus - 18/59, low medium coverage, titular
paligAccidentes6 = Accident.create(min_age: 18, max_age: 59, company: "PALIG", contract_type: "Titular", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 50000, deductible: 2000, important: true, accident: paligAccidentes6)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 50000, deductible: 2000, important: true, accident: paligAccidentes6)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2000, deductible: 200, important: true, accident: paligAccidentes6)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 5000, deductible: 500, important: true, accident: paligAccidentes6)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 50, deductible: 0, important: true, accident: paligAccidentes6)
Coverage.create(coverage_type: "Emergencia Dental", amount: 1000, deductible: 0, important: false, accident: paligAccidentes6)
Plan.create(plan_type: "mensual", amount_cents: 2070, annual_installments: 12, annual_amount_cents: 24840, accident: paligAccidentes6)
Plan.create(plan_type: "trimestral", amount_cents: 6325, annual_installments: 4, annual_amount_cents: 25300, accident: paligAccidentes6)
Plan.create(plan_type: "semestral", amount_cents: 12650, annual_installments: 2, annual_amount_cents: 25300, accident: paligAccidentes6)
Plan.create(plan_type: "anual", amount_cents: 25185, annual_installments: 1, annual_amount_cents: 25185, accident: paligAccidentes6)
puts "Created #{paligAccidentes6}"

# Vida protegida plus - 18/59, high medium coverage, titular
paligAccidentes7 = Accident.create(min_age: 18, max_age: 59, company: "PALIG", contract_type: "Titular", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 100000, deductible: 5000, important: true, accident: paligAccidentes7)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 100000, deductible: 5000, important: true, accident: paligAccidentes7)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2000, deductible: 200, important: true, accident: paligAccidentes7)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 5000, deductible: 500, important: true, accident: paligAccidentes7)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 50, deductible: 0, important: true, accident: paligAccidentes7)
Coverage.create(coverage_type: "Emergencia Dental", amount: 1000, deductible: 0, important: false, accident: paligAccidentes7)
Plan.create(plan_type: "mensual", amount_cents: 3105, annual_installments: 12, annual_amount_cents: 37260, accident: paligAccidentes7)
Plan.create(plan_type: "trimestral", amount_cents: 9430, annual_installments: 4, annual_amount_cents: 37720, accident: paligAccidentes7)
Plan.create(plan_type: "semestral", amount_cents: 18860, annual_installments: 2, annual_amount_cents: 37720, accident: paligAccidentes7)
Plan.create(plan_type: "anual", amount_cents: 37605, annual_installments: 1, annual_amount_cents: 37605, accident: paligAccidentes7)
puts "Created #{paligAccidentes7}"

# Vida protegida plus - 18/59, high coverage, titular
paligAccidentes8 = Accident.create(min_age: 18, max_age: 59, company: "PALIG", contract_type: "Titular", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 150000, deductible: 7500, important: true, accident: paligAccidentes8)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 150000, deductible: 7500, important: true, accident: paligAccidentes8)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2000, deductible: 200, important: true, accident: paligAccidentes8)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 5000, deductible: 500, important: true, accident: paligAccidentes8)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 50, deductible: 0, important: true, accident: paligAccidentes8)
Coverage.create(coverage_type: "Emergencia Dental", amount: 1000, deductible: 0, important: false, accident: paligAccidentes8)
Plan.create(plan_type: "mensual", amount_cents: 4140, annual_installments: 12, annual_amount_cents: 49680, accident: paligAccidentes8)
Plan.create(plan_type: "trimestral", amount_cents: 12535, annual_installments: 4, annual_amount_cents: 50140, accident: paligAccidentes8)
Plan.create(plan_type: "semestral", amount_cents: 25070, annual_installments: 2, annual_amount_cents: 50140, accident: paligAccidentes8)
Plan.create(plan_type: "anual", amount_cents: 50140, annual_installments: 1, annual_amount_cents: 50140, accident: paligAccidentes8)
puts "Created #{paligAccidentes8}"

# Vida protegida plus - 60/65, low coverage, titular
paligAccidentes9 = Accident.create(min_age: 60, max_age: 65, company: "PALIG", contract_type: "Titular", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 25000, deductible: 2500, important: true, accident: paligAccidentes9)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 25000, deductible: 2500, important: true, accident: paligAccidentes9)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2000, deductible: 200, important: true, accident: paligAccidentes9)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 2500, deductible: 200, important: true, accident: paligAccidentes9)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 50, deductible: 0, important: true, accident: paligAccidentes9)
Coverage.create(coverage_type: "Emergencia Dental", amount: 1000, deductible: 0, important: false, accident: paligAccidentes9)
Plan.create(plan_type: "mensual", amount_cents: 2185, annual_installments: 12, annual_amount_cents: 26220, accident: paligAccidentes9)
Plan.create(plan_type: "trimestral", amount_cents: 6670, annual_installments: 4, annual_amount_cents: 26680, accident: paligAccidentes9)
Plan.create(plan_type: "semestral", amount_cents: 13340, annual_installments: 2, annual_amount_cents: 26680, accident: paligAccidentes9)
Plan.create(plan_type: "anual", amount_cents: 26680, annual_installments: 1, annual_amount_cents: 26680, accident: paligAccidentes9)
puts "Created #{paligAccidentes9}"

# Vida protegida plus - 60/65, high coverage, titular
paligAccidentes10 = Accident.create(min_age: 60, max_age: 65, company: "PALIG", contract_type: "Titular", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 50000, deductible: 5000, important: true, accident: paligAccidentes10)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 50000, deductible: 5000, important: true, accident: paligAccidentes10)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2000, deductible: 200, important: true, accident: paligAccidentes10)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 5000, deductible: 500, important: true, accident: paligAccidentes10)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 50, deductible: 0, important: true, accident: paligAccidentes10)
Coverage.create(coverage_type: "Emergencia Dental", amount: 1000, deductible: 0, important: false, accident: paligAccidentes10)
Plan.create(plan_type: "mensual", amount_cents: 4140, annual_installments: 12, annual_amount_cents: 49680, accident: paligAccidentes10)
Plan.create(plan_type: "trimestral", amount_cents: 12535, annual_installments: 4, annual_amount_cents: 50140, accident: paligAccidentes10)
Plan.create(plan_type: "semestral", amount_cents: 24955, annual_installments: 2, annual_amount_cents: 49910, accident: paligAccidentes10)
Plan.create(plan_type: "anual", amount_cents: 50025, annual_installments: 1, annual_amount_cents: 50025, accident: paligAccidentes10)
puts "Created #{paligAccidentes10}"




# Vida protegida plus - 18/59, minimum coverage, Familiar
paligAccidentes11 = Accident.create(min_age: 18, max_age: 59, company: "PALIG", contract_type: "Familiar", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 25000, deductible: 1000, important: true, accident: paligAccidentes11)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 25000, deductible: 1000, important: true, accident: paligAccidentes11)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2000, deductible: 200, important: true, accident: paligAccidentes11)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 2500, deductible: 250, important: true, accident: paligAccidentes11)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 50, deductible: 0, important: true, accident: paligAccidentes11)
Coverage.create(coverage_type: "Emergencia Dental", amount: 1000, deductible: 0, important: false, accident: paligAccidentes11)
Plan.create(plan_type: "mensual", amount_cents: 1700, annual_installments: 12, annual_amount_cents: 20400, accident: paligAccidentes11)
Plan.create(plan_type: "trimestral", amount_cents: 5100, annual_installments: 4, annual_amount_cents: 20400, accident: paligAccidentes11)
Plan.create(plan_type: "semestral", amount_cents: 10300, annual_installments: 2, annual_amount_cents: 20600, accident: paligAccidentes11)
Plan.create(plan_type: "anual", amount_cents: 20600, annual_installments: 1, annual_amount_cents: 20600, accident: paligAccidentes11)
puts "Created #{paligAccidentes11}"

# Vida protegida plus - 18/59, low medium coverage, Familiar
paligAccidentes12 = Accident.create(min_age: 18, max_age: 59, company: "PALIG", contract_type: "Familiar", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 50000, deductible: 2000, important: true, accident: paligAccidentes12)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 50000, deductible: 2000, important: true, accident: paligAccidentes12)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2000, deductible: 200, important: true, accident: paligAccidentes12)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 5000, deductible: 500, important: true, accident: paligAccidentes12)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 50, deductible: 0, important: true, accident: paligAccidentes12)
Coverage.create(coverage_type: "Emergencia Dental", amount: 1000, deductible: 0, important: false, accident: paligAccidentes12)
Plan.create(plan_type: "mensual", amount_cents: 3200, annual_installments: 12, annual_amount_cents: 38400, accident: paligAccidentes12)
Plan.create(plan_type: "trimestral", amount_cents: 9600, annual_installments: 4, annual_amount_cents: 38400, accident: paligAccidentes12)
Plan.create(plan_type: "semestral", amount_cents: 19200, annual_installments: 2, annual_amount_cents: 38400, accident: paligAccidentes12)
Plan.create(plan_type: "anual", amount_cents: 38300, annual_installments: 1, annual_amount_cents: 38300, accident: paligAccidentes12)
puts "Created #{paligAccidentes12}"

# Vida protegida plus - 18/59, high medium coverage, Familiar
paligAccidentes13 = Accident.create(min_age: 18, max_age: 59, company: "PALIG", contract_type: "Familiar", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 100000, deductible: 5000, important: true, accident: paligAccidentes13)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 100000, deductible: 5000, important: true, accident: paligAccidentes13)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2000, deductible: 200, important: true, accident: paligAccidentes13)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 5000, deductible: 500, important: true, accident: paligAccidentes13)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 50, deductible: 0, important: true, accident: paligAccidentes13)
Coverage.create(coverage_type: "Emergencia Dental", amount: 1000, deductible: 0, important: false, accident: paligAccidentes13)
Plan.create(plan_type: "mensual", amount_cents: 4800, annual_installments: 12, annual_amount_cents: 57600, accident: paligAccidentes13)
Plan.create(plan_type: "trimestral", amount_cents: 14300, annual_installments: 4, annual_amount_cents: 57200, accident: paligAccidentes13)
Plan.create(plan_type: "semestral", amount_cents: 28700, annual_installments: 2, annual_amount_cents: 57400, accident: paligAccidentes13)
Plan.create(plan_type: "anual", amount_cents: 57300, annual_installments: 1, annual_amount_cents: 57300, accident: paligAccidentes13)
puts "Created #{paligAccidentes13}"

# Vida protegida plus - 18/59, high coverage, Familiar
paligAccidentes14 = Accident.create(min_age: 18, max_age: 59, company: "PALIG", contract_type: "Familiar", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 150000, deductible: 7500, important: true, accident: paligAccidentes14)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 150000, deductible: 7500, important: true, accident: paligAccidentes14)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2000, deductible: 200, important: true, accident: paligAccidentes14)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 5000, deductible: 500, important: true, accident: paligAccidentes14)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 50, deductible: 0, important: true, accident: paligAccidentes14)
Coverage.create(coverage_type: "Emergencia Dental", amount: 1000, deductible: 0, important: false, accident: paligAccidentes14)
Plan.create(plan_type: "mensual", amount_cents: 7360, annual_installments: 12, annual_amount_cents: 88320, accident: paligAccidentes14)
Plan.create(plan_type: "trimestral", amount_cents: 21965, annual_installments: 4, annual_amount_cents: 87860, accident: paligAccidentes14)
Plan.create(plan_type: "semestral", amount_cents: 43815, annual_installments: 2, annual_amount_cents: 87630, accident: paligAccidentes14)
Plan.create(plan_type: "anual", amount_cents: 87745, annual_installments: 1, annual_amount_cents: 87745, accident: paligAccidentes14)
puts "Created #{paligAccidentes14}"

# Vida protegida plus - 60/65, low coverage, Familiar
paligAccidentes15 = Accident.create(min_age: 60, max_age: 65, company: "PALIG", contract_type: "Familiar", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 25000, deductible: 2500, important: true, accident: paligAccidentes15)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 25000, deductible: 2500, important: true, accident: paligAccidentes15)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2000, deductible: 200, important: true, accident: paligAccidentes15)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 2500, deductible: 200, important: true, accident: paligAccidentes15)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 50, deductible: 0, important: true, accident: paligAccidentes15)
Coverage.create(coverage_type: "Emergencia Dental", amount: 1000, deductible: 0, important: false, accident: paligAccidentes15)
Plan.create(plan_type: "mensual", amount_cents: 3910, annual_installments: 12, annual_amount_cents: 46920, accident: paligAccidentes15)
Plan.create(plan_type: "trimestral", amount_cents: 11615, annual_installments: 4, annual_amount_cents: 46460, accident: paligAccidentes15)
Plan.create(plan_type: "semestral", amount_cents: 23345, annual_installments: 2, annual_amount_cents: 46690, accident: paligAccidentes15)
Plan.create(plan_type: "anual", amount_cents: 46575, annual_installments: 1, annual_amount_cents: 46575, accident: paligAccidentes15)
puts "Created #{paligAccidentes15}"

# Vida protegida plus - 60/65, high coverage, Familiar
paligAccidentes16 = Accident.create(min_age: 60, max_age: 65, company: "PALIG", contract_type: "Familiar", family: {principal: "100%", spouse: "0%", children: "0%"})
Coverage.create(coverage_type: "Muerte Accidental y Desmembramiento", amount: 50000, deductible: 5000, important: true, accident: paligAccidentes16)
Coverage.create(coverage_type: "Incapacidad Total y Permanente", amount: 50000, deductible: 5000, important: true, accident: paligAccidentes16)
Coverage.create(coverage_type: "Gastos Funerarios", amount: 2000, deductible: 200, important: true, accident: paligAccidentes16)
Coverage.create(coverage_type: "Reembolso Gastos Médicos", amount: 5000, deductible: 500, important: true, accident: paligAccidentes16)
Coverage.create(coverage_type: "Renta Diaria por Hospitalizacion", amount: 50, deductible: 0, important: true, accident: paligAccidentes16)
Coverage.create(coverage_type: "Emergencia Dental", amount: 1000, deductible: 0, important: false, accident: paligAccidentes16)
Plan.create(plan_type: "mensual", amount_cents: 7245, annual_installments: 12, annual_amount_cents: 86940, accident: paligAccidentes16)
Plan.create(plan_type: "trimestral", amount_cents: 21850, annual_installments: 4, annual_amount_cents: 87400, accident: paligAccidentes16)
Plan.create(plan_type: "semestral", amount_cents: 43700, annual_installments: 2, annual_amount_cents: 87400, accident: paligAccidentes16)
Plan.create(plan_type: "anual", amount_cents: 87400, annual_installments: 1, annual_amount_cents: 87400, accident: paligAccidentes16)
puts "Created #{paligAccidentes16}"





#Seguro de Salud: 18-19 Hombre con dental
paligSalud1 = HealthContract.create(min_age: 18, max_age: 19, company: "PALIG", gender: "Hombre")
Coverage.create(coverage_type: "en reembolsos", amount: 80, deductible: 100, important: true, health_contract: paligSalud1)
Coverage.create(coverage_type: "deducible", amount: 100, deductible: 100, important: true, health_contract: paligSalud1)
Coverage.create(coverage_type: "en ambulancia terrestre", amount: 1500, deductible: 100, important: true, health_contract: paligSalud1)
Coverage.create(coverage_type: "en ambulancia aérea", amount: 10000, deductible: 100, important: true, health_contract: paligSalud1)
Coverage.create(coverage_type: "de cuarto y alimentación", amount: 75, deductible: 100, important: true, health_contract: paligSalud1)
Coverage.create(coverage_type: "en gastos de repatriación", amount: 1500, deductible: 100, important: true, health_contract: paligSalud1)
Coverage.create(coverage_type: "de maximo vitalicio", amount: 200000, deductible: 100, important: true, health_contract: paligSalud1)
Coverage.create(coverage_type: "en pediatría al recien nacido", amount: 100, deductible: 100, important: true, health_contract: paligSalud1)
# Coverage.create(coverage_type: "en gastos de maternidad", amount: 3000, deductible: 100, important: true, health_contract: paligSalud1)

Coverage.create(coverage_type: "en cobertura dental anual", amount: 1500, deductible: 100, important: false, health_contract: paligSalud1)
Coverage.create(coverage_type: "en cobertura de ortodoncia anual", amount: 1500, deductible: 100, important: false, health_contract: paligSalud1)

Coverage.create(coverage_type: "Seguro de vida", amount: 5000, deductible: 100, important: false, health_contract: paligSalud1)

# Coverage.create(coverage_type: "Deducible global", amount: 0, deductible: 100, important: false, health_contract: paligSalud1)
# Coverage.create(coverage_type: "Reembolso global", amount: 0, deductible: 100, important: false, health_contract: paligSalud1)
Coverage.create(coverage_type: "Cuarto y Alimentación global", amount: 0, deductible: 100, important: false, health_contract: paligSalud1)
Coverage.create(coverage_type: "Ambulancia Terrestre global", amount: 0, deductible: 100, important: false, health_contract: paligSalud1)
Coverage.create(coverage_type: "Maternidad global", amount: 0, deductible: 100, important: false, health_contract: paligSalud1)
Plan.create(plan_type: "mensual", amount_cents: 2891, annual_installments: 12, annual_amount_cents: 34692, health_contract: paligSalud1)



#Seguro de Salud: 20-29 Hombre con dental
paligSalud3 = HealthContract.create(min_age: 20, max_age: 29, company: "PALIG", gender: "Hombre")
Coverage.create(coverage_type: "Reembolso en Centro America", amount: 80, deductible: 100, important: true, health_contract: paligSalud3)
Coverage.create(coverage_type: "Deducible en Centro America", amount: 100, deductible: 100, important: true, health_contract: paligSalud3)
Coverage.create(coverage_type: "Cobertura Dental anual", amount: 1500, deductible: 100, important: true, health_contract: paligSalud3)
Coverage.create(coverage_type: "Ambulancia Terrestre", amount: 1500, deductible: 100, important: true, health_contract: paligSalud3)
Coverage.create(coverage_type: "Cobertura de Ortodoncia anual", amount: 1500, deductible: 100, important: false, health_contract: paligSalud3)
# Coverage.create(coverage_type: "Reembolso global", amount: 0, deductible: 100, important: false, health_contract: paligSalud3)
# Coverage.create(coverage_type: "Deducible global", amount: 0, deductible: 100, important: false, health_contract: paligSalud3)
# Coverage.create(coverage_type: "Ambulancia Terrestre global", amount: 0, deductible: 100, important: false, health_contract: paligSalud3)
Coverage.create(coverage_type: "Ambulancia Aérea", amount: 10000, deductible: 100, important: false, health_contract: paligSalud3)
Coverage.create(coverage_type: "Maximo Vitalicio", amount: 200000, deductible: 100, important: false, health_contract: paligSalud3)
Coverage.create(coverage_type: "Cuarto y Alimentación en Centro America", amount: 75, deductible: 100, important: false, health_contract: paligSalud3)
# Coverage.create(coverage_type: "Cuarto y Alimentación global", amount: 0, deductible: 100, important: false, health_contract: paligSalud3)
Coverage.create(coverage_type: "Seguro de vida", amount: 5000, deductible: 100, important: false, health_contract: paligSalud3)
Coverage.create(coverage_type: "Maternidad dentro Centro América", amount: 3000, deductible: 100, important: false, health_contract: paligSalud3)
# Coverage.create(coverage_type: "Maternidad global", amount: 0, deductible: 100, important: false, health_contract: paligSalud3)
Coverage.create(coverage_type: "Atención de pediatría al Recién nacido", amount: 100, deductible: 100, important: false, health_contract: paligSalud3)
Coverage.create(coverage_type: "Gastos de Repatriación", amount: 1500, deductible: 100, important: false, health_contract: paligSalud3)
Plan.create(plan_type: "mensual", amount_cents: 3521, annual_installments: 12, annual_amount_cents: 42252, health_contract: paligSalud3)

#Seguro de Salud: 20-29 Hombre sin dental
paligSalud4 = HealthContract.create(min_age: 20, max_age: 29, company: "PALIG", gender: "Hombre")
Coverage.create(coverage_type: "Reembolso en Centro America", amount: 80, deductible: 100, important: true, health_contract: paligSalud4)
Coverage.create(coverage_type: "Deducible en Centro America", amount: 100, deductible: 100, important: true, health_contract: paligSalud4)
Coverage.create(coverage_type: "Cobertura Dental anual", amount: 0, deductible: 100, important: true, health_contract: paligSalud4)
Coverage.create(coverage_type: "Ambulancia Terrestre", amount: 1500, deductible: 100, important: true, health_contract: paligSalud4)
# Coverage.create(coverage_type: "Cobertura de Ortodoncia anual", amount: 0, deductible: 100, important: false, health_contract: paligSalud4)
# Coverage.create(coverage_type: "Reembolso global", amount: 0, deductible: 100, important: false, health_contract: paligSalud4)
# Coverage.create(coverage_type: "Deducible global", amount: 0, deductible: 100, important: false, health_contract: paligSalud4)
# Coverage.create(coverage_type: "Ambulancia Terrestre global", amount: 0, deductible: 100, important: false, health_contract: paligSalud4)
Coverage.create(coverage_type: "Ambulancia Aérea", amount: 10000, deductible: 100, important: false, health_contract: paligSalud4)
Coverage.create(coverage_type: "Maximo Vitalicio", amount: 200000, deductible: 100, important: false, health_contract: paligSalud4)
Coverage.create(coverage_type: "Cuarto y Alimentación en Centro America", amount: 75, deductible: 100, important: false, health_contract: paligSalud4)
# Coverage.create(coverage_type: "Cuarto y Alimentación global", amount: 0, deductible: 100, important: false, health_contract: paligSalud4)
Coverage.create(coverage_type: "Seguro de vida", amount: 5000, deductible: 100, important: false, health_contract: paligSalud4)
Coverage.create(coverage_type: "Maternidad dentro Centro América", amount: 3000, deductible: 100, important: false, health_contract: paligSalud4)
# Coverage.create(coverage_type: "Maternidad global", amount: 0, deductible: 100, important: false, health_contract: paligSalud4)
Coverage.create(coverage_type: "Atención de pediatría al Recién nacido", amount: 100, deductible: 100, important: false, health_contract: paligSalud4)
Coverage.create(coverage_type: "Gastos de Repatriación", amount: 1500, deductible: 100, important: false, health_contract: paligSalud4)
Plan.create(plan_type: "mensual", amount_cents: 2941, annual_installments: 12, annual_amount_cents: 35292, health_contract: paligSalud4)

#Seguro de Salud: 18-29 Mujer con dental
paligSalud5 = HealthContract.create(min_age: 18, max_age: 29, company: "PALIG", gender: "Mujer")
Coverage.create(coverage_type: "Reembolso en Centro America", amount: 80, deductible: 100, important: true, health_contract: paligSalud5)
Coverage.create(coverage_type: "Deducible en Centro America", amount: 100, deductible: 100, important: true, health_contract: paligSalud5)
Coverage.create(coverage_type: "Cobertura Dental anual", amount: 1500, deductible: 100, important: true, health_contract: paligSalud5)
Coverage.create(coverage_type: "Ambulancia Terrestre", amount: 1500, deductible: 100, important: true, health_contract: paligSalud5)
Coverage.create(coverage_type: "Cobertura de Ortodoncia anual", amount: 1500, deductible: 100, important: false, health_contract: paligSalud5)
# Coverage.create(coverage_type: "Reembolso global", amount: 0, deductible: 100, important: false, health_contract: paligSalud5)
# Coverage.create(coverage_type: "Deducible global", amount: 0, deductible: 100, important: false, health_contract: paligSalud5)
# Coverage.create(coverage_type: "Ambulancia Terrestre global", amount: 0, deductible: 100, important: false, health_contract: paligSalud5)
Coverage.create(coverage_type: "Ambulancia Aérea", amount: 10000, deductible: 100, important: false, health_contract: paligSalud5)
Coverage.create(coverage_type: "Maximo Vitalicio", amount: 200000, deductible: 100, important: false, health_contract: paligSalud5)
Coverage.create(coverage_type: "Cuarto y Alimentación en Centro America", amount: 75, deductible: 100, important: false, health_contract: paligSalud5)
# Coverage.create(coverage_type: "Cuarto y Alimentación global", amount: 0, deductible: 100, important: false, health_contract: paligSalud5)
Coverage.create(coverage_type: "Seguro de vida", amount: 5000, deductible: 100, important: false, health_contract: paligSalud5)
Coverage.create(coverage_type: "Maternidad dentro Centro América", amount: 3000, deductible: 100, important: false, health_contract: paligSalud5)
# Coverage.create(coverage_type: "Maternidad global", amount: 0, deductible: 100, important: false, health_contract: paligSalud5)
Coverage.create(coverage_type: "Atención de pediatría al Recién nacido", amount: 100, deductible: 100, important: false, health_contract: paligSalud5)
Coverage.create(coverage_type: "Gastos de Repatriación", amount: 1500, deductible: 100, important: false, health_contract: paligSalud5)
Plan.create(plan_type: "mensual", amount_cents: 4036, annual_installments: 12, annual_amount_cents: 48432, health_contract: paligSalud5)

#Seguro de Salud: 18-29 Mujer sin dental
paligSalud6 = HealthContract.create(min_age: 18, max_age: 29, company: "PALIG", gender: "Mujer")
Coverage.create(coverage_type: "Reembolso en Centro America", amount: 80, deductible: 100, important: true, health_contract: paligSalud6)
Coverage.create(coverage_type: "Deducible en Centro America", amount: 100, deductible: 100, important: true, health_contract: paligSalud6)
Coverage.create(coverage_type: "Cobertura Dental anual", amount: 0, deductible: 100, important: true, health_contract: paligSalud6)
Coverage.create(coverage_type: "Ambulancia Terrestre", amount: 1500, deductible: 100, important: true, health_contract: paligSalud6)
# Coverage.create(coverage_type: "Cobertura de Ortodoncia anual", amount: 0, deductible: 100, important: false, health_contract: paligSalud6)
# Coverage.create(coverage_type: "Reembolso global", amount: 0, deductible: 100, important: false, health_contract: paligSalud6)
# Coverage.create(coverage_type: "Deducible global", amount: 0, deductible: 100, important: false, health_contract: paligSalud6)
# Coverage.create(coverage_type: "Ambulancia Terrestre global", amount: 0, deductible: 100, important: false, health_contract: paligSalud6)
Coverage.create(coverage_type: "Ambulancia Aérea", amount: 10000, deductible: 100, important: false, health_contract: paligSalud6)
Coverage.create(coverage_type: "Maximo Vitalicio", amount: 200000, deductible: 100, important: false, health_contract: paligSalud6)
Coverage.create(coverage_type: "Cuarto y Alimentación en Centro America", amount: 75, deductible: 100, important: false, health_contract: paligSalud6)
# Coverage.create(coverage_type: "Cuarto y Alimentación global", amount: 0, deductible: 100, important: false, health_contract: paligSalud6)
Coverage.create(coverage_type: "Seguro de vida", amount: 5000, deductible: 100, important: false, health_contract: paligSalud6)
Coverage.create(coverage_type: "Maternidad dentro Centro América", amount: 3000, deductible: 100, important: false, health_contract: paligSalud6)
# Coverage.create(coverage_type: "Maternidad global", amount: 0, deductible: 100, important: false, health_contract: paligSalud6)
Coverage.create(coverage_type: "Atención de pediatría al Recién nacido", amount: 100, deductible: 100, important: false, health_contract: paligSalud6)
Coverage.create(coverage_type: "Gastos de Repatriación", amount: 1500, deductible: 100, important: false, health_contract: paligSalud6)
Plan.create(plan_type: "mensual", amount_cents: 3456, annual_installments: 12, annual_amount_cents: 41472, health_contract: paligSalud6)





