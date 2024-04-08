Original App Design Project - README Template
===

# BookShelf

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

BookShelf is an app that gives information about the book such as the summary, genre, and author.The app is targeted for bookworms who want to search for new books to read. We are building this app to provide users with an easy and clean way to look for new books that they might be interested in reading.


### App Evaluation

[Evaluation of your app across the following attributes]
- **Category:** Entertainment
- **Mobile:** This is a mobile app only
- **Story:**  Bookworms are able to look for more books to consume
- **Market:** For avid readers or people who want to get started on reading
- **Habit:** Daily use
- **Scope:** This is a narrow app as it will only have basic features on the books' information

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can sign up to use the app
* User can login to their existing account
* User can logout of the app
* User can open the app and see a list of books
* User can click on the book and see the book's summary, author, and genre
* User can click on a navigation button to see a list of book covers

**Optional Nice-to-have Stories**

* User can heart books they like


### 2. Screen Archetypes

- [X] **Login Screen**
* User can log in
- [X] **Sign Up Screen**
* User can sign up
- [X] **BookShelf Home Screen**
* User can see a scrollable list of books with a small descriptions
- [X] **Book Information Screen**
* User can see the book's author, summary, and genre
- [X] **Book Covers**
* User can see a list of interactive book covers
### 3. Navigation

**Tab Navigation** (Tab to Screen)


- [X] First Tab: BookShelf Home Screen
- [X] Second Tab: Book Covers Screen

**Flow Navigation** (Screen to Screen)

- [X] **Login Screen**
  * Leads to **BookShelf Home Screen**
- [X] **Sign Up Screen**
  * Leads to **Bookshelf Home Screen**
- [X] **Clicking on a book from BookShelf Home Screen**
  * Leads to **Bookshelf Information Screen**
- [X] **Clicking on a book from Book Covers Screen**
  * Leads to **Bookshelf Information Screen**
- [X] **Clicking on logout button from BookShelf Home Screen**
  * Leads to **Login Screen**

## Wireframes

![image](https://hackmd.io/_uploads/Sy4vF-rRp.png)


### [BONUS] Digital Wireframes & Mockups

<div>
    <a href="https://www.loom.com/share/0fcb787ca7214bb2b72a1be268ff73b7">
    </a>
    <a href="https://www.loom.com/share/0fcb787ca7214bb2b72a1be268ff73b7">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/0fcb787ca7214bb2b72a1be268ff73b7-with-play.gif">
    </a>
  </div>

## Schema 


### Models

| Property | Type   | Description                                  |
|----------|--------|----------------------------------------------|
| username | String | unique id for the user post (default field)   |
| password | String | user's password for login authentication      |
| email    | String | user's email to sign up


### Networking

- [List of network requests by screen]
- GET https://www.googleapis.com/books/v1/volumes/zyTCAlFPjgYC?key=yourAPIKey- to retrieve book data

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]


