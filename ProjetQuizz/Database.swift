//
//  Database.swift
//  MySwiftUI
//
//  Created by AxelGilbin on 16/03/2020.
//  Copyright © 2020 AxelGilbin. All rights reserved.
//

import Foundation

enum Theme: String, CaseIterable {
    
    case cinema = "Cinema"
    case art = "Art"
    case musique = "Musique"
    case jeux = "Jeux"
    case science = "Science"
    case lecture = "Lecture"
    case sport = "Sport"
    case histoire = "Histoire"
    case voyage = "Voyage"
    case nature = "Nature"
    case star = "Star"
    case divers = "Divers"
}

struct ThemeSelect: Identifiable {
    let id = UUID()
    let name:String
    let type:Theme
    var isSelect:Bool = false
    
    init(theme: Theme) {
        self.name = theme.rawValue
        self.type = theme
    }
    
    mutating func IsSelect(newSelect:Bool){
        self.isSelect = newSelect
    }
}

func ThemeList()->[ThemeLine]{
    let themeAll = Theme.allCases.map{ theme in ThemeSelect.init(theme: theme)}
    var themeLine:[ThemeSelect] = []
    var themeListing:[ThemeLine] = []
    
    for theme in themeAll
    {
        themeLine.append(theme)
        if(themeLine.count) % 3 == 0{
            themeListing.append(ThemeLine(themes: themeLine))
            themeLine.removeAll()
        }
    }
    return themeListing
}

struct ThemeLine: Identifiable {
    let id = UUID()
    var themes: [ThemeSelect]
    
    func NSelect() -> Int {
        var nSelect = 0
        for theme in self.themes{
            if theme.isSelect == true {
                nSelect += 1
            }
        }
        return nSelect
    }
    
    mutating func AllClick() {
        for idx in 0..<themes.count {
            if(themes[idx].isSelect == true){
                themes[idx].isSelect = false
            }
            else{
                themes[idx].isSelect = true
            }
        }
    }
    
}

struct Questions{
    
    let question:String
    let bonneReponse:String
    let mauvaiseRep1:String
    let mauvaiseRep2:String
    let mauvaiseRep3:String
    let theme:Theme
    let information:Int
    
}

var question: [Questions] = [Questions(question: "En combien de temps s'est construite la tour Eiffel", bonneReponse: "2 ans", mauvaiseRep1: "5 ans", mauvaiseRep2: "10 ans", mauvaiseRep3: "13 ans", theme: .histoire , information: 1)]

struct Informations {
    
    let id:Int
    let image:String
    let text:String
    let lien:String
}

var information: [Informations] = [Informations(id: 1 , image: "eiffel.jpeg", text: "blablabla \r  blablabla", lien: "www.eiffel.com")]


struct Users{
    
    let name:String
    var ratio:Double
    var badge:[Badges] = []
}

var user: [Users] = [Users(name: "UserTest", ratio: 0)]

struct Badges {
    
    let logo:String
    let description:String
}

var badge : [Badges] = [Badges(logo: "heart.fill", description: "Première utilisation de l'application :) !"), Badges(logo: "tortoise.fill", description: "Champion du theme Nature !")]
