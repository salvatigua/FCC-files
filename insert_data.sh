#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
while IFS="," read -r anio ronda ganador oponente goles_ganador goles_oponente
do
  
  if [[ $anio == "year" ]]
  then
    continue
  else
    echo "Partido: $ganador vs. $oponente"

    GANADOR_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$ganador'")
    OPONENTE_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$oponente'")

    if [[ -z $GANADOR_ID ]]
    then
      INSERTAR_GANADOR=$($PSQL "INSERT INTO teams (name) VALUES ('$ganador')")
      echo Guardaremos $ganador
      GANADOR_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$ganador'")
    fi

    if [[ -z $OPONENTE_ID ]]
    then
      INSERTAR_OPONENTE=$($PSQL "INSERT INTO teams (name) VALUES ('$oponente')")
      echo Guardaremos $oponente
      OPONENTE_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$oponente'")
    fi

    INSERTAR_PARTIDO=$($PSQL "INSERT INTO games (year,round,winner_id,opponent_id,winner_goals,opponent_goals)
    VALUES ($anio, '$ronda', $GANADOR_ID, $OPONENTE_ID, $goles_ganador, $goles_oponente)") 
  fi

done < games.csv 