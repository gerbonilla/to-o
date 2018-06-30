class HealthContract < ApplicationRecord
  has_many :coverages
  has_many :plans

  PRICE = {
    "Hombre":
    {
      "18": {basic: 18, dental: 1, life: 2},
      "19": {basic: 19, dental: 1, life: 2},
      "21": {basic: 21, dental: 1, life: 2},
      "22": {basic: 22, dental: 1, life: 2},
      "23": {basic: 23, dental: 1, life: 2},
      "24": {basic: 24, dental: 1, life: 2},
      "25": {basic: 25, dental: 1, life: 2},
      "26": {basic: 26, dental: 1, life: 2},
      "27": {basic: 27, dental: 1, life: 2},
      "28": {basic: 28, dental: 1, life: 2},
      },
      "Mujer":
      {
        "18": {basic: 18, dental: 1, life: 2},
        "19": {basic: 19, dental: 1, life: 2},
        "21": {basic: 21, dental: 1, life: 2},
        "22": {basic: 22, dental: 1, life: 2},
        "23": {basic: 23, dental: 1, life: 2},
        "24": {basic: 24, dental: 1, life: 2},
        "25": {basic: 25, dental: 1, life: 2},
        "26": {basic: 26, dental: 1, life: 2},
        "27": {basic: 27, dental: 1, life: 2},
        "28": {basic: 28, dental: 1, life: 2},
      }
    }


  end
