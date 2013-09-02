Write a program which allows us to generate web pages using a template and some
placeholders.

e.g.

  if we have a file called `layout` with the following content

  ~~~html
  <!doctype>
  <html>
    <head>
      <title>
      {{Title}}
      </title>
    </head>
    <body>
    <h1>{{Title}}</h1>
    <div>
      {{Content}}
    </div>
    <h1>{{OrganizationName}}</h1>
    </body>
  </html>
  ~~~

  And if we have a bunch of pages called
    
  1. index
  ~~~txt
  Title=Home
  OrganizationName=Cosmicvent Software
  ---

  Welcome to our website blah blah blah
  ~~~

  2. about
  ~~~txt
  Title=About
  OrganizationName=Cosmicvent Software
  ---

  We are a software development firm
  ~~~

  Then it should generate two pages index.html and about.html with the
  placeholders filled out with the template's data
