# Website-HTML-CSS-XML-DTD-XSL- (Duskwell & Vine)
A 2 page website using HTML, CSS, XML, DTD, and XSL for coursework project.
A static restaurant website built with HTML, CSS, XML, DTD, and XSL — created as a university group coursework project.
 
---
 
## Overview
 
Duskwell & Vine is a two-page static website for a fictional fine dining restaurant in London, created as a university group coursework project. The goal was to demonstrate how five different web technologies — HTML, CSS, XML, DTD, and XSL — can be used together to build a working website without any backend server or JavaScript framework. The home page is built with HTML and CSS, and the menu page is driven entirely by XML data that the browser converts into a webpage automatically using an XSL stylesheet.
 
---
 
## Project Structure
 
```
Website-HTML-CSS-XML-DTD-XSL--main/
│
├── main.html                   # Home page
│
├── css/
│   ├── page_1.css              # Styles for the home page
│   └── page_2.css              # Styles for the XSL-generated menu page
│
├── xml_and_dtd/
│   ├── menu.xml                # Menu content (structured data)
│   └── menu.dtd                # DTD schema — validates menu.xml
│
├── xsl/
│   └── menu.xsl                # XSL stylesheet — transforms XML into HTML
│
└── picture/
    ├── img1.jpeg – img10.jpeg  # Restaurant photos (sourced from Pinterest)
    └── food1.jpeg – food4.jpeg # Food photos (sourced from Pinterest)
```
 
---
 
## Pages
 
### Home (`main.html`)
 
| Section | Description |
|---|---|
| Navigation | Sticky nav bar with links to Home, Menu, About, and Contact |
| Hero | Animated CSS image carousel with the restaurant name overlaid |
| About | Two-column layout with a food image and restaurant description |
| Opening Hours | Weekly schedule table overlaid on a background image |
| Contact | Address, phone, and email with a layered image composition |
| Footer | Copyright line matching the nav gradient |
 
---
 
## Menu
 
The menu is stored as XML and rendered in the browser via XSL. It contains 20 items across five categories.
 
| Category | Items |
|---|---|
| Appetisers | Garlic Bread, Chicken Wings (Halal), Spring Rolls (Vegan), Loaded Fries |
| Non-Veg | Grilled Chicken (Halal), Beef Steak, Chicken Burger (Halal), Fish & Chips |
| Veg | Margherita Pizza, Pasta Alfredo, Paneer Wrap, Vegetable Soup |
| Vegan | Vegan Burger, Quinoa Salad, Vegan Wrap, Fruit Bowl |
| Drinks | Fresh Orange Juice, Mango Smoothie, Soft Drink, Mineral Water |
 
Each item carries a name, GBP price, description, and allergy information.
 
---
 
## Technologies
 
