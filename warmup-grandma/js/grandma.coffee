$(document).ready ->
  $input = $('#input')
  $submit = $('#submit')

  $submit.click ->
    youSay = $input.val()
    console.log youSay
    do isUpperCase (youSay)

  isUpperCase = (youSay) -> 
    youSay == youSay.toUpperCase() 
    console.log youSay


counter = 0
speakToGrandma = ->
  speak = prompt 'speak to grandma'
  if speak == 'BYE'
    counter ++
  else


counter = 0
speakToGrandma = ->
    speak = prompt 'Speak to grandma'
    if speak == 'BYE'
        console.log 'BYE'
        counter++
    else if speak == speak.toUpperCase()
        console.log "Na, not since 19" + _.random 30, 50
        counter = 0
    else 
        console.log 'Speak up Sonny!'
        counter = 0

while counter < 3
    speakToGrandma()




