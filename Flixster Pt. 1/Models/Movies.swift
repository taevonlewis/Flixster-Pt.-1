//
//  Movies.swift
//  Flixster Pt. 1
//
//  Created by TizzyMatic on 3/2/23.
//

import Foundation

let posterBase: String = "https://image.tmdb.org/t/p/w185"
let backdropBase: String = "https://image.tmdb.org/t/p/w1280"

struct Movie {
    // Initial View Properties
    let title: String
    let posterImage: String
    let description: String
    
    // Detail View Properties
    let backdropImage: String
    let voteAverage: Double
    let voteCount: Int
    let popularity: Double
}

extension Movie {
    static var mockMovies: [Movie] = [
        Movie(title: "M3GAN", posterImage: posterBase+"/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg", description: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.", backdropImage: backdropBase+"/q2fY4kMXKoGv4CQf310MCxpXlRI.jpg", voteAverage: 7.5, voteCount: 1822, popularity: 1103.359),
        Movie(title: "Shotgun Wedding", posterImage: posterBase+"/t79ozwWnwekO0ADIzsFP1E5SkvR.jpg", description: "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.", backdropImage: backdropBase+"/zGoZB4CboMzY1z4G3nU6BWnMDB2.jpg", voteAverage: 6.4, voteCount: 560, popularity: 1068.197),
        Movie(title: "The Whale", posterImage: posterBase+"/jQ0gylJMxWSL490sy0RrPj1Lj7e.jpg", description: "A reclusive English teacher suffering from severe obesity attempts to reconnect with his estranged teenage daughter for one last chance at redemption.", backdropImage: backdropBase+"/r7Dfg9aRZ78gJsmDlCirIIlNH3d.jpg", voteAverage: 7.9, voteCount: 573, popularity: 889.766),
        Movie(title: "Ant-Man and the Wasp: Quantumania", posterImage: posterBase+"/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg", description: "Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope's parents Janet van Dyne and Hank Pym, and Scott's daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.", backdropImage: backdropBase+"/3JSoB7eMbCd8sE8alxNiUtrNiTz.jpg", voteAverage: 6.5, voteCount: 788, popularity: 1055.125),
        Movie(title: "Viking Wolf", posterImage: posterBase+"/abBDzmy35A3Nkupn6wK2DKyFamd.jpg", description: "After witnessing a grotesque murder at a party in her new town, a teenager starts having strange visions and bizarre desires.", backdropImage: backdropBase+"/d0YSRmp819pMRnKLfGMgAQchpnR.jpg", voteAverage: 5.6, voteCount: 144, popularity: 781.717)
    ]
}

/*
     {
       "backdrop_path": "/A2avUoNFstnBhAnHiogXQs4c9Bt.jpg",
       "overview": "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.",
       "popularity": 1274.72,
       "poster_path": "/1mZcxuL4GLUvPdEXC4iZPjG2EO3.jpg",
       "release_date": "2023-02-10",
       "title": "Huesera: The Bone Woman",
       "vote_average": 6.4,
       "vote_count": 32
     },
     {
       "backdrop_path": "/nSfR8zUSG33mmtuJTuOBbwlZpCh.jpg",
       "overview": "Detective James Knight 's last-minute assignment to the Independence Day shift turns into a race to stop an unbalanced ambulance EMT from imperiling the city's festivities. The misguided vigilante, playing cop with a stolen gun and uniform, has a bank vault full of reasons to put on his own fireworks show... one that will strike dangerously close to Knight's home.",
       "popularity": 783.288,
       "poster_path": "/jrPKVQGjc3YZXm07OYMriIB47HM.jpg",
       "title": "Detective Knight: Independence",
       "vote_average": 6.2,
       "vote_count": 71
     },
     {
       "backdrop_path": "/f9PSbuMeBS5CuHEOVyymg5lcq8J.jpg",
       "overview": "After a pawn shop robbery goes askew, two criminals take refuge at a remote farmhouse to try to let the heat die down, but find something much more menacing.",
       "popularity": 657.077,
       "poster_path": "/8fwJt0qZieQ7dKaiiqehObWpXYT.jpg",
       "title": "The Price We Pay",
       "vote_average": 6,
       "vote_count": 77
     },
     {
       "backdrop_path": "/5pMy5LF2JAleBNBtuzizfCMWM7k.jpg",
       "overview": "The harrowing true story of two elite US Navy fighter pilots during the Korean War. Their heroic sacrifices would ultimately make them the Navy's most celebrated wingmen.",
       "popularity": 601.276,
       "poster_path": "/lwybGlEEJtXZM3ynY19PNwNlPn9.jpg",
       "title": "Devotion",
       "vote_average": 7.4,
       "vote_count": 339
     },
     {
       "backdrop_path": "/rbUPJoJJquPbX1AiV6GzOqcmJME.jpg",
       "overview": "An army of bear cubs train and indoctrinate young recruits for the war against the unicorns, which threatens the safety of the cubs. Brothers Bluet and Tubby, along with a group of inexperienced cadets, are sent on a dangerous mission to save the Magic Forest, where the unicorns live, and start a terrible battle.",
       "popularity": 578.789,
       "poster_path": "/8KBj11zBaRdhoeq1q9jcAwKmDSk.jpg",
       "title": "Unicorn Wars",
       "vote_average": 6.6,
       "vote_count": 12
     },
     {
       "backdrop_path": "/jhi3K0rN46SSu9wEu6zYVCOeVtH.jpg",
       "overview": "Kara, devastated by the loss of Krypton, struggles to adjust to her new life on Earth. Her cousin, Superman, mentors her and suggests she leave their space-time to attend the Legion Academy in the 31st century, where she makes new friends and a new enemy: Brainiac 5. Meanwhile, she must contend with a mysterious group called the Dark Circle as it searches for a powerful weapon held in the Academy’s vault.",
       "popularity": 494.969,
       "poster_path": "/3whQLi8RI7h2h2Si2KTDFJxfEcR.jpg",
       "title": "Legion of Super-Heroes",
       "vote_average": 6.6,
       "vote_count": 49
     },
     {
       "backdrop_path": "/pketzKFjq5TERXoXFM3L0OYRCLe.jpg",
       "overview": "It has been a year since Mic Mic and Oscar returned from their incredible adventure. And now, after a diabolical plan by Vulture to sabotage the delivery of the Grizzly cub to his opponent in the American presidential elections, Mic Mic, Oscar, Panda teenager and Stork set off on another great adventure as they ride a zeppelin to return little Grizzly to its rightful parents and save the American elections and the whole continent from an erupting volcano.",
       "popularity": 479.566,
       "poster_path": "/dabXVfrAFfhDte8XVemom3mTJog.jpg",
       "title": "Big Trip 2: Special Delivery",
       "vote_average": 6.2,
       "vote_count": 21
     },
 
 */
