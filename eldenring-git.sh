#! /bin/bash 

#####INTRO & CHARACTER SELECTION######

echo "Welcome player, please choose your name" 

read name 

sleep 2

echo "Welcome $name, please select your starting class:  

1) Paladin 
2) Prisoner 
3) Seer" 

read class 

case $class in 

    1) 
        type="Paladin" 
        hp=30 
        attack=20
        ;;

    2) 
        type="Prisoner"
        hp=20
        attack=9 
        ;;

    3) 
        type="Seer"
        hp=25
        attack=12
        ;;
esac

sleep 2

echo "You have chosen $type class. Your HP is $hp and your attack is $attack." 

##################################################################################

sleep 2

echo "LEVEL 1 - Beat the beast Bash"
echo "-----------------------------------------------"

sleep 1 

echo "Your journey begins and you encounter your first opponent..the beast known as Bash" 

sleep 2

echo "It's body is black and ugly, it's fang long and large as trees, select a number to ensure the beasts defeat"

sleep 2

echo "Select a number between 0-1 to see if it is you who has won" 

read $number 

beast=$(( $RANDOM % 2))

if [[ $beast == $number ]]; then 

  echo "You killed the beast! Congrats $name"
else
  echo "You died. Game Over. Select a new class and new name to proceed" 
  exit 1
fi
