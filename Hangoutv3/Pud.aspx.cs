using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Text.RegularExpressions;

public partial class Master_PUD : System.Web.UI.Page
{
    ArrayList serviceList1 = new ArrayList();
    ArrayList serviceList2 = new ArrayList();
    ArrayList serviceList3 = new ArrayList();
    ArrayList serviceList4 = new ArrayList();
    ArrayList serviceList5 = new ArrayList();
    ArrayList activityList1 = new ArrayList();
    ArrayList activityList2 = new ArrayList();
    ArrayList activityList3 = new ArrayList();
    ArrayList activityList4 = new ArrayList();
    ArrayList activityList5 = new ArrayList();
    int servID1 = 0;
    int servID2 = 0;
    int servID3 = 0;
    int actID1 = 0;
    int actID2 = 0;
    int actID3 = 0;
    int ID = 0;
    int packageID = 0;
    createpackage createPackage = new createpackage();
    bool activityadding = false;
    bool Uactivityadding = false;
    bool Dactivityadding = false;
    bool serviceadding = false;
    bool Userviceadding = false;
    bool Dserviceadding = false;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitButton(object sender, EventArgs e)
    {
        string packageName = packName.Text;
        string packagePrice = packPrice.Text;
        string packageDetails = packDetail.Text;
        string packageStartDate = packStartDate.Text;
        string packageEndDate = packEndDate.Text;
        string Timestamp = DateTime.Now.ToString();
        string upsellPrices = upsellPrice.Text;
        string upsellDetails = upsellDetail.Text;
        string downsellPrices = downsellPrice.Text;
        string downsellDetails = downsellDetail.Text;
        packageID = 0;
        bool checker = false;
        bool checker2 = false;
        bool checker3 = false;
        bool checker4 = false;
        bool checker5 = false;
        bool checker6 = false;
        bool checker7 = false;
        bool checker8 = false;
        bool checker9 = false;
        bool checker10 = false;
        bool checker11 = false;
        bool textbox = false;
        if ((packName.Text == "") || (packName.Text == null))
        {
            nameVerify.Visible = true;
            nameVerify.Enabled = true;
            textbox = false;
        }
        else
        {
            nameVerify.Visible = false;
            nameVerify.Enabled = false;
            textbox = false;
        }
        /*==================================================*/
        if ((packPrice.Text == "") || (packPrice.Text == null))
        {
            priceVerify.Visible = true;
            priceVerify.Enabled = true;
            textbox = false;
        }
        else
        {
            try
            {
                int Price = Convert.ToInt32(packPrice.Text);
                priceVerify.Visible = false;
                priceVerify.Enabled = false;
                textbox = true;
            }
            catch (Exception)
            {
                priceVerify.Text = "*Insert number only!";
                priceVerify.Visible = true;
                priceVerify.Enabled = true;
                textbox = false;
            }
        }
        /*==================================================*/
        if ((packPrice.Text == "") || (packPrice.Text == null))
        {
            detailsVerify.Visible = true;
            detailsVerify.Enabled = true;
            textbox = false;
        }
        else
        {
            detailsVerify.Visible = false;
            detailsVerify.Enabled = false;
            textbox = false;
        }
        /*==================================================*/
        if ((packDetail.Text == "") || (packDetail.Text == null))
        {
            detailsVerify.Visible = true;
            detailsVerify.Enabled = true;
            textbox = false;
        }
        else
        {
            detailsVerify.Visible = false;
            detailsVerify.Enabled = false;
            textbox = false;
        }
        if ((packStartDate.Text == "") || (packStartDate.Text == null))
        {
            startDateVerify.Visible = true;
            startDateVerify.Enabled = true;
            textbox = false;
        }
        else
        {
            startDateVerify.Visible = false;
            startDateVerify.Enabled = false;
            textbox = false;
        }
        if ((packEndDate.Text == "") || (packEndDate.Text == null))
        {
            enddateVerify.Visible = true;
            enddateVerify.Enabled = true;
            textbox = false;
        }
        else
        {
            enddateVerify.Visible = false;
            enddateVerify.Enabled = false;
            textbox = false;
        }
        /*
        if ((EventDate.Text == "") || (EventDate.Text == null))
        {
            eventdateVerify.Visible = true;
            eventdateVerify.Enabled = true;
            textbox = false;
        }
        else
        {

            eventdateVerify.Visible = false;
            eventdateVerify.Enabled = false;
            textbox = false;
        }
         * */
        /*==================================================*/
        if ((upsellPrice.Text == "") || (upsellPrice.Text == null))
        {
            priceVerify2.Visible = true;
            priceVerify2.Enabled = true;
            textbox = false;
        }
        else
        {
            try
            {
                int Price = Convert.ToInt32(upsellPrice.Text);
                priceVerify2.Visible = false;
                priceVerify2.Enabled = false;
                textbox = true;
            }
            catch (Exception)
            {
                priceVerify2.Text = "*Insert number only!";
                priceVerify2.Visible = true;
                priceVerify2.Enabled = true;
                textbox = false;
            }
        }
        if ((upsellDetail.Text == "") || (upsellDetail.Text == null))
        {
            detailsVerify2.Visible = true;
            detailsVerify2.Enabled = true;
            textbox = false;
        }
        else
        {
            detailsVerify2.Visible = false;
            detailsVerify2.Enabled = false;
            textbox = false;
        }
        /*==================================================*/
        if ((downsellPrice.Text == "") || (downsellPrice.Text == null))
        {
            priceVerify3.Visible = true;
            priceVerify3.Enabled = true;
            textbox = false;
        }
        else
        {
            try
            {
                int Price = Convert.ToInt32(downsellPrice.Text);
                priceVerify3.Visible = false;
                priceVerify3.Enabled = false;
                textbox = true;
            }
            catch (Exception)
            {
                priceVerify3.Text = "*Insert number only!";
                priceVerify3.Visible = true;
                priceVerify3.Enabled = true;
                textbox = false;
            }
        }
        if ((downsellDetail.Text == "") || (downsellDetail.Text == null))
        {
            detailsVerify3.Visible = true;
            detailsVerify3.Enabled = true;
            textbox = true;
        }
        else
        {
            detailsVerify3.Visible = false;
            detailsVerify3.Enabled = false;
            textbox = true;
        }

        /******************************************************************
         * Main Service & Upsell Service Stuff
         *****************************************************************/
        if (textbox)
        {
            /*Get element for arraylist main service*/
            for (int i = 0; i < packageServiceList.Items.Count; i++)
            {
                warningPanel.Enabled = false;
                warningPanel.Visible = false;
                error1.Enabled = false;
                error1.Visible = false;
                error2.Enabled = true;
                error2.Visible = true;
                if (packageServiceList.Items[i].Selected)
                {
                    ID = Convert.ToInt32(packageServiceList.Items[i].Value);
                    servID1 = ID;
                    serviceList1.Add(servID1);
                }

            }
            /*Check element for arraylist main service*/
            if ((serviceList1.Count == 2) && (serviceList1[0] != serviceList1[1]))
            {
                warningPanel.Enabled = false;
                warningPanel.Visible = false;
                error1.Enabled = false;
                error1.Visible = false;
                error2.Enabled = false;
                error2.Visible = false;
                checker = true;
            }
            else
            {
                warningPanel.Enabled = true;
                warningPanel.Visible = true;
                error1.Enabled = true;
                error1.Visible = true;
                error2.Enabled = true;
                error2.Visible = true;
                checker = false;
            }
            /*Get element for arraylist upsell service*/
            if (checker)
            {
                for (int o = 0; o < upsellServicesList.Items.Count; o++)
                {
                    warningPanel.Enabled = false;
                    warningPanel.Visible = false;
                    error1.Enabled = false;
                    error1.Visible = false;
                    error2.Enabled = true;
                    error2.Visible = true;
                    if (upsellServicesList.Items[o].Selected)
                    {
                        ID = Convert.ToInt32(upsellServicesList.Items[o].Value);
                        servID2 = ID;
                        serviceList2.Add(servID2);
                    }
                }
            }
            /*Check element for arraylist upsell service*/
            if ((serviceList2.Count == 2) && (serviceList2[0] != serviceList2[1]))
            {
                warningPanel.Enabled = false;
                warningPanel.Visible = false;
                error1.Enabled = false;
                error1.Visible = false;
                error2.Enabled = false;
                error2.Visible = false;
                checker2 = true;
            }
            else
            {
                warningPanel.Enabled = true;
                warningPanel.Visible = true;
                error1.Enabled = true;
                error1.Visible = true;
                error2.Enabled = true;
                error2.Visible = true;
                checker2 = false;
            }
            /*Check element for duplication  for arraylist main service & upsell*/
            if (checker2)
            {

                for (int i = 0; i < serviceList1.Count; i++)
                {
                    int p = Convert.ToInt32(serviceList1[i]);
                    if ((p != Convert.ToInt32(serviceList2[0])) && (p != Convert.ToInt32(serviceList2[1])))
                    {
                        warningPanel.Enabled = false;
                        warningPanel.Visible = false;
                        error1.Enabled = false;
                        error1.Visible = false;
                        error2.Enabled = false;
                        error2.Visible = false;
                        checker3 = true;
                    }
                    else
                    {
                        warningPanel.Enabled = true;
                        warningPanel.Visible = true;
                        error1.Enabled = true;
                        error1.Visible = true;
                        error2.Enabled = true;
                        error2.Visible = true;
                        checker3 = false;
                    }
                }
            }
            /******************************************************************
             * Main Service & Downsell service Stuff
             ****************************************************************/
            /*Get element for arraylist downsell service*/
            if (checker)
            {
                for (int o = 0; o < downsellServiceList.Items.Count; o++)
                {
                    warningPanel.Enabled = false;
                    warningPanel.Visible = false;
                    error1.Enabled = false;
                    error1.Visible = false;
                    error2.Enabled = true;
                    error2.Visible = true;
                    if (downsellServiceList.Items[o].Selected)
                    {
                        ID = Convert.ToInt32(downsellServiceList.Items[o].Value);
                        servID3 = ID;
                        serviceList3.Add(servID3);
                    }
                }
            }
            /*Check element for arraylist downsell service*/
            if ((serviceList3.Count == 2) && (serviceList3[0] != serviceList3[1]))
            {
                warningPanel.Enabled = false;
                warningPanel.Visible = false;
                error1.Enabled = false;
                error1.Visible = false;
                error2.Enabled = false;
                error2.Visible = false;
                checker4 = true;
            }
            else
            {
                warningPanel.Enabled = true;
                warningPanel.Visible = true;
                error1.Enabled = true;
                error1.Visible = true;
                error2.Enabled = true;
                error2.Visible = true;
                checker4 = false;
            }
            /*Check element for arraylist main and downsell service for duplication*/
            if (checker4)
            {
                for (int i = 0; i < serviceList1.Count; i++)
                {
                    int p = Convert.ToInt32(serviceList1[i]);
                    if ((p != Convert.ToInt32(serviceList3[0])) && (p != Convert.ToInt32(serviceList3[1])))
                    {
                        warningPanel.Enabled = false;
                        warningPanel.Visible = false;
                        error1.Enabled = false;
                        error1.Visible = false;
                        error2.Enabled = false;
                        error2.Visible = false;
                        checker5 = true;
                    }
                    else
                    {
                        warningPanel.Enabled = true;
                        warningPanel.Visible = true;
                        error1.Enabled = true;
                        error1.Visible = true;
                        error2.Enabled = true;
                        error2.Visible = true;
                        checker5 = false;
                    }
                }
            }
            /******************************************************************
             * Main Activity & Upsell Activity Stuff
             ****************************************************************/
            /*Get element for arraylist main activity*/
            for (int i = 0; i < packageActivitiesList.Items.Count; i++)
            {
                warningPanel.Enabled = false;
                warningPanel.Visible = false;
                error1.Enabled = false;
                error1.Visible = false;
                error2.Enabled = true;
                error2.Visible = true;
                if (packageActivitiesList.Items[i].Selected)
                {
                    ID = Convert.ToInt32(packageActivitiesList.Items[i].Value);
                    actID1 = ID;
                    activityList1.Add(actID1);
                }

            }
            /*
            foreach (int i in activityList1)
            {
                for (int o = 0; o < activityList1.Count; o++)
                {
                    if (activityList1[i] != activityList1[o])
                    {
                        checker6 = true;
                    }
                }
            }*/
            /*Check element for arraylist main activity*/
            if ((activityList1.Count == 5))
            {
                warningPanel.Enabled = false;
                warningPanel.Visible = false;
                error1.Enabled = false;
                error1.Visible = false;
                error2.Enabled = false;
                error2.Visible = false;
                checker7 = true;
            }
            else
            {
                warningPanel.Enabled = true;
                warningPanel.Visible = true;
                error1.Enabled = true;
                error1.Visible = true;
                error2.Enabled = true;
                error2.Visible = true;
                checker7 = false;
            }
            /*Get element for arraylist upsell activity*/
            if (checker7)
            {
                for (int o = 0; o < upsellActivitiesList.Items.Count; o++)
                {
                    warningPanel.Enabled = false;
                    warningPanel.Visible = false;
                    error1.Enabled = false;
                    error1.Visible = false;
                    error2.Enabled = true;
                    error2.Visible = true;
                    if (upsellActivitiesList.Items[o].Selected)
                    {
                        ID = Convert.ToInt32(upsellActivitiesList.Items[o].Value);
                        actID2 = ID;
                        activityList2.Add(actID2);
                    }
                }
            }
            //foreach (int i in activityList1)
            /*Check element for arraylist main activity with upsell activity for duplication*/
            for (int i = 0; i < activityList1.Count; i++)
            {
                for (int o = 0; o < activityList2.Count; o++)
                {
                    if (Convert.ToInt32(activityList1[i]) != Convert.ToInt32(activityList2[o]))
                    {
                        checker8 = true;
                    }
                    else
                    {
                        warningPanel.Enabled = true;
                        warningPanel.Visible = true;
                        error1.Enabled = true;
                        error1.Visible = true;
                        error2.Enabled = true;
                        error2.Visible = true;
                        checker8 = false;
                        break;
                    }
                }
            }
            /*Check element for arraylist main activity with upsell activity for duplication & check if selection have 5*/
            if ((activityList2.Count == 5) && (checker8 == true))
            {
                warningPanel.Enabled = false;
                warningPanel.Visible = false;
                error1.Enabled = false;
                error1.Visible = false;
                error2.Enabled = false;
                error2.Visible = false;
                checker9 = true;
            }
            else
            {
                warningPanel.Enabled = true;
                warningPanel.Visible = true;
                error1.Enabled = true;
                error1.Visible = true;
                error2.Enabled = true;
                error2.Visible = true;
                checker9 = false;
            }
            /******************************************************************
             * Main Activity & Downsell Activity Stuff
             ****************************************************************/

            /*Get element for downsell activity*/
            for (int i = 0; i < downsellActivitiesList.Items.Count; i++)
            {
                warningPanel.Enabled = false;
                warningPanel.Visible = false;
                error1.Enabled = false;
                error1.Visible = false;
                error2.Enabled = true;
                error2.Visible = true;
                if (downsellActivitiesList.Items[i].Selected)
                {
                    ID = Convert.ToInt32(packageActivitiesList.Items[i].Value);
                    actID3 = ID;
                    activityList3.Add(actID3);
                }

            }
            /*Check element for downsell activity for duplication*/
            for (int i = 0; i < activityList1.Count; i++)
            {
                for (int o = 0; o < activityList3.Count; o++)
                {
                    if (Convert.ToInt32(activityList1[i]) != Convert.ToInt32(activityList3[o]))
                    {
                        checker10 = true;
                    }
                    else
                    {
                        checker10 = false;
                        break;
                    }
                }

            }
            /*Check element for downsell activity and check if user have selected 5*/
            if ((activityList3.Count == 5) && (checker10 == true))
            {
                warningPanel.Enabled = false;
                warningPanel.Visible = false;
                error1.Enabled = false;
                error1.Visible = false;
                error2.Enabled = false;
                error2.Visible = false;
                checker11 = true;
            }
            else
            {
                warningPanel.Enabled = true;
                warningPanel.Visible = true;
                error1.Enabled = true;
                error1.Visible = true;
                error2.Enabled = true;
                error2.Visible = true;
                checker11 = false;
            }
            /******************************************************************
             * Insertion into database
             ****************************************************************/
            if ((checker3 == true) && (checker5 == true) && (checker9 == true) && (checker11 == true))
            {
                createPackage.InsertPack(packagePrice, packageDetails, packageName, packageStartDate, packageEndDate, Timestamp, upsellPrices, upsellDetails, downsellPrices, downsellDetails);
                packageID = createPackage.GetpackID(packagePrice, packageDetails, packageName, packageStartDate);
                checker6 = true;
            }
            else
            {
                warningPanel.Enabled = true;
                warningPanel.Visible = true;
                error1.Enabled = true;
                error1.Visible = true;
                error2.Enabled = true;
                error2.Visible = true;
                checker6 = false;
            }
            if (checker6)
            {
                warningPanel.Enabled = true;
                warningPanel.Visible = true;
                error1.Enabled = true;
                error1.Visible = true;
                error1.Text = "* Successfully created new package called '" + packName.Text + "'";
                error1.ForeColor = System.Drawing.Color.Green;
                error2.Enabled = false;
                error2.Visible = false;
                createPackage.InsertServicePackage(Convert.ToInt32(serviceList1[0]), packageID, "Mainservices", Timestamp);
                createPackage.InsertServicePackage(Convert.ToInt32(serviceList1[1]), packageID, "Mainservices", Timestamp);
                createPackage.InsertServicePackage(Convert.ToInt32(serviceList2[0]), packageID, "Upsellservices", Timestamp);
                createPackage.InsertServicePackage(Convert.ToInt32(serviceList2[1]), packageID, "Upsellservices", Timestamp);
                createPackage.InsertServicePackage(Convert.ToInt32(serviceList3[0]), packageID, "downsellservices", Timestamp);
                createPackage.InsertServicePackage(Convert.ToInt32(serviceList3[1]), packageID, "downsellservices", Timestamp);
                for (int i = 0; i < activityList1.Count; i++)
                {
                    createPackage.InsertActivityPackage(Convert.ToInt32(activityList1[i]), packageID, "MainActivity", Timestamp);
                }
                for (int i = 0; i < activityList2.Count; i++)
                {
                    createPackage.InsertActivityPackage(Convert.ToInt32(activityList2[i]), packageID, "UpsellActivity", Timestamp);
                }
                for (int i = 0; i < activityList3.Count; i++)
                {
                    createPackage.InsertActivityPackage(Convert.ToInt32(activityList2[i]), packageID, "DownsellActivity", Timestamp);
                }
            }
        }
    }/*submitbutton*/
    static string CleanInput(string strIn)
    {
        // Replace invalid characters with empty strings.
        return Regex.Replace(strIn, @"[^\w\.@-]", "");
    }
    protected void resetButton(object sender, EventArgs e)
    {
        for (int q = 0; q < packageServiceList.Items.Count; q++)
        {
            packageServiceList.Items[q].Selected = false;
        }
        for (int q = 0; q < upsellServicesList.Items.Count; q++)
        {
            upsellServicesList.Items[q].Selected = false;
        }
        for (int q = 0; q < downsellServiceList.Items.Count; q++)
        {
            downsellServiceList.Items[q].Selected = false;
        }
        for (int q = 0; q < packageActivitiesList.Items.Count; q++)
        {
            packageActivitiesList.Items[q].Selected = false;
        }
        for (int q = 0; q < upsellActivitiesList.Items.Count; q++)
        {
            upsellActivitiesList.Items[q].Selected = false;
        }
        for (int q = 0; q < downsellActivitiesList.Items.Count; q++)
        {
            downsellActivitiesList.Items[q].Selected = false;
        }
        packName.Text = "";
        packPrice.Text = "";
        packDetail.Text = "";
        packStartDate.Text = "";
        upsellPrice.Text = "";
        upsellDetail.Text = "";
        downsellPrice.Text = "";
        downsellDetail.Text = "";
        warningPanel.Enabled = false;
        warningPanel.Visible = false;
        error1.Enabled = false;
        error1.Visible = false;
        error2.Enabled = false;
        error2.Visible = false;
        nameVerify.Visible = false;
        priceVerify.Visible = false;
        detailsVerify.Visible = false;
        startDateVerify.Visible = false;
        enddateVerify.Visible = false;
        priceVerify2.Visible = false;
        detailsVerify2.Visible = false;
        priceVerify3.Visible = false;
        detailsVerify3.Visible = false;
    }

