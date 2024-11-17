#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Prompt for username
echo -e "\nEnter your username:"
read USERNAME

# Fetch user data in a single call
USER_INFO=$($PSQL "SELECT user_id, username, games_played, best_game FROM users WHERE username='$USERNAME'")

if [[ -z $USER_INFO ]]
 then
  # New user message and insertion
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  $PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$USERNAME', 0, NULL)"
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  else
   # Existing user message
 IFS='|' read USER_ID DB_USERNAME GAMES_PLAYED BEST_GAME <<< "$USER_INFO"
  if [[ -z $BEST_GAME ]]
   then
    BEST_GAME="N/A"
  fi
  echo -e "\nWelcome back, $DB_USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate the secret number
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
NUMBER_OF_GUESSES=0

# Start guessing loop
echo -e "\nGuess the secret number between 1 and 1000:"
while true
 do
  read GUESS

  # Validate input
  if ! [[ $GUESS =~ ^[0-9]+$ ]]
   then
    echo -e "\nThat is not an integer, guess again:"
    continue
  fi

  ((NUMBER_OF_GUESSES++))

   # Check guess
  if [[ $GUESS -eq $SECRET_NUMBER ]]
   then
    echo -e "\nYou guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
    $PSQL "UPDATE users SET games_played = games_played + 1 WHERE user_id = $USER_ID"
    if [[ -z $BEST_GAME || $NUMBER_OF_GUESSES -lt $BEST_GAME ]]; then
      $PSQL "UPDATE users SET best_game = $NUMBER_OF_GUESSES WHERE user_id = $USER_ID"
    fi
    $PSQL "INSERT INTO games(user_id, guesses, secret_number) VALUES($USER_ID, $NUMBER_OF_GUESSES, $SECRET_NUMBER)"
    break
  elif [[ $GUESS -gt $SECRET_NUMBER ]]
   then
    echo -e "\nIt's lower than that, guess again:"
  else
    echo -e "\nIt's higher than that, guess again:"
  fi
done
