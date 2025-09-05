<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Student Registration Form</title>
  <style>
    :root{
      --bg:#bfe8f5;
      --panel:#e9f7fc;
      --label:#0f4c5c;
      --text:#07343d;
      --line:#5fb3c9;
    }
    *{box-sizing:border-box;}
    body{
      margin:0;
      font-family: Arial, Helvetica, sans-serif;
      background:#dff4fb;
      color:var(--text);
    }
    .wrap{
      max-width:820px;
      margin:24px auto 48px;
      background:var(--bg);
      border-radius:10px;
      padding:24px 28px 32px;
      box-shadow:0 6px 18px rgba(0,0,0,.08) inset;
      border:1px solid #b2ddea;
    }
    h1{
      margin:0 0 18px;
      font-size:20px;
      font-weight:700;
      letter-spacing:.2px;
      color:#084b5a;
    }
    .row{
      display:grid;
      grid-template-columns:200px 1fr;
      gap:14px;
      align-items:center;
      margin:10px 0;
    }
    .row textarea{
      min-height:90px;
      resize:vertical;
    }
    label{
      color:var(--label);
      font-weight:600;
    }
    input[type="text"],
    input[type="email"],
    input[type="number"],
    select,
    textarea{
      width:100%;
      padding:8px 10px;
      border-radius:6px;
      border:1px solid #9ed2e3;
      background:#f6fcff;
      outline:none;
    }
    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="number"]:focus,
    select:focus,
    textarea:focus{
      border-color:#58b2c8;
      box-shadow:0 0 0 3px rgba(88,178,200,.2);
    }
    .hint{
      font-size:12px;
      color:#2c6a73;
      opacity:.9;
      margin-left:4px;
    }
    .inline{
      display:flex;
      gap:16px;
      align-items:center;
      flex-wrap:wrap;
    }
    .dob{
      display:flex;
      gap:8px;
    }
    fieldset.tbl{
      border:2px solid var(--line);
      border-radius:8px;
      padding:10px;
      background:#e6f5fb;
    }
    legend{
      padding:0 6px;
      font-weight:700;
      color:#0e5564;
    }
    table{
      width:100%;
      border-collapse:collapse;
      background:var(--panel);
      border-radius:8px;
      overflow:hidden;
    }
    thead th{
      background:#b6e3f1;
      text-align:left;
      padding:10px;
      font-size:14px;
      border-bottom:2px solid var(--line);
    }
    tbody td, tbody th{
      padding:10px;
      border-bottom:1px solid #bfe3ef;
    }
    tbody tr:last-child td{ border-bottom:none; }
    .footer{
      margin-top:18px;
      display:flex;
      gap:12px;
      justify-content:center;
    }
    button, input[type="reset"]{
      padding:10px 18px;
      border-radius:8px;
      border:1px solid #0e5564;
      background:#0e5564;
      color:#fff;
      cursor:pointer;
      font-weight:700;
      letter-spacing:.3px;
    }
    input[type="reset"]{
      background:#c2dae3;
      color:#07343d;
      border-color:#86b9c7;
    }
    .note{
      font-size:12px; color:#2a6570; margin-top:-8px; margin-bottom:6px;
    }
  </style>
</head>
<body>
  <div class="wrap">
    <h1>Student Registration Form</h1>
    <form action="registration" method="post" accept-charset="UTF-8" autocomplete="on">
      <div class="row">
        <label for="firstName">First name</label>
        <div>
          <input type="text" id="firstName" name="firstName" maxlength="30" pattern="[A-Za-z ]{1,30}" required>
          <span class="hint">(max 30 characters a-z and A-Z)</span>
        </div>
      </div>

      <div class="row">
        <label for="lastName">Last name</label>
        <div>
          <input type="text" id="lastName" name="lastName" maxlength="30" pattern="[A-Za-z ]{1,30}" required>
          <span class="hint">(max 30 characters a-z and A-Z)</span>
        </div>
      </div>

      <div class="row">
        <label>Date of birth</label>
        <div class="dob">
          <select name="dobDay" required>
            <option value="">Day</option>
            <!-- 1..31 -->
            <option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
<option>7</option>
<option>8</option>
<option>9</option>
<option>10</option>
<option>11</option>
<option>12</option>
<option>13</option>
<option>14</option>
<option>15</option>
<option>16</option>
<option>17</option>
<option>18</option>
<option>19</option>
<option>20</option>
<option>21</option>
<option>22</option>
<option>23</option>
<option>24</option>
<option>25</option>
<option>26</option>
<option>27</option>
<option>28</option>
<option>29</option>
<option>30</option>
<option>31</option>
          </select>
          <select name="dobMonth" required>
            <option value="">Month</option>
            <option>January</option><option>February</option><option>March</option>
            <option>April</option><option>May</option><option>June</option>
            <option>July</option><option>August</option><option>September</option>
            <option>October</option><option>November</option><option>December</option>
          </select>
          <select name="dobYear" required>
            <option value="">Year</option>
            <option>1970</option>