    protected void downsellService(object sender, EventArgs e)
    {
     for (int c = 0; c < downsellServiceList.Items.Count; c++)
          if (downsellServiceList.SelectedItem == null)
          {
        for (int o = 0; o < upsellServicesList.Items.Count; o++)
        {
            if (upsellServicesList.Items[o].Selected)
            {
                serviceList4.Add(Convert.ToInt32(upsellServicesList.Items[o].Value));
            }
        }
        for (int i = 0; i < serviceList4.Count; i++)
        {
            string sID = serviceList4[i].ToString();
            downsellServiceList.Items.FindByValue(sID).Selected = true;
        }
            }
    }
    protected void downsellActivity(object sender, EventArgs e)
    {
        for (int c = 0; c < downsellActivitiesList.Items.Count; c++)
            if (downsellActivitiesList.SelectedItem == null)
            {
                for (int o = 0; o < upsellActivitiesList.Items.Count; o++)
                {
                    if (upsellActivitiesList.Items[o].Selected)
                    {
                        activityList4.Add(Convert.ToInt32(upsellActivitiesList.Items[o].Value));
                    }
                }
                for (int i = 0; i < activityList4.Count; i++)
                {
                    string aID = activityList4[i].ToString();
                    downsellActivitiesList.Items.FindByValue(aID).Selected = true;
                }
            }
    }
    protected void resetChecklist()
    {
        for (int q = 0; q < packageServiceList.Items.Count; q++)
        {
            packageServiceList.Items[q].Selected = false;
        }
        for (int q = 0; q < upsellServicesList.Items.Count; q++)
        {
            upsellServicesList.Items[q].Selected = false;
        }
        for (int q = 0; q < downsellServiceList.Items.Count; q++)
        {
            downsellServiceList.Items[q].Selected = false;
        }
        for (int q = 0; q < packageActivitiesList.Items.Count; q++)
        {
            packageActivitiesList.Items[q].Selected = false;
        }
        for (int q = 0; q < upsellActivitiesList.Items.Count; q++)
        {
            upsellActivitiesList.Items[q].Selected = false;
        }
        for (int q = 0; q < downsellActivitiesList.Items.Count; q++)
        {
            downsellActivitiesList.Items[q].Selected = false;
        }
    }
    protected void preview_click(object sender, EventArgs e)
    {
        previewBox.Visible = true;
        previewBox.Text = "";
        createpackage createPackage = new createpackage();
        createPackage.retrieveServiceData();
        createPackage.retrieveActivityData();
        for (int i = 0; i < packageServiceList.Items.Count; i++)
        {
            warningPanel.Enabled = false;
            warningPanel.Visible = false;
            error1.Enabled = false;
            error1.Visible = false;
            error2.Enabled = true;
            error2.Visible = true;
            if (packageServiceList.Items[i].Selected)
            {
                ID = Convert.ToInt32(packageServiceList.Items[i].Value);
                servID1 = ID;
                serviceList5.Add(servID1);
                serviceadding = true;
            }

        }
        for (int o = 0; o < upsellServicesList.Items.Count; o++)
        {
            warningPanel.Enabled = false;
            warningPanel.Visible = false;
            error1.Enabled = false;
            error1.Visible = false;
            error2.Enabled = true;
            error2.Visible = true;
            if (upsellServicesList.Items[o].Selected)
            {
                ID = Convert.ToInt32(upsellServicesList.Items[o].Value);
                servID2 = ID;
                serviceList5.Add(servID2);
                Userviceadding = true;
            }
        }
        for (int o = 0; o < downsellServiceList.Items.Count; o++)
        {
            warningPanel.Enabled = false;
            warningPanel.Visible = false;
            error1.Enabled = false;
            error1.Visible = false;
            error2.Enabled = true;
            error2.Visible = true;
            if (downsellServiceList.Items[o].Selected)
            {
                ID = Convert.ToInt32(downsellServiceList.Items[o].Value);
                servID3 = ID;
                serviceList5.Add(servID3);
                Dserviceadding = true;
            }
        }
        for (int i = 0; i < packageActivitiesList.Items.Count; i++)
        {
            warningPanel.Enabled = false;
            warningPanel.Visible = false;
            error1.Enabled = false;
            error1.Visible = false;
            error2.Enabled = true;
            error2.Visible = true;
            if (packageActivitiesList.Items[i].Selected)
            {
                ID = 0;
                ID = Convert.ToInt32(packageActivitiesList.Items[i].Value);
                actID1 = ID;
                activityList5.Add(actID1);
                activityadding = true;
            }
        }
        for (int o = 0; o < upsellActivitiesList.Items.Count; o++)
        {
            warningPanel.Enabled = false;
            warningPanel.Visible = false;
            error1.Enabled = false;
            error1.Visible = false;
            error2.Enabled = true;
            error2.Visible = true;
            if (upsellActivitiesList.Items[o].Selected)
            {
                ID = Convert.ToInt32(upsellActivitiesList.Items[o].Value);
                actID2 = ID;
                activityList5.Add(actID2);
                Uactivityadding = true;
            }
        }
        for (int i = 0; i < downsellActivitiesList.Items.Count; i++)
        {
            warningPanel.Enabled = false;
            warningPanel.Visible = false;
            error1.Enabled = false;
            error1.Visible = false;
            error2.Enabled = true;
            error2.Visible = true;
            if (downsellActivitiesList.Items[i].Selected)
            {
                ID = Convert.ToInt32(packageActivitiesList.Items[i].Value);
                actID3 = ID;
                activityList5.Add(actID3);
                Dactivityadding = true;
            }
        }
            previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Service Price" + "\r" + "===================================================";
        
        for (int i = 0; i < createPackage.servicedata.Count; i++)
        {
            if (previewBox.Text == "")
            {
                previewBox.Text = createPackage.servicedata[i].ToString();
            }
            else
            {
                previewBox.Text = previewBox.Text + "\r" + createPackage.servicedata[i].ToString();
            }
        }
        previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Activities Price" + "\r" + "===================================================";
        for (int i = 0; i < createPackage.activitydata.Count; i++)
        {
            if (previewBox.Text == "")
            {
                previewBox.Text = createPackage.activitydata[i].ToString();
            }
            else
            {
                previewBox.Text = previewBox.Text + "\r" + createPackage.activitydata[i].ToString();
            }
        }
        /******************************************************************************
         * Services Selection
         *****************************************************************************/
        ArrayList choosenService = createPackage.retrieveServiceSData(serviceList5);
        if (serviceadding)
        {
            previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Selected Main Services" + "\r" + "===================================================";
        }

        try
        {
            if (serviceadding)
            {
                for (int a = 0; a < 2; a++)
                {
                    previewBox.Text = previewBox.Text + "\r" + choosenService[a].ToString();
                }

                if (Userviceadding)
                {
                    previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Selected Upsell Services" + "\r" + "===================================================";
                    for (int b = 2; b < 4; b++)
                    {
                        previewBox.Text = previewBox.Text + "\r" + choosenService[b].ToString();
                    }
                }
                if (Dserviceadding)
                {
                    previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Selected Downsell Services" + "\r" + "===================================================";
                    for (int c = 4; c < 6; c++)
                    {
                        previewBox.Text = previewBox.Text + "\r" + choosenService[c].ToString();
                    }
                }
            }
            else
            {
                if (Userviceadding)
                {
                    previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Upsell Services" + "\r" + "===================================================";
                    for (int b = 0; b < 2; b++)
                    {
                        previewBox.Text = previewBox.Text + "\r" + choosenService[b].ToString();
                    }
                    if (Dserviceadding)
                    {
                        previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Downsell Services" + "\r" + "===================================================";
                        for (int c = 2; c < 4; c++)
                        {
                            previewBox.Text = previewBox.Text + "\r" + choosenService[c].ToString();
                        }
                    }
                }
                else
                {
                    if (Dserviceadding)
                    {
                        previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Downsell Services" + "\r" + "===================================================";
                        for (int c = 0; c < 2; c++)
                        {
                            previewBox.Text = previewBox.Text + "\r" + choosenService[c].ToString();
                        }
                    }
                }
            }
        }
        catch (Exception)
        {
        }
        /******************************************************************************
         * Activities Selection
         *****************************************************************************/
        ArrayList choosenActivity = createPackage.retrieveActivitySData(activityList5);
        if (activityadding)
        {
            previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Selected Main Activities" + "\r" + "===================================================";
        }

        try
        {
            if (activityadding)
            {
                for (int a = 0; a < 5; a++)
                {
                    previewBox.Text = previewBox.Text + "\r" + choosenActivity[a].ToString();
                }

                if (Uactivityadding)
                {
                    previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Selected Upsell Activities" + "\r" + "===================================================";
                    for (int b = 5; b < 10; b++)
                    {
                        previewBox.Text = previewBox.Text + "\r" + choosenActivity[b].ToString();
                    }
                }
                if (Dactivityadding)
                {
                    previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Selected Downsell Activities" + "\r" + "===================================================";
                    for (int c = 10; c < 15; c++)
                    {
                        previewBox.Text = previewBox.Text + "\r" + choosenActivity[c].ToString();
                    }
                }
            }
            else
            {
                if (Uactivityadding)
                {
                    previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Upsell Activities" + "\r" + "===================================================";
                    for (int b = 0; b < 5; b++)
                    {
                        previewBox.Text = previewBox.Text + "\r" + choosenActivity[b].ToString();
                    }
                    if (Dactivityadding)
                    {
                        previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Downsell Activities" + "\r" + "===================================================";
                        for (int c = 5; c < 10; c++)
                        {
                            previewBox.Text = previewBox.Text + "\r" + choosenActivity[c].ToString();
                        }
                    }
                }
                else
                {
                    if (Dactivityadding)
                    {
                        previewBox.Text = previewBox.Text + "\r" + "===================================================" + "\r" + "Downsell Activities" + "\r" + "===================================================";
                        for (int c = 0; c < 5; c++)
                        {
                            previewBox.Text = previewBox.Text + "\r" + choosenActivity[c].ToString();
                        }
                    }
                }
            }
        }
        catch (Exception)
        {
        }
    }
}

        /*************************************************************************************************
         * Retrieve the selected cost and the total cost
         ***********************************************************************************************/
        //string newLine = "You have selected the following items: ";
     
        /*serviceList1
        serviceList2
        serviceList3
        activityList1
        activityList2
        activityList3*/
