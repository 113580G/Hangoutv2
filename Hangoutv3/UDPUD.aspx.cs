using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Master_Default : System.Web.UI.Page
{
    /*********************************************************************
     * Constant attributes
     * ******************************************************************/
    createpackage pud = new createpackage();
    string Timestamp = DateTime.Now.ToString();
    int packageID = 0;
    bool checker = false;
    bool checker2 = false;
    bool checker3 = false;
    bool checker4 = false;
    bool checker5 = false;
    bool checker6 = false;
    bool checker7 = false;
    bool textbox = false;
    ArrayList serviceList = new ArrayList();
    ArrayList serviceList4 = new ArrayList();
    ArrayList serviceList5 = new ArrayList();
    ArrayList activityList = new ArrayList();
    ArrayList activityList1 = new ArrayList();
    ArrayList activityList2 = new ArrayList();
    ArrayList activityList3 = new ArrayList();
    ArrayList activityList4 = new ArrayList();
    ArrayList activityList5 = new ArrayList();
    ArrayList activityIDS = new ArrayList();
    ArrayList serviceIDS = new ArrayList();
    bool activityadding = false;
    bool Uactivityadding = false;
    bool Dactivityadding = false;
    bool serviceadding = false;
    bool Userviceadding = false;
    bool Dserviceadding = false;
    int ID = 0;
    int servID1 = 0;
    int servID2 = 0;
    int servID3 = 0;
    int actID1 = 0;
    int actID2 = 0;
    int actID3 = 0;
    /*********************************************************************
     * Action Button
     * ******************************************************************/
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Text = Session["ServiceDeleted"].ToString();
    }
    protected void retrieveDB(object sender, EventArgs e)
    {
        nameVerify.Visible = false;
        priceVerify.Visible = false;
        detailsVerify.Visible = false;
        dateVerify.Visible = false;
        endDateVerify.Visible = false;
        priceVerify2.Visible = false;
        detailsVerify2.Visible = false;
        priceVerify3.Visible = false;
        detailsVerify3.Visible = false;
        try
        {
            packageID = Convert.ToInt32(packageNameList.Text);
            activityIDS = pud.RetrieveActivityIDs(packageID);
            serviceIDS = pud.RetrieveServiceIDs(packageID);
            pud.GetActivityUpsell(packageID);
            pud.GetPackageDetail(packageID);
        }
        catch (Exception)
        {

        }
    
            resetChecklist();
            for (int p = 0; p < 5; p++)
            {
                string z = activityIDS[p].ToString();
                try
                {
                    packageActivitiesList.Items.FindByValue(z).Selected = true;
                }
                catch (Exception)
                {
                }

            }
            for (int l = 5; l < 10; l++)
            {
                string z = activityIDS[l].ToString();
                try
                {
                    upsellActivitiesList.Items.FindByValue(z).Selected = true;
                }
                catch (Exception)
                {
                }
            }
            for (int m = 10; m < 15; m++)
            {
                string z = activityIDS[m].ToString();
                try
                {
                    downsellActivitiesList.Items.FindByValue(z).Selected = true;
                }
                catch (Exception)
                {
                }
            }
            /*
            for (int p = 0; p < 5; p++)
            {
                int z = Convert.ToInt32(activityIDS[p]);
                packageActivitiesList.Items[z - 1].Selected = true;
            }
            for (int l = 5; l < 10; l++)
            {
                int z = Convert.ToInt32(activityIDS[l]);
                upsellActivitiesList.Items[z - 1].Selected = true;
            }
            for (int m = 10; m < 15; m++)
            {
                int z = Convert.ToInt32(activityIDS[m]);
                downsellActivitiesList.Items[z - 1].Selected = true;

            }*/
            for (int v = 0; v < 2; v++)
            {
                string x = serviceIDS[v].ToString();
                try
                {
                    UpackageServiceList.Items.FindByValue(x).Selected = true;
                }
                catch (Exception)
                {
                }
            }
            for (int b = 2; b < 4; b++)
            {
                string x = serviceIDS[b].ToString();
                try
                {
                    UupsellServicesList.Items.FindByValue(x).Selected = true;
                }
                catch (Exception)
                {
                }
            }
            for (int n = 4; n < 6; n++)
            {
                string x = serviceIDS[n].ToString();
                try
                {
                    UdownsellServiceList.Items.FindByValue(x).Selected = true;
                }
                catch (Exception)
                {
                }
            }
            AlertMessage.Enabled = false;
            AlertMessage.Visible = false;
            packName.Text = pud.packagedetails[0].ToString();
            packPrice.Text = pud.packagedetails[1].ToString();
            packDetail.Text = pud.packagedetails[2].ToString();
            startDate.Text = pud.packagedetails[3].ToString();
            endDate.Text = pud.packagedetails[4].ToString();
            upsellPrice.Text = pud.packagedetails[5].ToString();
            upsellDetail.Text = pud.packagedetails[6].ToString();
            downsellPrice.Text = pud.packagedetails[7].ToString();
            downsellDetail.Text = pud.packagedetails[8].ToString();
            verification();
    }
    protected void updateButton(object sender, EventArgs e)
    {

        verification();
        /******************************************************************
         * Main Service & Upsell Service Stuff & Downsell Service Stuff 
         * ***************************************************************/
        if (textbox)
        {
            for (int o = 0; o < UpackageServiceList.Items.Count; o++)
            {
                if (UpackageServiceList.Items[o].Selected)
                {
                    serviceList.Add(UpackageServiceList.Items[o].Value.ToString());
                }
            }
            if (serviceList.Count == 2)
            {
                AlertMessage.Enabled = false;
                AlertMessage.Visible = false;
                AlertMessage.Text = "";
                checker = true;
            }
            else
            {
                AlertMessage.Enabled = true;
                AlertMessage.Visible = true;
                AlertMessage.Text = "*Please ensure you have ticked the correct amount and no duplication between MAIN service/activity and UPSELL/DOWNSELL service/activity ";
                AlertMessage.ForeColor = System.Drawing.Color.Red;
                checker = false;
            }
            if (checker)
            {
                AlertMessage.Enabled = false;
                AlertMessage.Visible = false;
                AlertMessage.Text = "";
                for (int o = 0; o < UupsellServicesList.Items.Count; o++)
                {
                    if (UupsellServicesList.Items[o].Selected)
                    {
                        serviceList.Add(UupsellServicesList.Items[o].Value.ToString());
                    }
                }
            }
            else
            {
                AlertMessage.Enabled = true;
                AlertMessage.Visible = true;
                AlertMessage.Text = "*Please ensure you have ticked the correct amount and no duplication between MAIN service/activity and UPSELL/DOWNSELL service/activity ";
                AlertMessage.ForeColor = System.Drawing.Color.Red;
            }
            if ((serviceList.Count == 4) && (Convert.ToInt32(serviceList[0]) != Convert.ToInt32(serviceList[2])) && (Convert.ToInt32(serviceList[0]) != Convert.ToInt32(serviceList[3])) && (Convert.ToInt32(serviceList[1]) != Convert.ToInt32(serviceList[2])) && (Convert.ToInt32(serviceList[1]) != Convert.ToInt32(serviceList[3])))
            {
                AlertMessage.Enabled = false;
                AlertMessage.Visible = false;
                AlertMessage.Text = "";
                checker2 = true;
                for (int o = 0; o < UdownsellServiceList.Items.Count; o++)
                {
                    if (UdownsellServiceList.Items[o].Selected)
                    {
                        serviceList.Add(UdownsellServiceList.Items[o].Value.ToString());
                    }
                }
            }
            else
            {
                AlertMessage.Enabled = true;
                AlertMessage.Visible = true;
                AlertMessage.Text = "*Please ensure you have ticked the correct amount and no duplication between MAIN service/activity and UPSELL/DOWNSELL service/activity ";
                AlertMessage.ForeColor = System.Drawing.Color.Red;
                checker2 = false;
            }
            /******************************************************************
             * Main Activity & Upsell Activity Stuff
             ****************************************************************/
            if (checker2)
            {
                AlertMessage.Enabled = false;
                AlertMessage.Visible = false;
                AlertMessage.Text = "";
                for (int o = 0; o < packageActivitiesList.Items.Count; o++)
                {
                    if (packageActivitiesList.Items[o].Selected)
                    {
                        activityList.Add(packageActivitiesList.Items[o].Value.ToString());
                        activityList1.Add(packageActivitiesList.Items[o].Value.ToString());
                    }
                }
            }
            if (activityList.Count == 5)
            {
                AlertMessage.Enabled = false;
                AlertMessage.Visible = false;
                AlertMessage.Text = "";
                checker3 = true;
            }
            else
            {
                AlertMessage.Enabled = true;
                AlertMessage.Visible = true;
                AlertMessage.Text = "*Please ensure you have ticked the correct amount and no duplication between MAIN service/activity and UPSELL/DOWNSELL service/activity ";
                AlertMessage.ForeColor = System.Drawing.Color.Red;
                checker3 = false;
            }
            if (checker3)
            {
                AlertMessage.Enabled = false;
                AlertMessage.Visible = false;
                AlertMessage.Text = "";
                checker4 = true;
                for (int o = 0; o < upsellActivitiesList.Items.Count; o++)
                {
                    if (upsellActivitiesList.Items[o].Selected)
                    {
                        activityList.Add(upsellActivitiesList.Items[o].Value.ToString());
                        activityList2.Add(upsellActivitiesList.Items[o].Value.ToString());
                    }
                }
            }
            else
            {
                AlertMessage.Enabled = true;
                AlertMessage.Visible = true;
                AlertMessage.Text = "*Please ensure you have ticked the correct amount and no duplication between MAIN service/activity and UPSELL/DOWNSELL service/activity ";
                AlertMessage.ForeColor = System.Drawing.Color.Red;
                checker4 = false;
            }
            for (int i = 0; i < activityList1.Count; i++)
            {
                for (int l = 0; l < activityList2.Count; l++)
                {
                    if (Convert.ToInt32(activityList1[i]) != Convert.ToInt32(activityList2[l]))
                    {
                        checker5 = true;
                        AlertMessage.Enabled = false;
                        AlertMessage.Visible = false;
                        AlertMessage.Text = "";
                    }
                    else
                    {
                        checker5 = false;
                        AlertMessage.Enabled = true;
                        AlertMessage.Visible = true;
                        AlertMessage.Text = "*Please ensure you have ticked the correct amount and no duplication between MAIN service/activity and UPSELL/DOWNSELL service/activity ";
                        AlertMessage.ForeColor = System.Drawing.Color.Red;
                        goto Found;
                    }
                }
            }
        Found:
            if ((activityList.Count == 10) && (checker5) && (checker4))
            {
                AlertMessage.Enabled = false;
                AlertMessage.Visible = false;
                AlertMessage.Text = "";
                checker6 = true;
                for (int o = 0; o < downsellActivitiesList.Items.Count; o++)
                {
                    if (downsellActivitiesList.Items[o].Selected)
                    {
                        activityList.Add(downsellActivitiesList.Items[o].Value.ToString());
                        activityList3.Add(downsellActivitiesList.Items[o].Value.ToString());
                    }
                }
            }
            else
            {
                AlertMessage.Enabled = true;
                AlertMessage.Visible = true;
                AlertMessage.Text = "*Please ensure you have ticked the correct amount and no duplication between MAIN service/activity and UPSELL/DOWNSELL service/activity";
                AlertMessage.ForeColor = System.Drawing.Color.Red;
            }
            /*Check element for downsell activity for duplication*/
            for (int i = 0; i < activityList1.Count; i++)
            {

                for (int o = 0; o < activityList3.Count; o++)
                {
                    if (Convert.ToInt32(activityList1[i]) != Convert.ToInt32(activityList3[o]))
                    {
                        AlertMessage.Enabled = false;
                        AlertMessage.Visible = false;
                        AlertMessage.Text = "";
                        checker7 = true;

                    }
                    else
                    {
                        checker7 = false;
                        AlertMessage.Enabled = true;
                        AlertMessage.Visible = true;
                        AlertMessage.Text = "*Please ensure you have ticked the correct amount and no duplication between MAIN service/activity and UPSELL/DOWNSELL service/activity";
                        AlertMessage.ForeColor = System.Drawing.Color.Red;
                        goto Found2;
                    }
                }
            }
        Found2:
            if (checker7 && checker5 && checker3 && checker2 && checker)
            {
                packageID = Convert.ToInt32(packageNameList.Text);
                pud.UpdateServicePackage(serviceList, Timestamp, packageID);
                pud.UpdateActivityPackage(activityList, Timestamp, packageID);
                pud.UpdatePackage(packPrice.Text, packDetail.Text, packName.Text, startDate.Text, endDate.Text, Timestamp, upsellPrice.Text, upsellDetail.Text, downsellPrice.Text, downsellDetail.Text, packageID);
                AlertMessage.Enabled = true;
                AlertMessage.Visible = true;
                AlertMessage.Text = "*Successfully updated package name:" + packName.Text;
                AlertMessage.ForeColor = System.Drawing.Color.Green;
                packageNameList.DataBind();
            }
            else
            {
                AlertMessage.Enabled = true;
                AlertMessage.Visible = true;
                AlertMessage.Text = "*Please ensure you have ticked the correct amount and no duplication between MAIN service/activity and UPSELL/DOWNSELL service/activity";
                AlertMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
    protected void deleteButton(object sender, EventArgs e)
    {
        if ((packageNameList.SelectedValue == null) || (packageNameList.SelectedValue.ToString() == ""))
        {
            AlertMessage.Text = "*It appears that you either did not select any value or its already been deleted";
        }
        else
        {
            int packageID = Convert.ToInt32(packageNameList.Text);
            pud.DeleteServicePackage(packageID);
            pud.DeleteActivityPackage(packageID);
            pud.DeletePackage(packageID);
            resetChecklist();
            AlertMessage.Enabled = true;
            AlertMessage.Visible = true;
            nameVerify.Visible = false;
            priceVerify.Visible = false;
            detailsVerify.Visible = false;
            dateVerify.Visible = false;
            endDateVerify.Visible = false;
            priceVerify2.Visible = false;
            detailsVerify2.Visible = false;
            priceVerify3.Visible = false;
            detailsVerify3.Visible = false;
            AlertMessage.Text = "*Successfully deleted package name:" + packName.Text;
            AlertMessage.ForeColor = System.Drawing.Color.Green;
            packName.Text = "";
            packPrice.Text = "";
            packDetail.Text = "";
            startDate.Text = "";
            endDate.Text = "";
            upsellPrice.Text = "";
            upsellDetail.Text = "";
            downsellPrice.Text = "";
            downsellDetail.Text = "";
            packageNameList.DataBind();
        }
    }
    protected void resetChecklist()
    {
        for (int q = 0; q < UpackageServiceList.Items.Count; q++)
        {
            UpackageServiceList.Items[q].Selected = false;
        }
        for (int q = 0; q < UupsellServicesList.Items.Count; q++)
        {
            UupsellServicesList.Items[q].Selected = false;
        }
        for (int q = 0; q < UdownsellServiceList.Items.Count; q++)
        {
            UdownsellServiceList.Items[q].Selected = false;
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
    protected void verification()
    {
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
            textbox = true;
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
            textbox = true;
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
            textbox = true;
        }
        if ((startDate.Text == "") || (startDate.Text == null))
        {
            dateVerify.Visible = true;
            dateVerify.Enabled = true;
            textbox = false;
        }
        else
        {
            dateVerify.Visible = false;
            dateVerify.Enabled = false;
            textbox = true;
        }
        if ((endDate.Text == "") || (endDate.Text == null))
        {
            endDateVerify.Visible = true;
            endDateVerify.Enabled = true;
            textbox = false;
        }
        else
        {
            endDateVerify.Visible = false;
            endDateVerify.Enabled = false;
            textbox = true;
        }
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
            textbox = true;
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
            textbox = false;
        }
        else
        {
            detailsVerify3.Visible = false;
            detailsVerify3.Enabled = false;
            textbox = true;
        }
    }
    protected void previewClick(object sender, EventArgs e)
    {
        previewBox.Visible = true;
        previewBox.Text = "";
        createpackage createPackage = new createpackage();
        createPackage.retrieveServiceData();
        createPackage.retrieveActivityData();
        for (int i = 0; i < UpackageServiceList.Items.Count; i++)
        {

            if (UpackageServiceList.Items[i].Selected)
            {
                ID = Convert.ToInt32(UpackageServiceList.Items[i].Value);
                servID1 = ID;
                serviceList5.Add(servID1);
                serviceadding = true;
            }

        }
        for (int o = 0; o < UupsellServicesList.Items.Count; o++)
        {
            if (UupsellServicesList.Items[o].Selected)
            {
                ID = Convert.ToInt32(UupsellServicesList.Items[o].Value);
                servID2 = ID;
                serviceList5.Add(servID2);
                Userviceadding = true;
            }
        }
        for (int o = 0; o < UdownsellServiceList.Items.Count; o++)
        {

            if (UdownsellServiceList.Items[o].Selected)
            {
                ID = Convert.ToInt32(UdownsellServiceList.Items[o].Value);
                servID3 = ID;
                serviceList5.Add(servID3);
                Dserviceadding = true;
            }
        }
        for (int i = 0; i < packageActivitiesList.Items.Count; i++)
        {

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
    protected void downsellService(object sender, EventArgs e)
    {
        for (int c = 0; c < UdownsellServiceList.Items.Count; c++)
            if (UdownsellServiceList.SelectedItem == null)
            {
                for (int o = 0; o < UupsellServicesList.Items.Count; o++)
                {
                    if (UupsellServicesList.Items[o].Selected)
                    {
                        serviceList4.Add(Convert.ToInt32(UupsellServicesList.Items[o].Value));
                    }
                }
                for (int i = 0; i < serviceList4.Count; i++)
                {
                    string sID = serviceList4[i].ToString();
                    UdownsellServiceList.Items.FindByValue(sID).Selected = true;
                }
            }
    }
    protected void upsellactivities(object sender, EventArgs e)
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
}
