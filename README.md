# Rasa Implementation of rule based Kinyarwanda COVID-19 chatbot v0.1

The chatbot should start the conversation with a language menu, but this feature hasn’t been implemented yet.
So just enter the language you’re using at the start of the conversation.
The navigation options like “back”, “home”, “exit” are available in the chatbot menus, but these features haven’t been implemented yet.

## Menu1
The chatbot should start the conversation prompting the user to select a language, but this feature hasn’t been implemented yet.

### Menu1
Bot >	Vuga Ikinyarwanda (Say Kinyarwanda)
			Say English
			Dit Francais (Say French)

	If the user selected the third item of menu1:
	Input >	Francais (French)
	Bot >	Veuillez attendre un moment pendant qu'on vous connecte à l’un de nos agents.
				(Please wait a moment while we connect you to one of our agents.)

	If the user selected the second item of menu1:
	Input >	English
	Bot >	Please wait a moment while we connect you to one of our agents. 

	### Menu2
	If the user selected the first item of menu1:
	Input >	ikinyarwanda (Kinyarwanda)
	Bot > 	1. Kumenya umubare w'abanduye. (Numbers of infected people)
				2. kumenya ibindi bijyanye na covid. (More information on covid)
				3. Kuvugana n'umukozi wa RBC. (Speak to an RBC agent)
				4. Gusubira ahabanza. (Return to main menu)
				5. Gusohoka. (Exit the application)

		### Menu3
		If the user selected the first item of menu2:
		Input >	Kumenya umubare w'abanduye (Numbers of infected people)
		Bot >	1. Umubare w'abanduye mu Rwanda. (Number of infected people in Rwanda)
					2. Umubare w'abanduye ku isi. (Number of infected people in Rwanda)
					3. Gusubira inyuma. (Return to the previous menu)
					4. Gusubira ahabanza. (Return to main menu)
					5. Gusohoka. (Exit the application)

			If the user selected the first item of menu3:
			Input >	Umubare w'abanduye mu Rwanda (Number of infected people in Rwanda)
			Bot >	Imibare y'abanduye mu Rwanda (Numbers of infected people in Rwanda)
						Abanduye bose: 5,779(+29) (Total number of infected people)
						Abakize: 5,317(+76) (Number of recovered people)
						Abakirwaye: 415 (Number of patient)
						Ibipimo: 614,267(+2,583) (Number of test performed)
						Abapfuye: 47(+0) (Number of death)

			If the user selected the second item of menu3:
			Input >	Umubare w'abanduye ku isi (Number of infected people in the world)
			Bot >	Imibare y'abanduye ku isi (Numbers of infected people in the world)
						Abanduye bose: 60,837,127 (Total number of infected people)
						Abakize: 42,162,378 (Number of recovered people)
						Abakirwaye: 17,245,620 (Number of patient)
						Abapfuye: 1,429,129 (Number of death)

		### Menu4
		If the user selected the second item of menu2:
		Input > 	Kumenya ibindi bijyanye na covid (More information on covid)
		Bot >	1. Covid ni iki? (What is covid?)
					2. Ibimenyetso bya covid ni ibihe. (What are the symptoms of covid)
					3. Uburyo bwo kwirinda. (Prevention measures)
					3. Gusubira inyuma. (Return to the previous menu)
					4. Gusubira ahabanza. (Return to main menu)
					5. Gusohoka. (Exit the application)

			If the user selected the first item of menu4:
			Input >	covid ni iki (what is covid)
			Bot >	Covid ni iki (What is covid)
						- Covid-19 ni indwara yandura iterwa na virusi ya SARS Cov2 
						(Covid-19 is a infectious disease that’s caused by the SARS Cov2 virus)

			If the user selected the second item of menu4:
			Input >	Ibimenyetso bya covid ni ibihe. (What are the symptoms of covid)
			Bot >	Ibimenyetso bya covid (Symptoms of covid)
						- Umuriro (Fever)
						- Umunaniro (Fatigue/tiredness)
						- Inkorora (Cough)

			If the user selected the third item of menu4:
			Input >	Uburyo bwo kwirinda. (Prevention measures)
			Bot >	Kwirinda covid (Covid prevention)
						- Kwambara masike (Wearing a mask)
						- Gukaraba intoki (Wash hands)
						- Gusiga intera ya metero (Stand one meter from each other)

