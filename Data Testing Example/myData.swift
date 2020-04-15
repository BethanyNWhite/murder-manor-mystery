//
//  myData.swift
//  Data Testing Example
//
//  Created by The Delta School Student on 2/5/20.
//  Copyright © 2020 The Delta School Student. All rights reserved.
//

import Foundation

let characterNameArray = ["Anna WeatherBee", "Benjamin Topaz", "Helen Borden", "Kat Grange", "Merida Evernever", "Lili Felton", "Toni Blossom", "Camila Weatherbee",  "Tori Blossom", "Fred Borden", "Elsa Parkinson"]
// ^^ That has 5 characters, remember numbering starts at 0, not 1
// Anna = 0, Ben = 1, Helen = 2, etc
let descriptionArray =
[//ANNA
    "Your name is Anna Weatherbee. You are the daughter of Camila Weatherbee and the fiance of Benjamin Topaz. You've recently become an English teacher, follwing in your mothers footsteps. Another important thing is that YOU HAVE THE CURE TO THE PANDEMIC. Under no circumstance are you to share this information with anyone. If everyone knows, everyone will want it. And there is only enough of it for a small amount of people. Why share it so that it can be reproduced? Then you and your loved ones might not even be able to have any of it!",
//BENJAMIN
    "Your name is Benjamin Topaz. You are a young man engaged to Anna Weatherbee. Both of your parents have recently died because of the Spanish flu and your main concern is that your fiance doesn't die as well.",
//HELEN
    "Your name is Helen Borden. You are the sister of Fred Borden, the cousin of Lili Felton, and the best friend of Merida Evernever. You've never worked a day in your life - your parents made sure of that. Your only job in the world is to marry. So it has been satisfiying to finally have a source of amusement besides the local opera house - this pandemic. You parents died nearly five years ago now, but not of the Spanish flu. They were merely old. And you know your older brother wouldn't dare die when he still has you to take care of. You're only seventeenSo you sit back and relax while occasinally sneaking out to spend time with Merida. She's such a lively girl, a good distraction from being so proper all the time although she probably won't find as good a husband as you will. Her hands are too rough.",
//KAT
    "Your name is Kat Grange. You are, or were, the spouse of a detective. You believe that out of all the people in this group, you are the most qualified because of your experience hearing about your husband interrogating people. Being an only child whose parents died of old age a long time ago and whose husband died from the Spanish flu two months back, you don't have anyone you could lose during this pandemic and are less worried about it than other, more easliy frightened, people.",
//MERIDA
    "Your name is Merida Evernever. You are a good friend of Helen Borden although not of her brother, Fred, who always says you're a bad influence because you are a waitress. He is so old-fashioned. Just because you're working wherever you can to help bring money home to your parents farm doesn't mean that you are a bad influence. The Bordens wouldn't understand though - neither of those city-folks have worked a day in their lives. Even your best friend Helen is more acquainted with her own amusement and plans for marriage than with things like work. The thing you want most in the world right now is to find the cure and use it to save yourself, Helen, Tori, and Toni, the boy who has been courting you for about a year now.",
//LILI
    "Your name is Lili Felton. You are the cousin of Fred and Helen Borden although you don't necessarily like them. You believe that they are both self-centered city-folk who don't understand what it is to be a working farm girl. You have worked for their family since you were fourteen and they haven't changed a bit. They're much too acquainted with money.",
//TONI
    "Your name is Toni Blossom. You are the twin brother of Tori and the childhood friend of both Anna Weatherbee and Benjamin Topaz. Just like Ben, you have recently lost both parents to the Spanish flu although somehow both you and your sister were able to survive. Now your only two jobs are to protect your sister and find this cure so you can save her, yourself, and Merida, the girl you've decided you are going to marry, before giving it to the authorities to use however they want.",
//CAMILA
    "Your name is Camila Weatherbee. You are the mother of Ana Weatherbee. Before the pandemic started spreading, you were a teacher at a nearby elementary school. Now your main focus is that your daughter doesn't die. You would do anything to ensure her survival of this terrible disease.",
//TORI
    "Your name is Tori Blossom. You are the twin sister of Toni and the childhood friend of both Anna Weatherbee and Benjamin Topaz. Your parents both died not too long ago of the Spanish flu although you and your brother both survived. The only thing you want to do right now is find the cure so you can save everybody. You've lost so much - your parents, your job working as a housekeeper for one of the families in the city. You don't want to lose anything else too.",
//FRED
    "Your name is Fred Borden. You are the brother of Helen Borden and the cousin of Lili Felton. Your only preoccupation is getting this cure for yourself and your little sister. You can't think of anyone else who deserves it more.",
//ELSA
    "Your name is Elsa Parkinson. You are the aunt of Benjamin Topaz, your last living relative. Your favorite hobbies consist of baking and knitting, occasionally at the same time. You've already lost your husband, sister, and brother-in-law to this pandemic. The only reason you've kept going is because of the love you have for Benjamin. If he dies, you'll probably just succumb to the disease. Then there'd be no reason to keep fighting."]

