# ThisIsWater

### About

"ThisIsWater" is a full-stack single-page web application inspired by the story-sharing platform "Medium". ThisIsWater is built using Rails/PostgreSQL on the backend and React.js/Redux on the frontend. 

Access the live site [here](https://thisiswater.herokuapp.com/)

<p align="center"><img src="https://i.imgur.com/f97HEU8.png" width="800px" /></p>

## Architecture and Technologies

The project is implemented with the following technologies:

- `React.js`
- `Redux`
- `JavaScript ES6`
- `HTML5`
- `Sass 3`
- `Ruby on Rails`
- `PostgreSQL`
- `Amazon Web Services S3`
- `JSON/JBuilder`
- `Webpack4`

## Features

Some feature highlights of ThisIsWater are:

- Front and Backend Auth
- Stories
- Comments
- Claps
- Follows
- Tags
- Favorites
- User Profiles
- Personalized Stream
- Recommendedations
- Popular Stories
- RegExp Search
- Error Handling
- Loading Screen
- Mobile Support

### Authentication and Authorization

Users can register and login to the app through a modal.  Users can view the splash page but can't interact with the site until they login.  This is accomplished through the use of protected routing along with session tokens and BCrypt password hashing.  

### Stories

Users can write and read stories.  Stories can contain images which are stored on the AWS S3 cloud and handled with Rails Active Record.  Stories can be tagged, and feature a title, subtitle and body text.  The length of a story is calculated and thus an approximate readtime is generated on the backend.  Additionally, the creation date of the story is saved.  

<p align="center"><img src="https://i.imgur.com/MlVwSsY.png" width="600px" /></p>

<p align="center"><img src="https://i.imgur.com/pmHY4ys.png" width="600px" /></p>

### Comments

Users can comment on stories, which then are immediately displayed at the bottom of the story in a comment section.  The date of the comment is saved and comments are displayed in descending order of recency.  

<p align="center"><img src="https://i.imgur.com/SEdexc3.png" width="400px" /></p>


### Claps

Users can clap on stories by mashing the goldfish icon.  Claps are generated on each keypress and are capped to 20 per user.  Claps are only saved to the database when the user navigates away from the page, limiting the number of `POST` requests.  The `clap` model shares a polymorphic relation with stories, as users can clap both stories and comments.  

### Follows

Users can follow other users, but cannot follow themselves.  A user's followers and followed are kept track of and displayed in the user show page.  

### Tags

Tags can be added to stories by the author, with the top 5 most common tags being displayed on the splash page.  Clicking on a tag will generate a list of stories that belong to that tag. 

### Favorites

Users can favorite a story, thus saving the story for later reading.  Users can navigate to their favorites list by clicking the favorite icon in the nav bar.  

### User Profiles

Each user has a profile which displays information about the user such as when they joined ThisIsWater and how many followers they have.  Additionally, on a users profile is the option to follow unless looking at the current user's profile.  Each user has many stories which are displayed on the profile page.  If the current user is looking at his or her own profile, he or she can then edit stories.  

<p align="center"><img src="https://i.imgur.com/4diDn0g.png" width="600px" /></p>

### Personalized Stream

As a user begins following other users, those other users' stories will begin to appear in that user's personalized stream.  The personalized stream is unique for each user and is determined by the user's activity on the site.  

### Recommendations

As the user interacts with the site, information about his or her likes and preferences are stored.  Those likes then are able to generate other users' stories or similarly tagged stories the user may like, depending on their relative popularity.  

### Popular Stories

On the splash page the 5 most popular stories are displayed, determined by the number of user claps each has.  

### RegExp Search

Users, stories and tags can be searched for using the search bar.  The search feature uses regular expression matching to filter through content based on the user's query.  All results are displayed in a search page dynamically, with working links for further inspection.  

<p align="center"><img src="https://i.imgur.com/3uhjxX5.png" width="600px" /></p>

### Error Handling

Errors are shown during registration or login, as well as story creation to signal to the user what field parameters exist.  

### Loading Screen

During fetches before components are mounted, a loading screen displays to the user.  The loading screen works with a `requestAnimationFrame` coupled with a time limiter to display the string 'loading' in a reasonable and aesthetically appealing way.  

### Mobile Support

Styled using Sass mixins and media queries, ThisIsWater is supported on smaller devices, tablets and desktops.  Several components are duplicated and styled differently to support smaller screens, dependent on width.  The result is an app you can show to your friends anywhere, with anyone.  