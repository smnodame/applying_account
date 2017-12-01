<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisteredData.aspx.cs" Inherits="WebApplication3.RegisteredData" %>


<!DOCTYPE html>

<html lang="en">
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="fonts/stylesheet.css" media="all" />
    <link rel="stylesheet" href="css/bootstarp.min.css">
    <link rel="stylesheet" href="date-picker/datepicker.css">
    <script src="js/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <!-- Modal -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="date-picker/datepicker.js"></script>


    <style type="text/css">
        h1 {
            font-family: db_helvethaica_x55_regular, cordia_newregular;
            font-size: 22pt;
            font-style: normal;
            font-weight: bold;
            color: black;
            text-align: center;
            text-decoration: underline
        }
         .account_type {
                display: none !important;
            }

            span {
                color: black !important;
            }

            .warning_account {
                 display: none !important;
            }

            .download_file {
                display: none !important;
            }
            .button_action {
                 display: none !important;
            }

            input[type="text"], input[type="number"], input[type="Numbers"], input[type="E-mail"], 
            select.form-control {
              background: transparent;
              border: none;
              border-bottom: 1px solid #000000;
              -webkit-box-shadow: none;
              box-shadow: none;
              border-radius: 0;
              height: 28px
            }

          

            input[type="text"]:focus, input[type="number"]:focus, input[type="Numbers"], input[type="E-mail"], 
            select.form-control:focus {
              -webkit-box-shadow: none;
              box-shadow: none;
            }
        

        table, th, td {
            font-family: cordia new;
            color: black;
            font-size: 11pt;
            font-style: normal;
            text-align:;
            background-color: #FFFFFF;
            border-collapse: collapse;
            border: 3px solid white
        }

            table.inner {
                border: 0px
            }

        legend {
            padding: 0.2em 0.5em;
            border: 1px white;
            color: white;
            font-size: 16px;
            text-align: left;
            background-color: #00664f;
        }
    </style>
    <style>
        /* This is a comment it is not read by any browser
          This is where the css styling goes */

        body {
            height: 750px;
            margin: 4px;
            padding: 4px;
        }

        #container {
            width: 1000px;
            margin: 0 auto;
            height: 100%;
        }
    </style>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
        }

            .tg td {
                font-family: cordia_newregular;
                font-size: 14pt;
                padding: 13px 20px;
                border-style: solid;
                border-width: 1px;
                overflow: hidden;
                word-break: normal;
            }

            .tg th {
                font-family: cordia_newregular;
                font-size: 14pt;
                font-weight: normal;
                border-style: solid;
                border-width: 1px;
                overflow: hidden;
                word-break: normal;
            }

            .tg .tg-y2tu {
                font-weight: bold;
                text-decoration: underline;
                vertical-align: top
            }

            .tg .tg-buov {
                font-weight: bold;
                background-color: #00664f;
                color: #ffffff;
                text-align: left;
                vertical-align: top;
                padding: 15px;
            }

            .tg .tg-baqh {
                text-align: left;
                vertical-align: top
            }

            .tg .tg-h31u {
                font-family: cordia_newregular !important;
                ;
                vertical-align: top
            }

            .tg .tg-d55q {
                font-weight: bold;
                font-size: 14pt;
                vertical-align: top
            }

            .tg .tg-c240 {
                background-color: #00664f;
                color: #ffffff;
                text-align: center;
                vertical-align: top
            }

            .tg .tg-114v {
                font-weight: bold;
                font-size: 14pt;
                vertical-align: top
            }

            .tg .tg-yw4l {
                vertical-align: top
            }

            .tg .tg-9hbo {
                font-weight: bold;
                vertical-align: top
            }

            .tg .tg-fefd {
                color: #000000;
                vertical-align: top
            }

            .tg .tg-3we0 {
                background-color: #ffffff;
                vertical-align: top
            }



        .auto-style2 {
            font-size: x-large;
            color:white;
        }

        #Birthday_Day {
            height: 22px;
            width: 91px;
        }

        #Birthday_Month {
            width: 136px;
        }

        #Birthday_Year {
            width: 110px;
        }



        .auto-style3 {
            font-weight: normal;
        }



        .auto-style4 {
            width: 668px;
        }

        .auto-style5 {
            width: 71px;
        }



        .auto-style6 {
            width: 40px;
        }

        .auto-style7 {
            font-size: medium;
        }

        input[type=number]::-webkit-inner-spin-button, 
        input[type=number]::-webkit-outer-spin-button { 
          -webkit-appearance: none; 
          margin: 0; 
        }
    </style>
    <script type="text/javascript">


        function stopRKey(evt) {
            var evt = (evt) ? evt : ((event) ? event : null);
            var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
            if ((evt.keyCode == 13) && (node.type == "text")) { return false; }
        }

        document.onkeypress = stopRKey;

    </script>
    <script type="text/javascript">

        function Numbers(e) {
            var keynum;
            var keychar;
            var numcheck;
            if (window.event) {// IE
                keynum = e.keyCode;
            }
            else if (e.which) {// Netscape/Firefox/Opera
                keynum = e.which;
            }
            if (keynum == 13 || keynum == 8 || typeof (keynum) == "undefined") {
                return true;
            }
            keychar = String.fromCharCode(keynum);
            numcheck = /^[0-9]$/;
            return numcheck.test(keychar);
        }

      
    </script>

    
    

 
       
     <link rel="stylesheet" href="print_src/css/print-preview.css" type="text/css" media="screen">
    <script type="text/javascript">
        $(function () {
            $('#staticParent').on('keydown', '#number', function (e) { -1 !== $.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) || /65|67|86|88/.test(e.keyCode) && (!0 === e.ctrlKey || !0 === e.metaKey) || 35 <= e.keyCode && 40 >= e.keyCode || (e.shiftKey || 48 > e.keyCode || 57 < e.keyCode) && (96 > e.keyCode || 105 < e.keyCode) && e.preventDefault() });
        })
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js">

    </script>
    <script>

        // This code is collected but useful, click below to jsfiddle link.

    </script>
    <TITLE>ใบสมัครเปิดบัญชี</TITLE>
</head>


