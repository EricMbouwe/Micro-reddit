# Micro-reddit

<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/ericmbouwe/Micro-reddit">
    <img src="app/assets/images/microverse.png" alt="Microverse Logo" width="80" height="80">
  </a>
  
  <h3 align="center">Micro-reddit Application</h3>
  
  <p align="center">
    This project is part of the Microverse curriculum in Ruby On Rails course!
    <br />
    <a href="https://github.com/ericmbouwe/Micro-reddit"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/ericmbouwe/Micro-reddit/issues">Report Bug</a>
    <a href="https://github.com/ericmbouwe/Micro-reddit/issues">Request Feature</a>
  </p>
</p>

Micro-reddit is a project which describes associations between data structures necessary to support user's posts submissions and commenting on those posts  

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about-the-project)
- [Application Instructions](#application-instructions)
- [System Requierments](#system-requierments)
- [Configuration](#configuration)
- [Database initialization](#database-initialization)
- [Development](#development)
- [Built With](#built-with)
- [Contributors](#contributors)
- [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->

## About The Project  

 The project creates a SQLite database which holds the following tables:  
    - User  
      - Fields : name, created_at, update_at  
    - Post  
      - Fields : title, body, user_id, created_at, updated_at
    - Comment  
      - Fields : text, user_id, post_id, created_at, updated_at  
    

A User can have a number of Posts and each Post can have a number of Comments related to a User   

<hr/>

<!-- ABOUT THE PROJECT -->

## Application Instructions  

  Examples that can be applied using the rails console

  ### These will add a new user
  ```
    user = User.new
    user.name = 'User 01'
    user.save
  ```
  OR
  ```
    User.create(name: 'User 02')
  ```

  ### These will add a new post assotiated to the first user
  ```
    post = User.first.posts.new
    post.title = 'Title of the first post'
    post.body = 'Body of the first post'
    post.save
  ```
  OR
  ```
    User.first.posts.create(title: 'Tile of the post', body: 'Body of the post')
  ```

  ### These will add a new comment assosiated to the first post of the first user and assosiated (the comment) to the last user
  ```
    com = User.first.posts.first.comments.new
    com.text = 'Some comments'
    com.user_id = User.last.id
    com.save
  ```
  OR
  ```
    com = User.first.posts.first.comments.create(text: 'Some comments', user_id: User.last.id)
  ```

<hr/>

## System Requierments
  - Ruby
  - Rails
  - Yarn

## Configuration
  - first, clone the project 
  Run 
  ```
    git clone https://github.com/ericmbouwe/Micro-reddit.git
  ```

  - Install the necessary dependancies 
  Run 
  ```
    bundle install
    yarn install
  ```

<hr/>

## Database initialization
  In order to add initial data to the database run  

  ```
    rails db:seed
  ```
  This will add 2 users, 2 posts and 4 comments  
  
<hr/>

## Development
  * Clone the project
  ```
    https://github.com/ericmbouwe/Micro-reddit.git
  ``` 
<hr/>

## Built With

This project was built using these technologies.

  - Ruby version 2.6
  - Ruby On Rails version 6.0

<hr/>
<!-- CONTACT -->

## Contributors

:bust_in_silhouette: **Author_1**
​## Eric Mbouwe

- Github: [@ericmbouwe](https://github.com/ericmbouwe)
- Twitter: [@ericmbouwe](https://twitter.com/ericmbouwe)
- Linkedin: [Eric Mbouwe](https://www.linkedin.com/in/ericmbouwe/)
- E-mail: ericmbouwe@gmail.com

:bust_in_silhouette: **Author_2**
​## Ioannis Kousis

- Github: [@ioanniskousis](https://github.com/ioanniskousis)
- Twitter: [@ioanniskousis](https://twitter.com/ioanniskousis)
- Linkedin: [Ioannis Kousis](https://www.linkedin.com/in/ioannis-kousis-9a5051b4/)
- E-mail: jgkousis@gmail.com

<hr/>
<!-- ACKNOWLEDGEMENTS -->

## Acknowledgements

  - [Microverse](https://www.microverse.org/)
  - [The Odin Project](https://www.theodinproject.com/)
  - [Ruby Documentation](https://www.ruby-lang.org/en/documentation/)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/ericmbouwe/Micro-reddit.svg?style=flat-square
[contributors-url]: https://github.com/ericmbouwe/Micro-reddit/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/ericmbouwe/Micro-reddit.svg?style=flat-square
[forks-url]: https://github.com/ericmbouwe/Micro-reddit/network/members
[stars-shield]: https://img.shields.io/github/stars/ericmbouwe/Micro-reddit.svg?style=flat-square
[stars-url]: https://github.com/ericmbouwe/Micro-reddit/stargazers
[issues-shield]: https://img.shields.io/github/issues/ericmbouwe/Micro-reddit.svg?style=flat-square
[issues-url]: https://github.com/ericmbouwe/Micro-reddit/issues
