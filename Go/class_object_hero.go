package main

import "fmt"

var attackTypes = map[string]string{
	"warrior": "espada",
	"mage":    "magia",
	"monk":    "artes marciais",
	"ninja":   "shuriken",
}

type Hero struct {
	name       string
	age        int
	heroType   string
	attackType string
}

func NewHero(name string, age int, heroType string) Hero {
	attackType, exists := attackTypes[heroType]
	if !exists {
		attackType = "desconhecido"
	}
	return Hero{
		name:       name,
		age:        age,
		heroType:   heroType,
		attackType: attackType,
	}
}

func (h Hero) Attack() {
	fmt.Printf("O %s atacou usando %s.\n", h.heroType, h.attackType)
}

func main() {
	hero1 := NewHero("Zeno", 432, "ninja")
	hero2 := NewHero("Zero", 622, "mage")

	hero1.Attack()
	hero2.Attack()
}