<body style="margin-left: 5%; margin-right: 5%">
   

    <div id="content" class="container-fluid">
        <div id="staticParent">
            <div id="printableArea">
               <form runat="server">
                    <FONT FACE="cordia_newregular" size="3px">

                        <img src="images/CGSlogov3.jpg" style="width: 100%; height: 100%; margin-left: 0px"><div style="height:40px;"></div>
                        <div class="assessment-container container">
                            <div class="row">
                                <div class="col-md-12 form-box" style="padding-left: 0px">

                                    <center></center>
                                    <div id="header_detail" class="form-top">
                                        <div class="form-top-left">

                                        </div>
                                        
                                        <p style="text-align: right;">วันที่ <input type="text" style="display: inline; width: 100px; margin-left: 20px" class="form-control" runat="server" id="drafDate" data-toggle="datepicker" name="draft_date"></p>
                                        <p align="right">ชื่อผู้เเนะนำการลงทุน <input type="text" style="display: inline; width: 150px; margin-left: 20px; margin-top: 20px" runat="server" id="suggester_name" class="form-control" name="suggester_name"> (สำหรับเจ้าหน้าที่)</p>
                                        <p align="right">ชื่อผู้แนะนำการลงทุน_________________________(สำหรับเจ้าหน้าที่)</p>
                                        <p align="right">รหัสผู้แนะนำการลงทุน_________________________(สำหรับเจ้าหน้าที่)</p>
                                        <p align="right">รหัสลูกค้า_________________________(สำหรับเจ้าหน้าที่)</p>
                                       <p  align="center">
                                            <asp:RadioButton ID="RadioButton9" runat="server" Text="บุคคลธรรมดา"  TextAlign="Right"></asp:RadioButton>
                                            <asp:RadioButton ID="RadioButton10" runat="server" Text="นิติบุคคล" TextAlign="Right"></asp:RadioButton>
                                        </p><br>
                                           
                                           
                                      
                                        
                                    </div><table class="tg" border="1" width="100%">
                                        <tr>

                                            <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" font-size="5px" class="auto-style2">ประเภทบัญชี</FONT></th>


                                        <tr>
                                            <td class="tg-h31u" colspan="3">
                                                <div style="margin-bottom: 12px">
                                                    <asp:CheckBox ID="cash_checkbox" runat="server"></asp:CheckBox>
                                                    <span style="margin-left: 6px"> บัญชีเงินสด (Cash)</span>
                                                    <span style="margin-left: 12px">วงเงิน</span>
                                                    <INPUT style="display: inline; width: 150px; margin-left: 20px" id="cash"  runat="server"  class="form-control"  TYPE="number"  NAME="t_4" Money="number" SIZE=17 MAXLENGHT=17 />
                                                </div>
                                                
                                                <div style="margin-bottom: 12px">
                                                      <asp:CheckBox ID="cash_balance_checkbox" runat="server"></asp:CheckBox>
                                                    <span style="margin-left: 6px">บัญชีฝาก (Cash Balance)</span>
                                                    <span style="margin-left: 12px">วงเงิน</span>
                                                    <INPUT style="display: inline; width: 150px; margin-left: 20px" class="form-control" runat="server" id="cash_balance" TYPE="number" NAME="t_5" Money="number" SIZE=17 MAXLENGHT=17 />
                                                </div>
                                               <%-- <INPUT id="cash_balance_checkbox" TYPE="Checkbox" name="account1" Value="1" uncheck>บัญชีฝาก (Cash Balance)
                                                วงเงิน <INPUT TYPE="number" style="display: inline; width: 150px; margin-left: 20px" class="form-control" id="cash_balance" NAME="t_5" Money="number" SIZE=17 MAXLENGHT=17><br>--%>
                                                   
                                                <div style="margin-bottom: 12px">
                                                    <asp:CheckBox ID="credit_balance_checkbox" runat="server"></asp:CheckBox>
                                                    <span style="margin-left: 6px">บัญชีมาร์จิน (Credit Balance)</span>
                                                    <span style="margin-left: 12px">วงเงิน</span>
                                                    <INPUT style="display: inline; width: 150px; margin-left: 20px" class="form-control" runat="server" id="credit_balance" TYPE="number" NAME="t_6" Money="number" SIZE=17 MAXLENGHT=17 />
                                                </div>
                                                <%--<INPUT id="credit_balance_checkbox" TYPE="Checkbox" name="account2" Value="1" uncheck>บัญชีมาร์จิน (Credit Balance)
                                                วงเงิน <INPUT TYPE="number" style="display: inline; width: 150px; margin-left: 20px" class="form-control" id="credit_balance" NAME="t_6" Money="number" SIZE=17 MAXLENGHT=17><br>--%>
                                                   
                                                <div style="margin-bottom: 12px">
                                                    <asp:CheckBox ID="derivatives_checkbox" runat="server"></asp:CheckBox>   
                                                    <span style="margin-left: 6px">บัญชีซื้อขายสัญญาซื้อขายล่วงหน้า (Derivatives)</span>
                                                    <span style="margin-left: 12px">วงเงิน</span>
                                                    <INPUT style="display: inline; width: 150px; margin-left: 20px" class="form-control" runat="server" id="derivatives" TYPE="number" NAME="t_7" SIZE=17 MAXLENGHT=17 />
                                                </div>
                                                <%--<INPUT TYPE="Checkbox" id="derivatives_checkbox" name="account3" Value="1" uncheck>บัญชีซื้อขายสัญญาซื้อขายล่วงหน้า (Derivatives)
                                                วงเงิน <INPUT TYPE="number" style="display: inline; width: 150px; margin-left: 20px" class="form-control" id="derivatives" NAME="t_7" Money="number" SIZE=17 MAXLENGHT=17><br>--%>
                                                   
                                                <div style="margin-bottom: 12px">
                                                   <asp:CheckBox ID="sbl_checkbox" runat="server"></asp:CheckBox>    
                                                    <span style="margin-left: 6px">บัญชียืมและให้ยืมหลักทรัพย์ (SBL)</span>
                                                    <span style="margin-left: 12px">วงเงิน</span>
                                                    <INPUT style="display: inline; width: 150px; margin-left: 20px" class="form-control" runat="server" id="sbl" NAME="t_8" TYPE="number"  SIZE=17 MAXLENGHT=17 />
                                                </div>
                                               <%-- <INPUT TYPE="Checkbox" id="sbl_checkbox" name="account4" Value="1" uncheck>บัญชียืมและให้ยืมหลักทรัพย์ (SBL)
                                                วงเงิน <INPUT TYPE="number" style="display: inline; width: 150px; margin-left: 20px" class="form-control" id="sbl" NAME="t_8" Money="number" SIZE=17 MAXLENGHT=17><br>--%>

                                                <div style="margin-bottom: 12px">
                                                     <asp:CheckBox ID="account7" runat="server"></asp:CheckBox>
                                                    <span style="margin-left: 6px">ยินยอมให้บริษัท ทำธุรกรรมการยืมเเละการยืมหลักทรัพย์</span>
                                                </div>

                                                <div style="margin-bottom: 12px">
                                                     <asp:CheckBox ID="bond_checkbox" runat="server"></asp:CheckBox> 
                                                    <span style="margin-left: 6px">ตราสารหนี้</span>
                                                    <span style="margin-left: 12px">วงเงิน</span>
                                                    <INPUT style="display: inline; width: 150px; margin-left: 20px" class="form-control" runat="server" id="bond" NAME="t_9" TYPE="number"  SIZE=17 MAXLENGHT=17 />
                                                </div>
                                                <%--<INPUT TYPE="Checkbox" id="bond_checkbox" name="account5" Value="1" uncheck>ตราสารหนี้
                                                วงเงิน <INPUT TYPE="number" style="display: inline; width: 150px; margin-left: 20px" class="form-control" id="bond" NAME="t_9" Money="number" SIZE=17 MAXLENGHT=17><br>--%>

                                                <div style="margin-bottom: 12px">
                                                     <asp:CheckBox ID="account6" runat="server"></asp:CheckBox> 
                                                    <span style="margin-left: 6px">บัญชีซื้อขายกองทุน</span>
                                                </div>
                                                <%--<INPUT TYPE="Checkbox" name="account6" Value="1" uncheck>บัญชีซื้อขายกองทุน<br>--%>

                                                 <div style="margin-bottom: 12px">
                                                     <asp:CheckBox ID="account07" runat="server"></asp:CheckBox> 
                                                    <span style="margin-left: 6px">อื่นๆ</span>
                                                    <INPUT style="display: inline; width: 150px; margin-left: 20px" runat="server" id="anoter" class="form-control" NAME="t_10" TYPE="text" Money="number" SIZE=17 MAXLENGHT=17 />
                                                </div>
                                                <%--<INPUT TYPE="Checkbox" name="account7" Value="1" uncheck>อื่นๆ
                                                <INPUT TYPE="TEXT" TYPE="number" style="display: inline; width: 150px; margin-left: 20px" class="form-control" NAME="t_10" Money="number" SIZE=17 MAXLENGHT=17><br>
                                                <br>--%>
                                                วงเงินรวม <INPUT TYPE="number"  TYPE="number" style="display: inline; width: 150px; margin-left: 20px" class="form-control" id="total_money" NAME="t_11" totalMoney="number" SIZE=17 MAXLENGHT=17>
                                                <script>
                                                    $("#cash, #cash_balance, #derivatives, #credit_balance, #sbl, #bond")
                                                        .keyup(function () {
                                                            var total = 0
                                                            if ($('#cash_checkbox').is(':checked')) {
                                                                total = parseInt($('#cash').val() || 0) + total
                                                            }
                                                            if ($('#cash_balance_checkbox').is(':checked')) {
                                                                total = parseInt($('#cash_balance').val() || 0) + total
                                                            }
                                                            if ($('#credit_balance_checkbox').is(':checked')) {
                                                                total = parseInt($('#credit_balance').val() || 0) + total
                                                            }
                                                            if ($('#derivatives_checkbox').is(':checked')) {
                                                                total = parseInt($('#derivatives').val() || 0) + total
                                                            }
                                                            if ($('#sbl_checkbox').is(':checked')) {
                                                                total = parseInt($('#sbl').val() || 0) + total
                                                            }
                                                            if ($('#bond_checkbox').is(':checked')) {
                                                                total = parseInt($('#bond').val() || 0) + total
                                                            }
                                                            $("#total_money").val(total)
                                                        })
                                                        .keyup();

                                                    $("#cash_checkbox, #cash_balance_checkbox, #credit_balance_checkbox, #derivatives_checkbox, #sbl_checkbox, #bond_checkbox").click(function () {
                                                        var total = 0
                                                        if ($('#cash_checkbox').is(':checked')) {
                                                            total = parseInt($('#cash').val() || 0) + total
                                                        }
                                                        if ($('#cash_balance_checkbox').is(':checked')) {
                                                            total = parseInt($('#cash_balance').val() || 0) + total
                                                        }
                                                        if ($('#credit_balance_checkbox').is(':checked')) {
                                                            total = parseInt($('#credit_balance').val() || 0) + total
                                                        }
                                                        if ($('#derivatives_checkbox').is(':checked')) {
                                                            total = parseInt($('#derivatives').val() || 0) + total
                                                        }
                                                        if ($('#sbl_checkbox').is(':checked')) {
                                                            total = parseInt($('#sbl').val() || 0) + total
                                                        }
                                                        if ($('#bond_checkbox').is(':checked')) {
                                                            total = parseInt($('#bond').val() || 0) + total
                                                        }
                                                        $("#total_money").val(total)
                                                    }); 
                                                </script>

                                            </td>
                                        </tr>
                                    </table>

                                    <br>
                                    <!----- ข้อมูลนักลงทุน -------------------------------------------------------->


                                    <table class="tg" border="1" runat="server" width="100%" id="u1_2">
                                        <tr>

                                            <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" size="5px" class="auto-style2">ประวัติลูกค้า / กรณีบุคคลธรรมดา</FONT></th>

                                        </tr>
                                        <tr>
                                            <td class="tg-h31u" colspan="3">
                                                <div style="margin-bottom: 12px">
                                                  
                                                    
                                                  
                                                    
                                                   
                                                   
                                              
                                                  <asp:RadioButtonList ID="sex_th_main" runat="server"  RepeatDirection="Horizontal" CellSpacing="-1" RepeatLayout="Flow" >
                                                                                             <asp:ListItem Value="นาย">นาย</asp:ListItem>
                                                                                             <asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
                                                                                             <asp:ListItem Value="นาง">นาง</asp:ListItem>
                                                                                            
                                                  </asp:RadioButtonList>
                                                   
                                                    <span style="margin-left: 12px; color: red">ชื่อ</span>
                                                    <font color="red">*</font>
                                                    <INPUT runat="server" id="fname_th_main" type="text" style="display: inline; width: 150px; margin-left: 20px" class="form-control" NAME="t_12" SIZE=17 MAXLENGHT=17 />
                                                    <span style="margin-left: 12px">นามสกุล</span>
                                                    <INPUT runat="server" id="lname_th_main" type="text" style="display: inline; width: 150px; margin-left: 20px" class="form-control" NAME="t_13" SIZE=17 MAXLENGHT=17 />
                                                
                                                </div>
                                                <%--นาย
                                                <INPUT class="sex_th" TYPE="radio" name="sex" Value="2" uncheck>นางสาว
                                                <INPUT class="sex_th" TYPE="radio" name="sex" Value="3" uncheck>นาง
                                                ชื่อ<font color="red">*</font><INPUT TYPE="TEXT" NAME="t_12" SIZE=17 MAXLENGHT=17>
                                                นามสกุล<INPUT TYPE="TEXT" NAME="t_13" SIZE=15 MAXLENGHT=15><br>--%>

                                                 <div style="margin-bottom: 5px">
                                                    
                                                     <asp:RadioButtonList ID="sex_en_main" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1" >
                                                                                             <asp:ListItem Value="Mr.">Mr</asp:ListItem>
                                                                                             <asp:ListItem Value="Mrs.">Mrs</asp:ListItem>
                                                                                             <asp:ListItem Value="Ms.">Ms</asp:ListItem>
                                                                                            
                                                     </asp:RadioButtonList>
                                                 
                                                     
                                                    <span style="margin-left: 12px; color: red">First Name</span>
                                                    <font color="red">*</font>
                                                    <INPUT runat="server" id="fname_en_main" type="text" style="display: inline; width: 150px; margin-left: 20px" class="form-control" NAME="t_14" SIZE=17 MAXLENGHT=17 />
                                                    <span style="margin-left: 12px">Last Name</span>
                                                    <INPUT  runat="server" id="lname_en_main" type="text" style="display: inline; width: 150px; margin-left: 20px" class="form-control" NAME="t_15" SIZE=17 MAXLENGHT=17 />
                                                
                                                           </div>
                                            

                                                <!----- วัน เดือน ปีเกิด -------------------------------------------------------->
                                                <div style="margin-bottom: 12px">
                                                    <span style="margin-left: 12px">วัน/เดือน/ปีเกิด</span>
                                                    <INPUT  runat="server" id="birth_main" style="display: inline; width: 150px; margin-left: 20px" class="form-control" type="text"   />
                                                </div>

                                                 <div style="margin-bottom: 12px">
                                                    <span style="margin-left: 12px">รหัสประจำตัวประชาชน :</span>
                                                    <INPUT  runat="server" id="idCard_main" style="display: inline; width: 250px; margin-left: 20px" class="form-control" TYPE="TEXT"/>
                                                    </div>
                                                
                                                <%--<input  /> -
                                                <input TYPE="TEXT" NAME="t_17" id="txtID2" style="width:35px" maxlength=4 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                <input TYPE="TEXT" NAME="t_18" id="txtID3" style="width:40px" maxlength=5 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                <input TYPE="TEXT" NAME="t_19" id="txtID4" style="width:20px" maxlength=2 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                <input TYPE="TEXT" NAME="t_20" id="txtID5" style="width:12px" maxlength=1 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" />
                                                <br>--%>

                                                 <div style="margin-bottom: 12px">
                                                    <span style="margin-left: 12px">บัตรข้าราชการ</span>
                                                    <INPUT  runat="server" id="IDGov_main" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_21"  maxlength=17  />
                                                    <span style="margin-left: 8px">สัญชาติ</span>
                                                     <INPUT  runat="server" id="nation_main" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_22" maxlength=17 />
                                                     <span style="margin-left: 8px">หนังสือเดินทาง</span>
                                                     <INPUT  runat="server" id="passport_main" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_23"  maxlength=17  />
                                                 </div>
                                               <%-- บัตรข้าราชการ 
                                                <INPUT TYPE="TEXT" NAME="t_21" Money="number" SIZE=17 MAXLENGHT=17> สัญชาติ 
                                                <INPUT TYPE="TEXT" NAME="t_22" Money="number" SIZE=17 MAXLENGHT=17>หนังสือเดินทาง 
                                                <INPUT TYPE="TEXT" NAME="t_23" Money="number" SIZE=17 MAXLENGHT=17 style="width: 312px">
                                                <br>--%>
                                                
                                                <div style="margin-bottom: 12px">
                                                    <span style="margin-left: 12px; color: red">ออกเมื่อ</span>
                                                    <INPUT  runat="server" id="create_main"  style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_24"  maxlength=17  />
                                                    <span style="margin-left: 8px; color: red">วันหมดอายุ</span>
                                                     <INPUT  runat="server" id="expire_main"  style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_25" maxlength=17 />
                                                 </div>
                                               <%-- <font color="red"> ออกเมื่อ </font>
                                                <INPUT data-toggle="datepicker" TYPE="TEXT" NAME="t_24" Money="number" SIZE=17 MAXLENGHT=17>
                                                
                                                <font color="red">วันหมดอายุ </font>
                                                <INPUT data-toggle="datepicker" TYPE="TEXT" NAME="t_25" Money="number" SIZE=17 MAXLENGHT=17>
                                                <br>--%>

                                                <div style="margin-bottom: 24px">
                                                    <span style="margin-left: 12px; color: red">โทรศัพท์มือถือ</span><font color="red">*</font>
                                                    <INPUT  runat="server" id="tel_main" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="Numbers" NAME="t_26" SIZE=40 MAXLENGHT=40  />
                                                </div>
                                                <%--โทรศัพท์มือถือ<font color="red">*</font><INPUT TYPE="Numbers" NAME="t_26" SIZE=40 MAXLENGHT=40><br>--%>
                                                
                                                <div style="margin-bottom: 12px">
                                                    <span style="margin-left: 12px">ชื่อสถานที่ทำงาน</span>
                                                    <INPUT  runat="server" id="workname_main" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_27" SIZE=40 MAXLENGHT=40  />
                                                </div>
                                                <%--ชื่อสถานที่ทำงาน <INPUT TYPE="TEXT" NAME="t_27" SIZE=40 MAXLENGHT=40><br>--%>

                                                
                                                <span style="margin-left: 12px">ที่อยู่ที่ทำงาน</span>
                                                <div style="margin-bottom: 12px">
                                                    <span style="margin-left: 12px;">เลขที่</span>
                                                    <INPUT  runat="server" id="no_work_main" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_28"  maxlength=17  />
                                                    <span style="margin-left: 8px;">ถนน</span>
                                                    <INPUT  runat="server" id="street_work_main" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_28_1" maxlength=17 />
                                                    <span style="margin-left: 8px;">อาคาร</span>
                                                    <INPUT  runat="server" id="build_work_main" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_28_2" maxlength=17 />
                                                    <span style="margin-left: 8px;">ซอย</span>
                                                    <INPUT  runat="server" id="alley_work_main" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_28_7" maxlength=17 />
                                                    <span style="margin-left: 8px;">แขวง/ตำบล</span>
                                                  <INPUT  runat="server" id="location_work_main" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                    
                                                </div>
                                                 <div style="margin-bottom: 12px">
                                                    <span style="margin-left: 8px;">เขต/อำเภอ</span>
                                                    <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_28_4" maxlength=17 />--%>
                                                   <INPUT  runat="server" id="distric_work_main" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                      <span style="margin-left: 8px;">จังหวัด</span>
                                                    <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_28_5" maxlength=17 />--%>
                                                   <INPUT  runat="server" id="province_work_main" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                    <span style="margin-left: 8px;">รหัสไปรษณีย์</span>
                                                    <INPUT  runat="server" id="zip_work_main" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_28_6" maxlength=17 />
                                                </div>

                                                <%--เลขที่<INPUT TYPE="TEXT" NAME="t_28" SIZE=10 MAXLENGHT=10>
                                                ถนน<INPUT TYPE="TEXT" NAME="t_28_1" SIZE=20 MAXLENGHT=20>
                                                อาคาร<INPUT TYPE="TEXT" NAME="t_28_2" SIZE=20 MAXLENGHT=20>
                                                ซอย<INPUT TYPE="TEXT" NAME="t_28_7" SIZE=20 MAXLENGHT=20 style="width: 123px">
                                                แขวง/ตำบล<INPUT TYPE="TEXT" NAME="t_28_3" SIZE=20 MAXLENGHT=20><br>
                                                เขต/อำเภอ<INPUT TYPE="TEXT" NAME="t_28_4" SIZE=20 MAXLENGHT=20>
                                                จังหวัด<INPUT TYPE="TEXT" NAME="t_28_5" SIZE=20 MAXLENGHT=20>
                                                รหัสไปรษณีย์<INPUT TYPE="TEXT" NAME="t_28_6" SIZE=5 MAXLENGHT=5>--%>

                                                <span style="margin-left: 12px; margin-top: 12px">ที่อยู่ปัจจุบัน</span>
                                                <div style="margin-bottom: 12px">
                                                    <span style="margin-left: 12px;">เลขที่</span>
                                                    <INPUT  runat="server" id="no_main" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_29"  maxlength=17  />
                                                    <span style="margin-left: 8px;">ถนน</span>
                                                    <INPUT runat="server" id="street_main" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_30" maxlength=17 />
                                                    <span style="margin-left: 8px;">อาคาร</span>
                                                    <INPUT runat="server" id="build_main" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_31" maxlength=17 />
                                                    <span style="margin-left: 8px;">ซอย</span>
                                                    <INPUT runat="server" id="alley_main" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_31_1" maxlength=17 />
                                                    <span style="margin-left: 8px;">แขวง/ตำบล</span>
                                                    <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_32" maxlength=17 />--%>
                                                  <INPUT runat="server" id="locatin_main" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                </div>
                                                <div style="margin-bottom: 12px">
                                                    <span style="margin-left: 8px;">เขต/อำเภอ</span>
                                                    <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_32_1" maxlength=17 />--%>
                                                   <INPUT runat="server" id="distric_main" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                     <span style="margin-left: 8px;">จังหวัด</span>
                                                    <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_32_2" maxlength=17 />--%>
                                                    <INPUT runat="server" id="province_main" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                    <span style="margin-left: 8px;">รหัสไปรษณีย์</span>
                                                    <INPUT runat="server" id="zip_main" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_32_3" maxlength=17 />
                                                </div>
                                                <div style="margin-bottom: 12px">
                                                    <span style="margin-left: 8px;">โทรศัพท์</span>
                                                    <INPUT runat="server" id="tel_main2" style="display: inline; width: 150px; margin-left: 8px" class="form-control"   NAME="t_33" maxlength=17 />
                                                     <span style="margin-left: 8px;">โทรสาร</span>
                                                    <INPUT runat="server" id="fax_main" style="display: inline; width: 150px; margin-left: 8px" class="form-control"   NAME="t_34" maxlength=17 />
                                                 </div>
                                            
                                                <span style="margin-left: 12px; color: red">*อาชีพ</span>
                                                  <div style="margin-bottom: 12px">
                                                                        <asp:RadioButton ID="RadioButton5" runat="server"></asp:RadioButton>
                                                                        <span style="margin-left: 12px;">เจ้าของกิจการ/ค้าขาย Code 910</span>
                                                                        <span style="margin-left: 12px;">กรณีเจ้าของกิจการ (ระบุ) ยอดขายต่อปี</span>
                                                                        <INPUT runat="server" id="des910" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="Numbers" TEXT="number"  NAME="t_127" maxlength=17 />
                                                                    </div>
                                                                    <div style="margin-bottom: 12px">
                                                                        <asp:RadioButton ID="RadioButton6" runat="server"></asp:RadioButton>
                                                                        <span style="margin-left: 12px;">ลูกจ้าง/พนักงานเอกชน Code 920</span>
                                                                    </div>
                                                                    <div style="margin-bottom: 12px">
                                                                        <asp:RadioButton ID="RadioButton7" runat="server"></asp:RadioButton>
                                                                        <span style="margin-left: 12px;">ข้าราชการ/พนักงานรัฐวิสาหกิจ Code 930</span>
                                                                    </div>
                                                                     <div style="margin-bottom: 12px">
                                                                        <asp:RadioButton ID="RadioButton8" runat="server"></asp:RadioButton>
                                                                        <span style="margin-left: 12px;">อื่นๆ (ระบุ) Code 990</span>
                                                                        <INPUT runat="server" id="des990" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_127" JobOther="TEXT" SIZE=17 MAXLENGHT=17 />
                                                                    </div>
                                                
                                                <%--<font color="red">*</font>อาชีพ<br>
                                                <INPUT TYPE="radio" name="Job" Value="1 ">เจ้าของกิจการ/ค้าขาย Code 910     กรณีเจ้าของกิจการ (ระบุ) ยอดขายต่อปี<INPUT TYPE="TEXT" NAME="t_127" Money="number" SIZE=17 MAXLENGHT=17><br>
                                                <INPUT TYPE="radio" name="Job" Value="2 ">ลูกจ้าง/พนักงานเอกชน Code 920<br>
                                                <INPUT TYPE="radio" name="Job" Value="3 ">ข้าราชการ/พนักงานรัฐวิสาหกิจ Code 930<br>
                                                <INPUT TYPE="radio" name="Job" Value="4 ">อื่นๆ (ระบุ) Code 990                   <INPUT ><br>
                                                <br>--%>

                                                
                                                <div style="margin-bottom: 12px">
                                                    <span style="margin-left: 12px; color: red">*ประเภทธุรกิจ</span>
                                                    <INPUT runat="server" id="typebiss" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_36" SIZE=20 MAXLENGHT=20 />
                                                    <span style="margin-left: 12px">ตำแหน่ง</span>
                                                    <INPUT runat="server" id="positionbiss" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_37" SIZE=20 MAXLENGHT=20 />
                                                    <span style="margin-left: 12px; color: red">* เงินเดือน</span>
                                                    <INPUT runat="server" id="salarybiss" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="number" NAME="t_38" SIZE=20 MAXLENGHT=20 />
                                                    <span style="margin-left: 12px">ประสบการณ์ทำงาน</span>
                                                    <INPUT runat="server" id="experanceworkbiss" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_39" SIZE=20 MAXLENGHT=20 />
                                                </div>
                                                <div style="margin-bottom: 12px">
                                                    <span style="margin-left: 12px">รายได้อื่นๆ</span>
                                                    <INPUT runat="server" id="incomebiss"  style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="number" NAME="t_40" SIZE=20 MAXLENGHT=20 />
                                                    <span style="margin-left: 12px">แหล่งที่มาของรายได้อื่นๆ</span>
                                                    <INPUT runat="server" id="incomebissHow" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="number" NAME="t_41" SIZE=20 MAXLENGHT=20 />
                                                </div>
                                                <%--<font color="red">*</font>ประเภทธุรกิจ<INPUT TYPE="TEXT" NAME="t_36" SIZE=20 MAXLENGHT=20>
                                                ตำแหน่ง<INPUT TYPE="TEXT" NAME="t_37" SIZE=20 MAXLENGHT=20>
                                                <font color="red">*</font>เงินเดือน<INPUT TYPE="number" NAME="t_38" SIZE=10 MAXLENGHT=10><br>
                                                ประสบการณ์ทำงาน<INPUT TYPE="TEXT" NAME="t_39" EXP"TEXT"SIZE=5 MAXLENGHT=5>
                                                รายได้อื่นๆ<INPUT TYPE="number" NAME="t_40" SIZE=10 MAXLENGHT=10>     แหล่งที่มาของรายได้อื่นๆ<INPUT TYPE="TEXT" NAME="t_41" WhereIncome"TEXT"SIZE=5 MAXLENGHT=5><br>--%>
                                                <div style="margin-bottom: 12px" >
                                                    <p style="margin-left: 12px; color: red">*ตำแหน่งทางการเมือง</p>
                                                   
                                                    <asp:RadioButtonList ID="Political" runat="server" RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1" RepeatLayout="Flow">
                                                   
                                                    <asp:ListItem Value="False">ไม่มี</asp:ListItem>
                                                    <asp:ListItem Value="True">มี ระบุ</asp:ListItem>
                                                   
                                                 </asp:RadioButtonList>

                                                      
                                                    <INPUT runat="server" id="positionPolitical" TYPE="TEXT" NAME="t_42"  class="form-control"  SIZE=17 MAXLENGHT=17 style=" width: 150px; display: inline; "><br>
                                                
                                                 </div>


                                                <!/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////>
                                               
                                                <H4><font color="red">*</font><span class="auto-style3" style="color: red">สถานภาพการสมรส</span></H4>
                                                <asp:RadioButtonList ID="RadioButtonList6" runat="server"  RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1">
                                                                                             <asp:ListItem Value="โสด">โสด</asp:ListItem>
                                                                                             <asp:ListItem Value="สมรส">สมรส</asp:ListItem>
                                                                                             <asp:ListItem Value="หม่าย">หม่าย</asp:ListItem>
                                                                                             <asp:ListItem Value="อย่าร้าง">อย่าร้าง</asp:ListItem>
                                                                                            
                                                                                         </asp:RadioButtonList>
                                                 <div>


                                                    <table class="tg" runat="server" id="mate" border="1" width="100%">
                                                        <tr>
                                                            <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" font-size="5px" class="auto-style2" style="margin-top: 15px">ข้อมูลคู่สมรส&nbsp;</span>&nbsp; </FONT></th>

                                                        </tr>
                                                            <tr>
                                                            <%--////////////////////////--%>
                                                            <td class="tg-h31u" colspan="3">
                                                               <%-- <INPUT TYPE="radio" name="sex2" Value="1">นาย
                                                                <INPUT TYPE="radio" name="sex2" Value="2">นางสาว
                                                                <INPUT TYPE="radio" name="sex2" Value="3">นาง
                                                                ชื่อ<font color="red">*</font><INPUT TYPE="TEXT" NAME="t_43" SIZE=17 MAXLENGHT=17>
                                                                นามสกุล<INPUT TYPE="TEXT" NAME="t_44" SIZE=15 MAXLENGHT=15><br>

                                                                <INPUT TYPE="radio" name="sex3" Value="1">Mr.
                                                                <INPUT TYPE="radio" name="sex3" Value="2">Mrs.
                                                                <INPUT TYPE="radio" name="sex3" Value="3">Ms.--%>

                                                                <div style="margin-bottom: 12px">
                                                                   
                                                                     <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatLayout="Flow"  RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1" >
                                                                                             <asp:ListItem Value="นาย">นาย</asp:ListItem>
                                                                                             <asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
                                                                                             <asp:ListItem Value="นาง">นาง</asp:ListItem>
                                                                                            
                                                                                         </asp:RadioButtonList>
                                                                    <span style="margin-left: 12px">ชื่อ</span>
                                                                    <font color="red">*</font>
                                                                    <INPUT  runat="server" id="mFnameTH" style="display: inline; width: 150px; margin-left: 20px" class="form-control" NAME="t_43" SIZE=17 MAXLENGHT=17 />
                                                                    <span style="margin-left: 12px">นามสกุล</span>
                                                                    <INPUT  runat="server" id="mLnameTH" style="display: inline; width: 150px; margin-left: 20px" class="form-control" NAME="t_44" SIZE=17 MAXLENGHT=17 />
                                                                </div>

                                                                 <div style="margin-bottom: 12px">
                                                                     <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1">
                                                                                             <asp:ListItem Value="Mr.">Mr</asp:ListItem>
                                                                                             <asp:ListItem Value="Mrs.">Mrs</asp:ListItem>
                                                                                             <asp:ListItem Value="Ms.">Ms</asp:ListItem>
                                                                                            
                                                                                         </asp:RadioButtonList>

                                                                    <span style="margin-left: 12px">First Name</span>
                                                                    <font color="red">*</font>
                                                                    <INPUT  runat="server" id="mFnameEn" style="display: inline; width: 150px; margin-left: 20px" class="form-control" NAME="t_45" SIZE=17 MAXLENGHT=17 />
                                                                    <span style="margin-left: 12px">Last Name</span>
                                                                    <INPUT runat="server" id="mLnameEn" style="display: inline; width: 150px; margin-left: 20px" class="form-control" NAME="t_46" SIZE=17 MAXLENGHT=17 />
                                                                </div>
                                                              
                                                               <%-- Frist Name<font color="red">*</font><INPUT TYPE="TEXT" NAME="t_45" SIZE=17 MAXLENGHT=17>
                                                                Last Name<INPUT TYPE="TEXT" NAME="t_46" SIZE=15 MAXLENGHT=15><br>--%>

                                                                <%--<!----- วัน เดือน ปีเกิด -------------------------------------------------------->
                                                                วัน/เดือน/ปีเกิด

                                                                 <INPUT data-toggle="datepicker" TYPE="TEXT" NAME="Birthday_day2"  >

                                                                รหัสประจำตัวประชาชน :
                                                                <input TYPE="TEXT" NAME="t_47" id="txtID1" style="width:12px" maxlength=1 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_48" id="txtID2" style="width:35px" maxlength=4 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_49" id="txtID3" style="width:40px" maxlength=5 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_50" id="txtID4" style="width:20px" maxlength=2 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_51" id="txtID5" style="width:12px" maxlength=1 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" />
                                                                <br>--%>
                                                                 <!----- วัน เดือน ปีเกิด -------------------------------------------------------->
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 12px">วัน/เดือน/ปีเกิด</span>
                                                                    <INPUT runat="server" id="mbirthDate" style="display: inline; width: 150px; margin-left: 20px" class="form-control" type="text"  />
                                                                </div>

                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 12px">รหัสประจำตัวประชาชน :</span>
                                                                        <INPUT runat="server" id="mIDCard" style="display: inline; width: 250px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_51"  />
                                                                </div>


                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 12px">บัตรข้าราชการ</span>
                                                                    <INPUT runat="server" id="mIDGov0" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_52"  maxlength=17  />
                                                                    <span style="margin-left: 8px">สัญชาติ</span>
                                                                     <INPUT runat="server" id="mnation0" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_53" maxlength=17 />
                                                                 </div>
                                                
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 12px; color: red">ออกเมื่อ</span>
                                                                    <INPUT runat="server" id="mcreate0"  style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_54"  maxlength=17  />
                                                                    <span style="margin-left: 8px; color: red">วันหมดอายุ</span>
                                                                     <INPUT runat="server" id="mexpire0"  style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_55" maxlength=17 />
                                                                 </div>
                                                                <div style="margin-bottom: 24px">
                                                                    <span style="margin-left: 12px; color: red">* โทรศัพท์มือถือ</span>
                                                                    <INPUT runat="server" id="mtelphone0" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="Numbers" NAME="t_56" SIZE=40 MAXLENGHT=40  />
                                                                </div>
                                                
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 12px">ชื่อสถานที่ทำงาน</span>
                                                                    <INPUT runat="server" id="mWorkName" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_57" SIZE=40 MAXLENGHT=40  />
                                                                </div>
                                                
                                                                <span style="margin-left: 12px">ที่อยู่ที่ทำงาน</span>
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 12px;">เลขที่</span>
                                                                    <INPUT runat="server" id="mno" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_58"  maxlength=17  />
                                                                    <span style="margin-left: 8px;">ถนน</span>
                                                                    <INPUT runat="server" id="mstreet" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_59" maxlength=17 />
                                                                    <span style="margin-left: 8px;">อาคาร</span>
                                                                    <INPUT runat="server" id="mbuild" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_60" maxlength=17 />
                                                                    <span style="margin-left: 8px;">ซอย</span>
                                                                    <INPUT runat="server" id="malley" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_60_1" maxlength=17 />
                                                                    <span style="margin-left: 8px;">แขวง/ตำบล</span>
                                                                    <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_61" maxlength=17 />--%>
                                                                  <INPUT type="text" runat="server" id="mlocation" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                                </div>
                                                                 <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 8px;">เขต/อำเภอ</span>
                                                                   <%-- <INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_61_1" maxlength=17 />--%>
                                                                    <INPUT runat="server" id="mdistrict" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                                      <span style="margin-left: 8px;">จังหวัด</span>
                                                                    <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_61_2" maxlength=17 />--%>
                                                                      <INPUT runat="server" id="mprovine" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                                    <span style="margin-left: 8px;">รหัสไปรษณีย์</span>
                                                                    <INPUT runat="server" id="mzip" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_61_3" maxlength=17 />
                                                                </div>
                                                                <div style="margin-bottom: 24px">
                                                                    <span style="margin-left: 12px;">โทรศัพท์</span>
                                                                    <INPUT  runat="server" id="mtel" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="Numbers" NAME="t_62" SIZE=40 MAXLENGHT=40  />
                                                                    <span style="margin-left: 12px;">โทรสาร</span>
                                                                    <INPUT runat="server" id="mfax" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="Numbers" NAME="t_63" SIZE=40 MAXLENGHT=40  />
                                                                </div>
                                                                   
                                                                <span style="margin-left: 12px; color: red">*อาชีพ</span>

                                                                  <div style="margin-bottom: 12px">
                                                                        <asp:RadioButton ID="RadioButton1" runat="server"></asp:RadioButton>
                                                                        <span style="margin-left: 12px;">เจ้าของกิจการ/ค้าขาย Code 910</span>
                                                                        <span style="margin-left: 12px;">กรณีเจ้าของกิจการ (ระบุ) ยอดขายต่อปี</span>
                                                                        <INPUT runat="server" id="mdes910" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="Numbers" TEXT="number"  NAME="t_127" maxlength=17 />
                                                                    </div>
                                                                    <div style="margin-bottom: 12px">
                                                                        <asp:RadioButton ID="RadioButton2" runat="server"></asp:RadioButton>
                                                                        <span style="margin-left: 12px;">ลูกจ้าง/พนักงานเอกชน Code 920</span>
                                                                    </div>
                                                                    <div style="margin-bottom: 12px">
                                                                        <asp:RadioButton ID="RadioButton3" runat="server"></asp:RadioButton>
                                                                        <span style="margin-left: 12px;">ข้าราชการ/พนักงานรัฐวิสาหกิจ Code 930</span>
                                                                    </div>
                                                                     <div style="margin-bottom: 12px">
                                                                        <asp:RadioButton ID="RadioButton4" runat="server"></asp:RadioButton>
                                                                        <span style="margin-left: 12px;">อื่นๆ (ระบุ) Code 990</span>
                                                                        <INPUT runat="server" id="anotherType" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_127" JobOther="TEXT" SIZE=17 MAXLENGHT=17 />
                                                                    </div>
                                                
                                                                    <div style="margin-bottom: 12px">
                                                                        <span style="margin-left: 12px; color: red">*ประเภทธุรกิจ</span>
                                                                        <INPUT runat="server" id="mtypebis" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_65" SIZE=20 MAXLENGHT=20 />
                                                                        <span style="margin-left: 12px">ตำแหน่ง</span>
                                                                        <INPUT runat="server" id="mpositon" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_66" SIZE=20 MAXLENGHT=20 />
                                                                        <span style="margin-left: 12px">เงินเดือน</span>
                                                                        <INPUT runat="server" id="msarary" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="number" NAME="t_67" SIZE=20 MAXLENGHT=20 />
                                                                        <span style="margin-left: 12px">ประสบการณ์ทำงาน</span>
                                                                        <INPUT runat="server" id="mexperance" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_68" SIZE=20 MAXLENGHT=20 />
                                                                    </div>
                                                                    <div style="margin-bottom: 12px">
                                                                        <span style="margin-left: 12px">รายได้อื่นๆ</span>
                                                                        <INPUT runat="server" id="income" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="number" NAME="t_69" SIZE=20 MAXLENGHT=20 />
                                                                        <span style="margin-left: 12px">แหล่งที่มาของรายได้อื่นๆ</span>
                                                                        <INPUT runat="server" id="incomeHow" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="number" NAME="t_70" SIZE=20 MAXLENGHT=20 />
                                                                    </div>
                                                                    
                                                                 <div style="margin-bottom: 12px" class="form-inline form-group">
                                                                    <p style="margin-left: 12px; color: red">*ตำแหน่งทางการเมือง</p>
                                                    
                                                                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1" RepeatLayout="Flow">
                                                   
                                                                    <asp:ListItem Value="False">ไม่มี</asp:ListItem>
                                                                    <asp:ListItem Value="True">มี ระบุ</asp:ListItem>
                                                   
                                                                 </asp:RadioButtonList>

                                                        
                                                                 <INPUT runat="server" id="TEXT1" TYPE="TEXT" NAME="t_42"  class="form-control"  SIZE=17 MAXLENGHT=17 style=" width: 150px; display: inline; "><br>
                                               
                                                                </div>
                                                                <%--<font color="red">*</font>อาชีพ<br>
                                                                <INPUT TYPE="radio" name="Job2" Value="1 ">เจ้าของกิจการ/ค้าขาย Code 910     กรณีเจ้าของกิจการ(ระบุ)ยอดขายต่อปี<INPUT TYPE="TEXT" NAME="t_128" Money="number" SIZE=17 MAXLENGHT=17><br>
                                                                <INPUT TYPE="radio" name="Job2" Value="2 ">ลูกจ้าง/พนักงานเอกชน Code 920<br>
                                                                <INPUT TYPE="radio" name="Job2" Value="3 ">ข้าราชการ/พนักงานรัฐวิสาหกิจ Code 930<br>
                                                                <INPUT TYPE="radio" name="Job2" Value="4">อื่นๆ (ระบุ) Code 990                    <INPUT TYPE="TEXT" NAME="t_64" JobOther="TEXT" SIZE=17 MAXLENGHT=17><br><br>

                                                                <font color="red">*</font>ประเภทธุรกิจ<INPUT TYPE="TEXT" NAME="t_65" SIZE=20 MAXLENGHT=20>
                                                                ตำแหน่ง<INPUT TYPE="TEXT" NAME="t_66" SIZE=20 MAXLENGHT=20>
                                                                <font color="red">*</font>เงินเดือน<INPUT TYPE="number" NAME="t_67" SIZE=10 MAXLENGHT=10><br>
                                                                ประสบการณ์ทำงาน<INPUT TYPE="TEXT" NAME="t_68" EXP"TEXT"SIZE=5 MAXLENGHT=5>
                                                                รายได้อื่นๆ<INPUT TYPE="number" NAME="t_69" SIZE=10 MAXLENGHT=10>     <align ="right">
                                                                    แหล่งที่มาของรายได้อื่นๆ<INPUT TYPE="TEXT" NAME="t_70" WhereIncome"TEXT"SIZE=5 MAXLENGHT=5><br>

                                                                    <font color="red">*</font>ตำแหน่งทางการเมืองของคู่สมรส
                                                                    <INPUT TYPE="radio" name="YesorNo2" Value="1">ไม่มี
                                                                    <INPUT TYPE="radio" name="YesorNo2" Value="2">มี (ระบุ)<INPUT TYPE="TEXT" NAME="t_71" JobOther="TEXT" SIZE=17 MAXLENGHT=17><br>
