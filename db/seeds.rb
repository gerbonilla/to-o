Coverage.destroy_all
Plan.destroy_all
Accident.destroy_all

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
