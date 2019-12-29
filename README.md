# 

<p align="center">
  <img height="200" src="readme_assets/bottlegram_logo.jpg" alt="bottlegram for pharo logo">
</p>

# Bottlegram

Bottlegram is a tool for creating telegram Bots with Pharo. This library provides a interface for the [Telegram Bot API](https://core.telegram.org/bots/api.).


### Basic usage

To create our telegram bot in Pharo, the first thing we need to do is to create a new object that inherits from Bottlegram. 
This object must define at least this three methods:

  * `slashStart`: to be executed when the bot receives `/start`.

  * `slashHelp`: to be executed when the bot receives `/help`.

  * `defaultText`: to be executed when the bot receives an unknown command.

For example:
```smalltalk

Bottlegram subclass: #EchoBottle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bottlegram-Example'!

defaultText: aMessage
	aMessage answer: aMessage text.! !

slashHelp: aMessage
	aMessage send:'Hello, I'm a Telegram bot written in Pharo. Tell me something and I'll repeat after you'! !
                
slashStart: aMessage
	aMessage send:'Hello, I'm a Telegram bot written in Pharo. Send /help for more information'! !
```

#### Defining new behavior

We can define new behavior for our bot by implementing new methods for it and associating them with a tag like: `#slashMyNewBehaviour` and the corresponding command for the bot, like `/myNewBehavior`. 
Where `slashMyNewBehaviour` must match with the name of our new method. 

To do this we will call `registerCommand`. For example:

```smalltalk
 registerCommand: #slashWeather: to: '/weather'.
```
So when the bot receives a message with `/weather` it will invoke its `slashWeather` method.

### Example

To use the Echo bot that we created we will do something like this:

```smalltalk

echoBotte:=EchoBottle new:'paste here the API TOKEN obtained from the BotFather'.
echoBotte startBot:1. "Polling updates every second."
echoBotte isRun. "true"
echoBotte stopBot. "To stop the bot and the polling process"

```

#### Chat with [EchoPharoBot](https://t.me/echo_pharo_bot)!

### TODO: 
* [ ] More documentation.
* [ ] Add Webhook support.
* [ ] Add support for inline bots.
* [ ] Add support for images, sounds, etc.
