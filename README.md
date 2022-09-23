# One Two Three
## A social network app allowing to find a dancing buddy.

This is the final group project of Le Wagon Web Development Bootcamp. Batch #601

Have you ever wanted to go to a salsa class, but were too shy to go alone? 
OneTwoThree is a social network for salsa dancers, allowing you to look for a buddy or a group of people to join a class or a social event together.


### Enjoy!

The application is deployed to Heroku and available here:
## [One Two Three](http://www.onetwothree.live/)

![Main Page](/app/assets/images/main_pc.JPG?raw=true "Main Page")
<table>
  <tr>
    <td><img src="app/assets/images/users_pc.JPG" ></td>
    <td><img src="/app/assets/images/events_pc.JPG" ></td>
    <td><img src="/app/assets/images/places_ps.JPG" ></td>
  </tr>
  <tr>
    <td><img src="app/assets/images/profile_pc.JPG" ></td>
    <td><img src="/app/assets/images/groups_pc.JPG" ></td>
    <td><img src="/app/assets/images/main_pc.JPG" ></td>
  </tr>
</table>

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
MAPBOX_API_KEY=your_own_mapbox_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

### Log in as testing@testing.com
### Password: testing

---


## Dev log

### Built With
- [Rails 6](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping


### The final schema of the application:
![Schema](/app/assets/images/schema.JPG?raw=true "Schema")

And some of the older versions:

<table>
  <tr>
    <td><img src="app/assets/images/schema_old1.JPG" ></td>
    <td><img src="/app/assets/images/schema_old2.JPG" ></td>
    <td><img src="/app/assets/images/schema_old3.JPG" ></td>
  </tr>
</table>

---


## Back End
Application consist of eight models in total!
-User
	- The User logic was created using [DEVISE](https://github.com/heartcombo/devise)
	- Authentication logic
	- Photo attachment using [Cloudinary](https://cloudinary.com/) as active_storage
	- After logging in User can either look for other users to dance with or look for places to dance.
- Place
	- Photo attachment using [Cloudinary](https://cloudinary.com/) as active_storage
	- Phisical object, schools of dance, music clubs with occuring dancing events
- Event
	- Photo attachment using [Cloudinary](https://cloudinary.com/) as active_storage 
	- Created by User, owner of the Place
	- May have many attendants, groups and invites
- Invite
	- User can either add yourself to the even, invite someone else straight to the event or create a grou or add someone an existing group of people going together to the given event.
	- Each user story have differen routes and path and its carrying different sets of params throughout all views.
- Group
	- Backbone of the aplication
	- Internal dashboard for group of people going together to that one given event in that one place.
	- Fully dynamic with responsive menu allowing to add participants and with build in chat created using WebSocket and ActionCable
- Review
	- After participating with some other user in an event or after beeing with him in a group you can leave a "review" at his profile pic that only you will be able to modify, a part of gamification aspect of the application, depending on rating of those reviews each user will progress with level and get a new achievement.
- Chatroom
	- Part of the live chat logic in Group model
- Message
	- Look above!

---

## Extra features

- User logic with authentication done with [DEVISE](https://github.com/heartcombo/devise)
- Geolocation for Users and Places done with [Mapbox](https://www.mapbox.com/)
- Search Engine through Users or Places done with [pg_search](https://github.com/Casecommons/pg_search)
- Photo attachment using [Cloudinary](https://cloudinary.com/) as active_storage for Users, Places and Events
- AJAX for Reviews
- Webpack and Action Cable for Live Chat in Groups

---
