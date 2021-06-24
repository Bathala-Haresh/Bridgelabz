#! /bin/bash -x

function player()
{

  echo "1) Rock"
  echo "2) Paper"
  echo "3) scissor"

  echo "select any of these : "
    read player1
  if [ $player1 == 1 ]; then
      echo "user value is: Rock"
     elif [ $player1 == 2 ]; then
      echo "user value is: Paper"
     else
      echo "user value is: scissor"
     fi

}

function computer()
{
    value=$(((RANDOM % 3) + 1))
    if [ $value == 1 ]; then
     echo "computer value is: Rock"
    elif [ $value == 2 ]; then
     echo "computer value is: Paper"
    else
     echo "computer value is: scissor"
    fi

}


function compare()
{

   if [[ $player1 == $value ]]; then
    echo "Its a Tie"
   elif [[ $player1 ==  1 && $value == 3 ]]; then
    echo "Player 1 Wins "
   elif [[ $player1 == 3 && $value == 1 ]]; then
    echo "Computer won "
   elif [[ $player1 == 3 && $value == 2 ]]; then
     echo "player won "
   elif [[ $player1 == 2 && $value == 1 ]]; then
     echo "player  won "
   elif [[ $player1 == 1 && $value == 2 ]]; then
     echo "Computer won "
   elif [[ $player1 ==  2 && $value == 3 ]]; then
     echo "computer Wins "
   else
    echo "error please try again "
    main
   fi
}

function playAgain {
  echo "Would you like to play again? (y/n): "
  read play
  if [[ $play == "y" ]]; then
    main
  else
   echo "hope to see u play again and enjoy "
    exit
  fi
}


function main()
{
player
computer
compare
playAgain
}
main


