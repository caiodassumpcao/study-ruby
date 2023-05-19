# Finding the day of the week - Encontrando o dia da semana

# matriz referente a direfença entre dias, de cada 1 dia de cada mes
# t = [0, 3, 3, 6, 1, 4, 6, 2, 5, 0, 3, 5]
# Porém de 4 em 4 anos vamos ganhar um dia a mais(ano bisexto) exceto depois de 100 anos
# T = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]


def day_of_week(y, m, d)
  t = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]
  if (m < 3)
    y -= 1
  end

  return (y + y / 4 - y / 100 + y / 400 + t[m - 1] + d) % 7
end

day = 11
month = 3
year = 2023


puts day_of_week(year, month, day)