/*end*/
            
            /*
            foreach (int i in serviceList1)
            {
                foreach (int p in serviceList2)
                {
                    if (i != p)
                    {
                        warningPanel.Enabled = false;
                        warningPanel.Visible = false;
                        createPackage.InsertServicePackage(i, packageID, "Mainservices", Timestamp);
                        createPackage.InsertServicePackage(p, packageID, "Upsellservices", Timestamp);
                    }
                    else
                    {
                        warningPanel.Enabled = true;
                        warningPanel.Visible = true;
                    }
                }
            }*/
            /*
            foreach (int i in serviceList1)
            {
                foreach (int o in serviceList2)
                {
                    int x = 0;
                    if (i != o)
                    {
                        warningPanel.Enabled = false;
                        warningPanel.Visible = false;
                        if (x < 1)
                        {
                            createPackage.InsertServicePackage(servID1, packageID, "Mainservices", Timestamp);
                            createPackage.InsertServicePackage(servID2, packageID, "Upsellservices", Timestamp);
                            createPackage.InsertServicePackage(servID1, packageID, "Downsellservices", Timestamp);
                            x = 1;
                        }
                    }

                    else
                    {
                        warningPanel.Enabled = true;
                        warningPanel.Visible = true;
                    }
                }
            }*/
            /*
            for (int p = 0; p < downsellServiceList.Items.Count; p++)
            {
                if (downsellServiceList.Items[p].Selected)
                {
                    ID = Convert.ToInt32(downsellServiceList.Items[p].Value);
                    servID3 = ID;
                    serviceList3.Add(servID3);
                }
            }
             */
            /*   

                    
                           if (ID != i)
                           {
                               warningPanel.Enabled = false;
                               warningPanel.Visible = false;
                               createPackage.InsertServicePackage(servID3, packageID, "Downsellservices", Timestamp);
                           }
                           else
                           {
                               warningPanel.Enabled = true;
                               warningPanel.Visible = true;
                           }
                       }
                   }
               }
               /*
                       if (doCheck(serviceList2, serviceList1))
                       {
                           warningPanel.Enabled = false;
                           warningPanel.Visible = false;
                           foreach (int x in serviceList1)
                           {
                               createPackage.InsertPack(packagePrice, packageDetails, packageName, packageDate, Timestamp);
                               packageID = createPackage.GetpackID(packagePrice, packageDetails, packageName, packageDate);
                               foreach (int y in serviceList2)
                               {                    
                                   createPackage.InsertServicePackage(y, packageID, "TestTestTest", Timestamp);
                               } 
                           }
         
                       }
                       else
                       {
                           warningPanel.Enabled = true;
                           warningPanel.Visible = true;
                       }
                       */
            /*
            for (int i = 0; i < packageActivitiesList.Items.Count; i++)
            {
                if (packageActivitiesList.Items[i].Selected)
                {
                    ID = Convert.ToInt32(packageActivitiesList.Items[i].Value);
                    actID1 = ID;
                    /*   createPackage.InsertActivityPackage(actID1, packageID, "Mainactivities", Timestamp);*/
            /*
                    for (int i = 0; i < upsellActivitiesList.Items.Count; i++)
                    {
                        if (upsellActivitiesList.Items[i].Selected)
                        {
                            ID = Convert.ToInt32(upsellActivitiesList.Items[i].Value);
                            actID2 = ID;
                            if (actID1 == actID2)
                            {
                                warningPanel.Enabled = true;
                                warningPanel.Visible = true;
                            }
                            else
                            {
                                warningPanel.Enabled = false;
                                warningPanel.Visible = false;
                                createPackage.InsertActivityPackage(actID2, packageID, "Upsellactivities", Timestamp);
                            }
                        }
                    }

                    for (int i = 0; i < downsellActivitiesList.Items.Count; i++)
                    {
                        if (downsellActivitiesList.Items[i].Selected)
                        {
                            ID = Convert.ToInt32(downsellActivitiesList.Items[i].Value);
                            actID3 = ID;
                            if (actID2 == actID3)
                            {
                                warningPanel.Enabled = true;
                                warningPanel.Visible = true;
                            }
                            else
                            {
                                warningPanel.Enabled = false;
                                warningPanel.Visible = false;
                                createPackage.InsertActivityPackage(actID3, packageID, "Downsellactivities", Timestamp);
                            }
                        }
                    }

                    if ((servID1 != servID2) && (servID1 != servID3) && (servID2 != servID3))
                    {

                    }
                    if ((actID1 != actID2) && (actID1 != actID3) && (actID2 != actID3))
                    {

                    }
                }*/
            /*
            public Boolean doCheck(ArrayList upsellId, ArrayList packageId)
            {
                Boolean result = false;

                foreach (int i in packageId)
                {
                    foreach (int o in upsellId)
                    {
                        if (o == i)
                        {
                            result = false;
                        } else {
                            result = true;
                        }
                    }
                }

                return result;
            }*/

