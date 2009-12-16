/* Guides.akelos.org */
/* Main.css */
/* Created January 30, 2009 */
/* Modified February 8, 2009
--------------------------------------- */

/* General
--------------------------------------- */

.left {float: left; margin-right: 1em;}
.right {float: right; margin-left: 1em;}
.small {font-size: smaller;}
.large {font-size: larger;}
.hide {display: none;}

li ul, li ol { margin:0 1.5em; }
ul, ol { margin: 0 1.5em 1.5em 1.5em; }

ul { list-style-type: disc; }
ol { list-style-type: decimal; }

dl { margin: 0 0 1.5em 0; }
dl dt { font-weight: bold; }
dd { margin-left: 1.5em;}
	
pre,code { margin: 1.5em 0; white-space: pre; overflow: auto; }
pre,code,tt { font: 1em 'andale mono', 'lucida console', monospace; line-height: 1.5; }

abbr, acronym { border-bottom: 1px dotted #666; }
address { margin: 0 0 1.5em; font-style: italic; }
del { color:#666; }

blockquote { margin: 1.5em; color: #666; font-style: italic; }
strong { font-weight: bold; }
em, dfn { font-style: italic; }
dfn { font-weight: bold; }
sup, sub { line-height: 0; }
p {margin: 0 0 1.5em;}

label { font-weight: bold; }
fieldset { padding:1.4em; margin: 0 0 1.5em 0; border: 1px solid #ccc; }
legend { font-weight: bold; font-size:1.2em; }

input.text, input.title,
textarea, select {
  margin:0.5em 0;
  border:1px solid #bbb;
}

table {
	margin: 0 0 1.5em;
	border: 2px solid #CCC;
	background: #FFF;
	border-collapse: collapse;
}
 
table th, table td {
	padding: 0.25em 1em;
	border: 1px solid #CCC;
	border-collapse: collapse;
}

table th {
	border-bottom: 2px solid #CCC;
	background: #EEE;
	font-weight: bold;
	padding: 0.5em 1em;
}


/* Structure and Layout
--------------------------------------- */

body {
	text-align: center;
	font-family: Helvetica, Arial, sans-serif;
	font-size: 87.5%;
	line-height: 1.5em;
	background: #222;	
	color: #999;
	}

.wrapper {
	text-align: left;
	margin: 0 auto;
	width: 69em;
	}

#topNav {
	padding: 1em 0;
	color: #565656;
}

#header {
	background: #49494B;
	color: #FFF;
	padding: 1.5em 0;
	position: relative;
	z-index: 99;
	}

#feature {
	background: #ddd;
	color: #333;
	padding: 0.5em 0 1.5em;
}

#container {
	background: #FFF;
	color: #333;
	padding: 0.5em 0 1.5em 0;
	}

#mainCol {
	width: 45em;
	margin-left: 2em;
	}	

#subCol {
	position: absolute;
	z-index: 0;
	top: 0;
	right: 0;
	background: #FFF;
	padding: 1em 1.5em 1em 1.25em;
	width: 17em;
	font-size: 0.9285em;
	line-height: 1.3846em;
	}
	
#extraCol {display: none;}

#footer {
	padding: 2em 0;
	background: url('<%= url_for :action => "guide_images", :id => "footer_tile", :format => "gif" %>') repeat-x;
	}
#footer .wrapper {
	padding-left: 2em;
	width: 67em;
}

#header .wrapper, #topNav .wrapper, #feature .wrapper {padding-left: 1em; width: 68em;}
#feature .wrapper {width: 45em; padding-right: 23em; position: relative; z-index: 0;}

/* Links
--------------------------------------- */

a, a:link, a:visited {
	color: #2495B1;
	text-decoration: underline;
	}

#mainCol a, #subCol a, #feature a {color: #2495B1;}


/* Navigation
--------------------------------------- */

.nav {margin: 0; padding: 0;}
.nav li {display: inline; list-style: none;}

#header .nav {
	float: right;
	margin-top: 1.5em;
	font-size: 1.2857em;
}

