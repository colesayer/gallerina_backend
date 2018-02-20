## Welcome To Gallerina.

This is the Rails backend for Gallerina, my final project for the Flatiron School's software engineering program.

![Gallerina Gif](https://media.giphy.com/media/21QEh51ORigYWkcmdU/giphy.gif)

The repository for the frontend can be found here: <a href="https://github.com/colesayer/final_frontend">https://github.com/colesayer/final_frontend</a>.

### Description
Gallerina is an exhibition design tool for Gallerists, Curators, and Artists. Prior to coding, I worked for a few Art Galleries in New York as an installer. Before each show, we would have to construct miniature cardboard models of the galleries, and printed cutouts of each artwork. The curator would use the models to visualize the show before any work was hung on the wall. The whole process was time consuming and laborious.

Gallerina allows you to create a gallery on the fly. Just enter the dimensions of a space, choose its wall color, and its type of flooring. Adding artworks is as easy as dropping in an image. A 3d model is automatically generated of the gallery and selected artworks, allowing the user to curate a show in virtual space. When you're finished: save your gallery, download images, and easily share your project.

### Built with
* Ruby on Rails
* Knock
* JWT
* Images stored on Cloudinary

### How to Run

1.  Clone the repo
2.  Change to the cloned directory from your terminal
3.  Run 'bundle install'
4.  Make sure <a href="https://www.postgresql.org/">PostgreSQL</a> is installed and running.
5.  Run 'rake db:create' and 'rake db:migrate'
5.  Run 'rails s'.  The api will run on http://localhost:3000/ by default
6.  Go to the <a href="https://github.com/colesayer/final_frontend">Gallerina frontend</a> to complete the steps.
