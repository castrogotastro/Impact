EXTERNAL playsound(soundName)
VAR pacifying_lie = 0
VAR hard_truth = 0
#image:draft2_car1Road
#sound:Blizzard_Loop
#sound:CarDrive_Loop

-> opening_scene
#image:draft2_car1Road

=== opening_scene ===
#sound:CarHorn1
#sound:CarBreak
The blare of a car horn startles you as you hastily drive out of your office parking lot. You slam on the brakes, barely managing to avoid hitting another car. The driver flips you off.
*[skip to end scene]  -> end_scene
*[Swear at him.]  -> driver_reaction
*[Flip him off back.] -> flip_off

= driver_reaction
#sound:CarDrive_Loop
“Fuck off!”
#sound:CarHorn2
He honks at you once again, leaving you in his dust.
-> late

= flip_off
#sound:CarDrive_Loop
You flip him off in return.
#sound:CarHorn2
He honks at you once again, leaving you in his dust.
-> late

= late

You sneak a glance at your watch. It’s 4:56PM. Shit.
#sound:Ringtone_Start
Your ringtone echoes through your car. The phone mounted on your dashboard reads NESS.

*[Accept the call.] -> accept_call
+[Ignore the call.] -> ignore_call

= ignore_call
#sound:Ringtone_Stop
#sound:Ringtone_StartDelayed
You ignore the call, and enjoy a scant few seconds of blissful silence before your ringtone comes through again.

*[Accept the call.] -> accept_call
+[Ignore the call.] -> ignore_call

= accept_call
#sound:Ringtone_Stop
You reluctantly accept the call, quickly switching it to speaker.
"Why the fuck did I just get a call from the school that our daughter is still waiting to be picked up?!" She screams. You flinch at her deafening inquiry.

*[Calmly explain that you’re on your way.] -> patient
*[Sarcastically say hello.] -> cynical
*[Tell her to leave you alone.] -> angry

= patient
You sigh. “I’m on my way, Ness.”
"You are two fucking hours late, Stan! You should've been on your way ages ago!" She bursts with an anger you can feel even through the other side of the call.
-> stan_reaction

= cynical
You scoff. “Hello to you, too.”
"Hello my ass, you shit bag. You are two fucking hours late to pick up Bonnie!" She bursts with an anger you can feel even through the other side of the call.
-> stan_reaction

= angry
You scowl at nothing. “Oh, get off my ass.”
"You couldn’t pay me to get on your ass, but as long as you’re the father to my daughter, you better keep your fucking promises, you piece of shit!" She bursts with an anger you can feel even through the other side of the call.
-> stan_reaction

= stan_reaction
#sound:Heartbeat
Your blood is boiling. Your day’s already been shit, but she has a way of pushing your buttons like no other.

