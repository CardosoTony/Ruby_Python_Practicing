use std::collections::HashMap;

struct Hero {
    name: String,
    age: u32,
    hero_type: &'static str,
    attack_type: &'static str,
}

impl Hero {
    fn new(name: &str, age: u32, hero_type: &'static str, attack_types: &HashMap<&'static str, &'static str>) -> Hero {
        let attack_type = attack_types.get(hero_type).unwrap_or(&"desconhecido");
        Hero { name: name.to_string(), age, hero_type, attack_type }
    }

    fn attack(&self) {
        println!("O {} atacou usando {}.", self.hero_type, self.attack_type);
    }
}

fn main() {
    let attack_types: HashMap<&'static str, &'static str> = [
        ("warrior", "espada"),
        ("mage", "magia"),
        ("monk", "artes marciais"),
        ("ninja", "shuriken")
    ].iter().cloned().collect();

    let hero1 = Hero::new("Zeno", 523, "ninja", &attack_types);
    let hero2 = Hero::new("Zero", 649, "mage", &attack_types);

    hero1.attack();
    hero2.attack();
}
