# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create([
  {title: "ruby do and the case of dear aunt sally",
  body: "My first experience with “prettifying” code came with finding that
    there are many methods for which I first learned to pass a block via the
    “do…end” construction that can often be presented more cleanly using the
    “bracket” construction. A “do…end” example: \n 'array = [1, 2, 3, 4]' \n
    'array.map do |num|' \n 'num += 1' \n 'end' \n '=> [2, 3, 4, 5]' \n And a
    “bracket” example: \n 'array = [1, 2, 3, 4]' \n 'array.map {|num| num += 1}'
    \n '=> [2, 3, 4, 5]' \n These examples do the exact same thing. Why use one
    over the other? \n One reason is style and concision. When you have many
    lines of code, it can be more efficient and clean to present an operation
    on a single line. The balancing force is readability. Especially for
    operations that are more complex than simply increasing the value of an
    array of integers, it can be difficult to understand what a particular line
    of code is doing when it is very concise. It’s like sitting down to read
    prose and finding poetry on the page instead. Sort of. \n The general rule
    of thumb seems to be “make it nice, but make it readable.” Find a balance
    between the two. \n But, I discovered that there is another consideration.
    Just like the “order of operations” in math, Ruby has something called
    “precedence.” They’re the same thing. In fact, there’s quite a lot of
    overlap. \n '5 + 3 * 8' \n '=> 29' \n Ruby does not necessarily read lines
    of code from left to right. It performs multiplication before addition
    unless you tell it otherwise. \n '(5 + 3) * 8' \n '=> 64' \n The old PEMDAS
    mnemonic device might percolate back up from primary school. Please Excuse
    My Dear Aunt Sally. Parentheses, Exponents, Multiplication, Division,
    Addition, Subtraction. Ruby uses this same order in evaluating lines of
    code. And….many more. \n Anyway, long story short, the “bracket” method has
    a higher order of precedence than the “do…end” method due to it use of
    brackets. There are situations where this fact could result in bugs, so
    this is worth being aware and careful of."},
  {title: "R-S-p-e-c, Find Out What it Means to You",
  body: "Test driven development, or TDD, is an increasingly common strategy for
    programming. The gist is that the end goals of a given program are determined
    before development begins. Then, tests are written that coax the programmer to
    write just enough code to get the tests to pass. The resulting code is then
    often ensured to handle a given context as you have defined it in the tests. \n
    TDD has been around for some 16 years and has grown to become the predominant
    development strategy of some companies. Often, a company will have an entire
    separate test-writing team tasked with interfacing with a client to determine
    the unique outcomes they desire from a program. The development team then goes
    to work satisfying the tests. \n The resulting programs are often leaner, more
    focused, and have fewer bugs. \n TDD utilizes a couple principles. One is the
    pattern of “red, green, refactor,” which was alluded to above. Start with a
    program that fails the test (red) and program enough to get the test to pass
    (green). Then refactoring cleans up the resulting code, before testing it again.
    \n The second principle is the basic structure of the tests: Given, When, Then.
    \n Given: a context as a starting point \n When: a particular condition is
    provided \n Then: the expected outcome \n This is the pattern of each testing
    program. \n 'describe 'Greeting' do' \n 'it 'should say 'Hello World!' when it
    receives the say_hello() message' do' \n 'new_greeting = Greeting.new' \n
    'hi_there = new_greeting.say_hello' \n 'expect(hi_there).to eq('Hello World!')'
    \n 'end' \n 'end' \n In the above test, the first two lines describe the program
    and its expected behavior in more-or-less plain English. The next line,
    beginning “new_greeting” sets up the context: a new instance of the Greeting
    class. This is followed by the when: when the say_hello method is called. Next,
    then: then, it is expected that the variable hi_there is equal to the string
    'Hello World!' \n There is much more to the syntax and structure of RSpec tests
    generally, but this basic pattern is repeated until the testing program fully
    describes what tasks a satisfactory program should perform."},
  {title: "The Great DDoS Attack , ‘016",
  body: "Last week at school, we were puzzled to find that our interactions with
    GitHub were rather limited. The service didn’t appear to be working properly,
    which was a bummer because it’s pretty integral to our learning workflow. \n
    We soon caught wind that there was an ongoing DDoS attack that affected GitHub
    and many other major websites. The company Dyn, which handles a lot of DNS
    requests, was being flooded with tens of millions of superfluous requests.
    Such attacks are akin to loads of people trying to enter a storefront at the
    same time, only most of those people have no interest or business going to
    that store. \n How dangerous are such attacks? It seems they’re somewhere
    between lame and scary. Let’s start with lame. These DDoS attacks were a mild
    inconvenience for most of the people affected. I couldn’t check the New York
    Times headlines quite as quickly. I couldn’t download my homework. All this
    affected me for a few hours. Other folks, admittedly, rely heavily on some of
    the affected services. GitHub is an essential part of most companies for
    which programming is a priority. But I can’t help but think: somebody or
    somebodies gathered the AWESOME COMPUTING POWER of tens of millions of devices
    and weilded them to … slow down some websites for a little while? \n But this
    brings us to the scarier bit. The attackers, apparently, infected millions
    of internet-connected devices with malware. But these aren’t your traditional
    computers. These are connected thermostats, TVs, microwaves, refrigerators,
    perhaps even automobiles. These are the items that make up the “Internet of
    Things”. And this most recent attack underscores the importance of security
    for all internet connected devices. \n In the recent past, I remember jokes:
    “Haha, what are they going to do, hack my toothbrush? Give me an extra good
    teeth cleaning?” Well, no. But this exposes an interesting shift. The danger
    isn’t that the computer in your IoT device will be rendered useless, as with
    traditional fears of hacking, but that your device will be used to attack
    someone else. Suddenly this internet thing requires us to consider how our
    own inaction (to secure our devices) might affect others."},
  {title: "Simple Form… great, but not always good",
  body: "The other day here at The Flatiron School, we participated in an
  in-person AMA with Adam Jonas, the Managing Director of Engineering for the
  School. He started out by asking us what we’re learning right now. At the time,
  at least, we were going pretty heavy on forms — creating them and integrating
  them into web apps. He paused and said something like, 'Forms… that’s all the
  internet is.' \n While that sounds incredibly boring, it’s not too inaccurate.
  In most cases, when you fill in any information or click on a button on a
  website, you’re interacting with a form. We on the other side of the website
  try to take the data you give us and respond in kind. \n So when we graduated
  from some simple HTML forms to using the form_tag function in Rails, it felt
  like a big step up toward something more abstract and (sometimes) easier. Then
  again, we took a big step up with the form _for function, which almost felt
  like it magically did all my work for me. Not quite, but close. \n I found
  another form creating option, which is actually quite popular among Rails
  developers, called Simple Form. As you can imagine, it sort of takes the
  form_for a half-step farther. \n First thing’s first: place the gem in your
  gemfile. \n 'gem 'simple form'' \n So I took an app that I’m working on for a
  group project and decided to recreate one of the forms using Simple Form. Here
  is each form, one after the other. The first is form_for, followed by Simple
  Form. \n '<%= form_for @user do |f| %>' \n '<%= f.label :name %>' \n '<%=
  f.text_field :name %><br>' \n '<%= f.label :email %>' \n '<%= f.email_field
  :email %><br>' \n '<%= f.label :zip_code %>' \n '<%= f.text_field :zip_code
  %><br>' \n '<%= f.label :password %>' \n '<%= f.password_field :password
  %><br>' \n '<%= f.label :password_confirmation %>' \n '<%= f.password_field
  :password_confirmation %><br>' \n '<%= f.submit 'Create New User'%>' \n '<%
  end %>' \n '<%= simple_form_for @user do |f| %>' \n '<%= f.input :name %>' \n
  '<%= f.input :email %>' \n '<%= f.input :zip_code %>' \n '<%= f.input :password
  %>' \n '<%= f.input :password_confirmation %>' \n '<%= f.button :submit,
  'Create New User' %>' \n '<% end %>' \n The resulting form is almost exactly
  identical in terms of appearance and function. But the latter comes with some
  more perks depending on your needs. Each input comes with a label, so there is
  no need to manually include those. Also, each is wrapped in a div, so it is
  easier to apply styling to the form. The gem’s developers even tout its ease
  of integration with Bootstrap. The form also easily renders errors by default
  and can provide entry hints to users. \n For certain purposes, Simple Form
  sounds pretty awesome. Probably for our purposes of a relatively simple web
  app that needs to collect user information, Simple Form is ideally suited. But
  it is also a bit too hand-holdy for comfort. It is reminiscent of Rails
  generators that are great in some ways, but can cause headaches by doing too
  much for you. This is definitely a tool that I will keep handy, but it is
  likely that any forms I’m building will need to be a bit more customized. \n
  Ok so, the resulting HTML for each. First, form_for: \n '<form class='new_user'
  id='new_user' action='/users' accept-charset='UTF-8' method='post'>' \n '<input
  name='utf8' type='hidden' value='✓'>' \n '<input type='hidden'
  name='authenticity_token'
  value='tmn3hnmVnKZW9L0qRGFsGU+ZYK4huqToxe0Ouhc+erGKUlBDqx9pZ1wL4C0svHhspg7VxQuwZ52Wm6PEB3xk+g=='>'
  \n '<label for='user_name'>Name</label>' \n '<input type='text' name='user[name]'
  id='user_name'><br>' \n '<label for='user_email'>Email</label>' \n '<input
  type='email' name='user[email]' id='user_email'><br>' \n '<label
  for='user_zip_code'>Zip code</label>' \n '<input type='text' name='user[zip_code]'
  id='user_zip_code'><br>' \n '<label for='user_password'>Password</label>' \n
  '<input type='password' name='user[password]' id='user_password'><br>' \n '<label
  for='user_password_confirmation'>Password confirmation</label>' \n '<input
  type='password' name='user[password_confirmation]'
  id='user_password_confirmation'><br>' \n '<input type='submit' name='commit'
  value='Create New User' data-disable-with='Create New User'>' \n '</form>' \n And
  now Simple Form: \n '<form class='simple_form new_user' id='new_user'
  action='/users' accept-charset='UTF-8' method='post'>' \n '<input name='utf8'
  type='hidden' value='✓'>' \n '<input type='hidden' name='authenticity_token'
  value='tmn3hnmVnKZW9L0qRGFsGU+ZYK4huqToxe0Ouhc+erGKUlBDqx9pZ1wL4C0svHhspg7VxQuwZ52Wm6PEB3xk+g=='>'
  \n '<div class='input string optional user_name'>' \n '<label class='string
  optional' for='user_name'>Name</label>' \n '<input class='string optional'
  type='text' name='user[name]' id='user_name'></div>' \n '<div class='input
  email optional user_email'>' \n '<label class='email optional'
  for='user_email'>Email</label>' \n '<input class='string email optional'
  type='email' name='user[email]' id='user_email'></div>' \n '<div class='input
  integer optional user_zip_code'>' \n '<label class='integer optional'
  for='user_zip_code'>Zip code</label>' \n '<input class='numeric integer
  optional' type='number' step='1' name='user[zip_code]'
  id='user_zip_code'></div>' \n '<div class='input password optional
  user_password'>' \n '<label class='password optional'
  for='user_password'>Password</label>' \n '<input class='password optional'
  maxlength='72' size='72' type='password' name='user[password]'
  id='user_password'></div>' \n '<div class='input password optional
  user_password_confirmation'>' \n '<label class='password optional'
  for='user_password_confirmation'>Password confirmation</label>' \n '<input
  class='password optional' type='password' name='user[password_confirmation]'
  id='user_password_confirmation'></div>' \n '<input type='submit' name='commit'
  value='Create New User' class='button' data-disable-with='Create New
  User'></form>'"},
  {title: "Call"},
  {title: "Digital Activism"},
  {title: "Reduce Redux"},
  {title: "PHP and Me"},
  {title: "Front End Follies"},
  {title: "Why this framework?"},
  {title: "Pulling myself up by my Bootstrap"},
  {title: "Freelancer Necromancer"},
  {title: "Estados Unidos"},
  {title: "Field of Dreams"},
  {title: "Wasting our time around here"},
  {title: "Mighty Ducks"},
  {title: "Decorum in the Job Market"},
  {title: "Going back go the moneybox"}
])