*[Lie about the reason you're late.] -> lie
*[Be honest about the reason you're late.] -> truth

= lie
"As it fucking happens, I've been stuck on the highway because of an accident. Completely stopped traffic. But I'm finally moving now," you say with a straight face as you speed through the highway.
-> ness_disbelief

= truth
"Well, I have to keep my job to pay child support and, in case you weren’t aware, you can't just leave whenever you want if you're trying not to be laid off!" You say while speeding through the highway.
-> ness_priorities

= ness_disbelief
"Oh, so NOW you’re moving? That's so good, Stanley, that's so perfectly dandy," she says sarcastically. "If you’re gonna talk out of your ass, you could at least try and make it believable! You think I wouldn't know if there was a crash on the way to my kid's school? I'm not a degenerate parent like you!"

*[Tell her to fuck off.] -> opening_end_1
*[Tell her you’re trying your fucking best.] -> opening_end_2

= ness_priorities
"Oh, it's so good to see you have your priorities figured out, Stanley," she says sarcastically. "I’m definitely the one at fault here for expecting you to keep your fucking promises and not make your daughter wait for two hours while you suck your boss' dick so you can pay less than a quarter of her expenses. You are truly father of the year".

*[Tell her to fuck off.] -> opening_end_1
*[Tell her you’re trying your fucking best.] -> opening_end_2

= opening_end_1
Enraged, you curse at the navigation panel. “Fuck off, Ness. Why are you such a cunt?”
With your eyes off the road and your mind clouded with rage, you fail to see the black ice ahead of you.

*[Hit the brakes.]
#sound:CarSlide

- You slam the brakes, but it’s too late. Your car begins to veer towards the roadside fence.

*[Try to recover the steering wheel.]

#sound:BarrierSnap

- It’s no use. Your car skids and you lose control, slamming into the barrier. It snaps like a twig, and before you know it, you’re launching off the edge of a cliff.

*[There’s nothing you can do.]

#sound:CarFallFadeAway
- While you hurtle down the cliff in slow motion, the sun shines brightly into your eyes, and just like that your life starts to flash before you, bringing with it a memory you'd rather forget.

*[Enter Memory.] -> memory_one

= opening_end_2
Enraged, you curse at the navigation panel. “I’m trying my fucking best here!”
With your eyes off the road and your mind clouded with rage, you fail to see the black ice ahead of you.

*[Hit the brakes.]

#sound:CarSlide
- You slam the brakes, but it’s too late. Your car begins to veer towards the roadside fence.

*[Try to recover the steering wheel.]


#sound:BarrierSnap

- It’s no use. Your car skids and you lose control, slamming into the barrier. It snaps like a twig, and before you know it, you’re launching off the edge of a cliff.

*[There’s nothing you can do.]

#sound:CarFallFadeAway
- While you hurtle down the cliff in slow motion, the sun shines brightly into your eyes, and just like that your life starts to flash before you, bringing with it a memory you'd rather forget.

// end of prologue

*[Enter Memory.] -> memory_one

=== memory_one ===
#image:draft2_memory1Divorce
#sound:StopBlizzardLoop
#sound:RoomToneLoop
#sound:DoorSlam
The resounding slam of the door snaps you out of your reverie. You lean back to peek around the corner at the foyer - and your wife.
#sound:StoveLoop
Her shoulders are slumped. She takes a deep breath, but doesn't turn to face you.

*[Check in on her.] -> check_in
*[Stay silent.] -> stay_silent

= check_in
“Ness? What’s wrong?”
She lets out a bitter laugh.
-> ness_approach

= stay_silent
Another few seconds pass in tense silence.
-> ness_approach

= ness_approach
When she finally turns, her face is eerily devoid of any strong emotion. The dark bags under her eyes are more pronounced than ever. She seems... resigned.
"We need to talk."

*[Ask her what she wants to talk about.] -> about_what
*[Stay silent.] -> ness_continue

= about_what
“About what?”
"I feel like you know."
-> ness_continue

= ness_continue
She beckons towards the dinner table, taking slow, measured steps inside until she’s seated.
#sound:StopStove
You turn the stove off and join her at the table.
#sound:PapersThrow
She sighs deeply, reaches into her bag, and pulls out a stack of papers, throwing them onto the table in front of you.
Divorce papers.
You feel...
*[Resigned.] -> resigned
*[Sad.] -> sad
*[Angry.] -> angry
*[A muddled combination of everything, all at once.] -> combination

= resigned
You did know this was coming. You were expecting it sooner, if anything. "You’re sure?"
Ness stares at you. If you focus, you can almost see a tinge of regret. “We can’t keep going like this.” -> stan_reaction

= sad
You can't help the tears that spring to your eyes. "But…" A sob springs forth before you can say much else.
Ness looks at you, pity in her eyes. It somehow makes everything hurt more. “It’s for the best. You know that.” -> stan_reaction

= angry
You feel your breath quicken, hands turning to fists at your side. “That’s it, then? You’re taking the easy way out?” 
As always, she meets fire with fire. “You can’t be fucking serious. The easy way?” -> stan_reaction

=combination
You can't even begin to parse the torrent of emotions that flood into you. You open and close your mouth a few times, words catching in your throat as you realize none of them adequately convey how you’re feeling.
Ness looks at you expectantly, expression frustratingly indecipherable. -> stan_reaction

= stan_reaction
"You can't just give up on us!"
She scoffs. "Sure. That's rich, considering this all started because you just couldn't fucking give up."

*Ouch.[]
-> ouch

= ouch
"Ness..."
"I can't trust you anymore, Stan. Do you hear me? I can't trust my own goddamn husband.” Taking a deep breath, she goes in for the kill. “Bonnie can't grow up like this."

*[You know you can't change. You say you will anyway.] -> lie
*[You know she's right, but you still love her. You love your family.] -> truth

= lie
~ pacifying_lie++
You take a step towards her, and try not to flinch at the way she steps back, crossing her arms.
"I can change, baby. I can be better."
She searches your eyes, and finds you wanting.
"You don’t even believe that." -> end_of_one

= truth
~ hard_truth++
Your shoulders slump. "I know I fucked up. I know there's nothing I can do to fix things. But I love you. I love both of you so much. Shouldn't that count for something?"
She bites her lip as tears fill her eyes.
"I wish that's all it took."
"So what can I do?"
"I'm not sure there's anything you can do." -> end_of_one

= end_of_one
She clenches her jaw. "I gave you second and third and hundredth chances. I still love you, but I can't keep waiting for another bombshell to drop."
A painful silence stretches between the two of you.
"Read over those. Bonnie's gonna spend most of her time with me, but..." She sighs. "Just read it. Find me when you're ready to sign."
She stands up and walks away, but you barely register her final words through the roaring in your ears.

// end of memory one

{pacifying_lie > hard_truth: -> end_of_one_one}
{hard_truth > pacifying_lie: -> end_of_one_two}

= end_of_one_one

*[Further back.] -> memory_two_one

= end_of_one_two

*[Further back.] -> memory_two_two

=== memory_two_one === 
#image:draft2_memory2Playing
#sound:PlayRadioMusic
The music blares out of the cheap bluetooth speaker as you lean on the dining table, out of breath.
Lenny, the doll you're doing a bad clown voice for, doesn’t miss a beat. "Down he goes! Getting tired, old man?"
Bonnie giggles and continues dancing. “I’m the bestest dance off champion!” She strikes her final pose as the music ends.

*[Make the crowd chant Bonnie's name.]
*[Make crowd roaring sounds.]

- Bonnie reaches out a hand to high five Lenny. You oblige her, your heart warm as a bright smile graces her face. "We can do this all day!"
“Best duo ever! Oh wait? What’s this?” You mime the doll whispering in your ear. “I’m hearing Daddy has a new dance partner!”
Bonnie looks at you in shock as you scamper out of the kitchen and return with a wrapped gift. "For you, sweetie."
She begins to reach for the gift, but quickly steps back, eyes wide. "Mommy says we only get gifts on big days."

*[Tell her it is a big day.] -> big_day
*[Jokingly threaten to keep the gift.] -> joke_threat

= big_day
“It’s not every day you beat me in a dance off.”
-> present

= joke_threat
“I mean, I could always keep it for myself…”
-> present

= present
#sound:UnwrapGift
Bonnie takes the gift from your hands and quickly unwraps it. It's a new doll, much fancier than Lenny.
She jumps with excitement. "Thank you thank you thank you!"
#sound:ThrowPackaging
Packaging flies around the room as she tears the doll free from the plastic.
#sound:FrontDoorCloseMem2
You hear the front door closing from the living room, and the voice of your wife calling from the foyer. "I'm home!"
“We’re in here!” Bonnie says brightly, fiddling with the buttons on the doll.

- Ness enters the living room in her business attire. Her shoulders are slumped with exhaustion, the overtime clearly taking its toll.
"Mommy, look what daddy got me!" Bonnie runs towards Ness with the new doll in her hands.
She presses a button on the doll, and the doll speaks: “You’re a rockstar!”
Ness smiles, but it doesn't reach her eyes. "Oh, did he?" She glances at you, then crouches to talk to your daughter. "Could you play with her in your room sweetie? Mommy has to talk to your dad." 
#sound:BedroomDoorClose
Bonnie just smiles brightly. "Okay!" She runs past the both of you and into her room, the door lightly shutting behind her. The sounds of her and the new doll fade into the distance.
You look at Ness. She stares back.

*[Start the conversation seriously.] -> trouble
*[Lighten the tension with a joke.] -> sexy

= trouble
"Am I in trouble?"
"I don't know. Are you?"
You furrow your brow. "What do you mean?"
-> ness_asks

= sexy
"Is this sexy talk?"
"Oh, you wish."
-> ness_asks

= ness_asks
#image:draft2_memory2TruthTalk
Ness walks into the living room and sits on the couch. With trepidation, you sit with her. She seems very serious about this.
She lets out a deep breath. "Do you know how much money we have for our retirement? Or Bonnie's college fund?"
“You expecting an exact amount?”

- She rolls her eyes. "It's zero. Nothing. Nada. You know why? Because we are very much broke," she affirms. "So now I’m thinking, where the hell did you get the money for this fancy ass doll, Stan?"

*[Say you've been working double shifts.] -> lie
*[Admit you've been gambling again.] -> truth

= lie
“I’ve been working double shifts.”
Her eyes widen. “Really? Honey…”
You reach over and take her hand."That's why I came home so late last night."
Ness gets up, laughing.
"Fuck off. You were at the bar last night. I saw it on Tony's Instagram."
Shit. "That was after--” You stutter.
"Cut the crap, Stan. Tell me the truth."

*[Tell her the truth] -> the_bet
*[Double down.] -> push

= the_bet
~ hard_truth++
You sigh. "I did put some money on the Vikings last night, and-"
“And you really didn’t think I’d find out you were betting AGAIN?” She gets up, shaking in anger. “You’re a fucking idiot, Stan.”

*[Fight back.] -> idiot
*[Bring up Bonnie.] -> bonnie_deflect


= push
~ pacifying_lie++
"I ain't lying to you. I swear." You hope your face doesn't give you away.
She looks at you, tears in her eyes.
"And why would you think I’d believe you this time? "
That doesn't feel good.
-> she_done

= truth
~ hard_truth++
"I'm not gonna lie, baby. Last night I put some money on the Vikings and-"
"You were betting again?!" She gets up, shaking in anger. "You’re a fucking idiot, Stan."

*[Fight back.] -> idiot
*[Bring up Bonnie.] -> bonnie_deflect

= idiot
"Oh,I'm an idiot for making money now?"
"You're a fucking idiot for, YET AGAIN, putting the future of our family, of our CHILD, at risk!"
"How is me bringing home money putting you at risk?"
"And when you don't bring home money, huh? When you lose the rent like you did last month, making me work my ass off to make up for your stupidity?"
Ness looks at you with a mix of anger, remorse and resignation. It doesn't feel good.
-> she_done

= bonnie_deflect
“Bonnie doesn’t seem to think so, and in case you forgot, I’m doing this all for her.”
Ness shakes her head, shaking with rage. "Of course she doesn’t think so, she’s a fucking CHILD! Who gives a fuck about where the money came from, or paying the bills? She got a cool doll! So you get to be the daddy who brings a gift home while I’m the one that doesn’t have the time to even see her!"
Ness looks at you with a mix of anger, remorse and resignation. It doesn't feel good.
-> she_done

= she_done
"I'm done with you, Stan." She goes to leave the room.
"I'm done with YOU, Vanessa!" You yell at her retreating back.
All you get in return is silence.

{pacifying_lie > hard_truth: -> end_of_two_one}
{pacifying_lie == hard_truth: -> end_of_two_two}
{hard_truth > pacifying_lie: -> end_of_two_three}

= end_of_two_one
*[Even further back.] -> memory_three_one

= end_of_two_two
*[Even further back.] -> memory_three_two

= end_of_two_three
*[Even further back.] -> memory_three_three

=== memory_two_two ===
#image:draft2_memory2Playing
#sound:PlayRadioMusic
The music blares out of the cheap bluetooth speaker as you lean on the dining table, out of breath.
Lenny, the doll you're doing a bad clown voice for, doesn’t miss a beat. "Down he goes! Getting tired, old man?"
Bonnie giggles and continues dancing. “I’m the bestest dance off champion!” She strikes her final pose as the music ends.

*[Make the crowd chant Bonnie's name.]
*[Make crowd roaring sounds.]

- Bonnie reaches out a hand to high five Lenny. You oblige her, your heart warm as a bright smile graces her face. "We can do this all day!"
“Best duo ever! Oh wait? What’s this?” You mime the doll whispering in your ear. “I’m hearing Daddy has a new dance partner!”
Bonnie looks at you in shock as you scamper out of the kitchen and return with a wrapped gift. "For you, sweetie."
She begins to reach for the gift, but quickly steps back, eyes wide. "Mommy says we only get gifts on big days."

*[Tell her it is a big day.] -> big_day
*[Jokingly threaten to keep the gift.] -> joke_threat

= big_day
“It’s not every day you beat me in a dance off.”
-> present

= joke_threat
“I mean, I could always keep it for myself…”
-> present

= present 
#sound:UnwrapGift
Bonnie takes the gift from your hands and quickly unwraps it. It's a new doll, much fancier than Lenny.
She jumps with excitement. "Thank you thank you thank you!"
#sound:ThrowPackaging
Packaging flies around the room as she tears the doll free from the plastic.
#sound:FrontDoorCloseMem2
You hear the front door closing from the living room, and the voice of your wife calling from the foyer. "I'm home!"
“We’re in here!” Bonnie says brightly, fiddling with the buttons on the doll.

- Ness enters the living room in her business attire. Her shoulders are slumped with exhaustion, the overtime clearly taking its toll.
"Mommy, look what daddy got me!" Bonnie runs towards Ness with the new doll in her hands.
She presses a button on the doll, and the doll speaks: “You’re a rockstar!”
Ness smiles, but it doesn't reach her eyes. "Oh, did he?" She glances at you, then crouches to talk to your daughter. "Could you play with her in your room sweetie? Mommy has to talk to your dad." 
#sound:BedroomDoorClose
Bonnie just smiles brightly. "Okay!" She runs past the both of you and into her room, the door lightly shutting behind her. The sounds of her and the new doll fade into the distance.
You look at Ness. She stares back.

*[Start the conversation seriously.] -> trouble
*[Lighten the tension with a joke.] -> sexy

= trouble
"Am I in trouble?"
"I don't know. Are you?"
You furrow your brow. "What do you mean?"
-> ness_asks

= sexy
"Is this sexy talk?"
"Oh, you wish."
-> ness_asks

= ness_asks
#image:draft2_memory2TruthTalk
Ness sits on the couch. With trepidation, you sit with her. She seems very serious about this.
She lets out a deep breath. "Do you know how much money we have for our retirement? Or Bonnie's college fund?"
“Not really, no.”

- She rolls her eyes. "It's zero. Nothing. Nada. You know why? Because we are very much broke," she affirms. "So now I’m thinking, where the hell did you get the money for this fancy ass doll, Stan?"

*[Say you've been working double shifts.] -> lie
*[Admit you've been gambling again.] -> truth

= lie
“I’ve been working double shifts.”
“Double shifts?”
"That's why I came home so late last night."
Ness looks confused.
"You were at the bar last night. I saw it on Tony's Instagram."
"That was after the shift!"
"Stan…”
She doesn’t look like she believes you.

*[Tell her the truth] -> the_bet
*[Double down.] -> push

= the_bet
~ hard_truth++
You sigh. "I did put some money on the Vikings last night, and-"
“Of course you were.” She gets up, shaking in anger. “You’re too reckless, Stan.”

*[Fight back.] -> reckless
*[Bring up Bonnie.] -> bonnie_deflect


= push
~ pacifying_lie++
"I ain't lying to you. I swear." You hope your face doesn't give you away.
Her eyes meet yours, searching for an answer.
"I thought you trusted me, Stanley. What happened to us?"
That doesn't feel good.
-> she_done

= truth
~ hard_truth++
"I'm not gonna lie, baby. Last night I put some money on the Vikings and-"
"Of course you were." She gets up, shaking in anger. "You’re too reckless, Stan."

*[Fight back.] -> reckless
*[Bring up Bonnie.] -> bonnie_deflect

= reckless
"I'm reckless for making money?"
"You're reckless for, YET AGAIN, putting the future of our family, of our CHILD, at risk!"
"How is me bringing home money putting you at risk?"
"And when you don't bring home money, huh? When you lose the rent like you did last month, making me work overtime to make up for your mistakes?"
Ness looks at you with a mix of anger, remorse and resignation. It doesn't feel good.
-> she_done

= bonnie_deflect
“Bonnie doesn’t seem to think so, and in case you forgot, I’m doing this all for her.”
Ness shakes her head, shaking with rage. “Of course she doesn’t think so, she’s a CHILD! You think she cares about where the money came from, or paying the bills? She got a cool doll! So you get to be the daddy who brings a gift home while I’m the one that doesn’t have the time to even see her!”
Ness looks at you with a mix of anger, remorse and resignation. It doesn't feel good.
-> she_done

= she_done
She takes a deep breath, visibly calming herself.
"Stan, we’re supposed to be in this together. I have to be able to trust you. If I can’t… Then I guess there’s nothing left." She goes to leave the room.
"All I’ve ever done has been for this family!" You yell at her retreating back.
All you get in return is silence.

{pacifying_lie > hard_truth: -> end_of_two_one}
{pacifying_lie == hard_truth: -> end_of_two_two}
{hard_truth > pacifying_lie: -> end_of_two_three}

= end_of_two_one
*[Even further back.] -> memory_three_one

= end_of_two_two
*[Even further back.] -> memory_three_two

= end_of_two_three
*[Even further back.] -> memory_three_three

// end of memory two

=== memory_three_one ===
#image:draft2_memory3Cab
#sound:StopBlizzardLoop
#sound:Traffic
#sound:RadioStations
The passing traffic grinds your gears. The parked taxi stalls as the cabbie sifts through radio stations. “We don’t have all day!” Frustration from your tone lingers in the air. 
The driver sits with a smug look on his face.“This is a special moment, it’s not every day you become parents. This isn’t happening now, right? This is a rental.”

*[Pressure the cabbie.] -> pressure_cabbie
*[Check on Ness.] -> check_on_ness

=  pressure_cabbie
You shoot the driver a hard stare in the mirror. "God, I could carry her there before you pick a station." 
He catches your glare “Are you trying to walk? Quit being an asshole.”
You roll your eyes before turning to Ness. 
-> check_on_ness

= check_on_ness
She’s staring at the driver while her face drips in sweat. You read the anxiety on her face like a book. 
*[Calm her] -> rude_to_cabbie
*[Get her talking] -> opening_up

= rude_to_cabbie
You grab her hand. “Don’t worry about this meatloaf, baby. We’ll be there soon” 
The cabbie shoots you a glare. 
-> opening_up

= opening_up
#sound:PattingDownPockets
Ness begins hyperventilating, quickly patting down her pockets for something. 

*[Tell her not to worry.] -> no_need_to_worry
*[Tell her you’ll handle it.] -> fix_it

= no_need_to_worry
“I packed your wallet in the bag.” You smile, hoping to have relieved some tension. 
She grabs your hand and lets out a sigh of relief.
 -> post_panic

= fix_it
“Calm down, I won’t let them turn us away.” Her gloomy look rests unmoved by your proclamation.  
 -> post_panic

= post_panic
“I’m going to a damn hospital and can’t remember to bring my health card, how am I going to remember to pack her epipen or her mitts for school?” She pouts with a defeated look. 
You force a playful smile. “You don’t need to remember everything all the time, Ness. I’ll be there  to pick up where you left off, I promise.”
-> ness_disbelief

= ness_disbelief
“I appreciate your confidence.” 
You struggle gauging her tone.
-> another_contraction

= another_contraction
Ness’ body tenses. She squeezes your hand firmly. 

*[You’ll go above and beyond for this family] -> put_on_face
*[Accept you’ll fail together] -> fail_together
(letting it out) 

= put_on_face
~ pacifying_lie++
“I’m ready to give everything for our family.” 
Ness sighs as you proudly boast. “I get that–”
 “I don’t care what I need to sacrifice to be the best for our– ” you stop yourself, you know that stare. “You don’t believe me, do you?” 
Ness grimaces. “Stan, we've talked about this. We’ll never be perfect parents–” 
You interject “I never said that!” 
Ness adjusts her seating position to face you.
 -> new_seating

= new_seating
“You didn’t need to. It’s how you act, it's how you make me feel afraid to mess up. And that’s not the support I need right now.” She pauses. “We don’t have our shit together, I’m stressed about this baby–”

*[Ask what she needs] -> she_needs
*[Reassure her you’ll do your best] -> not_listening

= she_needs
“Okay, okay, what do you need right now, what can I do?” She tearfully grins at the sight of being heard. 
 “I don’t want you to sacrifice shit, I want you to stop making promises you can’t keep.”
-> accepting_yourself

= not_listening
“I’ll do my best”, you say, trying to find truth in your struggle.
She sniffles. "I guess that's all we can ever do."
-> closing_three_lie

= accepting_yourself
You let out an anxious sigh. “Okay, I’ll stop.”
She grabs your hand and leans on your shoulder. ‘Thank you”
-> closing_three_lie

= fail_together
~ hard_truth++
“We’re going to fall flat on our faces sometimes. We’re going to forget to pack their lunch for school some days. Sometimes Daddy will eat their Halloween candy after they go to bed.” 
#sound:ArmSmack
Ness playfully smacks your arm. 
-> arm_smack

= arm_smack
“They have to learn finders keepers somehow!” That one got you a smile. “The point is, I’ll always be there to pick you up when you fall.” Ness smiles at the sentiment and leans on your shoulder. 
-> closing

= closing
A moment passes. 
“Nope. Can’t sit like this.” Ness sits upright and stares at her belly for a moment. "Let's name her Bonnie." 
A smile grows across your face. "That's perfect."
-> thats_perfect

= thats_perfect
She tenses again and groans loudly – Bonnie is coming NOW. 
A tear streaks down her face. "It's happening. It's really happening."
You smile. You whip your head towards the front. "Speed up would ya!"
#sound:TaxiFloorIt
The driver shoots you a dirty look and steps on the gas.

*[Where are you?] -> flash_to_crash

//end memory_three_one

= closing_three_lie
You take a long gaze out the window before turning back to Ness. “Let’s name her Bonnie.”
A smile breaks her tense resting face. “That’s perfect.”
-> thats_perfect_two

= thats_perfect_two
She tenses again and groans loudly – Bonnie is coming NOW.
A tear streaks down her face. "It's happening. It's really happening."
You smile. You whip your head towards the front. "Speed up would ya!”
#sound:TaxiFloorIt
The driver shoots you a dirty look and steps on the gas.

*[Where are you?] -> flash_to_crash

// end memory_three_one
=== memory_three_two ===
#image:draft2_memory3Cab
#sound:StopBlizzardLoop
#sound:Traffic
#sound:RadioStations
The busy downtown traffic grinds your gears as the taxi stalls as the cabbie sifts through radio stations. “We don’t have all day!” Frustration from your tone lingers in the air. 
The driver sits with a smug look on his face.“This is a special moment, it’s not every day you become parents. This isn’t happening now, right? This is a rental.”

*[Pressure the cabbie.] -> pressure_cabbie
*[Check on Ness.] -> check_on_ness

=  pressure_cabbie
You shoot the driver a hard stare in the mirror. "God, I could carry her there before you pick a station." 
He catches your glare “Are you trying to walk? Quit being an asshole.”
You roll your eyes before turning to Ness. 
-> check_on_ness

= check_on_ness
You place a soft hand on Ness' belly. “We’ll be there any minute”
Her face is full of anxiety. “What if we're bad parents?”

*[Shut down the negativity] -> no_negativity
*[Let her continue] -> let_her_continue

= no_negativity
You chuckle. “Can’t be much worse than ours.” 
-> let_her_continue

= let_her_continue
She frowns at you. “It’s not like we had great examples growing up.”
“How were we to control that?” You retort. 
“Exactly. We’re a product of our environment, how will she be any different?” You watch her body quickly tense up.
-> contraction_threeone

= contraction_threeone
She squeezes your hand firmly as you consider your response. 

*[We’ll be better than that] -> be_better
*[We’ll need to improve] -> need_to_improve

= be_better
~ pacifying_lie++
“There isn’t a doubt in my mind we’ll be better than our parents. I’m going to be the father I needed growing up.” You say proudly
-> tell_em

= tell_em
She grabs your hand. “I’m not saying you won’t, I just don’t want you putting unfair expectations on yourself. We’re going to fail, and fail again–” 
“I won’t let us down.” you interject. 
She stares at you with a defeated glare before turning to look out the window. 
->bonnie_time

= bonnie_time
Ness sits upright and stares at her belly for a moment. "Let's name her Bonnie."
A smile breaks through your moody surface. "That's perfect."
She squeezes your hand tightly.
-> sudden_tense_v

= sudden_tense_v
She groans loudly as little Bonnie kicks. “We’re really going to be parents.” A tear streaks down her face.
You exchange the purest of smiles. "We’re finally here.” You whip your head towards the front. 
#sound:TaxiFloorIt
"Speed up would ya!" The driver shoots you a look and steps on the gas.

*[Where are you?] -> flash_to_crash

// end of memory_three_two

= need_to_improve
~ hard_truth++
“I won’t act as though I’ll be the perfect dad. I know I’ve got my own stuff I need to work on. Not everyone can do as shitty of a job as our fathers did” She smirks as you continue. “Hell, I think she’ll make me more punctual.” You say with a joking tone. 
Ness laughs and grabs your hand.
-> your_hand

= your_hand
She furrows her brow. “You were late to our wedding, what makes you think you’ll make it for parent-teacher interviews on time?” 
“Cause you’ll be cussing my ass to get out the door.” You give her a sly smile. 
She pulls you closer for a kiss. “So same old, same old?” 
->same_old_same_old

= same_old_same_old
Your gaze drifts from her lips to her eyes. “Essentially. Plus one crazy gal running around the house.”
“Oh shut up. ” She pulls you closer and kisses you. 
An idea comes to you and you pull away. “Let’s name her Bonnie!”
Before Ness can respond, her body tenses again– 
-> sudden_tense_b

= sudden_tense_b
She groans loudly “Bonnie is coming now”. A tear streaks down your face. "It's happening. It's really happening." 
#sound:TaxiFloorItDelayed
You exchange the purist smiles. ”You deserve this baby.” Ness squeezes your hand tight as your head whips forward. “Speed up would ya!” The driver shoots you a look and steps on the gas.

*[Where are you?] -> flash_to_crash

// end of memory_three_two
=== memory_three_three ===
#image:draft2_memory3Cab
#sound:Traffic
#sound:Radio
The busy downtown traffic grinds your gears as the taxi stalls as the cabbie sifts through radio stations. “We don’t have all day!” Frustration from your tone lingers in the air. 
The driver sits with a smug look on his face. “This is a special moment, it’s not every day you become parents. This isn’t happening now, right? This is a rental.”

*[Pressure the cabbie.] -> pressure_cabbie
*[Check on Ness.] -> check_on_ness

=  pressure_cabbie
You shoot the driver a hard stare in the mirror. "God, I could carry her there before you pick a station." 
He catches your glare “Are you trying to walk? Quit being an asshole.”
You roll your eyes before turning to Ness. 
-> check_on_ness

= check_on_ness
You place a hand on Ness' neck, her pulse pounding even harder than yours.
*[Get the driver moving] -> meatloaf
*[Focus on Ness] -> here_for_you


= meatloaf
"Don't worry about this meatloaf, he's moving. Right, buddy?!"  You glare harder at the Cabbie as he slowly begins to pull away. "Buddy is pissing me off." You look back at Ness and note the worry on her face. "I'll stop, I'm just adding to your stress."
-> here_for_you

= here_for_you
"Hey, I'm here with you." You try easing her anxiousness.
 "What if we're not ready to be parents?" She boldly asks. 

You feel…
*[confused] -> confused
*[confident] -> confident
*[you should let her continue.] -> ness_continues

= confused
"What do you mean?" You rub her arm gently. "We've had the stroller in the garage for years. The house is all ready. What more can we do?" Your efforts feel fleeting.
-> ness_continues

= confident
"Of course we are." You rub her arm gently. "I've been working on my dad bod for years, baby."
A soft smirk breaks her panicked gaze.
-> ness_continues

= ness_continues
She frowns. "What if we finally have the kid we've always wanted and I'm not a good mother?"
Ness’ body tenses. She squeezes your hand firmly, groaning in pain.

*[You can't let her be discouraged.] -> pacifying_lie_three_three
*[You can't promise perfection.] -> hard_truth_three_three

= pacifying_lie_three_three
~ pacifying_lie++
You smile softly. “There isn’t a doubt in my mind you’ll be the best mom in the world.”
Ness gives you an unconvinced look.
"I mean it. Better than the virgin Mary, mother nature, Mother Teresa" For a moment, you see the tension in her shoulders release as she laughs.
-> mother_teresa

= mother_teresa
"Was Mother Teresa even a mom? Wasn’t she a nun?" Ness asks. 
You shrug. "Don't know nun about her."
Ness smirks and pushes you softly before grabbing your hand and leaning on your shoulder.
-> closing

= hard_truth_three_three
~ hard_truth++
You sigh. "Maybe we’ll suck as parents. Maybe we’ll fuck up and scar this kid forever."
Ness frowns. You quickly continue. "The only thing I can promise you is that this baby, our little girl, is going to be the most loved little angel in the world."
A tear streaks down Ness' face as she nods.
-> streaking_tear

= streaking_tear 
You stare intently into her eyes. “Nothing will ever change that.”
She grabs your hand and leans on your shoulder.
-> closing

= closing
A moment passes.
"Nope. Can't sit like this." Ness sits upright and stares at her belly for a moment. "Let's name her Bonnie."
You can't help the tears that come to your eyes. "That's perfect."
She squeezes your hand tightly.
-> thats_perfect

= thats_perfect
She tenses again and groans loudly – Bonnie is coming NOW.
A tear streaks down her face. "I can’t believe it's really happening." 
You take a moment to soak in the happiness radiating off your partner before whipping your head forward. "Speed up would ya!” 
#sound:TaxiFloorIt
The driver shoots you a dirty look and steps on the gas.

*[Where are you?] -> flash_to_crash

// end memory three_three

=== flash_to_crash ===
#image:draft2_car2CrashFlying
#sound:StartFalling
The noise from the highway fills your ears and the sun reflecting off the snow shines into your eyes. Suddenly, you find yourself hurtling off the cliff once more.

As certain death stares you in the face, you feel…

*[Sad.] -> sad
*[Resentful.] -> resentful
*[Lonely.] -> lonely
*[Nostalgic.] -> nostalgic

= sad
Sorrow takes over as you remember Bonnie's smile. She’s the reason you've done all you've done. You are so proud of her.
You are so scared of what this could do to her.
-> future_ness

= resentful
Bitterness fills your heart. This is Ness’ fault. She started shit knowing full well you were driving and now here you are. And what about Bonnie, your sweet little baby girl?
-> future_ness

= lonely
In the freefall, it hits you: at the end, you’re alone. Selfishly, you wish somebody, anybody, was doomed here with you.
You miss Bonnie now, your sweet little girl.
-> future_ness

= nostalgic
You can’t exactly say you had a good run, but it had its moments.
You remember how it felt to hold Bonnie for the first time. Her hands were so tiny, but they held your finger so tightly. Wide eyes that looked so much like your own.
Feeling like you actually did something right for once.
-> future_ness

= future_ness
What’s going to happen to her now?
Can Ness take care of her on her own? She needs you. They both need you. And now--

*[BANG.]

#sound:CarCrash
- Your car slams into an outcropping, jolting you out of your own thoughts and into another memory.

// end of flash to crash

{hard_truth > pacifying_lie: -> end_of_flash_one}
{pacifying_lie > hard_truth: -> end_of_flash_two}

= end_of_flash_one
*[Enter memory.] -> memory_four_one

= end_of_flash_two
*[Enter memory.] -> memory_four_two

=== memory_four_one ===
#image:draft2_memory4Doctor
#sound:HospitalAmbiance
The smell of rubbing alcohol and distant chatter brings you here. Your hands gripping the arm rest, the pressure on your chest is crushing.
#sound:DoctorWalkAway
“I’ll give you two a minute” The perinatologist shares an endearing look and swiftly exits the room. 
-> alone_together

= alone_together
You look at your shoes, unable to face your wife. What you’ve feared is verifiably true: Ness has miscarried again.Your heart sinks deeper and deeper into an empty void. 

You try facing Ness but your body tells you you’re not ready yet. 
*[Take a breath.] -> take_a_breath

= take_a_breath
You take a long, deep breath in before exhaling. You allow your eyes to close.
*[Embrace your tears.] -> embrace_your_tears
*[Face Ness.] -> face_ness

= embrace_your_tears
You feel the tears forming but the knot in your throat won’t allow you to cry. Not here.
-> face_ness

= face_ness
You face your partner – you watch her ruminate in sorrow as she hyperventilates. 
*[Grab her hand.] -> grab_her_hand

= grab_her_hand
Her hand is cold. She stares at the desk, unable to break her gaze.
"Deep breaths with me. Hey – Ness? Come on, together."
She slowly turns to face you as you guide her breathing.

*[Deep breath in.] -> deep_breath_in

= deep_breath_in
*[Exhale out.] -> exhale_out

= exhale_out
Her anguish fills the air.  "That's it. One more together.” You say, trying your best to hide your disheartenment for her sake. 
*[Deep breath in.] -> another_deep_breath

= another_deep_breath
*[Long exhale out.] -> long_exhale_out

= long_exhale_out
Ness sniffles and wipes her face. "I know I can’t blame myself but I... I can’t help but feel guilty for putting us through this."
You rest a hand on her shoulder. “It’s okay baby, this isn’t your fault” 
She frowns and looks away. -> either_way

= either_way
She sits with her grief in frustration. "You said that last time. I- I don’t get how you can be so calm right now? Like this wasn’t our best chance at a family."

Your gut reaction: 
*[I’m trying my best] -> level_headed
*[Don’t spin this on me] -> on_edge

= level_headed
"That’s not fair, I’m doing everything I can to support you." You look deeply into her eyes. "I’m on your team, Ness." She breaks into tears and you pull her close.

*[Bury your feelings to comfort her.] -> lie
*[Acknowledge your feelings and comfort her.] -> truth

= on_edge
"Don’t say that to me right now. You think I’m not heartbroken?" You shake your head in disbelief. "I’m on your fucking team, Ness – You’re not the only one who’s hurting."
She breaks into tears and you pull her close.

*[Bury your feelings to comfort her.] -> lie
*[Acknowledge your feelings and comfort her.] -> truth

= lie
~ pacifying_lie++
She wraps her arms around you. 
You slowly embrace her, holding her tight as a tear streaks down your face. "I won’t give up on us. Even if we keep ending up here, it was worth it to me then and that’s not going to change."
She rests her head on your chest as you feel a cold chill run through your body. 
-> end_of_four

= truth
~ hard_truth++
She wraps her arms around you. 
You slowly embrace her, taking a deep breath as a tear streaks down your face. "I can’t keep doing this. Our dreams keep getting ripped away from us. It’s too painful."
She shakes her head. "I grew up preparing myself for this outcome, I don’t think it’s ever made it easier."
You sigh deeply. "I need to accept that we may never have children of our own."
She raises her head slightly to look you in the eye. "Are you okay with that?"
You meet her watery gaze with your own, smiling softly through the pain. "With more vacation money? Absolutely."
She smiles. "Don't play with me, I'm sad."
You pull her back into your chest. "Well listen here, Sad, our love is everything I need."
-> end_of_four

= end_of_four
You stand up, bringing her with you.
"Come on. Let's go home."
You take her hand and leave the office.

*[That's not the beginning.] -> memory_five

// end of memory_four_one

=== memory_four_two ===
#image:draft2_memory4Doctor
#sound:HospitalAmbiance
The smell of rubbing alcohol and distant chatter brings you here. Your hands gripping the arm rest, the pressure on your chest is crushing.  
#sound:DoctorWalkAway
“I’ll give you two a minute” The perinatologist shares an endearing look and swiftly exits the room. 
-> alone_together

= alone_together
You look at your shoes, unable to face your wife. What you’ve feared is verifiably true: Ness has miscarried again.Your heart sinks deeper and deeper into an empty void. 

You try facing Ness but your body tells you you’re not ready yet. 
*[Take a breath.] -> take_a_breath

= take_a_breath
You take a long, deep breath in before exhaling. You allow your eyes to close.
*[Embrace your tears.] -> embrace_your_tears
*[Face Ness.] -> face_ness

= embrace_your_tears
You feel the tears forming but the knot in your throat won’t allow you to cry. Not here.
-> face_ness

= face_ness
You face your partner – you watch her ruminate in sorrow as she hyperventilates. 
*[Grab her hand.] -> grab_her_hand

= grab_her_hand
Her hand is cold. She stares at the desk, unable to break her gaze.
"Deep breaths with me. Ness."
She slowly turns to face you as you guide her breathing.

*[Deep breath in.] -> deep_breath_in

= deep_breath_in
*[Exhale.] -> exhale_out

= exhale_out
Her anguish fills the air.  "That's it. One more together.” You say, trying your best to hide your disheartenment for her sake. 
*[Deep breath in.] -> another_deep_breath

= another_deep_breath
*[Long exhale.] -> long_exhale_out

= long_exhale_out
She sinks into her chair. “I-I feel so ashamed.” She stammers, “It’s my fault we’re going through this again.”

She needs you right now…
*[Emphasize she’s not to blame.] -> not_her_fault
*[Emphasize you’re here for her.] -> youre_here

= not_her_fault
You duck your head to hide the tears coming to your eyes. “You know this isn’t your fault–”  
“That’s easy for you to say. You don’t bear the shame of having to share to the people you care for most that you’ve lost the baby again.”
You pause for a moment. -> what_they_think

= what_they_think
You sniffle.  “So fuck what they think. Your mother of all people will understand.” 
Ness faces your ignorance with a repulsed look. 
-> repulsed

= youre_here
“You’re not alone, Ness–” 
She interjects “I’ve never felt so alone. So cowardly, so ashamed.”
You lean back in your chair. “That’s your mother talking.”
Ness faces your ignorance with a repulsed look. 
-> repulsed

= repulsed
“It’s not about my mother, Stanley. I feel broken, that I’ll always be incomplete.” You try wiping her tears but she does it herself. “We married with the dream of having a family of our own – I’m letting everyone I care about down and I can’t stop it.”

*[Bury your feelings to comfort her.] -> lie
*[Acknowledge your feelings and comfort her.] -> truth

= lie
~ pacifying_lie++
You take an anxious breath and gently place your arm around her. “Don’t worry about me. Even if we keep ending up here, it was worth it to me then and that’s not going to change."

She stares into your eyes and shakes her head. -> in_your_eyes

= in_your_eyes
“You do this every time – Stop acting like this doesn’t bother you! Stop hiding like a coward.” Her rigid tone cuts deep. You clench your first.
“Are you fucking kidding me? I’m heartbroken that we keep losing everything we’ve ever wanted.” Tears stream down her face as you aggressively sigh. “I don’t think I can keep reliving this pain. There. Is that what you wanted to hear?”
She wipes her tears and leaves the office. 
-> office_alone

= office_alone
Guilt and shame rush over you. “Fuck– Ness, wait!” You rush after her– 
She slams the door on your face. 

*[That's not the beginning.] -> memory_five

// end of memory four_one

= truth
~ hard_truth++

You take a moment to calm yourself.  “Not all dreams are meant to come true.”
Ness wipes her teary eyes and nods her head. “I grew up preparing myself for this outcome, I don’t think it’s ever made it easier." 
You stand up and embrace her with open arms. “Will you be okay with that?” 
You rest your hand on her cheek “Our love means more than I could dream of.”  She lets out a teary exhale and buries her head in your chest. 
-> end_of_four_one

= end_of_four_one
"Come on. Let's go home."
You take her hand and leave the office.

*[That's not the beginning.] -> memory_five

// end of memory four_two

=== memory_five ===
#image:draft2_memory5CryingButFriendly
#sound:Mem5TemporaryAmbiance
You stand, lost, as a young Ness stands outside your door. Her eyes are rimmed with red, and she’s soaked to the bone.
She looks down in shame. "I’m so sorry for just showing up like this, I…” She sniffles. “I didn't know where else to go.”

*[You want to comfort her, make her feel safe.] -> comfort_ness
*[You want to reassure her, make her feel heard.] -> reassure_ness

= comfort_ness
"Don't even mention it. You know you’re always welcome here," you say, pulling her into your house and into a hug. “You can stay as long as you need. It’s pouring out.”
-> ness_opens_up

= reassure_ness
"You know I’m always here for you when you need a shoulder to cry on," you say, tapping on your shoulder and giving her a reassuring smile. “Now get in here, it’s pouring out.”
-> ness_opens_up

= ness_opens_up
#sound:FrontDoorCloseMem2
Her responding smile is strained. You lead her to the couch, soaking your mother’s ratty floral upholstery as you sit her down.
Your mom’s going to be so mad about the couch. You don’t care. You both sit in silence for a moment.
"My dad's cheating on my mom."

*[Sympathize with her.] -> interrupted_sympathy
*[Get angry.] -> interrupted_anger
*[Stay silent.] -> silent

= interrupted_sympathy
You open your mouth, ready to offer your sympathy, but Ness continues before you can speak.
-> ness_rant

= interrupted_anger
You open your mouth, ready to tear her father a new one, but Ness continues before you can start.
-> ness_rant

= silent 
You sit patiently, waiting for her to continue.
-> ness_rant

= ness_rant
"And not only that, he has a whole other family with this girl. Two little kids! Mom’s working her ass off to make ends meet and he’s off going to ‘out of town conventions’ every other week!" She curls into a fetal position, shoulders shaking with sobs. You...

*[Offer her a tissue.] -> tissue
*[Hold her.] -> hold
*[Put your hand on her back.] -> patpat

= tissue
You reach over to the coffee table and pick up a box of tissues.
It’s nearly empty. You sheepishly hold it out to her, and grateful eyes meet yours as she takes one and wipes her face.
-> ness_grateful

= hold
Slowly, carefully, you wrap your arms around her, giving her time to move away if she wants to.
She stays, sinking into your embrace.
-> ness_grateful

= patpat
You gently place a hand on her back, slowly rubbing up and down. Under your palm, you feel her breathing begin to even out.
-> ness_grateful

= ness_grateful
"Thank you, Stan.” She takes a deep breath. "I think the worst part is that I always looked up to him. He taught me everything. He made me who I am. God, he literally made me! And what does that mean about me, you know?"
She looks back at you, looking for an answer.

*[You try to console her by flattering her.] -> pacify
*[You try to change her point of view with honesty.] -> truth

= pacify
~ pacifying_lie++
You grab her hands, looking deep into her beautiful eyes. "I think I can say I know you pretty well. I mean, I've known you since middle school! I've seen you break your arm playing softball. I've seen you throw up half a bottle of tequila on the sidewalk. I've seen your best and your worst."
She laughs, remembering those moments with you.
 "What your dad does says nothing about you. It says a lot about him. And he’s made a lot of mistakes, but you are definitely not one of them."
Ness' eyes are filled with tears, but she looks at you with warmth.
 -> doorbell
 
 = truth
 ~ hard_truth++
 You grab her hands firmly, forcing her to look deep into your eyes. "Okay. So your dad’s a cheater. A liar. An asshole. That’s just how it is. But you don’t have to be him. You can choose to be better"
She nods firmly. Her eyes are filled with tears, but she looks at you with admiration.
 -> doorbell
 
 = doorbell
 #sound:Doorbell
The sound of the doorbell causes both of you to jump. Ness laughs. It’s watery, and quiet, but it’s still the best thing you’ve heard all night.
 #sound:JogToDoor
 "Gimme a second." You quickly jog over to the door.

*[Open the door.]

#sound:OpenDoorMem5
#sound:Coins
- It’s the pizza guy. He looks unimpressed as you go through all your pockets, handing him the money in assorted bills and coins.
As he counts the cash, you glance over your shoulder at Ness. She’s picked up a photo album from the coffee table, and she’s smiling at what are probably extremely embarrassing photos of you.
“Alright, kid. Enjoy the pies.”

*[Turn around.]

#sound:DoorSlam
- You turn back around and take the pizzas, the door closing before you can thank the delivery driver. You look at the pizzas, then back up to Ness. You got two pizzas so you’d have something to eat as your parents worked double shifts all week, but…
 
 *[You should cheer her up.]
 #sound:HoldingOut
 *[You should show her you like her.]
#sound:HoldingOut

-Balancing the pizzas in one hand, you carefully walk over to the CD player and insert a disc. The moment you press play, Ness’ head shoots up - it’s her favourite. Bonnie Tyler's "Holding Out for a Hero" fills the room.
Her eyes catch yours, and you awkwardly shake your hips to the beat. She laughs brightly. “What are you doing?”
 "I thought you could use a pick-me-up."
 
-She comes closer to you and takes the pizza out of your hands, putting it onto the coffee table.
You're confused for a second. Maybe it's too early to joke around?

*[Ask her what’s up.]
*[Apologize.]

- Before you can say anything, Ness grabs you by the neck and gives you a passionate kiss on the lips. You're stunned at first, but you slowly give in to her.
After what could have been several minutes or the blink of an eye, you break apart. She holds your gaze and smiles. "Thank you for being my hero tonight."
You can't contain your happiness. You pull her in for another kiss.

// end of memory five

*[CRASH.] -> end_scene

=== end_scene ===
#image:draft2_car3AfterCrash
#sound:EndSceneAmbiance
It’s noisy. At first, you think it’s just static coming out of your mangled radio, but if you focus, the static turns into words.
"Stan? Stan, what was that noise?"
You realize you're at the bottom of the cliff now. You're still inside your car, restrained by the seatbelt, but that didn't save you.

-Through the haze, you take stock of your situation. There are trees all around you covered in snow. Smoke is everywhere.
A branch has punched clean through your torso. The pain kicks in, and it’s excruciating and oh-so-far away at the same time.
"Stan? Answer me, dammit!"

*[Respond.]

-You cough weakly. “I’m here.”
"Oh thank god, I heard this loud noise and thought something might have- Doesn't matter, go grab Bonnie. Fast!". She fluctuates between being worried and angry, and that brings out a smile.
"Hey Ness, wait," you say, feeling your lungs fill up with blood with every breath. "Could you go pick up Bonnie? I don't think I'll be able to make it."

*[Spare her from hearing you die.] -> death_lie
*[Tell her what's happening.] -> death_truth

=== death_lie ===

"The sound was my tires. They just exploded."
Your attempt to sound normal is a little pathetic, but you hope she isn't able to tell.

{pacifying_lie > hard_truth: -> death_lie.ending_one}
{hard_truth > pacifying_lie: -> death_lie.ending_two}

= ending_one
"Exploding tires, Stan? That's probably your worst excuse yet. What the fuck is going on?" Her voice is starting to sound more worried than angry. It’s been a while since you’ve heard her be anything but angry. "Where are you? I'll call you a tow truck."
"No!" You cough, blood spilling out of your mouth.
"What the hell was that?"

*[Lie. It’s all you know.] -> avoidant

= avoidant
“It was noth--” You’re interrupted by another cough, the blood bubbling at your lips. It hurts so much.
"You're full of shit. I'm calling the fucking tow truck. You're on the 401, right? Whereabouts?"

*[Dismiss her.] -> negation
*[Tell her.] -> truth_two

= negation
“Don’t do that--”
"Fuck you, Stan." -> truth_two

= truth_two
“Just past the gas station.”
You can hear rustling on her end. "I'm sending the truck and you're going to pick up Bonnie whether you want to or not." She hangs up.
Your phone, cracked but functional, lets you know just as much. "Your call has ended."
-> song

= song
You can do nothing but choke out bloody breaths. The car radio continues.
"And now an old classic to get us in a good mood for the evening."
#sound:FadeOut
Bonnie Tyler's "Holding Out for a Hero" starts to play. 
Your tears fill your eyes and you embrace the light as it, for one last time, comes towards you with memories of sweeter times.

-> END

= ending_two
"Sure... Look, just fucking change your tire, get an Uber, I don't care. You're not getting out of picking up Bonnie just because of a flat tire. Solve your problems like an adult." She hangs up.
The car system, somehow still working, lets you know just as much. "Your call has ended."

You think to yourself that Ness has always been the adult one of this relationship. That makes you feel...

*[Reassured]. -> reassured
*[Sad.] -> sad
*[Proud.] -> proud

= reassured
Ness is going to raise Bonnie amazingly. She never needed you, and that may be a good thing now.
-> song

= sad
You weren’t the best father. It hurts to think they may be better off without you.
-> song

= proud
You’ve done the best you could, and Bonnie’s turning out to be an amazing little girl. Ness can do the rest.
-> song

=== death_truth ===

"You know that forest beside the 401 after the gas station? I just ran myself right off the cliff on top of it," you say, as calmly as you can.

{pacifying_lie > hard_truth: -> death_truth.ending_three}
{hard_truth > pacifying_lie: -> death_truth.ending_four}

= ending_three
Silence on the other side of the line. A few agonizing moments, then -
"You know, Stan. Of all the people in my life, including my father, you're the biggest fucking liar I've ever known," she says. "That's how far you'll go to get out of picking up your fucking kid?! What the fuck is wrong with you? Go solve your shit like a grown up and pick Bonnie up." She hangs up.
Your phone, cracked but functional, lets you know just as much. "Your call has ended."

You think to yourself that Ness has always been the adult one of this relationship. That makes you feel...

*[Reassured]. -> reassured
*[Sad.] -> sad
*[Proud.] -> proud

= reassured
Ness is going to raise Bonnie amazingly. She never needed you, and that may be a good thing now.
-> song

= sad
You weren’t the best father. It hurts to think they may be better off without you.
-> song

= proud
You’ve done the best you could, and Bonnie’s turning out to be an amazing little girl. Ness can do the rest.
-> song

= song
You can do nothing but choke out bloody breaths. The car radio continues.
"And now an old classic to get us in a good mood for the evening."
#sound:FadeOut
Bonnie Tyler's "Holding Out for a Hero" starts to play. Your tears fill your eyes and you embrace the light as it, for one last time, comes towards you with memories of sweeter times.

-> END

= ending_four
"What...?" She says softly. "Are you- are you okay?!"

*[Tell her the truth.] -> direct
*[Play it off.] -> ness_freaks_out

= direct
"There's a branch piercing my belly."
"Oh my god, Stan."
-> ness_freaks_out

=ness_freaks_out
“I’ve been better.” You let out another wet cough. "I don't think I'm making it out of this one, baby."
"No, Stan. No! I'm calling an ambulance-"
"No!" You cough harder. It’s agonizing.  "I just want to be here with you one last time."
From the other side of the line you hear Ness let out a sob.

*[Calm her.] -> final_story
*[Divert her attention.] -> final_story

= final_story
"You remember Holding Out for a Hero?"
"Of course. That's why we named her Bonnie."
"But do you remember that night?"
"I do."
"I felt-" Another cough. "I felt so selfish because it was such a hard time for you, but it was one of the happiest days of my life," you choke out, mouth filling with blood.
"I know. It was such a happy and sad day at the same time."
-> continue_story

= continue_story
"I think at the end of the day that's life, you know. Happy and sad at the same time." You barely get that last sentence out, the blood coming more frequently.
"Stan?!" Ness cries out on the other side of the line.
"I'm- I'm here," you struggle to say.

*[Thank her.] -> thankful
*[Affirm your trust in her.] -> trust
*[Tell her you love them.] -> loving

= thankful
"Thank you. For everything."
"No, Stan. Thank you." She chokes out.
-> last_wish

= trust
"I trust you with Bonnie."
"You were an amazing dad," she chokes out. "She'll never forget you."
-> last_wish

= loving
"I love you both so much."
"We love you too," she chokes out. "We'll never forget you."
-> last_wish

= last_wish
"Can I ask for one last thing"
"Of course," she sniffles. "Anything."
"Could you tell me about your day?"
You start coughing again.
"Well, uh... I woke up late," she says softly.
The shining light appears once again, cutting through the darkness.
"Almost missed Bonnie's bus. She was so angry."
Tears fill your eyes at the thought of an adorable little angry Bonnie.
"She didn't want to miss the day daddy picked her up."
#sound:FadeOutNoMusic
And as you see the light coming closer, you embrace it, knowing you did what you could with the life you had.

-> END
