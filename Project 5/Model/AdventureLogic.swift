//
//  AdventureLogic.swift
//  Project 5
//
//  Created by Julien on 1/31/24.
//

import Foundation

struct AdventureLogic {
    
    var adventureIndex = 0
    
    let adventure = [
        Adventure("You have been set on a quest to defeat the great dragon Quenzelthorp.",
                 "Buy supplies",
                 "Train with knights",
                 1,
                 2),
        Adventure("What sort of supplies do you want to buy?",
                 "Potions",
                 "Armor",
                 3,
                 4),
        Adventure("You train with the knights and learn how to weild a sword. Set out for the dragon's lair?",
                 "Yes",
                 "Buy supplies",
                 5,
                 1),
        Adventure("You purchase potions to make you strong. Set out for the dragon's lair?",
                 "Yes",
                 "Train with the knights",
                 5,
                 2),
        Adventure("You purchase the finest armor money can buy. You set out for the dragon's lair.",
                 "Be brave",
                 "Be careful",
                 5,
                 6),
        Adventure("You bravely set out to find the dragon Quenzelthorp. You come to his lair.",
                 "Sneak in",
                 "Declare your arrival",
                 6,
                 7),
        Adventure("You sneak into the dragon's lair and see him sleeping soundly.",
                 "Stab him",
                 "Behead him",
                 8,
                 9),
        Adventure("You announce your presence and your intention to kill Quenzelthorp. The dragon's head peaks out the lair.",
                 "Attack",
                 "Try to talk to the dragon",
                 8,
                 10),
        Adventure("You have slain the great dragon! Victory!",
                 "Start again",
                 "",
                 0,
                 0),
        Adventure("You attempt to behead the dragon but it wakes up and eats you in one bite. Defeat!",
                 "Try again",
                 "",
                 0,
                 0),
        Adventure("After a long discussion you work out a maiden-munching deal with the dragon that works for both of you. Victory!",
                 "Start Again",
                 "",
                 0,
                 0)
    ]
    
    func getChoiceOne() -> String {
        return adventure[adventureIndex].pathOne
    }
    
    func getChoiceTwo() -> String {
        return adventure[adventureIndex].pathTwo
    }
    
    func getNextPath() -> String {
        return adventure[adventureIndex].story
    }
    
    mutating func choiceSelected(_ selectedAnswer: String) {
        if selectedAnswer == adventure[adventureIndex].pathOne {
            adventureIndex = adventure[adventureIndex].resultOne
        } else {
            adventureIndex = adventure[adventureIndex].resultTwo
        }
    }
}
