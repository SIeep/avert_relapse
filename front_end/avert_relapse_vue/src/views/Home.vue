<template>
  <div class="home">
    <!-- <h1>{{ message }}</h1> -->
    <!-- Landing Page Contents
    ================================================= -->
    <div id="lp-register">
      <div class="container wrapper">
        <div class="row">
          <div class="col-sm-5">
            <div class="intro-texts">
              <img src="/HTML/images/croppedlogo3.png">
              <!-- <h1 class="text-white">Welcome to Avert Relapse</h1> -->
              <p style="padding-left: 35%;">Social media for a cause.</p>
              <a href="/about" style="padding-left: 35%;"><button class="btn btn-primary">Learn More</button></a>
            </div>
          </div>
          <div class="col-sm-6 col-sm-offset-1">
            <div class="reg-form-container"> 
            
              <!-- Register/Login Tabs-->
              <div class="reg-options">
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#register" data-toggle="tab">Register</a></li>
                  <li><a href="#login" data-toggle="tab">Login</a></li>
                </ul><!--Tabs End-->
              </div>
              
              <!--Registration Form Contents-->
              <div class="tab-content">
                <div class="tab-pane active" id="register">
                  <h3>Register to Avert Relapse</h3>
                  <p class="text-muted">The only app that allows addicts to connect with other addicts.</p>
                  
                  <!--Register Form-->

                  <!-- <div class="signup">
                    <div class="container">
                      <form v-on:submit.prevent="submit()">
                        <h1>Signup</h1>
                        <ul>
                          <li class="text-danger" v-for="error in errors">{{ error }}</li>
                        </ul>
                        <div class="form-group">
                          <label>Account Name: </label> 
                          <input type="text" class="form-control" v-model="name">
                        </div>
                        <div class="form-group">
                          <label>Email: </label>
                          <input type="email" class="form-control" v-model="email">
                        </div>
                        <div class="form-group">
                          <label>Phone Number: </label> 
                          <input type="text" class="form-control" v-model="phoneNumber">
                        </div>
                        <div class="form-group">
                          <label>Password: </label>
                          <input type="password" class="form-control" v-model="password">
                        </div>
                        <div class="form-group">
                          <label>Password confirmation: </label>
                          <input type="password" class="form-control" v-model="passwordConfirmation">
                        </div>
                        <div class="form-group">
                          <label>User ID: </label>
                          <input type="user_id" class="form-control" v-model="user_id">
                        </div>
                        <input type="submit" class="btn btn-primary" value="Submit">
                      </form>
                    </div>
                  </div> -->

                  <div class="signup" >
                  <form  v-on:submit.prevent="submit()">
                    <ul>
                      <li class="text-danger" v-for="error in errors">{{ error }}</li>
                    </ul>
                    <div class="row">
                      <div class="form-group col-xs-6">
                        <vs-input style="font-size: 1.2rem" label-placeholder="First Name" v-model="firstName"/>
                        <!-- <label for="name" class="sr-only">First Name</label>
                        <input class="form-control input-group-lg" type="text" name="name" title="Enter first name" placeholder="First Name" v-model="firstName"/> -->
                      </div>
                      <div class="form-group col-xs-6">
                        <vs-input label-placeholder="Last Name" v-model="lastName" style="font-size: 1.2rem"/>
                        <!-- <label for="name" class="sr-only">Last Name</label>
                        <input class="form-control input-group-lg" type="text" name="name" title="Enter last name" placeholder="Last Name" v-model="lastName"/> -->
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <vs-input icon-after="true" icon="email" style="font-size: 1.2rem" label-placeholder="Email" v-model="email"/>
                        <!-- <label for="email" class="sr-only">Email</label>
                        <input class="form-control input-group-lg" type="text" name="Email" title="Enter Email" placeholder="Your Email" v-model="email"/> -->
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <vs-input icon-after="true" icon="phone" label-placeholder="Phone Number" v-model="phoneNumber"/>
                        <!-- <label for="phoneNumber" class="sr-only">Phone Number</label>                        
                        <input class="form-control input-group-lg" type="text" name="Phone Number" title="Enter Phone Number" placeholder="Your Phone Number" v-model="phoneNumber"/> -->
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-xs-6">
                        <vs-input icon-after="true" icon="lock" type="password" label-placeholder="Password" v-model="password"/>
                        <!-- <label for="password" class="sr-only">Password</label>                        
                        <input class="form-control input-group-lg" type="password" name="password" title="Enter password" placeholder="Password" v-model="password"/> -->
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <vs-input icon-after="true" icon="lock" type="password" label-placeholder="Password Confirmation" v-model="passwordConfirmation"/>
                        <!-- <label for="password" class="sr-only">Password Confirmation</label> -->
                        <!-- <input class="form-control input-group-lg" type="password" name="password" title="Enter password" placeholder="Password Confirmation" v-model="passwordConfirmation"/> -->
                      </div>
                    </div>
                    <!-- <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="userId" class="sr-only">User ID</label>
                        <input class="form-control input-group-lg" type="userId" name="userId" title="Enter User ID" placeholder="User ID" v-model="user_id"/>
                      </div>
                    </div> -->
                    <!-- <div class="row">
                      <p class="birth"><strong>Date of Birth</strong></p>
                      <div class="form-group col-sm-3 col-xs-6">
                        <label for="month" class="sr-only"></label>
                        <select class="form-control" id="day">
                          <option value="Day" disabled selected>Day</option>
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
                      </div>
                      <div class="form-group col-sm-3 col-xs-6">
                        <label for="month" class="sr-only"></label>
                        <select class="form-control" id="month">
                          <option value="month" disabled selected>Month</option>
                          <option>Jan</option>
                          <option>Feb</option>
                          <option>Mar</option>
                          <option>Apr</option>
                          <option>May</option>
                          <option>Jun</option>
                          <option>Jul</option>
                          <option>Aug</option>
                          <option>Sep</option>
                          <option>Oct</option>
                          <option>Nov</option>
                          <option>Dec</option>
                        </select>
                      </div>
                      <div class="form-group col-sm-6 col-xs-12">
                        <label for="year" class="sr-only"></label>
                        <select class="form-control" id="year">
                          <option value="year" disabled selected>Year</option>
                          <option>2000</option>
                          <option>2001</option>
                          <option>2002</option>
                          <option>2004</option>
                          <option>2005</option>
                          <option>2006</option>
                          <option>2007</option>
                          <option>2008</option>
                          <option>2009</option>
                          <option>2010</option>
                          <option>2011</option>
                          <option>2012</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group gender">
                      <label class="radio-inline">
                        <input type="radio" name="optradio" checked>Male
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="optradio">Female
                      </label>
                    </div>
                    <div class="row">
                      <div class="form-group col-xs-6">
                        <label for="city" class="sr-only">City</label>
                        <input id="city" class="form-control input-group-lg reg_name" type="text" name="city" title="Enter city" placeholder="Your city"/>
                      </div>
                      <div class="form-group col-xs-6">
                        <label for="country" class="sr-only"></label>
                        <select class="form-control" id="country">
                          <option value="country" disabled selected>Country</option>
                          <option value="AFG">Afghanistan</option>
                          <option value="ALA">Åland Islands</option>
                          <option value="ALB">Albania</option>
                          <option value="DZA">Algeria</option>
                          <option value="ASM">American Samoa</option>
                          <option value="AND">Andorra</option>
                          <option value="AGO">Angola</option>
                          <option value="AIA">Anguilla</option>
                          <option value="ATA">Antarctica</option>
                          <option value="ATG">Antigua and Barbuda</option>
                          <option value="ARG">Argentina</option>
                          <option value="ARM">Armenia</option>
                          <option value="ABW">Aruba</option>
                          <option value="AUS">Australia</option>
                          <option value="AUT">Austria</option>
                          <option value="AZE">Azerbaijan</option>
                          <option value="BHS">Bahamas</option>
                          <option value="BHR">Bahrain</option>
                          <option value="BGD">Bangladesh</option>
                          <option value="BRB">Barbados</option>
                          <option value="BLR">Belarus</option>
                          <option value="BEL">Belgium</option>
                          <option value="BLZ">Belize</option>
                          <option value="BEN">Benin</option>
                          <option value="BMU">Bermuda</option>
                          <option value="BTN">Bhutan</option>
                          <option value="BOL">Bolivia, Plurinational State of</option>
                          <option value="BES">Bonaire, Sint Eustatius and Saba</option>
                          <option value="BIH">Bosnia and Herzegovina</option>
                          <option value="BWA">Botswana</option>
                          <option value="BVT">Bouvet Island</option>
                          <option value="BRA">Brazil</option>
                          <option value="IOT">British Indian Ocean Territory</option>
                          <option value="BRN">Brunei Darussalam</option>
                          <option value="BGR">Bulgaria</option>
                          <option value="BFA">Burkina Faso</option>
                          <option value="BDI">Burundi</option>
                          <option value="KHM">Cambodia</option>
                          <option value="CMR">Cameroon</option>
                          <option value="CAN">Canada</option>
                          <option value="CPV">Cape Verde</option>
                          <option value="CYM">Cayman Islands</option>
                          <option value="CAF">Central African Republic</option>
                          <option value="TCD">Chad</option>
                          <option value="CHL">Chile</option>
                          <option value="CHN">China</option>
                          <option value="CXR">Christmas Island</option>
                          <option value="CCK">Cocos (Keeling) Islands</option>
                          <option value="COL">Colombia</option>
                          <option value="COM">Comoros</option>
                          <option value="COG">Congo</option>
                          <option value="COD">Congo, the Democratic Republic of the</option>
                          <option value="COK">Cook Islands</option>
                          <option value="CRI">Costa Rica</option>
                          <option value="CIV">Côte d'Ivoire</option>
                          <option value="HRV">Croatia</option>
                          <option value="CUB">Cuba</option>
                          <option value="CUW">Curaçao</option>
                          <option value="CYP">Cyprus</option>
                          <option value="CZE">Czech Republic</option>
                          <option value="DNK">Denmark</option>
                          <option value="DJI">Djibouti</option>
                          <option value="DMA">Dominica</option>
                          <option value="DOM">Dominican Republic</option>
                          <option value="ECU">Ecuador</option>
                          <option value="EGY">Egypt</option>
                          <option value="SLV">El Salvador</option>
                          <option value="GNQ">Equatorial Guinea</option>
                          <option value="ERI">Eritrea</option>
                          <option value="EST">Estonia</option>
                          <option value="ETH">Ethiopia</option>
                          <option value="FLK">Falkland Islands (Malvinas)</option>
                          <option value="FRO">Faroe Islands</option>
                          <option value="FJI">Fiji</option>
                          <option value="FIN">Finland</option>
                          <option value="FRA">France</option>
                          <option value="GUF">French Guiana</option>
                          <option value="PYF">French Polynesia</option>
                          <option value="ATF">French Southern Territories</option>
                          <option value="GAB">Gabon</option>
                          <option value="GMB">Gambia</option>
                          <option value="GEO">Georgia</option>
                          <option value="DEU">Germany</option>
                          <option value="GHA">Ghana</option>
                          <option value="GIB">Gibraltar</option>
                          <option value="GRC">Greece</option>
                          <option value="GRL">Greenland</option>
                          <option value="GRD">Grenada</option>
                          <option value="GLP">Guadeloupe</option>
                          <option value="GUM">Guam</option>
                          <option value="GTM">Guatemala</option>
                          <option value="GGY">Guernsey</option>
                          <option value="GIN">Guinea</option>
                          <option value="GNB">Guinea-Bissau</option>
                          <option value="GUY">Guyana</option>
                          <option value="HTI">Haiti</option>
                          <option value="HMD">Heard Island and McDonald Islands</option>
                          <option value="VAT">Holy See (Vatican City State)</option>
                          <option value="HND">Honduras</option>
                          <option value="HKG">Hong Kong</option>
                          <option value="HUN">Hungary</option>
                          <option value="ISL">Iceland</option>
                          <option value="IND">India</option>
                          <option value="IDN">Indonesia</option>
                          <option value="IRN">Iran, Islamic Republic of</option>
                          <option value="IRQ">Iraq</option>
                          <option value="IRL">Ireland</option>
                          <option value="IMN">Isle of Man</option>
                          <option value="ISR">Israel</option>
                          <option value="ITA">Italy</option>
                          <option value="JAM">Jamaica</option>
                          <option value="JPN">Japan</option>
                          <option value="JEY">Jersey</option>
                          <option value="JOR">Jordan</option>
                          <option value="KAZ">Kazakhstan</option>
                          <option value="KEN">Kenya</option>
                          <option value="KIR">Kiribati</option>
                          <option value="PRK">Korea, Democratic People's Republic of</option>
                          <option value="KOR">Korea, Republic of</option>
                          <option value="KWT">Kuwait</option>
                          <option value="KGZ">Kyrgyzstan</option>
                          <option value="LAO">Lao People's Democratic Republic</option>
                          <option value="LVA">Latvia</option>
                          <option value="LBN">Lebanon</option>
                          <option value="LSO">Lesotho</option>
                          <option value="LBR">Liberia</option>
                          <option value="LBY">Libya</option>
                          <option value="LIE">Liechtenstein</option>
                          <option value="LTU">Lithuania</option>
                          <option value="LUX">Luxembourg</option>
                          <option value="MAC">Macao</option>
                          <option value="MKD">Macedonia, the former Yugoslav Republic of</option>
                          <option value="MDG">Madagascar</option>
                          <option value="MWI">Malawi</option>
                          <option value="MYS">Malaysia</option>
                          <option value="MDV">Maldives</option>
                          <option value="MLI">Mali</option>
                          <option value="MLT">Malta</option>
                          <option value="MHL">Marshall Islands</option>
                          <option value="MTQ">Martinique</option>
                          <option value="MRT">Mauritania</option>
                          <option value="MUS">Mauritius</option>
                          <option value="MYT">Mayotte</option>
                          <option value="MEX">Mexico</option>
                          <option value="FSM">Micronesia, Federated States of</option>
                          <option value="MDA">Moldova, Republic of</option>
                          <option value="MCO">Monaco</option>
                          <option value="MNG">Mongolia</option>
                          <option value="MNE">Montenegro</option>
                          <option value="MSR">Montserrat</option>
                          <option value="MAR">Morocco</option>
                          <option value="MOZ">Mozambique</option>
                          <option value="MMR">Myanmar</option>
                          <option value="NAM">Namibia</option>
                          <option value="NRU">Nauru</option>
                          <option value="NPL">Nepal</option>
                          <option value="NLD">Netherlands</option>
                          <option value="NCL">New Caledonia</option>
                          <option value="NZL">New Zealand</option>
                          <option value="NIC">Nicaragua</option>
                          <option value="NER">Niger</option>
                          <option value="NGA">Nigeria</option>
                          <option value="NIU">Niue</option>
                          <option value="NFK">Norfolk Island</option>
                          <option value="MNP">Northern Mariana Islands</option>
                          <option value="NOR">Norway</option>
                          <option value="OMN">Oman</option>
                          <option value="PAK">Pakistan</option>
                          <option value="PLW">Palau</option>
                          <option value="PSE">Palestinian Territory, Occupied</option>
                          <option value="PAN">Panama</option>
                          <option value="PNG">Papua New Guinea</option>
                          <option value="PRY">Paraguay</option>
                          <option value="PER">Peru</option>
                          <option value="PHL">Philippines</option>
                          <option value="PCN">Pitcairn</option>
                          <option value="POL">Poland</option>
                          <option value="PRT">Portugal</option>
                          <option value="PRI">Puerto Rico</option>
                          <option value="QAT">Qatar</option>
                          <option value="REU">Réunion</option>
                          <option value="ROU">Romania</option>
                          <option value="RUS">Russian Federation</option>
                          <option value="RWA">Rwanda</option>
                          <option value="BLM">Saint Barthélemy</option>
                          <option value="SHN">Saint Helena, Ascension and Tristan da Cunha</option>
                          <option value="KNA">Saint Kitts and Nevis</option>
                          <option value="LCA">Saint Lucia</option>
                          <option value="MAF">Saint Martin (French part)</option>
                          <option value="SPM">Saint Pierre and Miquelon</option>
                          <option value="VCT">Saint Vincent and the Grenadines</option>
                          <option value="WSM">Samoa</option>
                          <option value="SMR">San Marino</option>
                          <option value="STP">Sao Tome and Principe</option>
                          <option value="SAU">Saudi Arabia</option>
                          <option value="SEN">Senegal</option>
                          <option value="SRB">Serbia</option>
                          <option value="SYC">Seychelles</option>
                          <option value="SLE">Sierra Leone</option>
                          <option value="SGP">Singapore</option>
                          <option value="SXM">Sint Maarten (Dutch part)</option>
                          <option value="SVK">Slovakia</option>
                          <option value="SVN">Slovenia</option>
                          <option value="SLB">Solomon Islands</option>
                          <option value="SOM">Somalia</option>
                          <option value="ZAF">South Africa</option>
                          <option value="SGS">South Georgia and the South Sandwich Islands</option>
                          <option value="SSD">South Sudan</option>
                          <option value="ESP">Spain</option>
                          <option value="LKA">Sri Lanka</option>
                          <option value="SDN">Sudan</option>
                          <option value="SUR">Suriname</option>
                          <option value="SJM">Svalbard and Jan Mayen</option>
                          <option value="SWZ">Swaziland</option>
                          <option value="SWE">Sweden</option>
                          <option value="CHE">Switzerland</option>
                          <option value="SYR">Syrian Arab Republic</option>
                          <option value="TWN">Taiwan, Province of China</option>
                          <option value="TJK">Tajikistan</option>
                          <option value="TZA">Tanzania, United Republic of</option>
                          <option value="THA">Thailand</option>
                          <option value="TLS">Timor-Leste</option>
                          <option value="TGO">Togo</option>
                          <option value="TKL">Tokelau</option>
                          <option value="TON">Tonga</option>
                          <option value="TTO">Trinidad and Tobago</option>
                          <option value="TUN">Tunisia</option>
                          <option value="TUR">Turkey</option>
                          <option value="TKM">Turkmenistan</option>
                          <option value="TCA">Turks and Caicos Islands</option>
                          <option value="TUV">Tuvalu</option>
                          <option value="UGA">Uganda</option>
                          <option value="UKR">Ukraine</option>
                          <option value="ARE">United Arab Emirates</option>
                          <option value="GBR">United Kingdom</option>
                          <option value="USA">United States</option>
                          <option value="UMI">United States Minor Outlying Islands</option>
                          <option value="URY">Uruguay</option>
                          <option value="UZB">Uzbekistan</option>
                          <option value="VUT">Vanuatu</option>
                          <option value="VEN">Venezuela, Bolivarian Republic of</option>
                          <option value="VNM">Viet Nam</option>
                          <option value="VGB">Virgin Islands, British</option>
                          <option value="VIR">Virgin Islands, U.S.</option>
                          <option value="WLF">Wallis and Futuna</option>
                          <option value="ESH">Western Sahara</option>
                          <option value="YEM">Yemen</option>
                          <option value="ZMB">Zambia</option>
                          <option value="ZWE">Zimbabwe</option>
                        </select>
                      </div>
                    </div> -->
                    <p><a href="/login">Already have an account?</a></p>
                    <a href="/login"><button class="btn btn-primary" type="submit" value="Submit">Register Now</button></a>
                  </form><!--Register Now Form Ends-->
                  </div>

                  
                  
                </div><!--Registration Form Contents Ends-->

                <!--Login-->
                <div class="tab-pane" id="login">
                  <h3>Sign in</h3>
                  <br>
                  <p class="text-muted">Sign to your account</p>
                  
                  <!--Login Form-->
                  <form v-on:submit.prevent="login()" name="Login_form" id='Login_form'>
                     <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="my-email" class="sr-only">Email</label>
                        <input id="my-email" class="form-control input-group-lg" type="text" name="Email" title="Enter Email" placeholder="Your Email" v-model="email"/>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="my-password" class="sr-only">Password</label>
                        <input id="my-password" class="form-control input-group-lg" type="password" name="password" title="Enter password" placeholder="Password" v-model="password"/>
                      </div>
                      <input type="submit" class="btn btn-primary" value="Login">
                    </div>
                  </form>
                  <p><a href="#">Forgot Password?</a></p>
                  <!--Login Form Ends--> 
                  
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 col-sm-offset-6">
          
            <!--Social Icons-->
            <!-- <ul class="list-inline social-icons">
              <li><a href="#"><i class="icon ion-social-facebook"></i></a></li>
              <li><a href="#"><i class="icon ion-social-twitter"></i></a></li>
              <li><a href="#"><i class="icon ion-social-googleplus"></i></a></li>
              <li><a href="#"><i class="icon ion-social-pinterest"></i></a></li>
              <li><a href="#"><i class="icon ion-social-linkedin"></i></a></li>
            </ul> -->
          </div>
        </div>
      </div>
    </div>

    <!--preloader-->
    <!-- <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div> -->

  </div>