--%>

                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>


                                            </td>
                                        </tr>
                                    </table>
                                    <!////////////////////////////////////////////////////////////////////////////////////////////>
                                    <div class="assessment-container container">
                                        <div class="row">
                                            <div class="col-md-12 form-box" style="padding-left: 0px">

                                                <div id="u2_2" runat="server" >
                                                    <table class="tg" border="1" width="100%">
                                                        <tr>
                                                            <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" font-size="5px" class="auto-style2">ประวัติลูกค้า กรณีนิติบุคคล&nbsp;</span>&nbsp; </FONT></th>
                                                           </tr>
                                                            
                                                             <div class="form-top">
                                                                <div class="form-top-left">

                                                        <tr>
                                                            <td class="tg-h31u" colspan="3">
                                                                        
                                                                <div class="row" style="margin-bottom: 12px">
                                                                       <asp:RadioButtonList ID="RadioTypeCompany" runat="server"  RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1">
                                                                        <asp:ListItem Value="บริษัทจำกัด">บริษัทจำกัด</asp:ListItem>
                                                                             <asp:ListItem Value="ห้างหุ้นส่วนจำกัด">ห้างหุ้นส่วนจำกัด</asp:ListItem>
                                                                             <asp:ListItem Value="ห้างหุ้นส่วนสามัญนิติบุคคล">ห้างหุ้นส่วนสามัญนิติบุคคล</asp:ListItem>
                                                                             <asp:ListItem Value="บริษัทมหาชน">บริษัทมหาชน</asp:ListItem>
                                                                             <asp:ListItem Value="อื่นๆ">อื่นๆ</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                    <INPUT runat="server" id="txtOther" style="display: inline;  width:150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_72" SIZE=80 MAXLENGHT=80>
                                                                </div>
                                                              
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 8px">สัญชาติ</span>
                                                                    <INPUT runat="server" id="nation" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_74" SIZE=80 MAXLENGHT=80>
                                                                     <span style="margin-left: 8px">ทะเบียนเลขที่</span>
                                                                    <INPUT runat="server" id="accComNo" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_75" SIZE=80 MAXLENGHT=80>
                                                                </div>
                                                                <%--<INPUT TYPE="TEXT" NAME="t_74" SIZE=20 MAXLENGHT=20> ทะเบียนเลขที่<INPUT TYPE="TEXT" NAME="t_75" SIZE=20 MAXLENGHT=20><br>--%>
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 8px">วันที่จดทะเบียน</span>
                                                                    <INPUT runat="server" id="regisDate" data-toggle="datepicker" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_76" SIZE=80 MAXLENGHT=80>
                                                                     <span style="margin-left: 8px">ประเทศที่จดทะเบียน</span>
                                                                    <INPUT runat="server" id="regiscontry" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_77" SIZE=80 MAXLENGHT=80>
                                                                </div>
                                                               <%-- วันที่จดทะเบียน<INPUT TYPE="TEXT"  NAME="t_76" SIZE=20 MAXLENGHT=20> ประเทศที่จดทะเบียน<INPUT TYPE="TEXT" NAME="t_77" SIZE=20 MAXLENGHT=20><br>--%>
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 8px">เลขประจำตัวผู้เสียภาษี</span>
                                                                    <INPUT runat="server" id="taxNo" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_78" SIZE=80 MAXLENGHT=80>
                                                                </div>
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 8px">ประเภทธุรกิจ(โปรดระบุ)</span>
                                                                    <INPUT runat="server" id="typeBisiness" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_79" SIZE=80 MAXLENGHT=80>
                                                                </div>
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 8px">ทุนจดทะเบียน</span>
                                                                    <INPUT runat="server" id="regisCap" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_80" SIZE=80 MAXLENGHT=80>
                                                                </div>
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 8px">ทุนจดทะเบียนชำระแล้ว</span>
                                                                    <INPUT  runat="server" id="regisCapPaid" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_81" SIZE=80 MAXLENGHT=80>
                                                                </div>
                                                                <br>
                                                                <br>
                                                            </td>
                                                        </tr>
                                                         
                                                    </table>




                                                    <FONT FACE="db_helvethaica_x55_regular">กรณีผู้ถือหุ้นตั้งแต่ร้อยละ 30 เป็นนิติบุคคล กรุณาระบุหรือแนบรายละเอียดการถือหุ้นในทอดต่อไป</FONT></th><br>
                                                    <div style="margin-bottom: 12px">
                                                        <INPUT  runat="server" id="another1" style="display: inline; width: 250px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_82" SIZE=80 MAXLENGHT=80>
                                                    </div>
                                                    <div style="margin-bottom: 12px">
                                                        <INPUT  runat="server" id="another2" style="display: inline; width: 250px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_83" SIZE=80 MAXLENGHT=80>
                                                    </div>
                                                    <br>
                                                </div>
                                                <div id="u2_3" runat="server" >
                                                    <table class="tg" border="1" width="100%" style="width:100%">
                                                        <tr>
                                                            <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" font-size="5px" class="auto-style2">รายละเอียดของบุคคลผู้รับมอบอำนาจ&nbsp;</span>&nbsp; </FONT></th>
                                                            <br>
                                                        </tr>
                                                          <tr>
                                                                <td class="tg-h31u" colspan="3" width="100%">
                                                               
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 8px">ชื่อ</span>
                                                                    <INPUT runat="server" id="NameNiti" style="display: inline; width: 250px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_84" SIZE=80 MAXLENGHT=80><br>
                                                                </div>
                                                                <div style="margin-bottom: 12px">
                                                                     <asp:CheckBox ID="visa" style="margin-left: 12px" runat="server"></asp:CheckBox>
                                                                     <span style="margin-left: 8px">บัตรประชาชน</span>
                                                                </div>
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 12px">รหัสประจำตัวประชาชน :</span>
                                                                     <INPUT runat="server" id="NITIEMPID"  style="display: inline; width: 250px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_89"   />
                                                                </div>
                                                                <%--รหัสประจำตัวประชาชน :
                                                                <input TYPE="TEXT" NAME="t_85" id="txtID1" style="width:12px" maxlength=1 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_86" id="txtID2" style="width:35px" maxlength=4 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_87" id="txtID3" style="width:40px" maxlength=5 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_88" id="txtID4" style="width:20px" maxlength=2 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_89" id="txtID5" style="width:12px" maxlength=1 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" />
                                                                <br>--%>

                                                                <div style="margin-bottom: 12px">
                                                                    <asp:CheckBox ID="visa2" style="margin-left: 12px" runat="server"></asp:CheckBox>
                                                                    
                                                                    <span style="margin-left: 8px">บัตรข้าราชการ</span>
                                                                    <INPUT runat="server" id="idgov" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_90" SIZE=17 MAXLENGHT=17>
                                                                </div>
                                                                 <div style="margin-bottom: 12px">
                                                                   <asp:CheckBox ID="visa3" style="margin-left: 12px" runat="server"></asp:CheckBox>
                                                                    <span style="margin-left: 8px">อื่นๆ</span>
                                                                    <INPUT runat="server" id="anothervisa"   style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_91" SIZE=17 MAXLENGHT=17>
                                                                </div>
                                                                 <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 12px">สัญชาติ</span>
                                                                    <INPUT runat="server" id="attonation" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_92" SIZE=17 MAXLENGHT=17>
                                                                </div>
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 12px">ออกเมื่อ</span>
                                                                    <INPUT runat="server" id="attodateget" style="display: inline; width: 150px; margin-left: 8px"  class="form-control" TYPE="TEXT" NAME="t_93"  SIZE=17 MAXLENGHT=17>
                                                                    <span style="margin-left: 12px">วันหมดอายุ</span>
                                                                    <INPUT runat="server" id="attodateexpire" style="display: inline; width: 150px; margin-left: 8px"  class="form-control" TYPE="TEXT" NAME="t_94"  SIZE=17 MAXLENGHT=17>
                                                                </div>
                                                                <div style="margin-bottom: 12px">
                                                                    <span style="margin-left: 12px">ความสัมพันธ์กับลูกค้า</span>
                                                                    <INPUT runat="server" id="attorelation" style="display: inline; width: 150px; margin-left: 8px"  class="form-control" TYPE="TEXT" NAME="t_95"  SIZE=17 MAXLENGHT=17>
                                                                </div>
                                                              </td>
                                                        </tr>
                                                 </table>
                                                </div>

                                            </div>

                                            
                                           
                                        </div>
                                        <!/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////>
                                        <div style="height:40px;"></div>
                                        <div class="assessment-container container">
                                            <div class="row">
                                                <div class="form-box">

                                                    <table class="tg" border="1" width="100%">
                                                        <tr><th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" size="5px" class="auto-style2">ข้อมูลที่อยู่</FONT></th>

                                                        <tr>
                                                            <td class="tg-h31u" colspan="3">
                                                                    
                                                                    <span style="margin-left: 12px; color: red">* ที่อยู่ปัจจุบัน</span>
                                                                    <div style="margin-bottom: 12px">
                                                                        <span style="margin-left: 12px;">เลขที่</span>
                                                                        <INPUT runat="server" id="No6" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_96"  maxlength=17  />
                                                                        <span style="margin-left: 8px;">ถนน</span>
                                                                        <INPUT runat="server" id="street6" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_96_1" maxlength=17 />
                                                                        <span style="margin-left: 8px;">อาคาร</span>
                                                                        <INPUT runat="server" id="build6" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_96_2" maxlength=17 />
                                                                        <span style="margin-left: 8px;">ซอย</span>
                                                                        <INPUT runat="server" id="alley6" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_96_7" maxlength=17 />
                                                                        <span style="margin-left: 8px;">แขวง/ตำบล</span>
                                                                        <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_96_3" maxlength=17 />--%>
                                                                        <INPUT runat="server" id="Locality6" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control" />
                                                                        
                                                                    </div>
                                                
                                                                    <div style="margin-bottom: 12px">
                                                                        <span style="margin-left: 8px;">เขต/อำเภอ</span>
                                                                        <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_96_4" maxlength=17 />--%>
                                                                        <INPUT runat="server" id="District6" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control" />
                                                                    
                                                                         <span style="margin-left: 8px;">จังหวัด</span>
                                                                        <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_96_5" maxlength=17 />--%>
                                                                       <INPUT runat="server" id="Province6" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                                        <span style="margin-left: 8px;">รหัสไปรษณีย์</span>
                                                                        <INPUT runat="server" id="zip6" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_96_6" maxlength=17 />
                                                                    </div>
                                                                    <div style="margin-bottom: 12px">
                                                                        <span style="margin-left: 8px">โทรศัพท์</span>
                                                                        <INPUT runat="server" id="tel6" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="Numbers"  NAME="t_97" maxlength=17 />
                                                                         <span style="margin-left: 8px;">โทรสาร</span>
                                                                        <INPUT runat="server" id="fax6" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="Numbers"  NAME="t_98" maxlength=17 />
                                                                          <span style="margin-left: 8px; color: red">* โทรศัพท์มือถือ</span>
                                                                        <INPUT runat="server" id="telphone6" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="Numbers"  NAME="t_99" maxlength=17 />
                                                                        <span style="margin-left: 8px;">E-mail</span>
                                                                        <INPUT runat="server" id="email6" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="E-mail"  NAME="t_100" maxlength=17 />
                                                                     </div>
                                                                <%--<font color="red">*</font>ที่อยู่ปัจจุบัน<br>
                                                                เลขที่<INPUT TYPE="TEXT" NAME="t_96" SIZE=10 MAXLENGHT=10>
                                                                ถนน<INPUT TYPE="TEXT" NAME="t_96_1" SIZE=20 MAXLENGHT=20>
                                                                อาคาร<INPUT TYPE="TEXT" NAME="t_96_2" SIZE=20 MAXLENGHT=20>
                                                                ซอย<INPUT TYPE="TEXT" NAME="t_96_7" SIZE=20 MAXLENGHT=20>
                                                                แขวง/ตำบล<INPUT TYPE="TEXT" NAME="t_96_3" SIZE=20 MAXLENGHT=20>
                                                                <BR>เขต/อำเภอ<INPUT TYPE="TEXT" NAME="t_96_4" SIZE=20 MAXLENGHT=20>
                                                                จังหวัด<INPUT TYPE="TEXT" NAME="t_96_5" SIZE=20 MAXLENGHT=20>
                                                                รหัสไปรษณีย์<INPUT TYPE="TEXT" NAME="t_96_6" SIZE=5 MAXLENGHT=5>

                                                                <br>

                                                                โทรศัพท์<INPUT TYPE="Numbers" NAME="t_97" SIZE=15 MAXLENGHT=20>โทรสาร<INPUT TYPE="Numbers" NAME="t_98" SIZE=15 MAXLENGHT=15>

                                                                <font color="red">*</font>โทรศัพท์มือถือ<INPUT TYPE="Numbers" NAME="t_99" SIZE=15 MAXLENGHT=15>E-mail<INPUT TYPE="TEXT" NAME="t_100" NAME="E-mail" SIZE=15 MAXLENGHT=20><br>--%>

                                                                <span style="margin-left: 12px;">ที่อยู่อื่นๆ</span>
                                                                    <div style="margin-bottom: 12px">
                                                                        <span style="margin-left: 12px;">เลขที่</span>
                                                                        <INPUT runat="server" id="No4" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_101"  maxlength=17  />
                                                                        <span style="margin-left: 8px;">ถนน</span>
                                                                        <INPUT runat="server" id="street4" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_101_1" maxlength=17 />
                                                                        <span style="margin-left: 8px;">อาคาร</span>
                                                                        <INPUT runat="server" id="build4" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_101_2" maxlength=17 />
                                                                        <span style="margin-left: 8px;">ซอย</span>
                                                                        <INPUT runat="server" id="alley4" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_101_7" maxlength=17 />
                                                                        <span style="margin-left: 8px;">แขวง/ตำบล</span>
                                                                        <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_101_3" maxlength=17 />--%>
                                                                       <INPUT runat="server" id="Locality4" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                                    </div>
                                                
                                                                    <div style="margin-bottom: 12px">
                                                                        <span style="margin-left: 8px;">เขต/อำเภอ</span>
                                                                        <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_101_4" maxlength=17 />--%>
                                                                       <INPUT runat="server" id="District4" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                                       
                                                                         <span style="margin-left: 8px;">จังหวัด</span>
                                                                        <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_101_5" maxlength=17 />--%>
                                                                       <INPUT runat="server" id="Province4" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                                        <span style="margin-left: 8px;">รหัสไปรษณีย์</span>
                                                                        <INPUT runat="server" id="zip4" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_101_6" maxlength=17 />
                                                                    </div>
                                                                    <div style="margin-bottom: 12px">
                                                                        <span Province4 style="margin-left: 8px">โทรศัพท์</span>
                                                                        <INPUT  runat="server" id="tel4" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="Numbers"  NAME="t_102" maxlength=17 />
                                                                         <span style="margin-left: 8px;">โทรสาร</span>
                                                                        <INPUT runat="server" id="fax4" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="Numbers"  NAME="t_103" maxlength=17 />
                                                                          <span style="margin-left: 8px; color: red">* โทรศัพท์มือถือ</span>
                                                                        <INPUT runat="server" id="telphone4"  style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="Numbers"  NAME="t_104" maxlength=17 />
                                                                        <span style="margin-left: 8px;">E-mail</span>
                                                                        <INPUT runat="server" id="email4" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="E-mail"  NAME="t_105" maxlength=17 />
                                                                     </div>
