//create roster of players
let players: [[String:String]] = [
    ["Name": "Joe Smith",
     "Height": "42",
     "Experience": "YES",
     "Guardian": "Jim and Jan Smith"],
    ["Name": "Jill Tanner",
     "Height": "36",
     "Experience": "YES",
     "Guardian": "Clara Tanner"],
    ["Name": "Bill Bon",
     "Height": "43",
     "Experience": "YES",
     "Guardian": "Sara and Jenny Bon"],
    ["Name": "Eva Gordon",
     "Height": "45",
     "Experience": "NO",
     "Guardian": "Wendy and Mike Gordon"],
    ["Name": "Matt Gill",
     "Height": "40",
     "Experience": "NO",
     "Guardian": "Charles and Sylvia Gill"],
    ["Name": "Kimmy Stein",
     "Height": "41",
     "Experience": "NO",
     "Guardian": "Bill and Hillary Stein"],
    ["Name": "Sammy Adams",
     "Height": "45",
     "Experience": "NO",
     "Guardian": "Jeff Adams"],
    ["Name": "Karl Saygan",
     "Height": "42",
     "Experience": "YES",
     "Guardian": "Heather Bledsoe"],
    ["Name": "Suzane Greenberg",
     "Height": "44",
     "Experience": "YES",
     "Guardian": "Henrietta Dumas"],
    ["Name": "Sal Dali",
     "Height": "41",
     "Experience": "NO",
     "Guardian": "Gala Dali"],
    ["Name": "Joe Kavalier",
     "Height": "39",
     "Experience": "NO",
     "Guardian": "Sam and Elaine Kavalier"],
    ["Name": "Ben Finkelstein",
     "Height": "44",
     "Experience": "NO",
     "Guardian": "Aaron and Jill Finkelstein"],
    ["Name": "Diego Soto",
     "Height": "41",
     "Experience": "YES",
     "Guardian": "Robin and Sarika Soto"],
    ["Name": "Chloe Alaska",
     "Height": "47",
     "Experience": "NO",
     "Guardian": "David and Jamie Alaska"],
    ["Name": "Arnold Willis",
     "Height": "43",
     "Experience": "NO",
     "Guardian": "Claire Willis"],
    ["Name": "Phillip Helm",
     "Height": "44",
     "Experience": "YES",
     "Guardian": "Thomas Helm and Eva Jones"],
    ["Name": "Les Clay",
     "Height": "42",
     "Experience": "YES",
     "Guardian": "Wynonna Brown"],
    ["Name": "Herschel Krustofski",
     "Height": "45",
     "Experience": "YES",
     "Guardian": "Hyman and Rachel Krustofski"]
]

//initialize the teams
var teamSharks: [[String:String]] = []
var teamDragons: [[String:String]] = []
var teamRaptors: [[String:String]] = []

//populate the teams
func createTeams(fromRoster players: [[String:String]]) {
    for player in players {
        
        var sharkYesCounter = 0
        var dragonYesCounter = 0
        var raptorYesCounter = 0
        
        var sharkNoCounter = 0
        var dragonNoCounter = 0
        var raptorNoCounter = 0
        
        for  person in teamSharks {
            if person["Experience"] == "YES" {
                sharkYesCounter += 1
            } else {
                sharkNoCounter += 1
            }
        }
        
        for person in teamDragons {
            if person["Experience"] == "YES" {
                dragonYesCounter += 1
            } else {
                dragonNoCounter += 1
            }
        }
        
        for person in teamRaptors {
            if person["Experience"] == "YES" {
                raptorYesCounter += 1
            } else {
                raptorNoCounter += 1
            }
        }
        
        let fewestYes = min(min(sharkYesCounter, dragonYesCounter), raptorYesCounter)
        let fewestNo = min(min(sharkNoCounter, dragonNoCounter), raptorNoCounter)
        
        if player["Experience"] == "YES" {
            switch fewestYes {
            case sharkYesCounter: teamSharks.append(player)
            case dragonYesCounter: teamDragons.append(player)
            default: teamRaptors.append(player)
            }
        } else {
            switch fewestNo {
            case sharkNoCounter: teamSharks.append(player)
            case dragonNoCounter: teamDragons.append(player)
            default: teamRaptors.append(player)
            }
        }
    }
}

createTeams(fromRoster: players)

//initialize the letters
var letters: [[String]] = []

//create the letters
func createLetters(fromRoster players: [[String:String]]) {
    for player in players {
        var team: String = ""
        var time: String = ""
        
        for person in teamSharks {
            if player == person {
                team = "Sharks"
                time = "March 17, 3pm"
            }
        }
        
        for person in teamDragons {
            if player == person {
                team = "Dragons"
                time = "March 17, 1pm"
            }
        }
        
        for person in teamRaptors {
            if player == person {
                team = "Raptors"
                time = "March 18, 1pm"
            }
        }
        
        letters.append([
            "Dear " + player["Guardian"]! + ",\n" +
                "We are excited to welcome " + player["Name"]! + " to this year's soccer league!"  + "\n" +
                player["Name"]! + " has been assigned to the " + team + " team." + "\n" +
                "The first practice for the " + team + " team will be " + time + "."  + "\n" +
                "We look forward to meeting you all then!" + "\n" +
                "Sincerely," + "\n" +
                "Super Fun Soccer, inc." + "\n"
            ])
    }
}

createLetters(fromRoster: players)

//write the letters
func writeLetters(fromList letters: [[String]]) {
    for letter in letters {
        print(letter[0])
    }
}

writeLetters(fromList: letters)







