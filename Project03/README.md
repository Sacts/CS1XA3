# CS 1XA3 Project03 - cheemm9
## Usage
Install conda enivornment from [here](https://www.anaconda.com/products/individual), then
Run locally with
python manage.py runserver localhost:8000
Run on mac1xa3.ca with
python manage.py runserver localhost:10018
url for running on mac1xa3.ca:  https://mac1xa3.ca/e/cheemm9/
log in with

Username     Password

cheemm9	     powerfulz123	
cheemm123    powerfulz123
cheemm1234   powerfulz123
Sacts	     ibtehaaj
Saff         fatima123	
ibtehaaj     EpicJetTheHawk56

...
## Objective 01
Description:
1) This feature is rendered by 'signup_view' which routes to  _'signup.djhtml'_
2) It makes a POST request to https://mac1xa3.ca/e/cheemm9/ which is handled by signup_view
3) Had to make use of the built in _cleaneddata_ operation. I also had to import authenticate and make use of
   the redirect operation.
4) Added code to handle the POST request sent by the form to create a new user, and logs the new user into the messages page.

Exception:

1) If https://mac1xa3.ca/e/cheemm9/ is called without any arguments, we are redirected to the login page.
## Objective 02
Description:
1) this feature is displayed in `messages.djhtml` which is rendered by `people_view` and `account_view`
2)it makes a POST Request to `people_view` and redirects to `/e/cheemm9/messages`
3)Edited social_base.djhtml to create a Profile and Interests corresponding to the currently logged in user
           by using Django Template Variables as listed.
Exceptions:
4)without authentication it will redirect to login page.(login.djhtml)
## Objective 03
Description:
1) Clicking the top right icon on the Navbar brings you to the Account Settings Page, rendered by
   - The function def account_view in Project03/social/views.py
   - The template Project03/social/templates/account.djhtml
2) Made use of the inbuilt Password Change Form by importing it and created a extra function to update the users bio.
3) Provided forms to change the user's current password and to update the users bio.
4) Handled POST requests sent by the forms mentioned above to update the UserInfo object accordingly
Exception:
1)If `/e/cheemm9/account` is called without authentication, it redirects login page
2)By pressing the avatar on the navbar will redirect to account page
## Objective 04    
Description:
1) this feature is rendered by "people_view" which routes to "people.djhtml" 
2) It shows the users who are not friends of the currently logged in user
Exception:
1)If `/e/cheemm9/account` is called without authentication, it redirects login page
2)By pressing the avatar on the navbar will redirect to account page
## Objective 05
Description:
1)This feature is rednered by 'people_view', 'people.js' and 'friend_request_view' and it is routes to 'people.djhtml'
2)It uses Jquery functions in people.js to send a POST request to 'friend_request_view'
Exceptions:
1)If `/e/cheemm9/account` is called without authentication, it redirects to `login.djhtml`(The login page)
## Objective 06
Description:
1)accepting or declining a friend request sends a Post to the 'accept_decline_view' about which button is pressed
2)the 'accept_decline_view" handles the Post Request and it updates the userinfo if the friend request was accepted
3)This page is rendered by 'accept_decline_view' and routes to 'people.djhtml'
Exception:
1)If `/e/cheemm9/account` is called without authentication, it redirects to `login.djhtml`(the login page)
2)Each time the friend request is pressed it increments the number of buttons
## Objective 07
Description:
1)this page is rendered by 'messages_view' and 'messages.js' and routes to 'messages.djhtml'
2)It displays all the friends of the user who is currently logged in
3)It uses the friends table in the UserInfo 
Exception:
1)If `/e/cheemm9/account` is called without authentication, it redirects to `login.djhtml`(the login page)
## Objective 08
Description:
1)This page is rendered by 'post_submit_view', 'messages.js' and 'messages_view' and routes to 'messages.djhtml'
2)it submits an ajax post request when the button is pressed and forwards the data of post-text to post_submit_view
3)It reloads the page after the executing step 2
4)post_submit_view creates a new post model.
Exception:
1)If `/e/cheemm9/account` is called without authentication, it redirects to `login.djhtml`(the login page)
2)The resource is not loaded properly even after force refreshing and using 'collectstatic' again as mentioned in discord chat.
## Objective 09
Description:
1)this page is rendered by 'more_post_view' and 'messages_view' and routes to 'messages.djhtml'
2)'messages.djhtml' displays the posts given by 'messages_view'
3)It sorts the posts from new to old using a timestamp
Exception:
1)If `/e/cheemm9/account` is called without authentication, it redirects to `login.djhtml`(the login page)
2)The resource is not loaded properly even after force refreshing and using 'collectstatic' again as mentioned in discord chat.
## Objective 10
Description:
1)this page is rendered by 'like_view' and 'messages_view' and routes to 'messages.djhtml'
2)Allows users to like other users and themselves posts and displays the number of likes
3)It does not allow one user to like a post more then once if a user presses a like button
 after liking it it will unlike the post
4)it uses html code so that the Jquery does not respond.
Exception:
1)If `/e/cheemm9/account` is called without authentication, it redirects to `login.djhtml`(the login page)
2)The resource is not loaded properly even after force refreshing and using 'collectstatic' again as mentioned in discord chat.
## Objective 11
Description:
Made a variety of different accounts and assigned them different bios and sent friend requests.


