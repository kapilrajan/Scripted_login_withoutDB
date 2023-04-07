<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HOME</title>

    <style type="text/css">
      .container {

          
          left:20px;
          right:20px;
          position:relative;

      }

      #Footer
{
    position: absolute;
    bottom: 0px;
    height: 3px;
    color: #eee;
}
      

        body {
  background-color:#E4E4E4;
 
}

  </style>
     <script runat="server">
        void Page_Load(object sender, EventArgs e)
        {
            Welcome.Text = "Hello, " + Context.User.Identity.Name;

            if (!IsPostBack)
            {

                this.Bindtime();

            }

        }


        private void Bindtime()
        {
            lbltime.Text = DateTime.Now.ToString("dd-MM-yyyy");

        }


        void Signout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("login.aspx");
        }


         
      

</script> 

</head>
<body>
   <form id="form1" runat="server">
    <div>
       
      <asp:Label ID="Welcome" runat="server" />
    <asp:Button ID="Submit1" OnClick="Signout_Click" CausesValidation="false"
       Text="Sign Out" runat="server" BackColor="#ff6347" ForeColor="White" />
          &nbsp;
         <asp:Label ID="lbltime" runat="server" ForeColor="Black"         ></asp:Label>
     &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;
        
        <hr />


        <br />
        <div style="text-align:center; width:100%; height:auto; background-color:#ff9900">
         <asp:Label runat="server" Text="WELCOME" Font-Bold="True" ForeColor="White" Font-Size="X-Large"></asp:Label>
        </div>
        <br /> <br />
             <div>
            
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="17px"
            ImageUrl="image/Calendar.png" onclick="ImageButton1_Click" Width="21px" />
<asp:Calendar ID="Calendar1" runat="server"  ondayrender="Calendar1_DayRender"
            onselectionchanged="Calendar1_SelectionChanged" Visible="False">
        </asp:Calendar>
          
        </div>
         <br />
          <br />
        <br />
       
         <br />
          <br />
        <br />
       
         <br />
          <br />
        <br />
       
         <br />
         <br />
        <br />
       

        <div id="Footer"> 
          <p>
       <a href="https://www.linkedin.com/in/kapil-rajan-30b312a2/">Designed & Developed By: Kapil </a>
        </p></div>

    </div>
    </form>
</body>
</html>