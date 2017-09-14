# README

# User Stories
***

# Database (DB)
## Entity Relationship Diagram (ERD)

![erd database](/docs/images/erd.png)

# DB Tables
I made 3 tables for my app, User, Tweet, and Profile. User stores the user information like password etc. Tweet sotres the information message that a user tweets and the Profile table stores infromation about the user. Each user has one Profile and many Tweets.


## User
- Email
- Password

## Profile
- RelatedUserID (belongs_to)
- HeaderPhoto
- AvatarPhoto
- Name
- Biography
- Location
- Website
- ThemeColor
- Birthday

## Tweet
- RelatedUserID (belongs_to)
- Message

# Pages
## Homepage
- Show tweets on page
- Log in / log out

## Tweet Show Page
- See tweet
- Edit tweet (if logged in)

## Profile Page
- Header photo
- Avatar photo
- Name
- Handle
- Biography
- Account creation date
- Photos
- Tweet count
- Following count
- Follower count
- Like count
- Moment count
- Edit ability
- Tweet
- Tweet & replies
- Media
- Who to following
- Trending