| Technology | Role |
|---|---|
| **HTML5** | Document structure and semantic markup |
| **CSS3** | Layout (Flexbox), animations, sticky positioning, hover transitions |
| **XML 1.0** | Structured data storage for the menu |
| **DTD** | Schema that defines and validates the structure of `menu.xml` |
| **XSLT 1.0** | Client-side transformation of XML into a styled HTML page |
| **Google Fonts** | [Satisfy](https://fonts.google.com/specimen/Satisfy) — display typeface for headings |
 
---
 
## Getting Started
 
To view the home page, open `main.html` in any web browser. To view the menu page, you **must use Live Server** — open the project folder in VS Code, right-click `main.html` and choose **Open with Live Server**, then click the Menu link in the nav bar. This is because browsers block XSL transformations when files are opened directly from your computer as `file://` URLs. Live Server serves the files over HTTP, which allows the browser to apply the XSL stylesheet and render the menu correctly. Without it, the menu page will appear as raw unformatted XML.
 
---
 
## HTML Explained
 
HTML (HyperText Markup Language) is the foundation of every webpage. It is the language used to put content on a page — things like headings, paragraphs, images, links, and tables. HTML uses tags, which are labels wrapped in angle brackets like `<h1>` or `<img>`, to tell the browser what each piece of content is.
 
In this project, `main.html` is the home page. It is divided into five sections that sit one after another down the page. The navigation section at the top holds the restaurant name on the left and four links on the right. The About and Contact links use a `#` symbol followed by an id (for example `href="#about"`) which makes the page scroll down to that section when clicked. The Menu link points directly to `menu.xml`, which the browser opens and transforms automatically.
 
The hero section contains six restaurant photos placed in a row inside a container, with the restaurant name and tagline floating over the centre. The sliding and zooming effect on the photos is handled entirely by CSS — the HTML just provides the images. The about section puts an image on the left and a block of text on the right, side by side. The opening hours section places a table of times on top of a background photo. The contact section shows the address, phone number, and email on the left with a restaurant photo on the right. The footer shows the copyright line at the very bottom.
 
---
 
## CSS Explained
 
CSS (Cascading Style Sheets) controls how everything looks. While HTML provides the structure, CSS handles the colours, fonts, sizes, spacing, layout, and animations. This project has two CSS files — `page_1.css` for the home page and `page_2.css` for the menu page.
 
The colour scheme throughout the site is a green-to-tan gradient, used on the navigation bar, the page background, and the footer to keep everything visually consistent. The Satisfy font is loaded from Google Fonts and applied to all the main headings. Every section of the home page uses Flexbox for its layout, which is a CSS tool that makes it easy to place things side by side, stretch them to fill space, or centre them without complicated manual positioning.
 
The most interesting part of the CSS is the hero image carousel, which produces a sliding, zooming gallery with no JavaScript. It works using two animations running at the same time. The first animation moves the entire row of six images left in steps — each step shifts by 320px (the width of one image plus its margins) and pauses for about 3 seconds before moving to the next. The second animation runs on each individual image and makes it scale up and become fully visible while the others stay small and faded. Each image runs the same animation but starts at a different time using `animation-delay`, so each one takes its turn in sync with the sliding strip. The sticky navigation bar is achieved with just `position: sticky` and `top: 0`, which pins it to the top of the screen as the user scrolls. Hover effects on links and buttons use `transition: 0.3s` so colour changes animate smoothly rather than snapping instantly.
 
---
 
## XML Explained
 
XML (eXtensible Markup Language) is a language for storing and organising data in a structured, readable format. It looks similar to HTML in that it uses tags, but unlike HTML it does not display anything by itself — it is purely for holding data in a logical structure that other systems can read and process.
 
In this project, `menu.xml` holds all of the restaurant's menu data. The file is organised in a three-level hierarchy. At the top level there is a single `<menu>` element that contains everything. Inside that are `<category>` elements, each representing a section of the menu such as Appetisers or Drinks. Inside each category are `<item>` elements, one for each dish or drink. Each item then has four pieces of information: the name, the price, a short description, and allergy information.
 
The file also has three important lines at the very top before the data begins. The first tells the browser this is an XML file and what character encoding it uses. The second is a processing instruction that tells the browser which XSL file to use when displaying the XML — this is what causes the menu to appear as a styled webpage rather than raw code. The third links the DTD file so that the XML can be validated against its rules.
 
---
 
## DTD Explained
 
A DTD (Document Type Definition) is a file that defines the rules an XML document must follow. It acts like a rulebook — it specifies exactly what elements are allowed, in what order they must appear, which attributes are required, and what type of content each element can hold. If the XML breaks any of these rules, it is considered invalid.
 
In this project, `menu.dtd` defines the following rules. A `<menu>` must contain at least one `<category>`. Each `<category>` must have a `name` attribute and must contain at least one `<item>`. Each `<item>` must have an `id` attribute and must contain exactly four child elements — name, price, description, and allergies — in that exact order. The `<price>` element must also carry a `currency` attribute. All the content inside these elements is plain text, which in DTD terminology is called `#PCDATA`. Attributes marked as `#REQUIRED` must always be present — leaving one out makes the document invalid. The DTD is not about how the data looks; it is purely about enforcing a consistent, predictable structure.
 
---
 
## XSL Explained
 
XSL (eXtensible Stylesheet Language) is a language for transforming XML documents into other formats. In this project, `menu.xsl` transforms the raw XML data in `menu.xml` into a proper HTML webpage that the browser can display. This transformation happens entirely inside the browser with no server involved.
 
The XSL file contains a template that fires when the browser processes the XML. Inside that template is the HTML structure of the output page. Embedded within that HTML are XSL instructions that pull data out of the XML and insert it in the right places. The first XSL instruction loops through every `<category>` in the XML and creates a new table for each one, placing the category name as the table heading. A second loop then goes through every `<item>` in that category and adds one row to the table for each item, pulling in the name, price, and description. One thing worth noting is that XML and XSL files cannot use a bare `&` character — it must be written as `&amp;` because `&` is reserved in XML. This is why the restaurant name is written as `Duskwell &amp; Vine` inside the XSL file, even though it displays correctly in the browser.
 
---
 
## End-to-End Rendering Pipeline
 
This diagram shows what happens from the moment you click the Menu link to the moment the styled menu page appears on screen.
 
```
You click "Menu" in the navigation bar
            │
            ▼
  Browser opens menu.xml
            │
            ▼
  Reads <?xml-stylesheet?> instruction
  → fetches menu.xsl
            │
            ▼
  Reads <!DOCTYPE> declaration
  → validates structure against menu.dtd
            │
            ▼
  XSLT processor runs the transformation
  → loops through categories and items
  → produces an HTML document in memory
            │
            ▼
  HTML is rendered in the browser
  → page_2.css is loaded and applied
            │
            ▼
  Styled menu page appears on screen
```
 
No server-side processing, no build step, no JavaScript — the entire pipeline runs inside the browser.
 
---
 
## Image Credits
 
All restaurant and food images used in this project were sourced from Pinterest for educational and non-commercial coursework purposes only.
 
---
 
## Known Issues
 
- The `<item>` name tag in `menu.xml` uses `<n>` but the DTD declares the element as `name`. A strict validating parser would flag this as invalid. To fix it, either rename `<n>` to `<name>` throughout the XML or update the DTD to match.
- The menu page requires Live Server to display correctly in Chrome and Edge. Opening the files directly as `file://` URLs will cause the menu to appear as raw XML rather than a styled page.
---
 
## Authors
 
**Mahi · Farah · Afnan · Nuha**
 
*University Group Coursework Project — 2026*
 
