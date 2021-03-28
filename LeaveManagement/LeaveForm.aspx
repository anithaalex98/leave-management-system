<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaveForm.aspx.cs" Inherits="LeaveManagement.LeaveForm" %>

<!DOCTYPE html>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <title>STUDENT LEAVE MANAGEMENT - LEAVE FORM</title>
      <style>

          #mainbox 
          {
                width:600px;
                margin:50px 400px;
                padding:50px;
                background-color:rgba(255,255,255,0.9);
          }

          body 
          {
              background-image:url("Images/register.jpg");
              background-repeat:no-repeat;
              background-size:cover;
          }

      </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="">Student Leave Management</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Logout.aspx">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

      <div id="mainbox">

          <form runat="server" class="row g-3">
              <h3 style="margin:10px 150px;font-size:40px;">Leave Form</h3>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label" style="font-weight:bold;">Course</label>
    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" class="form-control"></asp:TextBox>
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label" style="font-weight:bold;">Division</label>
    <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
  </div>
  <div class="col-md-6">
    <label for="inputAddress" class="form-label" style="font-weight:bold;">Trimester</label>
    <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
      <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Trimester cannot be above 9  or 0." MaximumValue="9" MinimumValue="1" Type="Integer" ForeColor="#CC0000" ControlToValidate="TextBox3"></asp:RangeValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Trimester is required." ForeColor="#CC0000" ControlToValidate="TextBox3"/>
  </div>
  <div class="col-md-6">
    <label for="inputAddress2" class="form-label" style="font-weight:bold;">Date</label>
    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" ReadOnly="True" class="form-control"></asp:TextBox>
  </div>
              
  <div class="col-md-6">
    <label for="inputCity" class="form-label" style="font-weight:bold;">Duration of Leave - From</label>
    <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
  </div>
   <div class="col-md-6">
      <label for="inputCity" class="form-label" style="font-weight:bold;">Duration of Leave - To</label>
    <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
  </div>

   <div class="col-md-6">
      <label for="inputCity" class="form-label" style="font-weight:bold;">Total No. of Days of Leave</label>
    <asp:TextBox ID="TextBox7" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
       <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Maximum no. of leave is 5." MaximumValue="5" MinimumValue="1" Type="Integer" ForeColor="#CC0000" ControlToValidate="TextBox7"></asp:RangeValidator><br/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter no. of days for leave." ForeColor="#CC0000" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
  </div>
  <div class="col-md-4">
    <label for="inputState" class="form-label" style="font-weight:bold;">Leave Type</label>
    <asp:DropDownList ID="DropDownList1" runat="server" class="form-select">
                            <asp:ListItem Selected="True">Casual Leave</asp:ListItem>
                            <asp:ListItem>Medical Leave</asp:ListItem>
                            <asp:ListItem>Family Related</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                         </asp:DropDownList>
  </div>
  <div class="col-12">
    <label for="inputZip" class="form-label" style="font-weight:bold;">Reason For Leave</label>
    <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>
  </div>

  <div class="col-12">
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" class="btn btn-primary" />
  </div>
</form>

      </div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    -->
  </body>
</html>




