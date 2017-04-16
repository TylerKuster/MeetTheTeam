Meet the Team
======
**Meet the Team** was a seemingly simple code test riddled with custom elements, subtle auto layout requirements, and commonly overlooked UX considerations.

The instructions were simply to recreate the “Meet the Team” iOS application based on the (slightly modified) screenshots below. The app should allow the user to browse and learn about the team by scrolling through a list, and tapping anyone to learn more.

#### Screenshots
![alt tag](http://68.media.tumblr.com/b79aaa4f5b39015bf672510622884c4b/tumblr_ooiz7lKrgz1qbkxdyo1_500.png “Team table view”) ![alt tag](http://68.media.tumblr.com/77d6fff7a4a248e44c582f2d94c4d16a/tumblr_ooiz7lKrgz1qbkxdyo2_500.png “Teammate profile”) ![alt tag](http://68.media.tumblr.com/f8f9bcedc54a129a14273988565c6b7f/tumblr_ooiz7lKrgz1qbkxdyo3_500.png “Teammate profile scrolled up”)

## Custom Elements
#### Team View
* Table View Cell - Custom font, color, image treatment, and disclosure arrow.
* Lato - A commonly used Google Font which doesn’t come with the iPhone by default.
* Text - Kerned.

#### Profile View
* View styling - Code driven design made from two bezier paths which resizes fluidly without degradation.
* Text - Justified and kerned.

## Auto Layout Requirements
#### Team View
* Custom disclosure arrow placement.

#### Profile View
* Profile Image - Scales to fill the available space in the header when scrolling down but locks to the top of the screen when scrolling up and slides under the lower half.
* Profile View - Dynamically sizes it’s height based on the contents/height of the ‘bio’ Text View.

## UX Improvements
#### Team View
* URL based images - An AFNetworking category is used to request all images asynchronously without blocking the UI.

#### Profile View
* UILabel clipping - Labels padded and offset to contain custom font descenders.
* Profile Image - Scales to fill the available space in the header when scrolling down but locks to the top of the screen when scrolling up and slides under the lower half.