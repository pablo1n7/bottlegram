# 


# Bottlegram

Bottlegram is a tool for creating telegram Bots for Pharo. This library provides a interface for the [Telegram Bot API](https://core.telegram.org/bots/api.).


# Basic usage

Must create a new object inherit from Bottlegram. This object must define three methods: 'slashStart', 'slashHelp', 'defaultText'.

slashStart: This method execute when the bot receives '/start'.

slashHelp: This method execute when the bot receives '/help'.

defaultText: This method execute when the bot receives command unknows or not defined.

```smalltalk

Bottlegram subclass: #EchoBottle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bottlegram-Example'!

defaultText: aMessage
	aMessage answer: aMessage text.! !

slashHelp: aMessage
	aMessage send:'Hello, it is my first bot in Pharo. Tell me something and i repeat you'! !
                
slashStart: aMessage
	aMessage send:'Hello, Tell me something. Try /help for more information'! !


```
If you want to define new commands or behavior must be add in registerCommand and define the method in the object.

```smalltalk
 registerCommand: #slashWeather: to: '/weather'.
```


# Example usage

```smalltalk

echoBotte:=EchoBottle new:'API TOKEN OBTAIN in BotFather'.
echoBotte startBot:1. "Polling each 1 second."
echoBotte isRun. "true"
echoBotte stopBot.

```
