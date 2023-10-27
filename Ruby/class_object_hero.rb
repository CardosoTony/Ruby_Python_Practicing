class Hero
  @@attack_types = {
    warrior: 'espada',
    mage: 'magia',
    monk: 'artes maciais',
    ninja: 'shuriken'
  }

  def initialize(name, age, hero_type)
    @name = name
    @age = age
    @hero_type = hero_type
    @attack_type = @@attack_types[hero_type]
  end

  def attack
    puts "O #{@hero_type} atacou usando #{@attack_type}."
  end
end

hero1 = Hero.new('Zeno', 351, :ninja)
hero2 = Hero.new('Zero', 539, :mage)

hero1.attack
hero2.attack
