<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/style4.css">
</head>

<body>


    <div class="container">
        <h1 class="form-heading">Personal  Details and Address</h1>


        <form action="/conformation.jsp" method="post" enctype="multipart/form-data">
            <div class="per-details">
                <h3 class="in-heading">Personal Details</h3>

                <div class="form-group">

                    <label for="cname">Name</label>
                    <input name="cname" type="text" id="cname" required>
                </div>
                <div class="form-group">
                    <label for="phnno">Phone Number</label>
                    <input type="number" name="phnno" id="phnno" max-length="10" required>
                </div>
                <div class="form-group">
                    <label for="email">Email ID</label>
                    <input type="email" name="email" id="email" required>
                </div>

            </div>
            <div class="cont-details">
                <h3 class="in-heading">Address</h3>
                
                <div class="form-group">
                    <label for="country">Country</label>
                    <select name="country" class="form-control" id="country" required>
                        <option value="india">India</option>
                    </select>
                </div>
                <label for="state">State:</label>
                <div class="form-group">

                    <select name="state" id="state" class="form-control" required>
                        <option value="">Select Your State</option>
                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                        <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                        <option value="Assam">Assam</option>
                        <option value="Bihar">Bihar</option>
                        <option value="Chandigarh">Chandigarh</option>
                        <option value="Chhattisgarh">Chhattisgarh</option>
                        <option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
                        <option value="Daman and Diu">Daman and Diu</option>
                        <option value="Delhi">Delhi</option>
                        <option value="Lakshadweep">Lakshadweep</option>
                        <option value="Puducherry">Puducherry</option>
                        <option value="Goa">Goa</option>
                        <option value="Gujarat">Gujarat</option>
                        <option value="Haryana">Haryana</option>
                        <option value="Himachal Pradesh">Himachal Pradesh</option>
                        <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                        <option value="Jharkhand">Jharkhand</option>
                        <option value="Karnataka">Karnataka</option>
                        <option value="Kerala">Kerala</option>
                        <option value="Madhya Pradesh">Madhya Pradesh</option>
                        <option value="Maharashtra">Maharashtra</option>
                        <option value="Manipur">Manipur</option>
                        <option value="Meghalaya">Meghalaya</option>
                        <option value="Mizoram">Mizoram</option>
                        <option value="Nagaland">Nagaland</option>
                        <option value="Odisha">Odisha</option>
                        <option value="Punjab">Punjab</option>
                        <option value="Rajasthan">Rajasthan</option>
                        <option value="Sikkim">Sikkim</option>
                        <option value="Tamil Nadu">Tamil Nadu</option>
                        <option value="Telangana">Telangana</option>
                        <option value="Tripura">Tripura</option>
                        <option value="Uttar Pradesh">Uttar Pradesh</option>
                        <option value="Uttarakhand">Uttarakhand</option>
                        <option value="West Bengal">West Bengal</option>
                    </select>
                </div>
             
                <div class="form-group">
                    <label >Pin Code</label>
                    <input type="number"  max-length="6" required>
                </div>

                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea name="address" id="address" cols="" rows="1" required></textarea>
                </div>
                <div class="form-group">

                    <label >Landmark</label>
                    <input  type="text" required>
                </div>
                <div class="form-group"></div>
            </div>


           
            <div class="submit">

                <button type="submit">Submit</button>
            </div>
        </form>
    
       </div>
    </div>

</body>

</html>