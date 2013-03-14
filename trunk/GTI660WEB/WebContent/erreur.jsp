
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Oups !</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="style1.css" rel="stylesheet" type="text/css" />

<!-- Pour le même look que Index. utiliser les deux link CSS  Sinon, rester avec style1.css-->
<!--

<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />


-->
<link href="http://woork.bravehost.com/elegantNavbar/topbar.css" rel="stylesheet" type="text/css" />      
</head>
<body>
<!-- start header -->

<hr />
<!-- end header -->
<!-- start page -->

<div class="container">
			<header>
                <h1>Multimedia BD <span>Web Application</span></h1>			
            </header>	
			<section>
                <div id="container_demo" >
					<div id="wrapper">
						<div id="login" class="animate form">
								<form  action="./" autocomplete="on"> 
									<h1>Erreur!</h1>
									<h2>Cher usager, une erreur interne nous empeche de traiter votre requete, veuillez
									aviser l'administrateur du site</h2>
									<br />		
									<br />									
								</form>
								<form action="#" method="post" enctype="multipart/form-data" onsubmit="return false">
    <p>
      <input type="checkbox" id="test_checkbox_1" name="test_checkbox_1" />
      <label for="test_checkbox_1">
        Test checkbox 1
      </label>
      &nbsp;
      &nbsp;
      <input type="checkbox" id="test_checkbox_2" name="test_checkbox_2" />
      <label for="test_checkbox_2">
        Test checkbox 2
      </label>
      &nbsp;
      &nbsp;
      <input type="checkbox" id="test_checkbox_3" name="test_checkbox_3" />
      <label for="test_checkbox_3">
        Test checkbox 3
      </label>
    </p>
    <p>
      <input type="radio" id="test_radio_1" name="test_radio_group" />
      <label for="test_radio_1">
        Test radio 1
      </label>
      &nbsp;
      &nbsp;
      <input type="radio" id="test_radio_2" name="test_radio_group" />
      <label for="test_radio_2">
        Test radio 2
      </label>
      &nbsp;
      &nbsp;
      <input type="radio" id="test_radio_3" name="test_radio_group" />
      <label for="test_radio_3">
        Test radio 3
      </label>
    </p>
    <p>
      <label for="select_dd">
        Select drop-down
      </label>
      <br />
      <select id="select_dd" name="select_dd">
        <optgroup label="Group 1">
          <option value="1">Some text goes here</option>
          <option value="2">Another choice could be here</option>
          <option value="3">Yet another item to be chosen</option>
        </optgroup>
        <optgroup label="Group 2">
          <option value="4">Some text goes here</option>
          <option value="5">Another choice could be here</option>
          <option value="6">Yet another item to be chosen</option>
        </optgroup>
        <optgroup label="Group 3">
          <option value="7">Some text goes here</option>
          <option value="8">Another choice could be here</option>
          <option value="9">Yet another item to be chosen</option>
        </optgroup>
      </select>
      <input type="text" id="text_inline" name="text_inline" />
      <input type="button" value="Input Button" />
      <button>Button Tag</button>
      <a href="#" class="button">Link Button</a>
    </p>
    <p>
      <label for="select_multi">
        Select multiple
      </label>
      <br />
      <select id="select_multi" name="select_multi" multiple="multiple" size="10">
        <optgroup label="Group 1">
          <option value="1">Some text goes here</option>
          <option value="2">Another choice could be here</option>
          <option value="3">Yet another item to be chosen</option>
        </optgroup>
        <optgroup label="Group 2">
          <option value="4">Some text goes here</option>
          <option value="5">Another choice could be here</option>
          <option value="6">Yet another item to be chosen</option>
        </optgroup>
        <optgroup label="Group 3">
          <option value="7">Some text goes here</option>
          <option value="8">Another choice could be here</option>
          <option value="9">Yet another item to be chosen</option>
        </optgroup>
      </select>
    </p>
    <p>
      <label for="textarea">
        Textarea
      </label>
      <br />
      <textarea id="textarea" name="textarea" rows="5" placeholder="This is an example of HTML5 placeholder text."></textarea>
    </p>
    <table class="horiz">
      <tr>
        <td>
          <label for="url">
            URL + Autofocus
          </label>
          <br />
          <input type="url" id="url" name="url" value="http://" autofocus="autofocus" />
        </td>
        <td>
          <label for="email">
            Email
          </label>
          <br />
          <input type="email" id="email" name="email" placeholder="name@example.com" />
        </td>
        <td>
          <label for="password">
            Password
          </label>
          <br />
          <input type="password" id="password" name="password" placeholder="Alphanumeric123!" />
        </td>
      </tr>
      <tr>
        <td>
          <label for="datetime-local">
            Datetime local
          </label>
          <br />
          <input type="datetime-local" id="datetime-local" name="datetime-local" />
        </td>
        <td>
          <label for="number">
            Number
          </label>
          <br />
          <input type="number" id="number" name="number" min="0" max="999" step="1" />
        </td>
        <td>
          <label for="tel">
            Tel (phone)
          </label>
          <br />
          <input type="tel" id="tel" name="tel" />
        </td>
      </tr>
      <tr>
        <td>
          <label for="datetime">
            Datetime
          </label>
          <br />
          <input type="datetime" id="datetime" name="datetime" />
        </td>
        <td>
          <label for="date">
            Date
          </label>
          <br />
          <input type="date" id="date" name="date" />
        </td>
        <td>
          <label for="month">
            Month
          </label>
          <br />
          <input type="month" id="month" name="month" />
        </td>
      </tr>
      <tr>
        <td>
          <label for="search">
            Search
          </label>
          <br />
          <input type="search" id="search" name="search" />
        </td>
        <td>
          <label for="range">
            Range
          </label>
          <br />
          <input type="range" id="range" name="range" />
        </td>
        <td>
          <label for="file">
            File upload
          </label>
          <br />
          <input type="file" id="file" name="file" />
        </td>
      </tr>
    </table>
    <p>
      <input type="submit" value="Input - Submit" />
      &nbsp;
      <input type="button" value="Input - Button" />
      &nbsp;
      <input type="reset" value="Input - Reset" />
      &nbsp;
      <button>Button tag</button>
    </p>
  </form>
						</div>  
					</div>
				</div>			
			</section>
</div>
<!-- end page -->
<!-- start footer -->

<!-- end footer -->

</body>
</html>