<%--                                                                <br>
                                                                ที่อยู่อื่นๆ<br>
                                                                เลขที่<INPUT TYPE="TEXT" NAME="t_101" SIZE=10 MAXLENGHT=10>
                                                                ถนน<INPUT TYPE="TEXT" NAME="t_101_1" SIZE=20 MAXLENGHT=20>
                                                                อาคาร<INPUT TYPE="TEXT" NAME="t_101_2" SIZE=20 MAXLENGHT=20>
                                                                ซอย<INPUT TYPE="TEXT" NAME="t_101_7" SIZE=20 MAXLENGHT=20>
                                                                แขวง/ตำบล<INPUT TYPE="TEXT" NAME="t_101_3" SIZE=20 MAXLENGHT=20>
                                                                <BR>เขต/อำเภอ<INPUT TYPE="TEXT" NAME="t_101_4" SIZE=20 MAXLENGHT=20>
                                                                จังหวัด<INPUT TYPE="TEXT" NAME="t_101_5" SIZE=20 MAXLENGHT=20>
                                                                รหัสไปรษณีย์<INPUT TYPE="TEXT" NAME="t_101_6" SIZE=5 MAXLENGHT=5>
                                                                <BR>
                                                                โทรศัพท์<INPUT TYPE="Numbers" NAME="t_102" SIZE=15 MAXLENGHT=15>โทรสาร<INPUT TYPE="Numbers" NAME="t_103" SIZE=15 MAXLENGHT=15>

                                                                <font color="red">*</font>โทรศัพท์มือถือ<INPUT TYPE="Numbers" NAME="t_104" SIZE=15 MAXLENGHT=15>E-mail<INPUT TYPE="TEXT" NAME="t_105" SIZE=15 MAXLENGHT=15>
                                                                --%>
                                                                <span style="margin-left: 8px; color: red">* สถานที่จัดส่งเอกสาร</span>
                                                                    <asp:RadioButtonList ID="Radioaddr" runat="server" RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1">
                                                                        <asp:ListItem Value="1">ที่อยู่ปัจจุบัน</asp:ListItem>
                                                                        <asp:ListItem Value="2">ที่อยู่ที่ทำงาน</asp:ListItem>
                                                                         <asp:ListItem Value="3">ที่อยู่ตามทะเบียนบ้าน</asp:ListItem>
                                                                         <asp:ListItem Value="4">ที่อยู่อื่นๆ</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                            


                                                            </td>
                                                        </tr>
                                                    </table>


                                                    <!///////////////////////////////////////////////////////////////////////////////////!>

                                                    <div style="height:40px;"></div>
                                                    <div class="assessment-container container">
                                                        <div class="row">
                                                            <div class="form-box">


                                                                <table class="tg" border="1" width="100%">
                                                                    <tr>

                                                                        <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" size="5px" class="auto-style2">กรณีติดต่อโดยตรงไม่ได้ให้ติดต่อบุคคลดังนี้</FONT>
                                                                        <th>
                                                                    <tr>
                                                                        <td class="tg-h31u" colspan="3">

                                                                            <div class="form-top">
                                                                                <div class="form-top-left">
                                                                                     <div class="row" style="margin-bottom: 12px">
                                                                                         <asp:RadioButtonList ID="RadiosexAnother" runat="server"  RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1" RepeatLayout="Flow">
                                                                                             <asp:ListItem Value="นาย">นาย</asp:ListItem>
                                                                                             <asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
                                                                                             <asp:ListItem Value="นาง">นาง</asp:ListItem>
                                                                                            
                                                                                         </asp:RadioButtonList>
                                                                                      

                                                                                         <span style="margin-left: 12px; color: red">*ชื่อ</span>
                                                                                         <INPUT runat="server" id="FnamePerson" style="display: inline; width: 150px; margin-left: 10px" class="form-control" TYPE="TEXT" NAME="t_106"  maxlength=17  />
                                                                                         <span style="margin-left: 12px;">นามสกุล</span>
                                                                                         <INPUT runat="server" id="LnamePerson" style="display: inline; width: 150px; margin-left: 10px" class="form-control" TYPE="TEXT" NAME="t_107"  maxlength=17  />
                                                                                         <span style="margin-left: 12px;">ความสัมพันธ์</span>
                                                                                         <INPUT runat="server" id="relationPerson" style="display: inline; width: 150px; margin-left: 10px" class="form-control" TYPE="TEXT" NAME="t_108"  maxlength=17  />
                                                                                      </div>
                                                                                   <%-- <INPUT TYPE="radio" name="sex4" Value="2">นางสาว
                                                                                    <INPUT TYPE="radio" name="sex4" Value="3">นาง
                                                                                    ชื่อ<font color="red">*</font><INPUT TYPE="TEXT" NAME="t_106" SIZE=17 MAXLENGHT=17>
                                                                                    นามสกุล<INPUT TYPE="TEXT" NAME="t_107" SIZE=15 MAXLENGHT=15>
                                                                                    ความสัมพันธ์<INPUT TYPE="TEXT" NAME="t_108" SIZE=17 MAXLENGHT=17>   อาชีพ<INPUT TYPE="TEXT" NAME="t_109" SIZE=17 MAXLENGHT=17><br>--%>

                                                                                    <span style="margin-left: 12px">ที่อยู่</span>
                                                                                    <div style="margin-bottom: 12px">
                                                                                        <span style="margin-left: 12px;">เลขที่</span>
                                                                                        <INPUT  runat="server" id="No5" style="display: inline; width: 150px; margin-left: 20px" class="form-control" TYPE="TEXT" NAME="t_110"  maxlength=17  />
                                                                                        <span style="margin-left: 8px;">ถนน</span>
                                                                                        <INPUT runat="server" id="street5" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_110_1" maxlength=17 />
                                                                                        <span style="margin-left: 8px;">อาคาร</span>
                                                                                        <INPUT runat="server" id="build5" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_110_2" maxlength=17 />
                                                                                        <span style="margin-left: 8px;">ซอย</span>
                                                                                        <INPUT runat="server" id="alley5" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_110_7" maxlength=17 />
                                                                                        <span style="margin-left: 8px;">แขวง/ตำบล</span>
                                                                                        <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_110_3" maxlength=17 />--%>
                                                                                       <INPUT runat="server" id="Locality5" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                                                    </div>
                                                
                                                                                    <div style="margin-bottom: 12px">
                                                                                        <span style="margin-left: 8px;">เขต/อำเภอ</span>
                                                                                        <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_110_4" maxlength=17 />--%>
                                                                                        <INPUT runat="server" id="District5" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                                                        <span style="margin-left: 8px;">จังหวัด</span>
                                                                                        <%--<INPUT style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_110_5" maxlength=17 />--%>
                                                                                       <INPUT runat="server" id="Province5" type="text" style="display: inline; width: 150px; margin-left: 8px" class="form-control"/>
                                                                                        <span style="margin-left: 8px;">รหัสไปรษณีย์</span>
                                                                                        <INPUT runat="server" id="zip5" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT" NAME="t_110_6" maxlength=17 />
                                                                                    </div>
                                                                                    <div style="margin-bottom: 12px">
                                                                                        <span style="margin-left: 8px">โทรศัพท์</span>
                                                                                        <INPUT runat="server" id="tel5" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="Numbers"  NAME="t_111" maxlength=17 />
                                                                                            <span style="margin-left: 8px;">โทรสาร</span>
                                                                                        <INPUT runat="server" id="fax5" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="Numbers"  NAME="t_112" maxlength=17 />
                                                                                            <span style="margin-left: 8px; color: red">* โทรศัพท์มือถือ</span>
                                                                                        <INPUT runat="server" id="telphone5" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="Numbers"  NAME="t_113" maxlength=17 />
                                                                                        <span style="margin-left: 8px;">E-mail</span>
                                                                                        <INPUT runat="server" id="email5"  style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="E-mail"  NAME="t_114" maxlength=17 />
                                                                                    </div>
                                                                                    <%--ที่อยู่&nbsp;
                                                                                    เลขที่<INPUT TYPE="TEXT" NAME="t_110" SIZE=10 MAXLENGHT=10>
                                                                                    ถนน<INPUT TYPE="TEXT" NAME="t_110_1" SIZE=20 MAXLENGHT=20>
                                                                                    อาคาร<INPUT TYPE="TEXT" NAME="t_110_2" SIZE=20 MAXLENGHT=20>
                                                                                    ซอย<INPUT TYPE="TEXT" NAME="t_110_7" SIZE=20 MAXLENGHT=20>
                                                                                    แขวง/ตำบล<INPUT TYPE="TEXT" NAME="t_110_3" SIZE=20 MAXLENGHT=20>
                                                                                    <BR>เขต/อำเภอ<INPUT TYPE="TEXT" NAME="t_110_4" SIZE=20 MAXLENGHT=20>
                                                                                    จังหวัด<INPUT TYPE="TEXT" NAME="t_110_5" SIZE=20 MAXLENGHT=20>
                                                                                    รหัสไปรษณีย์<INPUT TYPE="TEXT" NAME="t_110_6" SIZE=5 MAXLENGHT=5>
                                                                                    <br>
                                                                                    โทรศัพท์<INPUT TYPE="Numbers" NAME="t_111" SIZE=15 MAXLENGHT=15>โทรสาร<INPUT TYPE="Numbers" NAME="t_112" SIZE=15 MAXLENGHT=15>
                                                                                    <br>
                                                                                    <font color="red">*</font>โทรศัพท์มือถือ<INPUT TYPE="Numbers" NAME="t_113" SIZE=15 MAXLENGHT=15>E-mail<INPUT TYPE="TEXT" NAME="t_114" SIZE=15 MAXLENGHT=15>--%>
                                                                                    
                                                                                </div>

                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </table>

                                                                <table class="tg" border="1" width="100%">
                                                                    <tr>

                                                                        <div style="height:40px;"></div>
                                                                        <div class="assessment-container container">
                                                                            <div class="row">
                                                                                <div class="col-md-6 form-box" style="padding-left: 0px">


                                                                                    <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" size="5px" class="auto-style2">ข้อมูลการชําระเงิน</FONT></th>
                                                                    <tr>
                                                                        <td class="tg-h31u" colspan="3">
                                                                            <div style="margin-bottom: 12px">
                                                                                 <asp:CheckBox ID="ATS" runat="server"></asp:CheckBox>
                                                                                <span style="margin-left: 8px">ใช้ระบบหัก / โอนบัญชีธนาคารอัตโนมัติ (ATS)</span>
                                                                            </div>
                                                                            
                                                                            <%--ธนาคาร<INPUT TYPE="TEXT" NAME="t_115" bank="TexT" SIZE=17 MAXLENGHT=17> สาขา<INPUT TYPE="TEXT" NAME="t_116" bank="TexT" SIZE=17 MAXLENGHT=17><br>--%>
                                                                             <div style="margin-bottom: 12px">
                                                                                <span style="margin-left: 8px">ธนาคาร</span>
                                                                                <INPUT runat="server" id="Bank1" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TexT"  NAME="t_115" maxlength=17 />
                                                                                <span style="margin-left: 8px;">สาขา</span>
                                                                                <INPUT runat="server" id="Branch1" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TexT"  NAME="t_116" maxlength=17 />
                                                                            </div>
                                                                             <div style="margin-bottom: 12px">
                                                                                <span style="margin-left: 8px">เลขบัญชี</span>
                                                                                <INPUT runat="server" id="ACC01" style="display: inline; width: 150px; margin-left: 8px" type="text" class="form-control" bank="TexT"  NAME="t_117" maxlength=17 />
                                                                            </div>
                                                                             <div style="margin-bottom: 12px">
                                                                                   <span style="margin-left: 6px; margin-right: 6px">ประเภทบัญชี</span>
                                                                                 <asp:RadioButtonList ID="RadioTypeACC01" runat="server" style="margin-left: 6px; margin-right: 6px" RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1">
                                                                                     <asp:ListItem Value="ออมทรัพย์">ออมทรัพย์</asp:ListItem>
                                                                                     <asp:ListItem Value="กระแสรายวัน">กระแสรายวัน</asp:ListItem>
                                                                                 </asp:RadioButtonList>
                                                                              
                                                                               
                                                                            </div>
                                                                             <%-- <INPUT TYPE="radio" name="check2" >ออมทรัพย์  <INPUT TYPE="radio" name="check2" Value="2 ">กระแสรายวัน<br>--%>
                                                                            <div class="warning_account">
                                                                                <font color="red" ; size=2px>* (กรุณากรอกรายละเอียดในหนังสือขอให้หักบัญชีเงินฝาก โดยชื่อบัญชีธนาคารจะต้องเป็นชื่อเดียวกับที่ใช้เปิดบัญชีกับบริษัท)</font>&nbsp;&nbsp;&nbsp;<a href="...." download><img border="0" src="images/download.jpg" alt="DL" width="69" height="19"></a><br><br>
                                                                            </div>
                                                                           
                                                                            <%--ธนาคาร<INPUT TYPE="TEXT" NAME="t_115" bank="TexT" SIZE=17 MAXLENGHT=17> สาขา<INPUT TYPE="TEXT" NAME="t_116" bank="TexT" SIZE=17 MAXLENGHT=17><br>--%>
                                                                             <div style="margin-bottom: 12px; margin-top: 12px">
                                                                                <span style="margin-left: 5px">การรับเงินปันผล โดยบริหารโอนเงินอัตโนมัติ  (e - Dividend) </span>
                                                                            </div>
                                                                             <div style="margin-bottom: 12px">
                                                                               <asp:CheckBox ID="e_Dividend" runat="server"></asp:CheckBox>
                                                                                <span style="margin-left: 8px">โอนเงินเข้าบัญชีเงินฝาก</span>
                                                                            </div>
                                                                            
                                                                            <div style="margin-bottom: 12px">
                                                                                <span style="margin-left: 8px">ธนาคาร</span>
                                                                                <INPUT runat="server" id="Bank2" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TexT"  NAME="t_118" maxlength=17 />
                                                                                <span style="margin-left: 8px;">สาขา</span>
                                                                                <INPUT runat="server" id="Branch2" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TexT"  NAME="t_119" maxlength=17 />
                                                                            </div>
                                                                             <div style="margin-bottom: 12px">
                                                                                <span style="margin-left: 8px">เลขบัญชี</span>
                                                                                <INPUT runat="server" id="ACC02" style="display: inline; width: 150px; margin-left: 8px" class="form-control" type="text" bank="TexT"  NAME="t_119" maxlength=17 />
                                                                            </div>
                                                                             <div style="margin-bottom: 12px">
                                                                                <span style="margin-left: 6px; margin-right: 6px">ประเภทบัญชี</span>
                                                                               <asp:RadioButtonList ID="RadioTypeACC02" runat="server" style="margin-left: 6px; margin-right: 6px" RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1">
                                                                                     <asp:ListItem Value="ออมทรัพย์">ออมทรัพย์</asp:ListItem>
                                                                                     <asp:ListItem Value="กระแสรายวัน">กระแสรายวัน</asp:ListItem>
                                                                                 </asp:RadioButtonList>
                                                                            </div>
                                                                           <%-- <u></u> <br>
                                                                            <INPUT TYPE="Checkbox" name="check11" Value="1">โอนเงินเข้าบัญชีเงินฝาก<br>
                                                                            ธนาคาร<INPUT TYPE="TEXT" NAME="t_118" bank="TexT" SIZE=17 MAXLENGHT=17> สาขา<INPUT TYPE="TEXT" NAME="t_119" bank="TexT" SIZE=17 MAXLENGHT=17><br>
                                                                            เลขบัญชี<INPUT TYPE="TEXT" NAME="t_120" bank="TexT" SIZE=17 MAXLENGHT=17><br>
                                                                            ประเภทบัญชี  <INPUT TYPE="radio" name="check3" Value="1 ">ออมทรัพย์  <INPUT TYPE="radio" name="check3" Value="2 ">กระแสรายวัน<br>
                                                                            --%>
                                                                            <div class="warning_account">
                                                                                 <font color="red" ; size=2px> * (กรณีไม่ใช่บัญชีเดียวกับบัญชี ATS ที่ใช้ชำระค่าซื้อขาย ต้องแนบสำเนาสมุดเงินฝากธนาคารหรือสำเนาใบแจ้งรายการบัญชีธนาคารหน้าที่มีชื่อและเลขที่บัญชีพร้อมรับรองสำเนาถูกต้อง และจัดส่งให้ทางบริษัทฯ)</font><br>
                                                                            </div>
                                                                           
                                                            </div>

                                                        </div>

                                                        </td>
                                                        </tr>
                                                        </table>


                                                        <table class="tg" border="1" width="100%">
                                                            <tr>

                                                                <div style="height:40px;"></div>
                                                                <div class="assessment-container container">
                                                                    <div class="row">
                                                                        <div class="form-box" style="padding-left: 0px">

                                                                            <table class="tg" border="1" width="100%" runat="server" id="u1_3">
                                                                                <tr>
                                                                                    <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" size="5px" class="auto-style2">ประวัติการกระทำผิดทางกฏหมายฟอกเงิน ในช่วง&nbsp;&nbsp;3 ปี&nbsp;&nbsp; ที่ผ่านมา</FONT></th>
                                                                                </tr> <tr>
                                                                                    <td class="tg-h31u" colspan="3">
                                                                                        <div class="form-top">
                                                                                            <div class="form-top-left">
                                                                                                
                                                                                                  <asp:RadioButton ID="noguild" style="margin-right: 10px" runat="server" Text="ไม่เคยกระทําความผิด"></asp:RadioButton> <br>
                                                                                                          <asp:RadioButton ID="guild" style="margin-right: 10px" runat="server" Text="เคย"></asp:RadioButton> 
                                                                                                        <INPUT runat ="server" id="dataguilds" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT"  SIZE=40 MAXLENGHT=40> พ.ศ.
                                                                                                        <INPUT runat ="server" id="yearguilds" style="display: inline; width: 150px; margin-left: 8px" class="form-control" TYPE="TEXT"  SIZE=10 MAXLENGHT=10><br><br>

                                                                                            </div>

                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>

                


                                    <!//////////////////////////////////////////////////////////////////////////////////////////////////////////////>
                                    <table class="tg" border="1" width="100%">
                                        <tr>
                                            <div style="height:40px;"></div>
                                            <div class="assessment-container container">
                                                <div class="row">
                                                    <div class="col-md-6 form-box" style="padding-left: 0px">


                                                        <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" size="5px" class="auto-style2">บุคคลที่เกี่ยวข้องกับผู้ขอเปิดบัญชี</FONT></th>
                                                        <div class="form-top">
                                                            <div class="form-top-left">
                                                                </td>
                                        </tr>
                                    </table>


                                                                            <table align="center" border="1" width="50%" bgcolor="#FFFFFF">

                                                                                <tr>
                                                                                    <td class="auto-style4"><font color=red>บุคคลผู้รับมอบอํานาจในการส่งคําสั่งซื้อขายหลักทรัพย์</font></td>
                                                                               
                                                                                    <td align class="auto-style6">   
                                                                                  <asp:RadioButtonList ID="role1" runat="server"  RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1">
                                                                                     <asp:ListItem Value="True">มี</asp:ListItem>
                                                                                     <asp:ListItem Value="False">ไม่มี</asp:ListItem>
                                                                                 </asp:RadioButtonList>

                                                                                    </td>
                                                                          

                                                                                </tr>

                                                                                <tr>
                                                                                    <td class="auto-style4">
                                                                                        <font color=red>บุคคลที่มีอํานาจควบคุมการทําธุรกรรมในทอดสุดท้าย (1)</font>
                                                                                        <br><dd>
                                                                                            <font color="red" ; size=4px>
                                                                                                (1) บุคคลที่มีอํานาจควบคุมการทําธุรกรรมในทอดสุดท้าย หมายถึงบุคคลธรรมดาที่มีอํานาจควบคุมหรือตัดสินใจในทอดสุดท้ายเกี่ยวกับการทําธุรกรรม เช่น ผู้ที่ตัดสินใจอยู่เบื้องหลังในการกำหนดทิศทางการซื้อขาย
                                                                                                โดยไม่จําเป็นต้องเป็นบุคคลที่ส่งคําสั่งซื้อขายเป็นต้น
                                                                                            </font></br>
                                                                                    </td>
                                                                                   <td align class="auto-style6">   
                                                                                  <asp:RadioButtonList ID="role2" runat="server"  RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1">
                                                                                     <asp:ListItem Value="True">มี</asp:ListItem>
                                                                                     <asp:ListItem Value="False">ไม่มี</asp:ListItem>
                                                                                 </asp:RadioButtonList>

                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td class="auto-style4">
                                                                                        <font color=red>บุคคลที่ได้รับประโยชน์จากการทําธุรกรรมใทอดสุดท้าย (2)</font>
                                                                                        <br><dd>
                                                                                            <font color="red" ; size=4px>
                                                                                                (2) บุคคลที่ได้รับระโยชน์จากการทําธุรกรรมในทอดสุดท้าย หมายถึงบุคคลธรรมดาที่เป็นเจ้าของบัญชีที่เเท้จริงซึ่งพิจารณาจากข้อเท็จจริงในทางพฤตินัย เช่น
                                                                                                ผู้ได้รับประโยชน์ในรูปเเบบเงินปันผล ส่วนต่างราคา หรือการใช้สิทธิต่างๆ เป็นต้น
                                                                                            </font></br>
                                                                                    </td>
                                                                                   <td align class="auto-style6">   
                                                                                  <asp:RadioButtonList ID="role3" runat="server"  RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="1">
                                                                                     <asp:ListItem Value="True">มี</asp:ListItem>
                                                                                     <asp:ListItem Value="False">ไม่มี</asp:ListItem>
                                                                                 </asp:RadioButtonList>

                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td class="auto-style4">
                                                                                        <center></center><font color="red">
                                                                                            ***กรณีตอบว่ามข้อใดข้อหนึ่งกรุณากรอกรายละเอียดในเอกสารเเบบเเสดงตัวข้อมูลบุคคลที่เกี่ยวข้อง
                                                                                            กับผู้ขอเปิดบัญชีให้ครบถ้วนเเละโปรดเเนบสําเนาบัตรประชาชนของบุคคลนั้นพร้อมรับรองสําเนา 1 ฉบับ
                                                                                        </font><center>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>

                                                                            <br>
                                                                            <br>
                                                                            &nbsp;&nbsp;&nbsp;
                                                                            <td>
                                                            <tr>
                                                                &nbsp;โดยการลงนามในเอกสารนี้ข้าพเจ้าขอรับรอง และยืนยันว่าข้อมูลรายละเอียดข้างต้นเป็นจริงทุกประการ และข้าพเจ้าได้เข้าใจและรับทราบถึงข้อกฏหมายกฏระเบียบที่เกี่ยวข้องหรือข้อบังคับ ประกาศ ซึ่งออกโดยสำนักงานคณะกรรมการกำกับหลักทรัพย์เเละ ตลาดหลักทรัพย์แห่งประเทศไทย สำนักหักบัญชี หน่วยงานราชการ หรือ บริษัทฯ ที่เกี่ยวข้องกับการซื้อขายหลักทรัพย์ดีแล้ว ทั้งนี้ ข้าพเจ้าตกลงยินยอมให้บริษัทฯ ทำการตรวจสอบ และเปิดเผยข้อมูลของข้าพเจ้าต่อสำนักงานคณะกรรมการกำกับหลักทรัพย์และตลาดหลักทรัพย์แห่งประเทศไทย สำนักหักบัญชี และ/หรือหน่วยงานที่มีอำนาจตามกฏหมาย
                                                                <br>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ข้าพเจ้าขอรับรองว่าข้าพเจ้ามีอำนาจโดยชอบด้วยกฏหมายในการทำการซื้อขายหลักทรัพย์ ภายใต้กฏหมายของประเทศไทย และกฏหมายของประเทศที่ข้าพเจ้าจดทะเบียน ข้าพเจ้า ขอสละข้อต่อสู้ทั้งปวงบรรดาที่พึงมีต่อบริษัทฯ ไม่ว่าด้วยประการใดๆ ทั้งสิ้นหากข้าพเจ้าให้ข้อมูลเท็จ และข้าพเจ้ายินดีปฏิบัติตามกฏระเบียบข้อบังคับในการซื้อขายหลักทรัพย์ของบริษัทฯ อย่างเคร่งครัด
                                                            </tr></td>
                                                            <br>
                                                            <br>


                                                    </div>

                                                </div>
                                            
                                                    
                                            </div>
                                            </fieldset>
               </form>

</div>
</div>

 
        

        
</body>
</html>

