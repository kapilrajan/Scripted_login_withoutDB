<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<%@ Import Namespace="System.Web.Security" %>

<script runat="server">

    void Logon_Click(object sender, EventArgs e)
    {
        if ((UserName.Text == "kapil") &&
                (UserPass.Text == "Password@123"))
        {
            FormsAuthentication.RedirectFromLoginPage
               (UserName.Text, Persist.Checked);

        }
        else
        {
            Msg.Text = "Invalid Password or UserName. Please try again.";
        }
    }


    
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>

    
      <link type="text/css" href="css/style.css" rel="stylesheet" />
    <style type="text/css">

        .auto-style1 {
            position: relative;
            left: 164px;
            top: 0px;
            width: 25%;
        }
        .auto-style2 {
            width: 156px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 98px;
        }
          #Footer
{
    position: absolute;
    bottom: 0px;
    height: 3px;
    color: #eee;
}

        </style>

</head>


<body oncontextmenu="return false;">
    <form id="form1" runat="server">
   <div style="text-align: center; color: #808000; font-size: large; font-weight: bolder;">
           
            
       
            <br />
              <span style="display:inline-block;color:Olive;border-style:None;height:21px;width:140px;">LOGIN</span>
          <br />
        </div>

   <br />
    <table>
      <tr>
        <td class="auto-style2" style="font-size: large; color: #808000">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UserName:</td>
        <td class="auto-style5">
          <asp:TextBox ID="UserName" runat="server" CssClass="auto-style4" Width="133px" /></td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            ControlToValidate="UserName"
            Display="Dynamic" 
            ErrorMessage="Cannot be empty." 
            runat="server" ForeColor="#006699" />
        </td>
      </tr>
      <tr>
        <td class="auto-style2" style="font-size: large; color: #808000">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:</td>
        <td class="auto-style5">
          <asp:TextBox ID="UserPass" TextMode="Password" 
             runat="server" CssClass="auto-style4" Width="133px" />
        </td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            ControlToValidate="UserPass"
            ErrorMessage="Cannot be empty." 
            runat="server" ForeColor="#006699" />
        </td>
      </tr>
      <tr>
        <td class="auto-style2">
          </td>
        <td class="auto-style5">
          <asp:CheckBox ID="Persist" runat="server" Width="39px" BorderStyle="None" Visible="False" /></td>
      </tr>
    </table>
    <asp:Button ID="Submit1" OnClick="Logon_Click" Text="Log In" 
       runat="server" CssClass="auto-style1" BackColor="#FF3838" ForeColor="White" />
    <p>
      <asp:Label ID="Msg" ForeColor="red" runat="server" />
    </p>

 <div id="Footer"> 
          <p>
       <a href="https://www.linkedin.com/in/kapil-rajan-30b312a2/">Designed & Developed By: Kapil </a>
        </p></div>

    </form>
</body>
</html>
