using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class RegisteredData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                string ActivationCode = Request.QueryString["ActivationCode"];

                ConnectDataDataContext connect = new ConnectDataDataContext();
                  GenerateLink gen = new GenerateLink();
                  gen = connect.GenerateLinks.Where(a => a.htmlGen == ActivationCode).FirstOrDefault();
                if (gen != null)
                {
                    string custAcc = gen.CustNo;// "ACC00002";//
                Account acc = new Account();
                acc = connect.Accounts.Where(a => a.CustNo == custAcc).FirstOrDefault();
                if (acc != null)
                {
                    List<AddrCurrent> addr = new List<AddrCurrent>();
                    AddrCurrent addrIndex = new AddrCurrent();
                    addr = connect.AddrCurrents.Where(a => a.CustNo.Contains(acc.CustNo)).ToList();
                    if (acc.type_Account != null && acc.type_Account.Contains("บุคคลธรรมดา"))
                    {
                        RadioButton9.Checked = true;
                        mate.Visible = false;
                        u2_2.Visible = false;
                        u2_3.Visible = false;
                     

                    }
                    else { RadioButton10.Checked = true;
                    u1_2.Visible = false;
                    mate.Visible = false;
                    u1_3.Visible = false;
                   
                    
                    
                    }
                    List<LimitAccount> limit =new List<LimitAccount>();
                    limit = connect.LimitAccounts.Where(a => a.CustNo == acc.CustNo).ToList();
                    if (limit!=null){
                        foreach(var a in limit){
                            switch (a.TypeID)
                            {
                                case 1:
                                    cash_checkbox.Checked = true;
                                    cash.Value = ((decimal)a.Limt).ToString();
                                    break;
                                case 2:
                                    cash_balance_checkbox.Checked = true;
                                    cash_balance.Value = ((decimal)a.Limt).ToString();
                                    break;
                                case 3:
                                    credit_balance_checkbox.Checked = true;
                                    credit_balance.Value = ((decimal)a.Limt).ToString();
                                    break;
                                case 4:
                                    derivatives_checkbox.Checked = true;
                                    derivatives.Value = ((decimal)a.Limt).ToString();
                                    break;
                                case 5:
                                    sbl_checkbox.Checked = true;
                                    sbl.Value = ((decimal)a.Limt).ToString();
                                    break;
                               
                                case 6:
                                    bond_checkbox.Checked = true;
                                    bond.Value = ((decimal)a.Limt).ToString();
                                    break;
                                case 7:
                                    account6.Checked = true;
                                   
                                    break;
                                case 8:
                                    account07.Checked = true;
                                    anoter.Value = ((decimal)a.Limt).ToString();

                                    break;
                                case 9:
                                    account7.Checked = true;

                                    break;
                               
                                default:
                                   
                                    break;
                            }
                        
                        }
                    
                    }





                    drafDate.Value = acc.draft_date;
                    suggester_name.Value = acc.suggester_name;
                    if (acc.type_Account.Contains("นิติบุคคล"))
                    {
                        InforCorporate commpany = new InforCorporate();
                        commpany = connect.InforCorporates.Where(a => a.CustNo == acc.CustNo).FirstOrDefault();
                        RadioTypeCompany.SelectedValue = commpany.typecompany;
                        string[] typelist = { "บริษัทจำกัด", "ห้างหุ้นส่วนจำกัด", "ห้างหุ้นส่วนสามัญนิติบุคคล", "บริษัทมหาชน" };
                        if (commpany.typecompany != null && !typelist.Contains(commpany.typecompany))
                        {
                            RadioTypeCompany.SelectedValue = "อื่นๆ";
                            txtOther.Value = commpany.typecompany;
                        }
                        nation.Value = commpany.Nationality;
                        accComNo.Value = commpany.RegisterNo;
                        regisDate.Value = commpany.RegisterDate;
                        regiscontry.Value = commpany.RegisteCountry;
                        taxNo.Value = commpany.TaxID;
                        typeBisiness.Value = commpany.typebisiness;
                        regisCap.Value = commpany.RegisteredCapital;
                        regisCapPaid.Value = commpany.Paid_up_capital;
                        another1.Value = commpany.Another1;
                        another2.Value = commpany.Another2;

                        Attorney atto = new Attorney();
                        atto = connect.Attorneys.Where(a => a.CustNo == acc.CustNo).FirstOrDefault();
                        NameNiti.Value = atto.Name;
                        NITIEMPID.Value = atto.IDCard;
                        idgov.Value = atto.IDGovernment;
                        anothervisa.Value = atto.Another;
                        attonation.Value = atto.Nationality;
                        attodateexpire.Value = atto.Expired;
                        attodateget.Value = atto.CreateDate;
                        attorelation.Value = atto.relationship;
                        if (atto.IDCard != null)
                        {
                            visa.Checked = true;
                        }
                        if (atto.IDGovernment != null)
                        {
                            visa2.Checked = true;
                        }
                        if (atto.Another != null)
                        {
                            visa3.Checked = true;
                        }

                    }
                    else
                    {
                        CustInformation infor = new CustInformation();
                        infor = connect.CustInformations.Where(a => a.CustNo == acc.CustNo).FirstOrDefault();
                        if (infor != null)
                        {
                            sex_th_main.SelectedValue = infor.Prefix1 != null ? infor.Prefix1 : "";
                            sex_en_main.SelectedValue = infor.Prefix2 != null ? infor.Prefix2 : "";
                            fname_th_main.Value = infor.FName1;
                            fname_en_main.Value = infor.FName2;
                            lname_th_main.Value = infor.LName1;
                            lname_en_main.Value = infor.LName2;
                            birth_main.Value = infor.BirthDate;
                            idCard_main.Value = infor.IDCard;
                            IDGov_main.Value = infor.IDGovernment;
                            nation_main.Value = infor.Nationality;
                            passport_main.Value = infor.PassportNo;
                            create_main.Value = infor.CreateDate;
                            expire_main.Value = infor.Expired;
                            tel_main.Value = infor.Tel;
                            RadioButtonList6.SelectedValue = infor.MaritalStatus != null ? infor.MaritalStatus : "";
                        }
                        addrIndex = new AddrCurrent();//work
                        addrIndex = addr.Where(a => a.TypeIDAdrr == 2 && a.CustNo == acc.CustNo).FirstOrDefault();
                        if (addrIndex != null)
                        {
                            workname_main.Value = addrIndex.NameLocal;
                            no_work_main.Value = addrIndex.No;
                            street_work_main.Value = addrIndex.Street;
                            build_work_main.Value = addrIndex.Building;
                            alley_work_main.Value = addrIndex.Alley;
                            location_work_main.Value = addrIndex.Locality;
                            distric_work_main.Value = addrIndex.District;
                            province_work_main.Value = addrIndex.Province;
                            zip_work_main.Value = addrIndex.ZipCode;



                        }
                        addrIndex = new AddrCurrent();
                        addrIndex = addr.Where(a => a.TypeIDAdrr == 1 && a.CustNo == acc.CustNo).FirstOrDefault();
                        if (addrIndex != null)
                        {
                            no_main.Value = addrIndex.No;
                            street_main.Value = addrIndex.Street;
                            build_main.Value = addrIndex.Building;
                            alley_main.Value = addrIndex.Alley;
                            locatin_main.Value = addrIndex.Locality;
                            distric_main.Value = addrIndex.District;
                            province_main.Value = addrIndex.Province;
                            zip_main.Value = addrIndex.ZipCode;
                            tel_main2.Value = addrIndex.Tel;
                            fax_main.Value = addrIndex.fax;
                        }

                        CareerInformation career = new CareerInformation();
                        career = connect.CareerInformations.Where(a => a.CustNo == acc.CustNo).FirstOrDefault();
                        if (career != null)
                        {
                            switch (career.ID)
                            {
                                case 1:
                                    RadioButton5.Checked = true;
                                    des910.Value = career.AnnualSales;
                                    break;
                                case 2:
                                    RadioButton6.Checked = true;
                                    break;
                                case 3:
                                    RadioButton7.Checked = true;
                                    break;
                                default:
                                    RadioButton8.Checked = true;
                                    des990.Value = connect.TypeCareers.Where(a => a.ID == career.ID).Select(a => a.Description).FirstOrDefault();
                                    break;
                            }
                            typebiss.Value = career.Business;
                            positionbiss.Value = career.Position;
                            salarybiss.Value = career.Salary;
                            experanceworkbiss.Value = career.Experience;
                            incomebiss.Value = career.OtherIncome;
                            incomebissHow.Value = career.OtherSourcesIncome;
                            Political.SelectedValue = career.Political != null ? career.Political.ToString() : "";
                            positionPolitical.Value = career.PoliticalPosition;




                        }


                        if (!String.IsNullOrEmpty(acc.CustNo_Mate))
                        {
                            mate.Visible = true;
                            infor = new CustInformation();
                            infor = connect.CustInformations.Where(a => a.CustNo == acc.CustNo_Mate).FirstOrDefault();
                            if (infor != null)
                            {
                                RadioButtonList5.SelectedValue = infor.Prefix1 != null ? infor.Prefix1 : "";
                                RadioButtonList4.SelectedValue = infor.Prefix2 != null ? infor.Prefix2 : "";
                                mFnameTH.Value = infor.FName1;
                                mFnameEn.Value = infor.FName2;
                                mLnameTH.Value = infor.LName1;
                                mLnameEn.Value = infor.LName2;
                                mbirthDate.Value = infor.BirthDate;
                                mIDCard.Value = infor.IDCard;
                                mIDGov0.Value = infor.IDGovernment;
                                mnation0.Value = infor.Nationality;
                                //  passport_main.Value = infor.PassportNo;
                                mcreate0.Value = infor.CreateDate;
                                mexpire0.Value = infor.Expired;
                                mtelphone0.Value = infor.Tel;

                            }
                            addrIndex = new AddrCurrent();//work
                            addrIndex = addr.Where(a => a.TypeIDAdrr == 2 && a.CustNo == acc.CustNo_Mate).FirstOrDefault();
                            if (addrIndex != null)
                            {
                                mWorkName.Value = addrIndex.NameLocal;
                                mno.Value = addrIndex.No;
                                mstreet.Value = addrIndex.Street;
                                mbuild.Value = addrIndex.Building;
                                malley.Value = addrIndex.Alley;
                                mlocation.Value = addrIndex.Locality;
                                mdistrict.Value = addrIndex.District;
                                mprovine.Value = addrIndex.Province;
                                mzip.Value = addrIndex.ZipCode;
                                mtel.Value = addrIndex.Tel;
                                mfax.Value = addrIndex.fax;

                            }


                            career = new CareerInformation();
                            career = connect.CareerInformations.Where(a => a.CustNo == acc.CustNo_Mate).FirstOrDefault();
                            if (career != null)
                            {
                                switch (career.ID)
                                {
                                    case 1:
                                        RadioButton1.Checked = true;
                                        mdes910.Value = career.AnnualSales;
                                        break;
                                    case 2:
                                        RadioButton2.Checked = true;
                                        break;
                                    case 3:
                                        RadioButton3.Checked = true;
                                        break;
                                    default:
                                        RadioButton4.Checked = true;
                                        anotherType.Value = connect.TypeCareers.Where(a => a.ID == career.ID).Select(a => a.Description).FirstOrDefault();
                                        break;
                                }
                                mtypebis.Value = career.Business;
                                mpositon.Value = career.Position;
                                msarary.Value = career.Salary;
                                mexperance.Value = career.Experience;
                                income.Value = career.OtherIncome;
                                incomeHow.Value = career.OtherSourcesIncome;
                                RadioButtonList3.SelectedValue = career.Political != null ? career.Political.ToString() : "";
                                TEXT1.Value = career.PoliticalPosition;




                            }



                        }
                       
                    }
                    addrIndex = new AddrCurrent();
                    addrIndex = addr.Where(a => a.TypeIDAdrr == 6 && a.CustNo == acc.CustNo).FirstOrDefault();
                    if (addrIndex != null)
                    {
                        No6.Value = addrIndex.No;
                        street6.Value = addrIndex.Street;
                        build6.Value = addrIndex.Building;
                        alley6.Value = addrIndex.Alley;
                        Locality6.Value = addrIndex.Locality;
                        District6.Value = addrIndex.District;
                        Province6.Value = addrIndex.Province;
                        zip6.Value = addrIndex.ZipCode;
                        tel6.Value = addrIndex.Tel;
                        fax6.Value = addrIndex.TelPhone;
                        telphone6.Value = addrIndex.fax;
                        email6.Value = addrIndex.Email;
                    }
                    addrIndex = new AddrCurrent();
                    addrIndex = addr.Where(a => a.TypeIDAdrr == 4 && a.CustNo == acc.CustNo).FirstOrDefault();
                    if (addrIndex != null)
                    {
                        No4.Value = addrIndex.No;
                        street4.Value = addrIndex.Street;
                        build4.Value = addrIndex.Building;
                        alley4.Value = addrIndex.Alley;
                        Locality4.Value = addrIndex.Locality;
                        District4.Value = addrIndex.District;
                        Province4.Value = addrIndex.Province;
                        zip4.Value = addrIndex.ZipCode;
                        tel4.Value = addrIndex.Tel;
                        fax4.Value = addrIndex.TelPhone;
                        telphone4.Value = addrIndex.fax;
                        email4.Value = addrIndex.Email;
                    }
                    addrIndex = new AddrCurrent();
                    addrIndex = addr.Where(a => a.TypeIDAdrr == 5 && a.CustNo == acc.CustNo).FirstOrDefault();
                    if (addrIndex != null)
                    {
                        No5.Value = addrIndex.No;
                        street5.Value = addrIndex.Street;
                        build5.Value = addrIndex.Building;
                        alley5.Value = addrIndex.Alley;
                        Locality5.Value = addrIndex.Locality;
                        District5.Value = addrIndex.District;
                        Province5.Value = addrIndex.Province;
                        zip5.Value = addrIndex.ZipCode;
                        tel5.Value = addrIndex.Tel;
                        fax5.Value = addrIndex.TelPhone;
                        telphone5.Value = addrIndex.fax;
                        email5.Value = addrIndex.Email;
                    }
                    RefPerSonInformation refPerson = new RefPerSonInformation();
                    refPerson = connect.RefPerSonInformations.Where(a => a.CustNo == acc.CustNo).FirstOrDefault();
                    if (refPerson != null)
                    {
                        RadiosexAnother.SelectedValue = refPerson.Prefix1;
                        FnamePerson.Value = refPerson.FName1;
                        LnamePerson.Value = refPerson.LName1;
                        relationPerson.Value = refPerson.relationship;
                        Radioaddr.SelectedValue = acc.SendAddr;
                    }
                    InforPayment payAcc = new InforPayment();
                    payAcc = connect.InforPayments.Where(a => a.CustNo == acc.CustNo).FirstOrDefault();
                    if (payAcc != null)
                    {

                        ATS.Checked = payAcc.ATS == null ? false : (bool)payAcc.ATS;
                        Bank1.Value = payAcc.Bank_1;
                        Bank2.Value = payAcc.Bank2;
                        ACC01.Value = payAcc.AccountN01;
                        ACC02.Value = payAcc.AccountN02;
                        Branch1.Value = payAcc.Branch1;
                        Branch2.Value = payAcc.Branch2;
                        e_Dividend.Checked = payAcc.e_Dividend == null ? false : (bool)payAcc.e_Dividend;
                        RadioTypeACC01.SelectedValue = payAcc.TypeAccount1 != null ? payAcc.TypeAccount1 : "";
                        RadioTypeACC02.SelectedValue = payAcc.TypeAccount2 != null ? payAcc.TypeAccount2 : "";


                    }

                    CustInformation guilds = new CustInformation();
                    guilds = connect.CustInformations.Where(a => a.CustNo == acc.CustNo).FirstOrDefault();
                    if (guilds != null)
                    {
                        if (guilds.Guilty != null)
                        {
                            if ((bool)guilds.Guilty)
                            {
                                guild.Checked = true;

                            }
                            else
                            {

                                noguild.Checked = true;
                            }
                        }
                        dataguilds.Value = guilds.GuiltyDes;
                        yearguilds.Value = guilds.GuiltyYear;

                    }
                    role1.SelectedValue = acc.a_1.ToString();
                    role2.SelectedValue = acc.a_2.ToString();
                    role3.SelectedValue = acc.a_3.ToString();



                }

                }
            }catch(Exception ee){}
        }
    }
}