let notificationTimeHOUR = [6, 7]
let notificationTimeMIN = [10.20,30,40,45,50,55,00,05,10,15,20,25,30,40,41]
//
//Anna Weatherbee
let notificationContent0 = ["You notice that Helen Borden thinks that you have the cure and immediately begin to act offended. You have always been so nice to her… Why is she being suspicious of you now? Of course, she is right. But she can’t know that!","All these people are dying and you have the cure. You begin to become very nervous although you still decide not to share it. If anyone confronts you, you'll refuse to admit it.","You break down and admit to everyone that you have the cure and were planning on sharing it but not until after you’d convinced your mother to take it."]
//Benjamin Topaz
let notificationContent1 = ["You begin telling the sad story about how your parents are dead which has postponed your wedding. You genuinely wish the person with the cure would share so that you don’t lose anymore family.", "You begin to feel really tired and slightly chilly. This is how it begins… You begin to plead with everyone saying that you think you have the Spanish Flu."]
//Helen Borden
let notificationContent2 = ["You believe that Anna must have the cure. She’s always appeared to be super sweet and loving - this is why you believe she must be the one to have the cure. Anna’s the one nobody would suspect and she knows it.","You begin to feel cold and exhausted. You decide it must be because of all this arguing and stress. It must be terrible for young ladies to overwork their minds like this."]
//Kat Grange
let notificationContent3 = ["You notice Benjamin’s genuine anxiety and decide that out of everyone that could be withholding the cure - it would not be him.","You decide that Tori and Merida must not have the cure either. They were both very upset at Toni dying. If they had it, they would have shared it with at least him. Perhaps Fred and Helen? You confront them about it.","Could Lili have the cure? And have just wanted to keep it until her cousins died? Everyone knows that she never really liked them.","What about Anna? Could she have it? She’s always been a sweet girl, but she’s recently become a nervous wreck. You confront her in front of everyone.","You found the cure! Looks like you’re as good at being a detective as your husband was!"]
//Merida Evernever
let notificationContent4 = ["You begin to try to comfort Tori. You and her brother… had been courting for some time now. You’d hoped that you’d be able to marry and then the three of you, you’d included Tori in your dreams of the future, would be able to live together until Tori left and married.","You are beside yourself with grief. Your best friend and your lover are both gone."]
//Lili Felton
let notificationContent5 = ["Hearing Camila’s suspicions that Merida would have the cure makes you smile. Merida is a good, hardworking girl whose only fault is thinking that your cousins are her true friends. You think that it is actually Helen and Fred who have the cure and aren’t sharing with anyone else because they only care about themselves and their family.","You can’t help but be slightly satisfied that your terrible cousins are both dead. They weren’t good people anyway."]
//Toni Blossom
let notificationContent6 = ["You’ve been feeling symptoms for a while now but haven’t said anything because you didn’t want to scare your twin sister. Now, you speak up - but don’t mention your symptoms."]
//Camila Weatherbee
let notificationContent7 = ["Out of the eleven people present who could have the cure, you immediately decide it isn’t Benjamin (he’s too sweet and you were good friends with his mother before she died), obviously it isn’t Anna (you know your daughter too well to think she’d keep a cure from anyone), and it must not be Elsa either (you two went to school together way back when).","You can’t believe that your daughter would do something like this. You thought you raised her better than this."]
//Tori Blossom
let notificationContent8 = ["It must be Merida. It just makes sense. She’s always been quiet and secretive. You know it isn’t you or your twin brother, Toni. And it can’t be Camila, Anna, or Benjamin either. They’re all too nice. Out of Elsa, Lili, Fred, and Merida - Merida is the only one that makes you immediately suspicious. You tell Camila, Fred, and Tony of your thoughts.", "It can’t be true. Toni? Dead? Toni could withstand anything. He’s always been fine. Always. When your parents died, he was fine. He’s always been fine. He can’t be dead. You begin to break down and start accusing people of ignoring Toni while he died."]
//Fred Borden
let notificationContent9 = ["You begin to start panicking. People are already dying! You begin promising everything - money, your farm, the business you inherited from your father, the china sets your mother left Helen. Anything so you and your little sister might live!","You begin to feel the symptoms of the Spanish flu and realize that your sister is as well. Oh, there’s no point in telling her. She’d just become hysterical. You swallow your fear and begin to accuse people of having the cure. It is entirely malicious for someone to have everyone’s well being in their hands and yet not share it."]
//Elsa Parkinson
let notificationContent10 = ["Your beloved nephew is dead. At least you might be able to go with him… You’ll see him, your sister, your husband, your parents… You’ll see them all again. If only whoever has the cure would share it with everyone else so you can go with a peaceful mind!"]
//Everyone
let notificationContentEveryone0 = ["The Spanish flu has been killing people for a few years now and someone in this group of friends has the cure! It is up to this eleven to figure out who it is to end the spread of this pandemic!", "Unfortunately, Benjamin Topaz is dead and his aunt, Elsa Parkinson, is beginning to feel the symptoms.", "Elsa Parkinson and Toni Blossom are both dead from the Spanish flu." ,"Helen and Fred Borden have both died from the Spanish Flu.","The Spanish flu has ended! You found the cure!"]
 
