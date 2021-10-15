// создаем объект Mushroom, 
// определяем его как съедобный и создаем метод whenEaten 
// убивающий съевшего в случае, если гриб оказался ядовитым
Mushroom := Object clone
Mushroom isPoison := false
Mushroom whenEaten := method(person,
  if(self isPoison == true, 
    person kill
  ) 
)

// Определяем объект «Мужыг», как видно из кода, Мужыг можеть есть и умереть (ну вот как-то так).

Man := Object clone
Man state := "Living"
Man eat := method(food,
  food whenEaten(self)
)
Man kill := method(
  self state := "Dead"
)

// Как доказал Сергей Анатольевич Курёхин — Ленин был грибом. 
// Таким образом мы можем определить ленина через клонирование класса Mushroom:
Lenin := Mushroom clone
Lenin isPoison := false
Lenin speak := method(
  "Патриотизм - одно из наиболее глубоких чувств, 
   закрепленных веками и тысячелетиями обособленных отечеств." println 
)
// Так же, для разнообразия, можно определить ядовитый гриб:
InfectedMushroom := Mushroom clone
InfectedMushroom isPoison := true 

// Теперь мы можем попробовать накормить мужика чем-нибудь:
Man eat(Mushroom)
Man state println // living
// Dead
Man eat(InfectedMushroom)
Man state println

// В то время, пока Ленин говорил:
Lenin speak
// Пришел мужик съел его:
Man eat(Lenin)
// И остался жив.
Man state println