<option>1971</option>
<option>1972</option>
<option>1973</option>
<option>1974</option>
<option>1975</option>
<option>1976</option>
<option>1977</option>
<option>1978</option>
<option>1979</option>
<option>1980</option>
<option>1981</option>
<option>1982</option>
<option>1983</option>
<option>1984</option>
<option>1985</option>
<option>1986</option>
<option>1987</option>
<option>1988</option>
<option>1989</option>
<option>1990</option>
<option>1991</option>
<option>1992</option>
<option>1993</option>
<option>1994</option>
<option>1995</option>
<option>1996</option>
<option>1997</option>
<option>1998</option>
<option>1999</option>
<option>2000</option>
<option>2001</option>
<option>2002</option>
<option>2003</option>
<option>2004</option>
<option>2005</option>
<option>2006</option>
<option>2007</option>
<option>2008</option>
<option>2009</option>
<option>2010</option>
<option>2011</option>
<option>2012</option>
<option>2013</option>
<option>2014</option>
<option>2015</option>
<option>2016</option>
<option>2017</option>
<option>2018</option>
<option>2019</option>
<option>2020</option>
<option>2021</option>
<option>2022</option>
<option>2023</option>
<option>2024</option>
<option>2025</option>
          </select>
        </div>
      </div>

      <div class="row">
        <label for="email">Email</label>
        <div><input type="email" id="email" name="email" required></div>
      </div>

      <div class="row">
        <label for="mobile">Mobile number</label>
        <div>
          <input type="text" id="mobile" name="mobile" pattern="\\d{10}" maxlength="10" required>
          <span class="hint">(10 digit number)</span>
        </div>
      </div>

      <div class="row">
        <label>Gender</label>
        <div class="inline">
          <label><input type="radio" name="gender" value="Male" required> Male</label>
          <label><input type="radio" name="gender" value="Female"> Female</label>
        </div>
      </div>

      <div class="row">
        <label for="address">Address</label>
        <div><textarea id="address" name="address" maxlength="200"></textarea></div>
      </div>

      <div class="row">
        <label for="city">City</label>
        <div>
          <input type="text" id="city" name="city" maxlength="30" pattern="[A-Za-z ]{1,30}">
          <span class="hint">(max 30 characters a-z and A-Z)</span>
        </div>
      </div>

      <div class="row">
        <label for="pin">Pin code</label>
        <div>
          <input type="text" id="pin" name="pin" pattern="\\d{6}" maxlength="6">
          <span class="hint">(6 digit number)</span>
        </div>
      </div>

      <div class="row">
        <label for="state">State</label>
        <div>
          <input type="text" id="state" name="state" maxlength="30" pattern="[A-Za-z ]{1,30}">
          <span class="hint">(max 30 characters a-z and A-Z)</span>
        </div>
      </div>

      <div class="row">
        <label for="country">Country</label>
        <div><input type="text" id="country" name="country" value="India"></div>
      </div>

      <div class="row">
        <label>Hobbies</label>
        <div class="inline">
          <label><input type="checkbox" name="hobbies" value="Drawing"> Drawing</label>
          <label><input type="checkbox" name="hobbies" value="Singing"> Singing</label>
          <label><input type="checkbox" name="hobbies" value="Dancing"> Dancing</label>
          <label><input type="checkbox" name="hobbies" value="Sketching"> Sketching</label>
          <label><input type="checkbox" name="hobbies" value="Others"> Others</label>
          <input type="text" name="hobbyOther" placeholder="specify">
        </div>
      </div>

      <div class="row">
        <label>Qualification</label>
        <div>
          <fieldset class="tbl">
            <legend>Academic</legend>
            <table>
              <thead>
                <tr>
                  <th style="width:70px;">Sl.No.</th>
                  <th>Examination</th>
                  <th>Board</th>
                  <th>Percentage</th>
                  <th>Year of Passing</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th>1</th><td>Class X</td>
                  <td><input type="text" name="q10_board" maxlength="10" placeholder="[10 char max]"></td>
                  <td><input type="number" name="q10_percent" step="0.01" min="0" max="100" placeholder="[upto 2 decimal]"></td>
                  <td><input type="number" name="q10_year" min="1900" max="2099"></td>
                </tr>
                <tr>
                  <th>2</th><td>Class XII</td>
                  <td><input type="text" name="q12_board" maxlength="10"></td>
                  <td><input type="number" name="q12_percent" step="0.01" min="0" max="100"></td>
                  <td><input type="number" name="q12_year" min="1900" max="2099"></td>
                </tr>
                <tr>
                  <th>3</th><td>Graduation</td>
                  <td><input type="text" name="grad_board" maxlength="10"></td>
                  <td><input type="number" name="grad_percent" step="0.01" min="0" max="100"></td>
                  <td><input type="number" name="grad_year" min="1900" max="2099"></td>
                </tr>
                <tr>
                  <th>4</th><td>Masters</td>
                  <td><input type="text" name="mast_board" maxlength="10"></td>
                  <td><input type="number" name="mast_percent" step="0.01" min="0" max="100"></td>
                  <td><input type="number" name="mast_year" min="1900" max="2099"></td>
                </tr>
              </tbody>
            </table>
          </fieldset>
          <div class="note">[10 char max] for Board, Percentage upto 2 decimals.</div>
        </div>
      </div>

      <div class="row">
        <label>Course applies for</label>
        <div class="inline">
          <label><input type="radio" name="course" value="BCA" required> BCA</label>
          <label><input type="radio" name="course" value="B.Com"> B.Com</label>
          <label><input type="radio" name="course" value="B.Sc"> B.Sc</label>
          <label><input type="radio" name="course" value="B.A"> B.A</label>
        </div>
      </div>

      <div class="footer">
        <button type="submit">Submit</button>
        <input type="reset" value="Reset">
      </div>
    </form>
  </div>
</body>
</html>