#header .nav li {margin: 0 0 0 0.5em;}
#header .nav a {color: #FFF; text-decoration: none;}
#header .nav a:hover {text-decoration: underline;}

#header .nav .index {
	padding: 0.5em 1.5em;
	border-radius: 1em;
	-webkit-border-radius: 1em;
	-moz-border-radius: 1em;
	background: #2495B1;
	position: relative;
}

#header .nav .index a {
	background: #2495B1 url('<%= url_for :action => "guide_images", :id => "nav_arrow", :format => "gif" %>') no-repeat right top;
	padding-right: 1em;	
	position: relative;
	z-index: 15;
	padding-bottom: 0.125em;
}
#header .nav .index:hover a, #header .nav .index a:hover {background-position: right -81px;}

#guides {
	width: 27em;
	display: block;
	background: #2495B1;
	border-radius: 1em;
	-webkit-border-radius: 1em;
	-moz-border-radius: 1em;
	-webkit-box-shadow: 0.25em 0.25em 1em rgba(0,0,0,0.25);
	-moz-box-shadow: rgba(0,0,0,0.25) 0.25em 0.25em 1em;
	color: #E9F4F7;
	padding: 1.5em 2em;
	position: absolute;
	z-index: 10;
	top: -0.25em;
	right: 0;
	padding-top: 2em;
}

#guides dt, #guides dd {
	font-weight: normal;
	font-size: 0.722em;
	margin: 0;
	padding: 0;
}
#guides dt {padding:0; margin: 0.5em 0 0;}
#guides a {color: #FFF; background: none !important;}
#guides .L, #guides .R {float: left; width: 50%; margin: 0; padding: 0;}
#guides .R {float: right;}
#guides hr {
	display: block;
	border: none;
	height: 1px;
	color: #E9F4F7;
	background: #E9F4F7;
}

/* Headings
--------------------------------------- */

h1 {
	font-size: 2.5em;
	line-height: 1em;
	margin: 0.6em 0 .2em;
	font-weight: bold;
	}

h2 {
	font-size: 2.1428em;
	line-height: 1em;
	margin: 0.7em 0 .2333em;
	font-weight: bold;
	}

h3 {
	font-size: 1.7142em;
	line-height: 1.286em;
	margin: 0.875em 0 0.2916em;
	font-weight: bold;
	}
	
h4 {
	font-size: 1.2857em;
	line-height: 1.2em;
	margin: 1.6667em 0 .3887em;
	font-weight: bold;
	}

h5 {
	font-size: 1em;
	line-height: 1.5em;
	margin: 1em 0 .5em;
	font-weight: bold;
}

h6 {	
	font-size: 1em;
	line-height: 1.5em;
	margin: 1em 0 .5em;
	font-weight: normal;
	}

.section {
	padding-bottom: 0.25em;
	border-bottom: 1px solid #999;
}

/* Content
--------------------------------------- */

.pic {
	margin: 0 2em 2em 0;
}

#topNav strong {color: #999; margin-right: 0.5em;}
#topNav strong a {color: #FFF;}

#header h1 {
	float: left;
	background: url('<%= url_for :action => "guide_images", :id => "akelos_guides_logo", :format => "gif" %>') no-repeat;
	width: 492px;
	text-indent: -9999em;
	margin: 0;
	padding: 0;
}

#header h1 a {
	text-decoration: none;
	display: block;
	height: 77px;
}

#feature p {
	font-size: 1.2857em;
	margin-bottom: 0.75em;
}

#feature ul {margin-left: 0;}
#feature ul li {
	list-style: none;
	background: url('<%= url_for :action => "guide_images", :id => "check_bullet", :format => "gif" %>') no-repeat left 0.5em;
	padding: 0.5em 1.75em 0.5em 1.75em;
	font-size: 1.1428em;
	font-weight: bold;
}

#mainCol dd, #subCol dd {
	padding: 0.25em 0 1em;
	border-bottom: 1px solid #CCC;
	margin-bottom: 1em;
	margin-left: 0;
	/*padding-left: 28px;*/
	padding-left: 0;
}

