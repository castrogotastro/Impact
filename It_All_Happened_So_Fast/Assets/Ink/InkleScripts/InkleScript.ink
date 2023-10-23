EXTERNAL playsound(soundName)
VAR pacifying_lie = 0
VAR hard_truth = 0

-> opening_scene

=== opening_scene ===
#image:car1Road
#sound:car1Horn
The sound of a car honking startles you as you hastily drive out of your workplace parking lot. You slam on the brakes, barely managing to avoid hitting another car. The driver flips you off. 
*"Fuck off!" []
-> driver_reaction
*[Flip him off back.] -> driver_reaction

= driver_reaction
#image:car2BeforeCrash
#transition:fade
#sound:crash
#sound:car1Horn
He honks once again at you, leaving you behind. -> after_honk 

= after_honk
You look at the clock. It’s 4:56PM. You are very late.
Your phone rings through the car sound system as you try to gain time in traffic. The Navigation Panel in your car shows it’s Ness, your ex-wife.

*[Accept the call.] -> accept_call
+[Ignore the call.] -> ignore_call

= ignore_call
You press to ignore the call. 
After two seconds of silence she calls you back.

*[Accept the call.] -> accept_call
+[Ignore the call.] -> ignore_call

= accept_call
You press to accept the call.
"Why the fuck am I getting a call from the school that our daughter is still waiting to be picked up?!". She screams through the car sounds, almost bursting your ears.

*"I'm on my way, Ness." []
-> patient
*"Hello to you, too." []
-> cynical
*"Oh, get off my ass." []
-> angry

= patient
"You are two fucking hours late, Stan! You should've been on your way ages ago!" She bursts in an anger you can feel even through the other side of the call.
-> stan_reaction

= cynical
"Hello my ass, you shit bag. You are two fucking hours late to pick up Bonnie!" She bursts in an anger you can feel even through the other side of the call.
-> stan_reaction

= angry
"Oh, I would't want to see your ass even if I was paid, but as long as you are the father to my daughter, you better keep your fucking promises, you piece of shit!" She bursts in an anger you can feel even through the other side of the call.
-> stan_reaction

= stan_reaction
Your blood is boiling. Your day has already been shit, but she has a way to piss you off that no one else can. You...

