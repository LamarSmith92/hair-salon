# Sisterz Beauty Salon App : Sign Up & Book Today!


Sisterz Beauty Salon App is a web application for hair stylist and clients to keep track of scheduled appointments. I created this for a client who's a small business owner that keeps track of appointments by logging them on a standard notebook.

## A client must sign up or login

<img src="https://image.ibb.co/e1wobQ/Screen_Shot_2017_05_16_at_1_06_19_AM.png" class="img-rounded" alt="signup" width="304" height="236"> <img src="https://image.ibb.co/dWqEGQ/Screen_Shot_2017_05_16_at_1_06_06_AM.png" class="img-rounded" alt="sign in" width="304" height="236">


## Home Page

A beautiful designed UI with flashing buttons to navigate to
Styles, Appointments, and About.

<img src="https://image.ibb.co/jhoei5/Screen_Shot_2017_05_16_at_1_05_51_AM.png" class="img-rounded" alt="signup" width="304" height="236">

## Schedule an appointment!

This page allows a client/user to book an appointment and select the best date and time for the both the stylist and the client.

<img src="https://image.ibb.co/izfgwQ/Screen_Shot_2017_05_16_at_12_57_16_AM.png" class="img-rounded" alt="signup" width="304" height="236">

## View Appointment

<img src="https://image.ibb.co/gi1obQ/Screen_Shot_2017_05_16_at_1_05_15_AM.png" class="img-rounded" alt="signup" width="304" height="236">


### How to run?

1. Clone this repo locally
2. cd hair-salon
3. Run `bundle`
4. Run `rails db:create`
5. Run `rails s`
6. Visit localhost:3000!

### Technologies:

1. Ruby
2. Rails
3. HTML5
4. SASS
5. CSS3
6. Gems
7. Bootstrap
8. Normalize
9. Devise

## User Stories

1. A client can sign up, sign in, log out.
2. A client can create and delete set appoinments.
3. Clients can view styles offered by stylist.
4. A client can learn more about stylist visiting about page.


## Wireframes
Initial Wireframes things changed as I progressed through the project.


<img src="https://image.ibb.co/mP0dAk/IMG_5392.jpg" class="img-rounded" alt="signup" width="304" height="236">

<img src="https://image.ibb.co/b6wJAk/IMG_5391.jpg" class="img-rounded" alt="signup" width="304" height="236">

<img src="https://image.ibb.co/caFZi5/Full_Size_Render_3.jpg" class="img-rounded" alt="signup" width="304" height="236">


## Cool Codes

Flashing Headers:

```
.button_two {
  display: inline;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  padding: 10px;
  border: none;
  font: normal 24px/normal "Warnes", cursive;
  font-family: 'Warnes', cursive;
  color: rgba(255,255,255,1);
  text-decoration: normal;
  text-align: center;
  -o-text-overflow: clip;
  text-overflow: clip;
  white-space: pre;
  text-shadow: 0 0 10px rgba(255,0,229,1) , 0 0 20px rgba(255,0,250,1) , 0 0 30px rgba(255,0,212,1) , 0 0 40px #ff00de , 0 0 70px #ff5ee9 , 0 0 80px #ff00dc , 0 0 100px #ffffff;
  -webkit-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
  -moz-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
  -o-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
  transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
```
Flash Notices
```
  def index
    @appointments = Appointment.where(user_id: current_user.id)
    if @appointments.length == 0
      flash[:alert] = "You have no appointments."
    end
  end
  ```

  Built in devise methods
  ```
  <% if !user_signed_in? %>
  <%if current_user %>
```

## Plans for future

1. Admin views.
2. Any stylist will be able to create sorta using it as a template.
3. Date and time uniqueness.
4. More styling.
5. Clients will be able to reserve appointments with form of payment.



## Links


- [Heroku](https://gentle-meadow-28268.herokuapp.com/)

# Email: tester@test.com
# Password: password
