class Hero:
    attack_types = {
        'warrior': 'espada',
        'mage': 'magia',
        'monk': 'artes marciais',
        'ninja': 'shuriken'
    }

    def __init__(self, name, age, hero_type):
        self.name = name
        self.age = age
        self.hero_type = hero_type
        self.attack_type = self.attack_types.get(hero_type)

    def attack(self):
        print(f'O {self.hero_type} atacou usando {self.attack_type}.')

hero1 = Hero('Zeno', 135, 'ninja')
hero2 = Hero('Zero', 354, 'mage')

hero1.attack()
hero2.attack()
