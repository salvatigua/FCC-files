#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only --no-align -c"

echo -e "\n~~~~~ MY SALON ~~~~~"

MAIN_MENU() {
  
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  $PSQL "SELECT service_id, name FROM services" | while IFS="|" read -r SERVICE_ID SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done

  read SERVICE_ID_SELECTED
  SERVICIO_DISPONIBLE=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")

  if [[ -z $SERVICIO_DISPONIBLE ]]
  then
    MAIN_MENU "I could not find that service. What would you like today?"
  
  else
    echo -e "\nWhat's your phone number?"
    read CUSTOMER_PHONE

    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
    
    if [[ -z $CUSTOMER_NAME ]]
    then
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      NUEVO_CLIENTE=$($PSQL "INSERT INTO customers (name,phone) VALUES ('$CUSTOMER_NAME','$CUSTOMER_PHONE')") 
    fi

    echo -e "\nWhat time would you like your $SERVICIO_DISPONIBLE, $CUSTOMER_NAME?"
    read SERVICE_TIME

    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'") 
    INSERTAR_TURNO=$($PSQL "INSERT INTO appointments (customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

    echo -e "\nI have put you down for a $SERVICIO_DISPONIBLE at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
}

MAIN_MENU "Welcome to My Salon, how can I help you?\n"