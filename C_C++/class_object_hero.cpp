#include <iostream>
#include <unordered_map>

class Hero
{
private:
    static std::unordered_map<std::string, std::string> attack_types;
    std::string name;
    int age;
    std::string hero_type;
    std::string attack_type;

public:
    Hero(std::string name, int age, std::string hero_type) : name(name), age(age), hero_type(hero_type)
    {
        attack_type = attack_types[hero_type];
    }

    void attack()
    {
        std::cout << "O " << hero_type << " atacou usando " << attack_type << "." << std::endl;
    }
};

std::unordered_map<std::string, std::string> Hero::attack_types = {
    {"warrior", "espada"},
    {"mage", "magia"},
    {"monk", "artes marciais"},
    {"ninja", "shuriken"}};

int main()
{
    Hero hero1("Zeno", 451, "ninja");
    Hero hero2("Zero", 558, "mage");

    hero1.attack();
    hero2.attack();

    return 0;
}