*[Lie about the reason you're late.] -> lie
*[Are honest about the reason you're late.] -> truth

= lie
~ pacifying_lie++
"Well, as it fucking happens, I'm stuck in the highway for 2 hours because of a massive collision that completely stopped traffic. But I'm finally moving now," you say with a straight face as you speed through the highway. 
-> ness_disbelief

= truth
~ hard_truth++
"Well, I have to keep my job to pay for child support and, just in case you don't know, you can't just leave whenever you want if you're trying not to be laid off!" You say while speeding through the highway. 
-> ness_priorities

= ness_disbelief
"Oh, so you ARE moving now? That's so good, Stanley, that's so perfectly dandy," she says in a very sarcastic tone. "How about next time you organize your collision two hours earlier, you dickhead! You think I wouldn't know if there was a collision on the way to my kid's school? I'm not a degenerate parent like you!"
-> heated_stan

= ness_priorities
"Oh, it's so good to see you have your priorities so well sorted, Stanley," she says in a very sarcastic tone. "I am truly at fault here for expecting you to keep your fucking promises and not make your daughter wait for you for two hours while you suck your boss' dick so you can pay less than a quarter of her expenses. You are truly father of the year". 
-> heated_stan

= heated_stan
*"Fuck off, Ness. Quit being a fucking bitch." []
*"I'm trying my fucking best here!" []
*"Why are you such a cunt?" []

- Enraged, you curse at the Navigation Panel with Ness' name on it like she was there. With your eyes off the road and your mind taken by rage, you fail to see the oil spill on the road. 
Your car skids and you lose control, hitting the road barrier that is unable to stop the car, simply flipping it and launching it off a small cliff.
While rolling down the cliff, the whole world slows down, and you think to yourself...

*[This can't be how I go.]
*[How did I let this happen?]
*[I'm dead.]

- While you flip down the cliff in slow motion, the sun shines brightly into your eyes, and just like that your life starts to flash before you, bringing with it a memory you'd rather forget.

// end of prologue

*[Enter memory.] -> memory_one

=== memory_one ===
The resounding slam of the door snaps you out of your reverie. You whip your head towards the door as Ness hangs her coat up.
Her shoulders are slumped. She takes a deep breath, but doesn't turn to face you.

*"Ness? What's wrong?" []
-> check_in
*[Stay silent.] -> stay_silent

= check_in
She lets out a bitter laugh.
-> ness_approach

= stay_silent
Another few seconds pass in tense silence.
-> ness_approach

= ness_approach
When she finally turns, her face is eerily devoid of any strong emotion. She seems... resigned.
"We need to talk."

*"About what?" [] 
-> about_what
*[Stay silent.] -> ness_continue

= about_what
"I feel like you know."
-> ness_continue

= ness_continue
She sighs deeply, taking slow, measured steps towards you until she's seated on the couch next to you. She reaches into her bag and pulls out a stack of papers, placing them on the coffee table.
Divorce papers.
You feel...
*[Resigned.] -> resigned
*[Sad.] -> sad
*[Angry.] -> angry
*[A muddled combination of everything, all at once.] -> combination

= resigned
You did know this was coming. You were expecting it sooner, if anything. -> stan_reaction

= sad
You can't help the tears that spring to your eyes. -> stan_reaction

= angry
You feel your breath quicken, hands turning to fists at your side. -> stan_reaction

=combination
You can't even begin to parse the torrent of emotions that flood into you. -> stan_reaction

= stan_reaction
"Is this it, then? You're taking the easy way out?"
Ness shakes her head in disbelief.
"The easy way, huh?"
"You can't just give up on us!"
"Sure. That's rich, considering this all started because you just couldn't fucking give up."

*Ouch.[]
-> ouch

= ouch
"Ness..."
"I can't trust you anymore, Stan. Do you hear me? I can't trust my own goddamn husband. Bonnie can't grow up like this."

*[You know you can't change. You say you will anyway.] -> lie
*[You know she's right, but you still love her. You love your family.] -> truth

= lie
~ pacifying_lie++
You take a step towards her, and try not to flinch at the way she steps back, crossing her arms.
"I can change, baby. I can be better."
She searches your eyes, and finds you wanting.
"I really wish you could." -> end_of_one

= truth
~ hard_truth++
Your shoulders slump. "I know I fucked up. I know there's nothing I can do to fix things. But I love you. I love both of you so much. Shouldn't that count for something?"
She bites her lip as tears fill her eyes.
"I wish that's all it took."
"So what can I do?"
"I'm not sure there's anything you can do." -> end_of_one

= end_of_one
She clenches her jaw. "I gave you second and third and hundredth chances. I still love you, but I can't keep waiting for another bombshell to drop."
A painful silences stretches between the two of you.
"Read over those. Bonnie's gonna spend most of her time with me, but..." She sighs. "Just read it. Find me when you're ready to sign."
She stands up and walks away, but you barely register her final words through the roaring in your ears.

// end of memory one

*[Further back.] -> memory_two

=== memory_two ===
You stumble to the couch, out of breath.
Lenny, the doll you're doing a bad Mickey Mouse voice for, doesn’t miss a beat. "Down he goes! Getting tired, old man?"
Bonnie giggles and continues dancing. She strikes her final pose.

*[Make the crowd chant Bonnie's name.]
*[Make crowd roaring sounds.]

- Bonnie high-fives Lenny. "We can do this all day!"
“Best duo ever! Oh wait? What’s this? I’m hearing Daddy has a new dance partner!”
Bonnie looks at you in shock as you scamper out of the living room and return with a wrapped gift. 
"For you, sweetie."
"Mommy says we only get gifts on big days."

*"It’s not everyday you beat me in a dance off." []
*"Guess I'll keep it..." []

- Bonnie takes the gift from your hands and quickly unwraps it. It's a new doll, much fancier than Lenny.
She jumps with excitement. "Thank you thank you thank you!"
She hugs you quickly and tears the doll out of the package.
You hear the the front door closing from the living room, and the voice of your wife calling from the foyer. "I'm home!"

*"We're in here!" []
*"Welcome home!" []

- Ness enters the living room in her business attire.
"Mommy, look what daddy got me!" Bonnie runs towards Ness with a doll in her hands.
Ness smiles, but it doesn't reach her eyes. "Oh, did he?" She glances at you, then crouches to talk to your daughter. "Could you play with her in your room sweetie? Mommy has to talk to daddy."
Bonnie just smiles brightly. "Okay!" She runs past the both of you and up the stairs.
You look at Ness.

*"Am I in trouble?" []
-> trouble
*"Is this sexy talk?" []
-> sexy

= trouble
"I don't know. Are you?"
You furrow your brow. "What do you mean?"
-> ness_asks

= sexy
"Oh, you wish."
-> ness_asks

= ness_asks
Ness sits on the couch. With trepidation, you sit with her. She seems very serious about this.
She lets out a deep breath. "Do you know how much money we have for our retirement? Or Bonnie's college fund?"

*"Do you want an exact amount?" []
*"Not really, no." []

- "It's zero. Nothing. Nada. You know why? Because we are very much broke," she affirms. "So that makes me wonder, where the hell did you get the money for this fancy ass doll, Stan?"

*[Say you've been working double shifts.] -> lie
*[Admit you've been gambling again.] -> truth

= lie
"You? When?" The disbelief is clear in her voice.
"That's why I came back so late last night."
Ness gets up, laughing.
"You were at the bar last night. I saw it on Tony's Instagram."
"That was after the shift!"
"Cut the crap, Stan. Tell me the truth."

*[Tell her the truth] -> the_bet
*[Double down.] -> push

= the_bet
~ hard_truth++
You sigh. "I did put some money on the Vikings last night, and-"
-> she_mad

= push
~ pacifying_lie++
"I ain't lying to you. I swear." You hope your face doesn't give you away.
She looks at you, tears in her eyes.
"Where did our trust go, Stanley? Where's the man I married? You don't even have the balls to tell me where you got the money to buy our daughter a doll."
That doesn't feel good.
-> she_done

= truth
~ hard_truth++
"I'm not gonna lie, baby. Last night I put some money on the Vikings and-"
-> she_mad

= she_mad
"YOU WERE BETTING AGAIN?!" She gets up, shaking in anger. "You are a fucking idiot, Stan."

*"I'm an idiot for making money?" []
*"That's not what Bonnie thinks." [] 

- "You're a fucking idiot for, YET AGAIN, putting the future of our family, of our CHILD, at risk!"
"Me bringing home money is putting you at risk?"
"And when you don't bring home money, huh? And when you lose our next month's rent like you did last time?"
Ness looks at you with a mix of anger, remorse and resignation. It doesn't feel good.
-> she_done

= she_done
"I'm done with you, Stan." She goes to leave the room. You wheel around to face her retreating back.
"I'm done with YOU, Vanessa!"
All you get in return is silence.

*[Even further back.] -> memory_three

=== memory_three ===
The vehicle stalls as the cabbie sifts through radio stations. You feel your heart pounding in your chest. "We don't have all day!"
He chuckles. "This is a special moment. It’s not every day you become parents."

*[Pressure the cabbie.] -> pressure_cabbie
*[Check on Ness.] -> check_on_ness

= pressure_cabbie
You give the driver a hard stare, which he catches in the rearview mirror. "What?"
"God, I could carry her there before you pick a station."
-> check_on_ness

= check_on_ness
You place a hand on Ness' neck, her pulse pounding even harder than yours.

*"Don't worry about this meatloaf, he's moving. Right, buddy?!" []
-> meatloaf
*"Hey, I'm here with you." []
-> here_for_you

= meatloaf
You glare harder at the cabbie as he slowly begins to pull away.
"Buddy is pissing me off."
You look back at Ness and note the worry on her face.
"I'll stop, I'm just adding to your stress."
-> here_for_you

= here_for_you
"What if we're not ready to be parents?"
You pause.

*"What do you mean?" [] -> confused
*"Of course we are." [] -> confident
*[Let her continue.] -> ness_continues

= confused
You rub her arm gently. "We've had the stroller in the garage for years. The house is all ready. What more can we do?"
-> ness_continues

= confident
You rub her arm gently. "I've been working on my dad bod for years, baby."
A soft smirk breaks her panicked gaze.
-> ness_continues

= ness_continues
She frowns. "What if we finally have the kid we've always wanted and I'm not a good mother?"
Ness’ body tenses. She squeezes your hand firmly, groaning in pain.

*[You can't let her be discouraged.] -> lie
*[You can't promise perfection.] -> truth

= lie
~ pacifying_lie++
You smile softly. “There isn’t a doubt in my mind you’ll be the best mom in the world.”
Ness gives you an unconvinced look.
"I mean it. Better than the virgin Mary, mother nature, Mother Teresa..."
For a moment, you see the tension in her shoulders release as she laughs. "Was Mother Teresa even a mom? Wasn’t she a nun?"
You shrug. "Don't know nun about her."
Ness smirks and pushes you softly before grabbing your hand and leaning on your shoulder.
-> closing

= truth
~ hard_truth++
You sigh. "Maybe we’ll suck as parents. Maybe we’ll fuck up and scar this kid forever."
Ness frowns. You quickly continue.
"The only thing I can promise you is that this baby, our little girl, is going to be the most loved little angel in the world."
A tear streaks down Ness' face as she nods.
“Nothing will ever change that.”
She grabs your hand and leans on your shoulder.
-> closing

= closing
A moment passes.
"Nope. Can't sit like this."
Ness sits upright and stares at her belly for a moment. "Let's name her Bonnie."
You can't help the tears that come to your eyes. "That's perfect."
She tenses again and groans loudly – Bonnie is coming now.
A tear streaks down her face. "It's happening. It's really happening."
You smile. You whip your head towards the front. "Speed up would ya! Our baby is not being born in your dirty cab!"
The driver shoots you a dirty look and steps on the gas.

// end of memory three

*[Where are you?] -> flash_to_crash

=== flash_to_crash ===

The bright light returns to blind your eyes, only to bring you back to the present, as you hurtle down the cliff.

As death seems certain, you feel...

*[Sad.] -> sad
*[Resentful.] -> resentful
*[Lonely.] -> lonely
*[Nostalgic.] -> nostalgic

= sad
Sorrow takes over as you remember Bonnie's smile. She is the reason why you've done all you've done. You are so proud of her and yet, so afraid of how your departure could affect her. She is still so small, and she may never recover from this. 
-> future_ness

= resentful
Bitterness takes your heart as you think of the reason you lost control: Ness. She has an ability to mess with your nerves and now that has killed you. And what about Bonnie, your sweet little baby girl? 
-> future_ness

= lonely
Abandonment fills your heart as you fall down this cliff. Everyone you knew, that you loved or hated, are memories that will be gone once this is over. But now, this passage, leaving this life, is just you and you alone.
You miss Bonnie now, your sweet little girl. 
-> future_ness

= nostalgic
Longing for your past, you remember how it felt to hold Bonnie for the first time. Her hands were so tiny, but they held your finger so tightly. You knew she was going to be as feisty as her mother. But what is going to happen now that you are gone? 
-> future_ness

= future_ness
Thinking about Bonnie, you start to fear for what could happen to her without you. 
What scars could losing a father inflict on her? Will they be able to survive without your income? Is Ness actually suitable to raise Bonnie alone?
While you fear for what could happen after you're gone, the white light takes over once again, taking your mind to another memory.

// end of flash to crash

*[Enter memory.] -> memory_four

=== memory_four ===
You study the perinatologist’s look of concern from across the desk.
*[Brace for impact.] -> brace_for_impact

= brace_for_impact
You look at your shoes, unable to face the doctor as they confirm what you’ve feared: Ness has indeed miscarried again. Their words fall on deaf ears as you feel your heart sink deeper and deeper into an empty void. 

You try facing Ness but your body tells you you’re not ready yet. 
*[Take a breath.] -> take_a_breath

= take_a_breath
You take a long, deep breath in before exhaling. You allow your eyes to close.
*[Embrace your tears.] -> embrace_your_tears
*[Face Ness.] -> face_ness

= embrace_your_tears
You feel the tears forming but something won’t allow you to cry. Not here.
-> face_ness

= face_ness
You face your partner and the pain she carries. Sorrow floods her face as she hyperventilates.
*[Grab her hand.] -> grab_her_hand

= grab_her_hand
Her hand is cold. She stares at the desk, unable to break her gaze.
"Deep breaths with me. Hey – Ness? Come on."
She slowly turns to face you as you guide her breathing.

*[Deep breath in.] -> deep_breath_in

= deep_breath_in
*[Exhale out.] -> exhale_out

= exhale_out
*"That's it. One more together." [] -> another_deep_breath

= another_deep_breath
*[Long exhale out.] -> long_exhale_out

= long_exhale_out
Ness sniffles and wipes her face. "I know I can’t blame myself for this but I... I can’t help but feel guilty for putting us through this."

*"This isn't your fault." []
*"It's okay." []

- She sits with her grief in frustration. "You said that last time. I- I don’t get how you can be so calm right now? Like this wasn’t our best chance at a family."

*"That’s not fair, I’m doing everything I can to support you." [] -> level_headed
*"Don’t say that to me right now. You think I’m not heartbroken?" [] -> on_edge

= level_headed
You look deeply into her eyes. "I’m on your team, Ness."
She breaks into tears and you pull her close.

*[Bury your feelings to comfort her.] -> lie
*[Acknowledge your feelings and comfort her.] -> truth

= on_edge
You shake your head in disbelief. "I’m on your fucking team, Ness – You’re not the only one who’s hurting."
She breaks into tears and you pull her close.

*[Bury your feelings to comfort her.] -> lie
*[Acknowledge your feelings and comfort her.] -> truth

= lie
~ pacifying_lie++
She wraps her arms around you. You slowly embrace her, holding her tight as a tear streaks down your face. 
"I won’t give up on us. Even if we keep ending up here, it was worth it to me then and that’s not going to change."
She rests her head on your chest. 
-> end_of_four

= truth
~ hard_truth++
She wraps her arms around you. You slowly embrace her, taking a deep breath as a tear streaks down your face. 
"I can’t keep doing this. Our dreams keep getting ripped away from us. It’s too painful."
She shakes her head. "I grew up preparing myself for this outcome, I don’t think it’s ever made it easier."
You sigh deeply. "I need to truthfully accept the reality we may never have children of our own."
She raises her head slightly to look you in the eye. "Are you okay with that?"
You meet her watery gaze with your own, smiling softly through the pain. "With more vacation money? Absolutely."
She smiles. "Don't play with me, I'm sad."
You pull her back into your chest. "Well listen here, Sad, our love is everything I need."
-> end_of_four

= end_of_four
You stand up, bringing her with you.
"Come on. Let's go home."
You take her hand and leave the office.

// end of memory four


*[That's not the beginning.] -> memory_five

=== memory_five ===
You are filled with the sense of nostalgia as you realize you are in your childhood home. It's a typical 80's style house, and you are sitting in the living room. 
The sound of crying beside you calls your attention, and you realize the one weeping is a younger Ness in her early 20s. 
She notices you looking and blushes, hiding her face behind her hands. "I'm so sorry to come over like this, I didn't know where else to go", she says, her voice muffled and wavering from the tears.

*[You want to comfort her, make her feel safe.] -> comfort_ness
*[You want to reassure her, make her feel heard.] -> reassure_ness

= comfort_ness
"Don't even mention it. You are always welcome here," you say, putting your hands on her shoulder and giving her a reassuring smile.
-> ness_opens_up

= reassure_ness
"I am always here for you when you need a shoulder to cry on," you say, tapping on your shoulder and giving her a reassuring smile.
-> ness_opens_up

= ness_opens_up
She tries to smile back, but fails. You both sit in silence for a moment.
"My dad's been cheating on my mom."

*"That's awful. I can't even imagine how you're feeling." []
*"How could he do that? They've been together for ages!" []
*[Stay silent.]

- She scoffs. "And not only that, he has a whole other family with this other woman. Two small kids! While my mom is working her ass off to make ends meet at home while he goes to 'work conventions' every other week." She rolls into a fetal position, crying. You...

*[Offer her a tissue.]
*[Hold her.]
*[Put your hand on her back.]

- "Thank you, Stan. You're always so thoughtful," she says, drying her tears. She relaxes a little as you comfort her. "I think the hardest part is that I always looked up to him. He taught me everything, he made me who I am. God, he literally made me! And what does that mean about me, you know?"
She looks back at you, looking for an answer.

*[You try to console her by flattering her.] -> pacify
*[You try to change her point of view with honesty.] -> truth

= pacify
~ pacifying_lie++
 You grab her hands and slowly caress her palm, looking deep into her beautiful eyes. "I think I can say know you pretty well. Damn, I've know you since middle school! I've seen you break your arm in softball, I've seen you throw up half a bottle of tequila on the sidewalk. I've seen your best and your worst."
 She laughs, remembering those moments with you.
 "And your dad doing whatever he did says nothing about your character. It says a lot about his. And he has made many mistakes in his lifetime, but you are definitely not one of them."
 Ness eyes are filled with tears, but she looks at you with admiration.
 -> doorbell
 
 = truth
 ~ hard_truth++
 You grab her hands firmly, forcing her to look deep into your eyes. "Your dad might be a cheater, a liar, an asshole, but he will still be your dad. That will never change. Trying to change it or deny it will only harm you. But if you see his failures objectively, his mistakes, you can learn from him so you don't do the same thing, or choose someone that will do that to you."
 She nods firmly. "You're right, Stan." Her eyes are filled with tears, but she looks at you with admiration.
 -> doorbell
 
 = doorbell
 The doorbell rings across the house.
 "Gimme a second." You get up to answer the door.
 Ness stays in your living room. She gets up and checks your family pictures beside the TV. She giggles while looking at a picture of baby you naked in a bathtub. "Cutie," she says to herself.
 While at the door you think...
 
 *[I should cheer her up.]
 *[I should stand up for her.]
 *[I should show her I like her.]
 
 - Suddenly, an electric synth beat and drums start to play from the front hall. She recognizes the song immediately - Bonnie Tyler's "Holding Out for a Hero". She looks around for the sources of the music.
 She sees you at the living room door with a pizza in your hands, awkwardly shaking your hips to the beat, and she can't help but laugh.
 "I thought you could use a pick-me-up."
  She comes closer to you and takes the pizza out of your hands, putting it onto the coffee table.
You're confused for a second. Maybe it's too early to joke around?

*"Too soon?" []
*"I thought you liked pizza?" []

- Before you can say anything, Ness grabs you by the neck and gives you a passionate kiss on the lips. You're stunned at first, but you slowly give in to her.
After what could have been several minutes or the blink of an eye, you break apart. she looks you in the eyes and smiles. "Thank you for being my hero tonight."
You can't contain your happiness. You pull her in for another kiss.

// end of memory five

*[CRASH.] -> end_scene

=== end_scene ===
The bright white light takes over once again, and Ness' voice, once so sweet and caring, is now a distant sound coming from your car's mangled sound system.
"Stan? Stan, what was that noise?"
You realize you're the bottom of the cliff now. You're still inside your car, restrained by the seatbelt, but that didn't save you. 
Your car fell down the cliff into a construction zone, and as you look down to check your body, you notice a metal pipe is jutting from your torso, perforating your lungs. The pain kicks in and, even though it is excrutiating, it also feels way less important right now.
"Stan? Answer me, dammit!"

*"Hi. I'm here." -> continue

= continue
You cough weakly.
"Oh thank god, I heard this loud noise and thought something might have- Doesn't matter, go grab Bonnie. Fast!". She fluctuates between being worried and angry, and that brings out a smile.
"Hey Ness, wait," you say, feeling your lungs fill up with blood with every breath. "Could you go pick up Bonnie? I don't think I'll be able to make it."

*[Spare her from hearing you die.] -> death_lie
*[Tell her what's happening.] -> death_truth

=== death_lie ===
~ pacifying_lie++

"What you heard were my tires. I think they exploded or something."
Your attempt to sound normal is a little pathetic, but you hope she isn't able to tell.

{pacifying_lie > hard_truth: -> death_lie.ending_one}
{hard_truth > pacifying_lie: -> death_lie.ending_two}

= ending_one
"Exploding tires, Stan? That's probably your worst excuse yet. What the fuck is going on?" She sounds less angry, her voice taking on more worry. "Where are you? I'll call you a tow truck."
"No!" You cough, blood spilling out of your mouth.
"What the hell was that?"

*"Nothing."[] -> avoidant
*"I just have a cough."[] -> avoidant

= avoidant
You cough once again, the blood bubbling at your lips. It hurts so much.
"You're full of shit. I'm calling the fucking tow truck. You're on the 401, right? Whereabouts?"

*"Don't do that, Ness." []
-> negation
*"Just after the gas station." []
-> truth_two

= negation
"Fuck you, Stan." -> truth_two

= truth_two
You can hear rustling on her end. "I'm sending the truck and you're going to pick up Bonnie whether you want to or not." She hangs up.
The car system, somehow still working, lets you know just as much. "Your call has ended."
-> song

= song
You cough again, blood pooling at your lips as you think about all the memories you've just relived. The car radio continues.
"And now an old classic to get us in a good mood for the evening."
Bonnie Tyler's "Holding Out for a Hero" starts to play. Your tears fill your eyes and you embrace the light as it, for one last time, comes towards you with memories of sweeter times.

-> END

= ending_two
"Sure... Look, just fucking change your tire, get an Uber, I don't care. You're not getting rid of picking up Bonnie just because of a flat tire. Solve your problems like an adult." She hangs up.
The car system, somehow still working, lets you know just as much. "Your call has ended."

You think to yourself that Ness has always been the adult one of this relationship. That makes you feel...

*Reassured[.], -> reassured
*At peace[.], -> peace
*Proud[.], -> proud

= reassured
as you realize that Ness is going to raise Bonnie well, even with your passing.
-> song

= peace
as you realize that Ness will take care of everything better than you after you're gone.
-> song

= proud
as you realize how much Ness and Bonnie have grown beside you, and how good that makes you feel.
-> song

=== death_truth ===
~ hard_truth++

"You know that construction site beside the 401 after the gas station? I just ran myself right off the cliff on top of it," you say, as calmly as you can.

{pacifying_lie > hard_truth: -> death_truth.ending_three}
{hard_truth > pacifying_lie: -> death_truth.ending_four}

= ending_three
There's a silence on the other side of the line. A few agonizing moments, then -
"You know, Stan. Of all the people in my life, including my father, you're the biggest fucking liar I've ever known," she says. "That's how far you'll go to get out of picking up your fucking kid?! What the fuck is wrong with you? Go solve your shit like a grown up and pick Bonnie up." She hangs up.
The car system, somehow still working, lets you know just as much. "Your call has ended."

You think to yourself that Ness has always been the adult one of this relationship. That makes you feel...

*Reassured[.], -> reassured
*At peace[.], -> peace
*Proud[.], -> proud

= reassured
as you realize that Ness is going to raise Bonnie well, even with your passing.
-> song

= peace
as you realize that Ness will take care of everything better than you after you're gone.
-> song

= proud
as you realize how much Ness and Bonnie have grown beside you, and how good that makes you feel.
-> song

= song
You cough again, blood pooling at your lips as you think about all the memories you've just relived. The car radio continues.
"And now an old classic to get us in a good mood for the evening."
Bonnie Tyler's "Holding Out for a Hero" starts to play. Your tears fill your eyes and you embrace the light as it, for one last time, comes towards you with memories of sweeter times.

-> END

= ending_four
"What...?" She says softly. "Are you- are you okay?!"

*"There's a metal pipe piercing my belly." [] -> direct
*"I've been better." [] -> ness_freaks_out

= direct
"Oh my god, Stan."
-> ness_freaks_out

=ness_freaks_out
You let out another wet cough. "I don't think I'm making it out of this one, baby."
"No, Stan. No! I'm calling an ambulance-"
"No!" You cough harder, blood pooling at your lips. "I just want to be here with you one last time."
From the other side of the line you hear Ness starting to sob quietly.

*[Calm her.] -> final_story
*[Divert her attention.] -> final_story

= final_story
"You remember Holding Out for a Hero?"
"Of course. That's why we named her Bonnie."
"But do you remember that night?"
"I do."
"I felt-" Another cough. "I felt so selfish because it was such a hard time for you, but it was one of the happiest days of my life," you choke out, mouth filling with blood.
"I know. It was such a happy and sad day at the same time."
"I think at the end of the day that's life, you know. Happy and sad at the same time." You barely get that last sentence out, the blood coming more frequently.
"Stan?!" Ness cries out on the other side of the line.
"I'm- I'm here," you struggle to say.

*"Thank you. For everything." []
-> thankful
*"I trust you with Bonnie." []
-> trust
*"I love you both so much." []
-> loving

= thankful
"No, Stan. Thank you." She chokes out.
-> last_wish

= trust
"You were an amazing dad," she chokes out. "She'll never forget you."
-> last_wish

= loving
"We love you too," she chokes out. "We'll never forget you."
-> last_wish

= last_wish
"Can I ask for one last thing"
"Of course," she sniffles. "Anything."
"Could you tell me about your day?"
You start coughing again.
"Well, uh... I woke up late," she says softly.
The shining light appears once again, cutting through the darkness.
"Almost missed Bonnie's schoolbus. She was so angry."
Tears fill your eyes at the thought of an adorable little angry Bonnie.
"She didn't want to miss the day daddy picks her up."
And as you see the light coming closer, you embrace it, knowing you did what you could with the life you had.

-> END