//
//  Character.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 4/10/23.
//

import Foundation

struct Character: Codable {
    let id: Int
    let firstName: String
    let lastName: String
    let fullName: String
    let title: String
    let family: String
    let image: String
    let imageUrl: URL
}

//let characters:[Character] =
//[
//
//  Character (
//    id: 0,
//  firstName: "Daenerys",
//  lastName: "Targaryen",
//  fullName: "Daenerys Targaryen",
//  title: "Mother of Dragons",
//  family: "House Targaryen",
//  image: "daenerys.jpg"
//
//  ),
//Character (
//  id: 1,
//  firstName: "Samwell",
//  lastName: "Tarly",
//  fullName: "Samwell Tarly",
//  title: "Maester",
//  family: "House Tarly",
//  image: "sam.jpg"
//
//),
//Character (
//  id: 2,
//  firstName: "Jon",
//  lastName: "Snow",
//  fullName: "Jon Snow",
//  title: "King of the North",
//  family: "House Stark",
//  image: "jon-snow.jpg"
//
//),
//
//Character (
//  id: 3,
//  firstName: "Arya",
//  lastName: "Stark",
//  fullName: "Arya Stark",
//  title: "No One",
//  family: "House Stark",
//  image: "arya-stark.jpg"
//
//),
//  Character (
//  id: 4,
//  firstName: "Sansa",
//  lastName: "Stark",
//  fullName: "Sansa Stark",
//  title: "Lady of Winterfell",
//  family: "House Stark",
//  image: "sansa-stark.jpeg"
//
//),
//  Character (
//   id: 5,
//  firstName: "Brandon",
//  lastName: "Stark",
//  fullName: "Brandon Stark",
//  title: "Lord of Winterfell",
//  family: "House Stark",
//  image: "bran-stark.jpg"
//
//),
//  Character (
//  id: 6,
//  firstName: "Ned",
//  lastName: "Stark",
//  fullName: "Ned Stark",
//  title: "Lord of Winterfell",
//  family: "House Stark",
//  image: "ned-stark.jpg"
//
//),
//  Character (
//  id: 7,
//  firstName: "Robert",
//  lastName: "Baratheon",
//  fullName: "Robert Baratheon",
//  title: "Lord of the Seven Kingdoms",
//  family: "House Baratheon",
//  image: "robert-baratheon.jpeg"
//
//),
//  Character (
//  id: 8,
//  firstName: "Jamie",
//  lastName: "Lannister",
//  fullName: "Jamie Lannister",
//  title: "Lord Commander of the Kingsguard",
//  family: "House Lannister",
//  image: "jaime-lannister.jpg"
//
//),
//  Character (
//  id: 9,
//  firstName: "Cersei",
//  lastName: "Lannister",
//  fullName: "Cersei Lannister",
//  title: "Lady of Casterly Rock",
//  family: "House Lannister",
//  image: "cersei.jpg"
//
//),
//  Character (
//  id: 10,
//  firstName: "Cateyln",
//  lastName: "Stark",
//  fullName: "Catelyn Stark",
//  title: "Lady of Winterfell",
//  family: "House Stark",
//  image: "catelyn-stark.jpg"
//
//),
//Character (
//  id: 11,
//  firstName: "Robb",
//  lastName: "Stark",
//  fullName: "Rob Stark",
//  title: "Lord of Winterfell",
//  family: "House Stark",
//  image: "robb-stark.jpg"
//),
//  Character (
//  id: 12,
//  firstName: "Theon",
//  lastName: "Greyjoy",
//  fullName: "Theon Greyjoy",
//  title: "Captain of Sea Bitch",
//  family: "House Greyjoy",
//  image: "theon.jpg"
//  ),
//  Character (
//  id: 13,
//  firstName: "Joffrey",
//  lastName: "Baratheon",
//  fullName: "Joffrey Baratheon",
//  title: "Lord of the Seven Kingdoms, Protector of the Realm",
//  family: "House Lanister",
//  image: "joffrey.jpg"
//  ),
//  Character (
//  id: 14,
//  firstName: "Tyrion",
//  lastName: "Lannister",
//  fullName: "Tyrion Lannister",
//  title: "Hand of the Queen",
//  family: "House Lanister",
//  image: "tyrion-lannister.jpg"
//  ),
//  Character (
//  id: 15,
//  firstName: "Sandor",
//  lastName: "Clegane",
//  fullName: "The Hound",
//  title: "The Hound",
//  family: "House Clegane",
//  image: "the-hound.jpg"
//  ),
//  Character (
//  id: 16,
//  firstName: "Petyr",
//  lastName: "Baelish",
//  fullName: "Petyr Baelish",
//  title: "Littlefinger",
//  family: "House Baelish",
//  image: "littlefinger.jpg"
//  ),
//  Character (
//  id: 17,
//  firstName: "Davos",
//  lastName: "Seaworth",
//  fullName: "Davos Seaworth",
//  title: "Hand of the King",
//  family: "House Seaworth",
//  image: "davos-seaworth.png"
//)]
