# ❄ ❄ ❄ Snowed-In: Encrypted Chat Channels ❄ ❄ ❄

## 📖      About Snowed-In:

### ⭐ Authors:

Name              | Username(GitHub) | Role(s)
----------------- | -----------------|------------------------
Connor Drummond   | cdrummo          | Scrum Master, Developer
TJ Virbick        | TjVirb           | Product Owner, Developer

### 💭 The Idea Behind the Project:

Snowed-In is a project created by two college student's for their CS-4360: Technical Software Project.
The project was inspired by Edward Snowden a former computer intelligence consultant who leaked highly 
classified information from the National Security Agency in 2013. The effect of Edward Snowden's actions, 
has caused a lot of people world wide to look for better means of securing personal data and keeping their 
information private.  

With this project we seek to find a better way of communicating through secure and encrypted channels. We set out to 
create chat rooms that would automatically encrypt and decrypt information as the messages are sent and received. 
We built and developed this Web Application through Ruby on Rails, using Websockets and gems to help secure data and 
promote privacy.

### 🏗️ Project Structure and Design:

#### Software Development Approach:
We decided to use an Agile (Scrum) approach for developing this project as we are comfortable with it, and we are aware 
of the benefits that this approach brings. For the project we decided on roles to stay fixed, to boost productivity and 
keep things consistent.  

#### Our Definition of done:
When we started the project our definition of done for this project was to set up a Web Application that would allow
users (2 or more) to chat. We wanted to reach a minimum of 90% test coverage (aim high) by the end of the project.

#### Our Design Structure:
We decided on using an MVC design structure before we decided on a language. So using Ruby on Rails which automatically
uses MVC was just a nice treat. 

## ⚙️ Quick Start:

### ⚠️ Dependencies:

Dependency   | Version
------------ | -------------
Ruby         | [2.7.4](https://cache.ruby-lang.org/pub/ruby/2.7/ruby-2.7.4.zip)
Rails        | 6.1.4.1
Node         | 14.17.6

### 🏃‍ Running the Application:

#### 1. Installing Ruby and rails:
Please check table above for link to download appropriate Ruby version. If Ruby is installed already, please make sure
version is correct this can be checked using the command on the command line or power shell: 

    ruby --version

After installing ruby use the command line or power shell to run:

    ruby install rails -v 6.1.4.1
#### 2. Downloading appropriate libraries:
As long as correct versions of Ruby and Rails are installed. You should be able to use the bundler to install all the
required gems. To do so, use the command line to navigate to the project directory and then run the command:

    bundle install 

#### 3. Installing Node.js
Once the bundler is done installing all the gem dependencies, run this command to install node.js:

     npm install

#### 4. Database Migration (creating schema for database tables):
Before launching the server we need to create a schema for our database. To do this, run this command on the command 
line:

    rails db:migrate

#### 5. Host Server:
To host the server with Ruby on Rails, use the command:

    rails server

#### 6. Navigate to Domain:
We use the default domain for this project, so navigate to **localhost:3000** in any browser.

## 🏫 CS-4360: Technical Software Project Course Objectives:

### 1. Synthesize learning through critical analysis and logical thinking.  
   * Students must invent or recognize an appropriate 
   problem for their project for this course, including   critical   analysis   of   social   and   ethical   
   implications of their proposed artifact.  
   * The project must be challenging enough, as judged by the instructor, that they will need to synthesize 
   learning from a number of previous courses, including courses in computer science, mathematics, and science, 
   in order to successfully complete it.  
   * The requirement that they reflect on their on-going process and present their final product will require 
   * them to use expertise gained from the technical writing course and the public speaking course.

###  2. Apply theoretical constructs to practical applications.
The core requirement of this course is that students 
use technical knowledge, much of which is theoretical in nature, to produce a software artifact that will 
solve a practical,real-world problem.

### 3. Critique philosophical tenets and current practices.
In analyzing possible problems, and later in examining possible solutions to arrive at the approach they will implement,
students will need to consider the social and ethical impact of solving their proposed problem, and they will need to 
critique existing solutions to the problem.

### 4. Integrate and refine oral and/or written communication skills.
Throughout the course, students will be strengthening their oral and written communication skills by working in a team, 
writing and presenting reflections on their on-going development processes, and presenting their final project.

### 5. Verify their expertise.
The instructor will ensure that the problem proposed by the students presents an appropriate technical challenge, and 
the students will be required to produce a functioning solution to their problem, or an appropriately narrowed version 
of their problem, by the end of the course.

## 📝 MIT License

© Copyright: 2021 Snowed-In Project

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
