#This files contains your custom actions which can be used to run
#custom Python code.

#See this guide on how to implement these action:
#https://rasa.com/docs/rasa/custom-actions


#This is a simple example for a custom action which utters "Hello World!"

from typing import Any, Text, Dict, List

from rasa_sdk import Action, Tracker
from rasa_sdk.events import SessionStarted, ActionExecuted
from rasa_sdk.executor import CollectingDispatcher
import mysql.connector


chatbotDB = mysql.connector.connect(
	host = 'localhost', 
	user= 'root', 
	password = 'rootadmin',
	database = 'ivr'
)


class ActionHelloWorld(Action):
  def name(self) -> Text:
    return "action_hello_world"

  def run(self, dispatcher: CollectingDispatcher, tracker: Tracker, domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
    dispatcher.utter_message(text="Hello World!")
    return []


class ActionSessionStart(Action):
  def name(self) -> Text:
    return "action_session_start"

  def run(self, dispatcher: CollectingDispatcher, tracker: Tracker, domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
    events = [SessionStarted()]
    text = "Murakaza neza kuri Mbaza.\n1. Vuga Ikinyarwanda\n2. Say English\n3. Dites Francais\n"
    dispatcher.utter_message(text)
    events.append(ActionExecuted("action_listen"))
    return events


class ActionKinyRwStatistic(Action):
  def name(self) -> Text:
    return "action_kiny_rw_statistics"

  def run(self, dispatcher: CollectingDispatcher, tracker: Tracker, domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
    events = [SessionStarted()]

    dbCursor = chatbotDB.cursor()
    dbCursor.execute("select * from ivrResponses where menuId = 5")
    menuItems = dbCursor.fetchall()
    text = "Imibare y'abanduye mu Rwanda\n"
    text += menuItems[0][1] + ": " + menuItems[0][3] + "(+" + menuItems[1][3] + ")\n"
    text += menuItems[2][1] + ": " + menuItems[2][3] + "(+" + menuItems[3][3] + ")\n"
    text += menuItems[4][1] + ": " + menuItems[4][3] + "\n"
    text += menuItems[5][1] + ": " + menuItems[5][3] + "(+" + menuItems[6][3] + ")\n"
    text += menuItems[7][1] + ": " + menuItems[7][3] + "(+" + menuItems[8][3] + ")"
    dispatcher.utter_message(text)

    events.append(ActionExecuted("action_listen"))
    return events


class ActionKinyWwStatistic(Action):
  def name(self) -> Text:
    return "action_kiny_ww_statistics"

  def run(self, dispatcher: CollectingDispatcher, tracker: Tracker, domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
    events = [SessionStarted()]

    dbCursor = chatbotDB.cursor()
    dbCursor.execute("select * from ivrResponses where menuId = 6")
    menuItems = dbCursor.fetchall()
    text = "Imibare y'abanduye ku isi\n"
    text += menuItems[0][1] + ": " + menuItems[0][3] + "\n"
    text += menuItems[1][1] + ": " + menuItems[1][3] + "\n"
    text += menuItems[2][1] + ": " + menuItems[2][3] + "\n"
    text += menuItems[3][1] + ": " + menuItems[3][3]
    dispatcher.utter_message(text)

    events.append(ActionExecuted("action_listen"))
    return events


class ActionKinyCovidInfo(Action):
  def name(self) -> Text:
    return "action_kiny_about_covid"

  def run(self, dispatcher: CollectingDispatcher, tracker: Tracker, domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
    events = [SessionStarted()]

    dbCursor = chatbotDB.cursor()
    dbCursor.execute("select * from ivrResponses where menuId = 7")
    menuItems = dbCursor.fetchall()
    text = "Covid ni iki\n"
    for item in menuItems:
      text += "- " + item[3] + "\n"
    dispatcher.utter_message(text)

    events.append(ActionExecuted("action_listen"))
    return events


class ActionKinySymptoms(Action):
  def name(self) -> Text:
    return "action_kiny_covid_symptoms"

  def run(self, dispatcher: CollectingDispatcher, tracker: Tracker, domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
    events = [SessionStarted()]

    dbCursor = chatbotDB.cursor()
    dbCursor.execute("select * from ivrResponses where menuId = 8")
    menuItems = dbCursor.fetchall()
    text = "Ibimenyetso bya covid\n"
    for item in menuItems:
      text += "- " + item[3] + "\n"
    dispatcher.utter_message(text)

    events.append(ActionExecuted("action_listen"))
    return events


class ActionKinyRwPrevention(Action):
  def name(self) -> Text:
    return "action_kiny_covid_prevention"

  def run(self, dispatcher: CollectingDispatcher, tracker: Tracker, domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
    events = [SessionStarted()]

    dbCursor = chatbotDB.cursor()
    dbCursor.execute("select * from ivrResponses where menuId = 9")
    menuItems = dbCursor.fetchall()
    text = "Kwirinda covid\n"
    for item in menuItems:
      text += "- " + item[3] + "\n"
    dispatcher.utter_message(text)

    events.append(ActionExecuted("action_listen"))
    return events