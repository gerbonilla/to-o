##TODOS##

Models (3)
  auto
  casa
  vida
Controllers
Home Page - stripped down
Views for models - stripped down forms
add conversational forms (working offline?)


<form id="cf-form" method="post" action="https://api.formbucket.com/f/buk_YR7xGobkQQBP0bmXAWXtxn1B">

<!-- String Question -->
  <fieldset>
    <label for="name">What's your name?</label>
    <input required cf-questions="Hi there! What's your name? 😊" type="text" class="form-control" name="name" id="name">
  </fieldset>

<!-- Options/Radio Questions/Previoius answer -->
  <fieldset>
    <label for="occupation">Occupation</label>
    <div class="radio">
    <label>
      <input cf-questions="Great to meet you, {previous-answer}! I'm a web form, what do you do?|Awesome, {previous-answer}! And what do you do?" type="radio" name="occupation" id="occupation-1" value="developer">
      Developer
    </label>
    </div>
    <div class="radio">
    <label>
      <input type="radio" name="occupation" id="occupation-2" value="designer">
      Designer
    </label>
    </div>
    <div class="radio">
    <label>
      <input type="radio" name="occupation" id="occupation-3" value="curious-mind">
      Curious mind
    </label>
    </div>
    <div class="radio">
      <label>
        <input type="radio" name="occupation" id="occupation-2" value="lost">
        Lost cause
      </label>
    </div>
  </fieldset>

  <!-- DropDown -->
  <fieldset>
    <label for="opinion">Will conversational interfaces be everywhere?</label>
    <select cf-questions="Do you think conversational forms will replace web forms in the future?" name="opinion" id="opinion" class="form-control">
      <option></option>
      <option>Definitely</option>
      <option>Maybe</option>
      <option>No</option>
    </select>
  </fieldset>

<!-- email -->
  <fieldset>
    <label for="email">Email</label>
    <input pattern=".+\@.+\..+" cf-error="E-mail not correct" cf-questions="If you want to stay updated on conversational interfaces from SPACE10, please give me your email." type="email" class="form-control" name="email" id="your-email">
  </fieldset>

<!-- anoter dropdown -->
  <fieldset style="display: none;">
    <label for="thats-all">Are you ready to submit the form?</label>
    <select cf-questions="Are you ready to submit the form?" name="submit-form" id="submit-form" class="form-control">
      <option></option>
      <option>Yup</option>
    </select>
  </fieldset>

  <!-- checkbox -->
  <fieldset cf-questions="Path B question 1/2, multi choice">
    <input  required type="checkbox" name="cfc-path-b-checkbox" id="path-b-checkbox-2" value="test2" checked="checked">
    <label for="path-b-checkbox-1">Path B, checkbox 1</label>
  </fieldset>

  <button type="submit" class="btn btn-default">Submit</button>
</form>
