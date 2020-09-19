# What's The Weather?

Dark-mode enabled weather app that allows the user to check the weather for their current location based on the GPS data from the phone as well as by searching for a city manually.

## This app demonstrates...

* A dark-mode enabled app.
* Use of the UITextField to get user input.
* The delegate pattern.
* Swift protocols and extensions.
* Swift guard keyword.
* Swift computed properties.
* Swift closures and completion handlers.
* Use of URLSession to network and make HTTP requests.
* Parsing JSON with the native Encodable and Decodable protocols.
* Use of Grand Central Dispatch to fetch the main thread.
* Use of Core Location to get the current location from the phone GPS.

## User Interface

Upon launching the app, users will receive a pop-up requesting their permission for their location to be shared. Once approved, the app's display will update to show the weather of their current location via temperature and an icon that indicates the current weather condition (cloudy, sunny, stormy, etc.).

![](https://github.com/michaelhandkins/whats-the-weather/blob/master/wtw_permission.gif)

Users can also search for the weather of a specific city using the search bar at the top of the screen.

![](https://github.com/michaelhandkins/whats-the-weather)

At any point while using the app, the location icon to the left of the search bar can be tapped to display the weather for the user's current location.

![](https://github.com/michaelhandkins/whats-the-weather/blob/master/wtw_location.gif)

If the user's device is in dark-mode, the app's interface will have a different appearance.

![](https://github.com/michaelhandkins/whats-the-weather/blob/master/wtw_darkmode.png)