</template>

<style>
/*.index {
  background-image: "aver_relapse_vue/images/download.png"
}
#app .home {
  background-image: url("/images/download.png")
}*/
</style>
<script>
import axios from "axios";

export default {
  data: function() {
    return {
      message: "Welcome to Avert.relapse!",
      firstName: "",
      lastName: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      phoneNumber: "",
      user_id: "",
      errors: []
    };
  },
  created: function() {
    axios.get("/api/users/id").then(response => {
      this.user_id = response.data;
    });
  },

  methods: {
    login: function() {
      var params = {
        email: this.email,
        password: this.password
      };
      axios
        .post("/api/sessions", params)
        .then(response => {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          this.$router.push("/index");
        })
        .catch(error => {
          this.errors = ["Invalid email or password."];
          this.email = "";
          this.password = "";
        });
      },
    submit: function() {
      var params = {
        user_id: this.user_id,
        first_name: this.firstName,
        last_name: this.lastName,
        email: this.email,
        password: this.password,
        phone_number: this.phoneNumber,
        password_confirmation: this.passwordConfirmation
      };
      axios
        .post("/api/users", params)
        .then(response => {
          console.log(response);
        });
      axios
        .post("/api/accounts", params)
        .then(response => {
          console.log(response);
        });
          this.$router.push("/login");
      // axios
      //   .post("/api/sessions", params)
      //   .then(response => {
      //     axios.defaults.headers.common["Authorization"] =
      //       "Bearer " + response.data.jwt;
      //     localStorage.setItem("jwt", response.data.jwt);
      //     this.$router.push("/login");
      //   })
      //   .catch(error => {
      //     this.errors = ["Invalid email or password."];
      //     this.email = "";
      //     this.password = "";
      //   });
      //   .catch(error => {
      //     this.errors = error.response.data.errors;
      //   });
      // // axios
      //   .post("/api/sessions", params)
      //   .then(response => {
      //     axios.defaults.headers.common["Authorization"] =
      //       "Bearer " + response.data.jwt;
      //     localStorage.setItem("jwt", response.data.jwt);
      //     this.$router.push("/index");
      //   })
      //   .catch(error => {
      //     this.errors = ["Invalid email or password."];
      //     this.email = "";
      //     this.password = "";
      //   });
    },
    
  }
};
</script>