#mainCol dt, #subCol dt {
	font-size: 1.2857em;
	padding: 0.125em 0 0.25em 0;
	margin-bottom: 0;
	/*background: url('<%= url_for :action => "guide_images", :id => "book_icon", :format => "gif" %>') no-repeat left top;
	padding: 0.125em 0 0.25em 28px;*/
}

#mainCol dd.ticket, #subCol dd.ticket {
	background: #fff9d8 url('<%= url_for :action => "guide_images", :id => "tab_yellow", :format => "gif" %>') no-repeat left top;
	border: none;
	padding: 1.25em 1em 1.25em 48px;
	margin-left: 0;
	margin-top: 0.25em;
}

#mainCol div.warning, #subCol dd.warning {
	background: #f9d9d8 url('<%= url_for :action => "guide_images", :id => "tab_red", :format => "gif" %>') no-repeat left top;
	border: none;
	padding: 1.25em 1.25em 1.25em 48px;
	margin-left: 0;
	margin-top: 0.25em;
}

#subCol .chapters {color: #2495B1;}
#subCol .chapters a {font-weight: bold;}
#subCol .chapters ul a {font-weight: normal;}
#subCol .chapters li {margin-bottom: 0.75em;}
#subCol h3.chapter {margin-top: 0.25em;}
#subCol h3.chapter img {vertical-align: text-bottom;}
#subCol .chapters ul {margin-left: 0; margin-top: 0.5em;}
#subCol .chapters ul li {
	list-style: none;
	padding: 0 0 0 1em;
	background: url('<%= url_for :action => "guide_images", :id => "bullet", :format => "gif" %>') no-repeat left 0.45em;
	margin-left: 0;
	font-size: 1em;
	font-weight: normal;
}

tt {
	font-family: monaco, "Bitstream Vera Sans Mono", "Courier New", courier, monospace;
}

div.code_container {
	background: #EEE url('<%= url_for :action => "guide_images", :id => "tab_grey", :format => "gif" %>') no-repeat left top;
	padding: 0.25em 1em 0.5em 48px;    
}

code {
	font-family: monaco, "Bitstream Vera Sans Mono", "Courier New", courier, monospace;
	border: none;
	margin: 0.25em 0 1.5em 0;
	display: block;
}

.note {
	background: #fff9d8 url('<%= url_for :action => "guide_images", :id => "tab_note", :format => "gif" %>') no-repeat left top;
	border: none;
	padding: 1em 1em 0.25em 48px;
	margin: 0.25em 0 1.5em 0;
}

.info {
	background: #ccc url('<%= url_for :action => "guide_images", :id => "tab_info", :format => "gif" %>') no-repeat left top;
	border: none;
	padding: 1em 1em 0.25em 48px;
	margin: 0.25em 0 1.5em 0;
}

.note tt, .info tt {border:none; background: none; padding: 0;}

#mainCol ul li {
	list-style:none;
	background: url('<%= url_for :action => "guide_images", :id => "grey_bullet", :format => "gif" %>') no-repeat left 0.5em;
	padding-left: 1em;
	margin-left: 0;
}

#subCol .content {
	font-size: 0.7857em;
	line-height: 1.5em;
}

#subCol .content li {
	font-weight: normal;
	background: none;
	padding: 0 0 1em;
	font-size: 1.1667em;
}
	
/* Clearing
--------------------------------------- */

.clearfix:after {
    content: "."; 
    display: block; 
    height: 0; 
    clear: both; 
    visibility: hidden;
}

.clearfix {display: inline-block;}
* html .clearfix {height: 1%;}
.clearfix {display: block;}
.clear { clear:both; }

/* Same bottom margin for special boxes than for regular paragraphs, this way
intermediate whitespace looks uniform. */
div.code_container, div.important, div.caution, div.warning, div.note, div.info {
    margin-bottom: 1.5em;
}

/* Remove bottom margin of paragraphs in special boxes, otherwise they get a
spurious blank area below with the box background. */
div.important p, div.caution p, div.warning p, div.note p, div.info p {
    margin-bottom: 0px;
}
