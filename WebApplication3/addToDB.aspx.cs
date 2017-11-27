using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class addToDB : System.Web.UI.Page
    {
        public static string refNo;
        private decimal ConvertDecimal(string convertData)
        {
            decimal number;
            if (Decimal.TryParse(convertData, out number)) { }
            else
            {
                number = 0;
            }
            return number;

        }
        private string getPrefix(string Leuang, string fildName)
        {
            string prefixTH3;
            if (Request.Form.Get(fildName) != null)
            {
                if (Leuang == "TH")
                {
                    switch (Request.Form.Get(fildName))
                    {
                        case "1":
                            prefixTH3 = "นาย";
                            break;
                        case "2":
                            prefixTH3 = "นางสาว";
                            break;
                        case "3":
                            prefixTH3 = "นาง";
                            break;
                        default:
                            prefixTH3 = null;
                            break;
                    }
                }
                else
                {
                    switch (Request.Form.Get(fildName))
                    {
                        case "1":
                            prefixTH3 = "Mr.";
                            break;
                        case "2":
                            prefixTH3 = "Mrs.";
                            break;
                        case "3":
                            prefixTH3 = "Ms.";
                            break;
                        default:
                            prefixTH3 = null;
                            break;
                    }

                }
                return prefixTH3;
            }
            else
            {
                return "";
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {


            bool checkSucces = InsertData();

            if (!checkSucces)
            {
                ConnectDataDataContext context = new ConnectDataDataContext();
                context.DeleteNoSuccessSP(refNo);
                Label1.Text = "No Successful Save";
                context.SubmitChanges();
            }
        }
        private bool InsertData()
        {
            try
            {
                ConnectDataDataContext context = new ConnectDataDataContext();
                /*==========Get Max CusNo======================================================================================*/
                string CustNo;
                if (context.Accounts.Max(a => a.CustNo) == null)
                {
                    CustNo = "ACC00001";
                }
                else
                {
                    CustNo = context.Accounts.Max(a => a.CustNo).Substring(3, 5);//.Substring(3, 7);
                    CustNo = "ACC" + String.Format("{0:D5}", (Convert.ToInt32(CustNo) + 1));
                }
                /*==========Get Max CusNo======================================================================================*/
                /*==========Account======================================================================================*/
                refNo = CustNo;
                Account acc = new Account();
                acc.draft_date = Request.Form.Get("draft_date");
                acc.suggester_name = Request.Form.Get("suggester_name");
                acc.type_Account = Request.Form.Get("u_type") == "1" ? "บุคคลธรรมดา" : "นิติบุคคล";
                acc.CustNo = CustNo;
                acc.total_limit = ConvertDecimal(Request.Form.Get("t_4")) + ConvertDecimal(Request.Form.Get("t_5")) + ConvertDecimal(Request.Form.Get("t_6")) + ConvertDecimal(Request.Form.Get("t_7")) + ConvertDecimal(Request.Form.Get("t_8")) + ConvertDecimal(Request.Form.Get("t_9")) + ConvertDecimal(Request.Form.Get("t10"));
                acc.a_1 = Request.Form.Get("1") != null ? Request.Form.Get("1").Contains("1") ? true : false : false;
                acc.a_2 = Request.Form.Get("2") != null ? Request.Form.Get("2").Contains("1") ? true : false : false;
                acc.a_3 = Request.Form.Get("3") != null ? Request.Form.Get("3").Contains("1") ? true : false : false;
                acc.CustNo_Mate = Request.Form.Get("yesno") == "2" ? "Mate_" + CustNo : null;
                acc.SendAddr = Request.Form.Get("sendadd") != null ? Request.Form.Get("sendadd") : "1";
                context.Accounts.InsertOnSubmit(acc);
                context.SubmitChanges();
                /*==========End_Account======================================================================================*/
                /*==========LimitAccount======================================================================================*/
                List<LimitAccount> listLimitAccount = new List<LimitAccount>();
                for (int i = 0; i < 9; i++)
                {
                    LimitAccount LimitAcc = new LimitAccount();
                    if (i == 0)
                    {
                        if (Request.Form.Get("account") != null && Request.Form.Get("account").Contains("1"))
                        {
                            LimitAcc.Limt = ConvertDecimal(Request.Form.Get("t_4"));
                            LimitAcc.CustNo = CustNo;
                            LimitAcc.TypeID = i + 1;
                            listLimitAccount.Add(LimitAcc);
                        }
                    }
                    else
                    {
                        if (Request.Form.Get("account") != null && Request.Form.Get("account" + i.ToString()) == "1")
                        {
                            LimitAcc.Limt = ConvertDecimal(Request.Form.Get("t_" + (4 + i).ToString()));
                            LimitAcc.CustNo = CustNo;
                            LimitAcc.TypeID = i + 1;
                            listLimitAccount.Add(LimitAcc);
                        }
                    }

                }
                context.LimitAccounts.InsertAllOnSubmit(listLimitAccount);
                context.SubmitChanges();
                /*==========End LimitAccount======================================================================================*/
                if (Request.Form.Get("u_type") != null && Request.Form.Get("u_type") == "1")//บุคคลธรรมดา
                {



                    /*========== CustInformation======================================================================================*/
                    CustInformation infor = new CustInformation();
                    string Status;


                    switch (Request.Form.Get("yesno"))
                    {
                        case "1":
                            Status = "โสด";
                            break;
                        case "2":
                            Status = "สมรส";
                            break;
                        case "3":
                            Status = "หม้าย";
                            break;
                        case "4":
                            Status = "อย่าร้าง";
                            break;
                        default:
                            Status = null;
                            break;
                    }
                    infor.CustNo = CustNo;
                    infor.Prefix1 = getPrefix("TH", "sex");
                    infor.Prefix2 = getPrefix("EN", "sex1"); ;
                    infor.FName1 = Request.Form.Get("t_12");
                    infor.LName1 = Request.Form.Get("t_13");
                    infor.FName2 = Request.Form.Get("t_14");
                    infor.LName2 = Request.Form.Get("t_15");
                    infor.BirthDate = Request.Form.Get("birthday_date");
                    infor.IDCard = Request.Form.Get("t_16") + Request.Form.Get("t_17") + Request.Form.Get("t_18") + Request.Form.Get("t_19") + Request.Form.Get("t_20");
                    infor.IDGovernment = Request.Form.Get("t_21");
                    infor.Nationality = Request.Form.Get("t_22");
                    infor.PassportNo = Request.Form.Get("t_23");
                    infor.Expired = Request.Form.Get("t_25");
                    infor.CreateDate = Request.Form.Get("t_24");
                    infor.Tel = Request.Form.Get("t_26");
                    infor.MaritalStatus = Status;
                    infor.Guilty = Request.Form.Get("ever") != null ? Request.Form.Get("ever").Contains("1") ? true : false : false;
                    infor.GuiltyDes = Request.Form.Get("t_121");
                    infor.GuiltyYear = Request.Form.Get("t_122");
                    context.CustInformations.InsertOnSubmit(infor);
                    context.SubmitChanges();
                    /*==========End CustInformation======================================================================================*/
                    /*========== addrwork======================================================================================*/
                    AddrCurrent addrWork = new AddrCurrent();
                    addrWork.CustNo = CustNo;
                    addrWork.TypeIDAdrr = 2;
                    addrWork.NameLocal = Request.Form.Get("t_27");
                    addrWork.No = Request.Form.Get("t_28");
                    addrWork.Street = Request.Form.Get("t_28_1");
                    addrWork.Building = Request.Form.Get("t_28_2");
                    addrWork.Alley = Request.Form.Get("t_28_7");
                    addrWork.Locality = Request.Form.Get("t_28_3");
                    addrWork.District = Request.Form.Get("t_28_4");
                    addrWork.Province = Request.Form.Get("t_28_5");
                    addrWork.ZipCode = Request.Form.Get("t_28_6");
                    context.AddrCurrents.InsertOnSubmit(addrWork);
                    context.SubmitChanges();
                    /*==========End work======================================================================================*/
                    /*========== AddrCurrent======================================================================================*/
                    AddrCurrent addrCurr = new AddrCurrent();
                    addrCurr.CustNo = CustNo;
                    addrCurr.TypeIDAdrr = 1;
                    addrCurr.No = Request.Form.Get("t_29");
                    addrCurr.Street = Request.Form.Get("t_30");
                    addrCurr.Building = Request.Form.Get("t_31");
                    addrCurr.Alley = Request.Form.Get("t_31_1");
                    addrCurr.Locality = Request.Form.Get("t_32");
                    addrCurr.District = Request.Form.Get("t_32_1");
                    addrCurr.Province = Request.Form.Get("t_32_2");
                    addrCurr.ZipCode = Request.Form.Get("t_32_3");
                    addrCurr.Tel = Request.Form.Get("t_33");
                    addrCurr.fax = Request.Form.Get("t_34");
                    context.AddrCurrents.InsertOnSubmit(addrCurr);
                    context.SubmitChanges();
                    /*==========End AddrCurrent======================================================================================*/
                    int IDTypeCareer = 0;
                    if (Request.Form.Get("Job") != null && Request.Form.Get("Job").Contains("4"))
                    {
                        IDTypeCareer = context.TypeCareers.Max(a => a.ID) + 1;
                        TypeCareer pTypecareer = new TypeCareer();
                        pTypecareer.Code = "990";
                        pTypecareer.ID = IDTypeCareer;
                        pTypecareer.Description = Request.Form.Get("t_35");
                        context.TypeCareers.InsertOnSubmit(pTypecareer);
                        context.SubmitChanges();
                    }
                    CareerInformation pcareer = new CareerInformation();
                    pcareer.CustNo = CustNo;
                    pcareer.ID = Request.Form.Get("Job") != null ? Request.Form.Get("Job") == "4" ? IDTypeCareer : Convert.ToInt32(Request.Form.Get("Job")) : 1;
                    pcareer.Business = Request.Form.Get("t_36");
                    pcareer.Position = Request.Form.Get("t_37");
                    pcareer.Salary = Request.Form.Get("t_38");
                    pcareer.Experience = Request.Form.Get("t_39");
                    pcareer.OtherIncome = Request.Form.Get("t_40");
                    pcareer.OtherSourcesIncome = Request.Form.Get("t_41");
                    //  pcareer.AnnualSales = Request.Form.Get("t_122");
                    pcareer.Political = Request.Form.Get("YesorNo").Contains("2") ? true : false;
                    pcareer.PoliticalPosition = Request.Form.Get("t_42");
                    context.CareerInformations.InsertOnSubmit(pcareer);
                    context.SubmitChanges();


                    if (Request.Form.Get("yesno") != null && Request.Form.Get("yesno") == "2")//คู่สมรส
                    {

                        /*========== CustInformation======================================================================================*/
                        infor = new CustInformation();


                        infor.CustNo = "Mate_" + CustNo;
                        infor.Prefix1 = getPrefix("TH", "sex2");
                        infor.Prefix2 = getPrefix("EN", "sex3");
                        infor.FName1 = Request.Form.Get("t_43");
                        infor.LName1 = Request.Form.Get("t_44");
                        infor.FName2 = Request.Form.Get("t_45");
                        infor.LName2 = Request.Form.Get("t_46");
                        infor.BirthDate = Request.Form.Get("Birthday_day2");
                        infor.IDCard = Request.Form.Get("t_47") + Request.Form.Get("t_48") + Request.Form.Get("t_49") + Request.Form.Get("t_50") + Request.Form.Get("t_51");
                        infor.IDGovernment = Request.Form.Get("t_52");
                        infor.Nationality = Request.Form.Get("t_53");
                        infor.Expired = Request.Form.Get("t_55");
                        infor.CreateDate = Request.Form.Get("t_54");
                        infor.Tel = Request.Form.Get("t_56");
                        infor.MaritalStatus = "สมรส";
                        context.CustInformations.InsertOnSubmit(infor);
                        context.SubmitChanges();
                        /*==========End CustInformation======================================================================================*/
                        /*========== addrwork======================================================================================*/
                        addrWork = new AddrCurrent();
                        addrWork.CustNo = "Mate_" + CustNo;
                        addrWork.TypeIDAdrr = 2;
                        addrWork.NameLocal = Request.Form.Get("t_57");
                        addrWork.No = Request.Form.Get("t_58");
                        addrWork.Street = Request.Form.Get("t_59");
                        addrWork.Building = Request.Form.Get("t_60");
                        addrWork.Alley = Request.Form.Get("t_60_1");
                        addrWork.Locality = Request.Form.Get("t_61");
                        addrWork.District = Request.Form.Get("t_61_1");
                        addrWork.Province = Request.Form.Get("t_61_2");
                        addrWork.ZipCode = Request.Form.Get("t_61_3");
                        addrWork.Tel = Request.Form.Get("t_62");
                        addrWork.fax = Request.Form.Get("t_63");
                        context.AddrCurrents.InsertOnSubmit(addrWork);
                        context.SubmitChanges();
                        /*==========End work======================================================================================*/


                        if (Request.Form.Get("Job2") != null && Request.Form.Get("Job2") == "4")
                        {
                            IDTypeCareer = context.TypeCareers.Max(a => a.ID) + 1;
                            TypeCareer pTypecareer = new TypeCareer();
                            pTypecareer.Code = "990";
                            pTypecareer.ID = IDTypeCareer;
                            pTypecareer.Description = Request.Form.Get("t_64");
                            context.TypeCareers.InsertOnSubmit(pTypecareer);
                            context.SubmitChanges();
                        }
                        pcareer = new CareerInformation();
                        pcareer.CustNo = "Mate_" + CustNo;
                        pcareer.ID = Request.Form.Get("Job2") == "4" ? IDTypeCareer : Convert.ToInt32(Request.Form.Get("Job2"));
                        pcareer.Business = Request.Form.Get("t_65");
                        pcareer.Position = Request.Form.Get("t_66");
                        pcareer.Salary = Request.Form.Get("t_67");
                        pcareer.Experience = Request.Form.Get("t_68");
                        pcareer.OtherIncome = Request.Form.Get("t_69");
                        pcareer.OtherSourcesIncome = Request.Form.Get("t_70");
                        //  pcareer.AnnualSales = Request.Form.Get("t_122");
                        pcareer.Political = Request.Form.Get("YesorNo2") != null ? Request.Form.Get("YesorNo2").Contains("2") ? true : false : false;
                        pcareer.PoliticalPosition = Request.Form.Get("t_71");
                        context.CareerInformations.InsertOnSubmit(pcareer);
                        context.SubmitChanges();

                    }//คู่สมรส

                }//บุคคลธรรมดา
                else
                {
                    //ประวัติลูกค้า กรณีนิติบุคคล  
                    string typeCompany;
                    switch (Request.Form.Get("company1"))
                    {
                        case "1":
                            typeCompany = "บริษัทจำกัด";
                            break;
                        case "2":
                            typeCompany = "ห้างหุ้นส่วนจำกัด";
                            break;
                        case "3":
                            typeCompany = "ห้างหุ้นส่วนสามัญนิติบุคคล";
                            break;
                        case "4":
                            typeCompany = "บริษัทมหาชน";
                            break;
                        case "5":
                            typeCompany = Request.Form.Get("t_72");
                            break;
                        default:
                            typeCompany = null;
                            break;
                    }
                    InforCorporate company = new InforCorporate();
                    company.CustNo = CustNo;
                    company.typecompany = typeCompany;
                    company.Name = Request.Form.Get("t_73");
                    company.Nationality = Request.Form.Get("t_74");
                    company.RegisterNo = Request.Form.Get("t_75");
                    company.RegisterDate = Request.Form.Get("t_76");
                    company.RegisteCountry = Request.Form.Get("t_77");
                    company.TaxID = Request.Form.Get("t_78");
                    company.typebisiness = Request.Form.Get("t_79");
                    company.RegisteredCapital = Request.Form.Get("t_80");
                    company.Paid_up_capital = Request.Form.Get("t_81");
                    company.Another1 = Request.Form.Get("t_82");
                    company.Another2 = Request.Form.Get("t_83");
                    context.InforCorporates.InsertOnSubmit(company);
                    context.SubmitChanges();

                    Attorney attorneys = new Attorney();
                    attorneys.CustNo = CustNo;
                    attorneys.Name = Request.Form.Get("t_84");
                    attorneys.IDCard = Request.Form.Get("t_85") + Request.Form.Get("t_86") + Request.Form.Get("t_87") + Request.Form.Get("t_88") + Request.Form.Get("t_89");
                    attorneys.IDGovernment = Request.Form.Get("t_90");
                    attorneys.Another = Request.Form.Get("t_91");
                    attorneys.Nationality = Request.Form.Get("t_92");
                    attorneys.Expired = Request.Form.Get("t_94");
                    attorneys.CreateDate = Request.Form.Get("t_93");
                    attorneys.relationship = Request.Form.Get("t_95");
                    context.Attorneys.InsertOnSubmit(attorneys);
                    context.SubmitChanges();

                }



                // ข้อมูลที่อยู่
                //ที่อยู่ปัจจุบัน อีกแล้ว
                AddrCurrent update = new AddrCurrent();

                if (update != null)
                {
                    update.CustNo = CustNo;
                    update.No = Request.Form.Get("t_96");
                    update.Street = Request.Form.Get("t_96_1");
                    update.TypeIDAdrr = 6;
                    update.Building = Request.Form.Get("t_96_2");
                    update.Alley = Request.Form.Get("t_96_7");
                    update.Locality = Request.Form.Get("t_96_3");
                    update.District = Request.Form.Get("t_96_4");
                    update.Province = Request.Form.Get("t_96_5");
                    update.ZipCode = Request.Form.Get("t_96_6");
                    update.Tel = Request.Form.Get("t_97");
                    update.TelPhone = Request.Form.Get("t_99");
                    update.fax = Request.Form.Get("t_98");
                    update.Email = Request.Form.Get("t_100");
                    context.AddrCurrents.InsertOnSubmit(update);
                    context.SubmitChanges();

                }

                //ที่อยู่อื่นๆ
                AddrCurrent adrrAnotor = new AddrCurrent();
                adrrAnotor.CustNo = CustNo;
                adrrAnotor.TypeIDAdrr = 4;
                adrrAnotor.No = Request.Form.Get("t_101");
                adrrAnotor.Street = Request.Form.Get("t_101_1");
                adrrAnotor.Building = Request.Form.Get("t_101_2");
                adrrAnotor.Alley = Request.Form.Get("t_101_7");
                adrrAnotor.Locality = Request.Form.Get("t_101_3");
                adrrAnotor.District = Request.Form.Get("t_101_4");
                adrrAnotor.Province = Request.Form.Get("t_101_5");
                adrrAnotor.ZipCode = Request.Form.Get("t_101_6");
                adrrAnotor.Tel = Request.Form.Get("t_102");
                adrrAnotor.fax = Request.Form.Get("t_103");
                adrrAnotor.TelPhone = Request.Form.Get("t_104");
                adrrAnotor.Email = Request.Form.Get("t_105");
                context.AddrCurrents.InsertOnSubmit(adrrAnotor);
                context.SubmitChanges();
                //  กรณีติดต่อโดยตรงไม่ได้ให้ติดต่อบุคคลดังนี้
                AddrCurrent adrrref = new AddrCurrent();
                adrrref.CustNo = CustNo;
                adrrref.TypeIDAdrr = 5;
                adrrref.No = Request.Form.Get("t_110");
                adrrref.Street = Request.Form.Get("t_110_1");
                adrrref.Building = Request.Form.Get("t_110_2");
                adrrref.Alley = Request.Form.Get("t_110_7");
                adrrref.Locality = Request.Form.Get("t_110_3");
                adrrref.District = Request.Form.Get("t_110_4");
                adrrref.Province = Request.Form.Get("t_110_5");
                adrrref.ZipCode = Request.Form.Get("t_101_6");
                adrrref.Tel = Request.Form.Get("t_111");
                adrrref.fax = Request.Form.Get("t_112");
                adrrref.TelPhone = Request.Form.Get("t_113");
                adrrref.Email = Request.Form.Get("t_114");
                context.AddrCurrents.InsertOnSubmit(adrrref);

                RefPerSonInformation refdata = new RefPerSonInformation();
                refdata.Prefix1 = getPrefix("TH", "sex4");
                refdata.FName1 = Request.Form.Get("t_106");
                refdata.LName1 = Request.Form.Get("t_107");
                refdata.career = Request.Form.Get("t_109");
                refdata.TypeIDAdrr = 5;
                refdata.CustNo = CustNo;
                refdata.relationship = Request.Form.Get("t_108");
                context.RefPerSonInformations.InsertOnSubmit(refdata);
                context.SubmitChanges();


                InforPayment payInfor = new InforPayment();
                payInfor.CustNo = CustNo;
                payInfor.ATS = Request.Form.Get("check1") != null ? true : false;
                payInfor.e_Dividend = Request.Form.Get("check1") != null ? true : false;
                payInfor.Bank_1 = Request.Form.Get("t_115");
                payInfor.Branch1 = Request.Form.Get("t_116");
                payInfor.AccountN01 = Request.Form.Get("t_117");
                payInfor.Bank2 = Request.Form.Get("t_118");
                payInfor.Branch2 = Request.Form.Get("t_119");
                payInfor.AccountN02 = Request.Form.Get("t_120");
                payInfor.TypeAccount1 = Request.Form.Get("check2") != null ? Request.Form.Get("check2").Contains("1") ? "ออมทรัพย์" : "กระแสรายวัน" : "";
                payInfor.TypeAccount2 = Request.Form.Get("check3") != null ? Request.Form.Get("check3").Contains("1") ? "ออมทรัพย์" : "กระแสรายวัน" : "";
                context.InforPayments.InsertOnSubmit(payInfor);
                context.SubmitChanges();
                Response.Write("<script>alert('บันทึกสำเร็จ')</script>");
                try
                {
                    string sendEmail = ConfigurationManager.AppSettings["SendEmail"];
                    if (sendEmail.ToLower() == "true")
                    {
                        bool checkMail = SendEmail("", CustNo);
                        if (!checkMail)
                        {
                            Response.Write("<script>alert('ขออภัย ไม่สามารถส่งอีเมลล์ได้')</script>");
                     
                        }
                    }
                    //else { Response.Write("<script>alert('ขออภัย ไม่สามารถส่งอีเมลล์ถึงคุณ " + Request.Form.Get("t_100") + " ได้')</script>"); }
                    return true;
                }catch(Exception e){

                    System.Diagnostics.Debug.WriteLine("ERROR ==>" + e);
                    return true;
                }
               
            }
            catch (Exception e)
            {
                System.Diagnostics.Debug.WriteLine("ERROR ==>" + e);
                Response.Write("<script>alert('การบันทึกไม่สำเร็จ ')</script>");
                return false;
            }
        }

        private bool SendEmail(String to, String custno)
        {

            try
            {
                ConnectDataDataContext context = new ConnectDataDataContext();
                Account acc = context.Accounts.Where(a => a.CustNo == custno).FirstOrDefault();
                string html = String.Empty ;
                var addr = context.AddrCurrents.Join(context.CustInformations, a => a.CustNo, b => b.CustNo, (a, b) => new { CustInfor = b, Addr = a }).Where(a => a.Addr.CustNo == custno && a.Addr.TypeIDAdrr == 6).FirstOrDefault();
                if (acc.type_Account!=null&&acc.type_Account.Contains("บุคคลธรรมดา"))
                {
                    if (addr == null || acc == null)
                    {
                        return false;
                    }
                    html =
  @"<html>
<body>



<b>มีผู้ลงทะเบียน แบบคำขอเปิดบัญชีสัญญาแต่งตั้งตัวแทนนายหน้า</b>
<br><br><br>
<table>
 
  <tr>
    <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""100"">ชื่อ</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + addr.CustInfor.FName1 + @"</td>
   
  </tr>
  <tr>
      <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""100"">นามสกุล</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + addr.CustInfor.LName1 + @"</td>
 
  </tr>
  <tr>
     <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""100"">เลขที่บัตรประชาชน</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + addr.CustInfor.IDCard + @"</td>
  
  </tr>
  <tr>
     <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""100"">เบอร์โทรศัพท์มือถือ</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + addr.Addr.TelPhone + @"</td>
  </tr>
   <tr>
     <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""100"">อีเมลล์</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + addr.Addr.Email + @"</td>
  </tr>
   <tr>
      <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""100"">ที่อยู่เลขที่</td>
   <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + addr.Addr.No + @"</td>
  </tr>
   
   <tr>
      <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""100"">อาคาร</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + addr.Addr.Building + @"</td>
  </tr> <tr>
     <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""100"">ซอย</td>
   <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + addr.Addr.Alley + @"</td>
  </tr>
   <tr>
      <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""100"">ถนน</td>
   <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + addr.Addr.Street + @"</td>
  </tr>
   <tr>
     <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""100"">ตำบล</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + addr.Addr.Locality + @"</td>
  </tr>
   <tr>
      <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""100"">อำเภอ</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + addr.Addr.District + @"</td>
  </tr>
   <tr>
     <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""100"">จังหวัด</td>
     <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + addr.Addr.Province + @"</td>
  </tr>
   <tr>
      <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""100"">รหัสไปรษณีย์</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + addr.Addr.ZipCode + @"</td>
  </tr>
   <tr>
     <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""100"">ประเภทบัญชีที่ต้องการเปิด</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + acc.type_Account + @"</td>
  </tr>
</table>



</body>
</html>";
                } 
                else {
                 var AddrCurrents =   context.AddrCurrents.Where(a => a.CustNo == custno&&a.TypeIDAdrr==6).FirstOrDefault();
                 var InforCorporates =   context.InforCorporates.Where(a => a.CustNo == custno).FirstOrDefault();
                 if (AddrCurrents == null || InforCorporates == null) {
                     return false;
                 }
                 string type = InforCorporates.typecompany == null ? "ไม่ระบุ" : InforCorporates.typecompany;
html=
     @"<html>
<body>



<b>มีผู้ลงทะเบียน แบบคำขอเปิดบัญชีสัญญาแต่งตั้งตัวแทนนายหน้า</b>
<br><br><br>
<table>
 <tr>
    <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""130"">ประเภท</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + type + @"</td>
   
  </tr>
  <tr>
    <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""130"">ชื่อ - นามสกุล</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + InforCorporates.Name + @"</td>
   
  </tr>
  <tr>
      <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""130"">สัญชาติ</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + InforCorporates.Nationality + @"</td>
 
  </tr>
  <tr>
     <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""130"">เลขที่ทะเบียนเลขที่</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + InforCorporates.RegisterNo + @"</td>
  
  </tr>
  <tr>
     <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""130"">วันที่จดทะเบียน</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + InforCorporates.RegisterDate + @"</td>
  </tr>
   <tr>
     <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""130"">ประเทศที่จดทะเบียน</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + InforCorporates.RegisteCountry + @"</td>
  </tr>
   <tr>
      <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""130"">เลขประจำตัวผู้เสียภาษี</td>
   <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + InforCorporates.TaxID + @"</td>
  </tr>
   
   <tr>
      <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""130"">ประเภทธุรกิจ</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + InforCorporates.typebisiness + @"</td>
  </tr> <tr>
     <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""130"">ทุนจดทะเบียน</td>
   <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + InforCorporates.RegisteredCapital + @"</td>
  </tr>
   <tr>
      <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""130"">ทุนจดทะเบียนชำระแล้ว</td>
   <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + InforCorporates.Paid_up_capital + @"</td>
  </tr>
   <tr>
      <td style=""text-align:right;padding:9px 10px 5px 0px;margin:0px;"" width=""130"">ที่อยู่เลขที่</td>
   <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + AddrCurrents.No + @"</td>
  </tr>
   
   <tr>
      <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""130"">อาคาร</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + AddrCurrents.Building + @"</td>
  </tr> <tr>
     <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""130"">ซอย</td>
   <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + AddrCurrents.Alley + @"</td>
  </tr>
   <tr>
      <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""130"">ถนน</td>
   <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + AddrCurrents.Street + @"</td>
  </tr>
   <tr>
     <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""130"">ตำบล</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + AddrCurrents.Locality + @"</td>
  </tr>
   <tr>
      <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""130"">อำเภอ</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + AddrCurrents.District + @"</td>
  </tr>
   <tr>
     <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""130"">จังหวัด</td>
     <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + AddrCurrents.Province + @"</td>
  </tr>
   <tr>
      <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""130"">รหัสไปรษณีย์</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + AddrCurrents.ZipCode + @"</td>
  </tr>
   <tr>
     <td style=""text-align:right;padding:9px 10px 0px 0px;margin:0px;"" width=""130"">ประเภทบัญชีที่ต้องการเปิด</td>
    <td style=""padding:9px 10px 5px 0px;margin:0px;"">" + acc.type_Account + @"</td>
  </tr>
</table>



</body>
</html>";
                }
              
             

                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("roronoa228@gmail.com");
                mailMessage.To.Add(new MailAddress("roronoa228@gmail.com"));
                mailMessage.To.Add(new MailAddress("phacharinp55@email.nu.ac.th"));
                mailMessage.CC.Add(new MailAddress("boonprakitchaikaew@gmail.com"));
                
                // Specify the email body
                mailMessage.IsBodyHtml = true;
               

                mailMessage.Body = html;
                // Specify the email Subject
                mailMessage.Subject = "แบบคำขอเปิดบัญชีสัญญาแต่งตั้งตัวแทนนายหน้า";

                // Specify the SMTP server name and post number
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                // Specify your gmail address and password

                smtpClient.Credentials = new System.Net.NetworkCredential()
                {
                    UserName = "roronoa228@gmail.com",
                    Password = "password"
                };
              //  smtpClient.Credentials = CredentialCache.DefaultNetworkCredentials;
                // Gmail works on SSL, so set this property to true
                smtpClient.EnableSsl = true;
                // Finall send the email message using Send() method
                smtpClient.Send(mailMessage);
                return true;

            }
            catch (Exception e)
            {
                System.Diagnostics.Debug.WriteLine("ERROR ==>" + e);
                return false;
            }
        }
    }


}
