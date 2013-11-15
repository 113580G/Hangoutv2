using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using pudTableAdapters;
using System.Data;
/// <summary>
/// Summary description for createpackage
/// </summary>
[System.ComponentModel.DataObject]
public class createpackage
{
    int servicedelete = 0;
    /*****************************************************************************
     * Attributes
    *****************************************************************************/
    public ArrayList packagedetails = new ArrayList();
    public ArrayList activityIDs = new ArrayList();
    public ArrayList serviceIDs = new ArrayList();
    public ArrayList activitydata  = new ArrayList();
    public ArrayList activitydata2 = new ArrayList();
    public ArrayList servicedata = new ArrayList();
    public ArrayList servicedata2 = new ArrayList();
    /*****************************************************************************
    * Package 3 TIer
    *****************************************************************************/
    private PackageTableAdapter packageAdapter = null;
    protected PackageTableAdapter Adapter
    {
        get
        {
            if (packageAdapter == null)
                packageAdapter = new PackageTableAdapter();
            return packageAdapter;
        }
    }

    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public pud.PackageDataTable retrievePackage()
    {
        // Insert any custom logic/business rules here...
        return Adapter.GetPackage();
    }
        [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public pud.PackageDataTable GetPackageDetailing(int packID)
    {
        
        return Adapter.GetPackageDetails(packID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public virtual int DeletePackage(int packageID)
    {
        // Insert any custom logic/business rules here...
        return Adapter.DeletePackage(packageID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public int InsertPack(string packPrice, string packDetails, string packName, string packStartDate, string packEndDate, string pTimestamp, string upsellPrice, string upsellDetails, string downsellPrice, string downsellDetails)
    {
        /*ArrayList packed = new ArrayList();
        char [] edChar = packEventDate.ToCharArray();
        for (int i = 0; i < edChar.Count(); i++){
            if ((edChar[i] != null) || (edChar[i].ToString() != "")){
                packed.Add(edChar[i].ToString());}
        }
        string EventDate = System.String.Concat(packed.ToArray());*/
        return Adapter.Insert(packPrice, packDetails, packName, packStartDate, packEndDate, pTimestamp, upsellPrice, upsellDetails, downsellPrice, downsellDetails);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public int GetpackID(string packPrice, string packDetails, string packName, string packDate)
    {
        int packID = 0;
        DataTable packageID = Adapter.GetPackageID(packPrice);
        foreach (DataRow row in packageID.Rows)
        {
            packID = Convert.ToInt32(row["packID"]);
        }
        return packID;
    }
    public ArrayList GetPackageDetail(int packageID)
    {
        DataTable PD = Adapter.GetPackageDetails(packageID);
        foreach (DataRow row in PD.Rows)
        {
            packagedetails.Add(row["packName"].ToString());
            packagedetails.Add(row["packPrice"].ToString());
            packagedetails.Add(row["packDetails"].ToString());
            packagedetails.Add(row["packStartDate"].ToString());
            packagedetails.Add(row["packEndDate"].ToString());
            packagedetails.Add(row["upsellPrice"].ToString());
            packagedetails.Add(row["upsellDetails"].ToString());
            packagedetails.Add(row["downsellPrice"].ToString());
            packagedetails.Add(row["downsellDetails"].ToString());
        }
        return packagedetails;
    }

    [System.ComponentModel.DataObjectMethodAttribute
    (System.ComponentModel.DataObjectMethodType.Update, true)]
    public void UpdatePackage(string packPrice, string packDetails, string packName, string packStartDate,string packEndDate, string pTimestamp, string upsellPrice, string upsellDetails, string downsellPrice, string downsellDetails, int packageID)
    {
        Adapter.UpdatePackage(packPrice, packDetails, packName, packStartDate,packEndDate, pTimestamp, upsellPrice, upsellDetails, downsellPrice, downsellDetails, packageID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public string getStartDate(string packName)
    {
        string startDate ="";
        DataTable packageName = Adapter.GetPackageStuff(packName);
        foreach (DataRow row in packageName.Rows)
        {
            startDate = row["packStartDate"].ToString();
        }
        return startDate;
    }
    public string getEndDate(string packName)
    {
        string endDate = "";
        DataTable packageName = Adapter.GetPackageStuff(packName);
        foreach (DataRow row in packageName.Rows)
        {
            endDate = row["packEndDate"].ToString();
        }
        return endDate;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public string GetPackPrice(int packID)
    {
        string packagePrice = "";
        DataTable packageID = Adapter.GetPricePackage(packID);
        foreach (DataRow row in packageID.Rows)
        {
            packagePrice = row["packPrice"].ToString();
        }
        return packagePrice;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public string GetUpsellPrice(int packID)
    {
        string upsellPrice = "";
        DataTable packageID = Adapter.GetPricePackage(packID);
        foreach (DataRow row in packageID.Rows)
        {
            upsellPrice = row["upsellPrice"].ToString();
        }
        return upsellPrice;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public int GetDownsellPrice(int packageID)
    {
        int price = 0;
        DataTable packageData = Adapter.GetPackageDetails(packageID);
        DataRow firstRow = packageData.Rows[0];
        price = Convert.ToInt32(firstRow["downsellPrice"]);
        return price;
    }
    /*****************************************************************************
    * ServicePackage 3 TIer
    *****************************************************************************/
    private ServicePackageTableAdapter servicepackageAdapter = null;

    protected ServicePackageTableAdapter Adapter2
    {
        get
        {
            if (servicepackageAdapter == null)
                servicepackageAdapter = new ServicePackageTableAdapter();
            return servicepackageAdapter;
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    protected Boolean RetrieveServicePackage(int servID, int packID, string servCat, string spTimestamp)
    {
        string spID = "";
        string serID = "";
        string pacID = "";
        string serCat = "";
        string spTime = "";
        bool validation = false;
        DataTable a = Adapter2.GetspValidation(servID, packID, servCat, spTimestamp);
        foreach (DataRow row in a.Rows)
        {
            spID = row["spID"].ToString();
            serID = row["servID"].ToString();
            pacID = row["packID"].ToString();
            serCat = row["servCat"].ToString();
            spTime = row["spTimestamp"].ToString();
        }
        if (spID == "" && serID == "" && pacID == "" && serCat == "" && spTime == "")
        {
            validation = true;
        }
        return validation;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public void InsertServicePackage(int servID, int packID, string servCat, string spTimestamp)
    {
        if (RetrieveServicePackage(servID, packID, servCat, spTimestamp))
        {
            Adapter2.Insert(servID, packID, servCat, spTimestamp);
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public ArrayList RetrieveServiceIDs(int packageID)
    {
        DataTable GetArrayOfServiceIDs = Adapter2.GetService(packageID);
        foreach (DataRow row in GetArrayOfServiceIDs.Rows)
            serviceIDs.Add(row["servID"].ToString());
        return serviceIDs;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public virtual int DeleteServicePackage(int packageID)
    {
        // Insert any custom logic/business rules here...
        return Adapter2.DeleteServicePackage(packageID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
       (System.ComponentModel.DataObjectMethodType.Update, true)]
    public void UpdateServicePackage(ArrayList serviceIDs, string spTimestamp, int packageID)
    {
        int spID = RetrieveSPID(packageID);
        for (int i = 0; i < serviceIDs.Count; i++)
        {
            int spID2 = spID + i;
            int serviceID = Convert.ToInt32(serviceIDs[i]);
            Adapter2.UpdateServicePackage(serviceID, spTimestamp, packageID, spID2);
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public int RetrieveSPID(int packageID)
    {
        int spID = 0;
        DataTable servicepackageID = Adapter2.RetrieveSPID(packageID);
        DataRow firstRow = servicepackageID.Rows[0];
        spID = Convert.ToInt32(firstRow["spID"]);
        return spID;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public pud.ServicePackageDataTable GetServiceUpsell(int packID)
    {

        return Adapter2.GetServiceUpsell(packID);
    }
    /*****************************************************************************
    * ActivityPackage 3 TIer
    *****************************************************************************/
    private ActivityPackageTableAdapter activitypackageAdapter = null;
    protected ActivityPackageTableAdapter Adapter3
    {
        get
        {
            if (activitypackageAdapter == null)
                activitypackageAdapter = new ActivityPackageTableAdapter();
            return activitypackageAdapter;
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public int InsertActivityPackage(int actID, int packID, string servCat, string apTImestamp)
    {

        return Adapter3.Insert(actID, packID, servCat, apTImestamp);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public ArrayList RetrieveActivityIDs(int packageID)
    {
        DataTable GetArrayOfActivityIDs = Adapter3.GetActivityID(packageID);
        foreach (DataRow row in GetArrayOfActivityIDs.Rows)
            activityIDs.Add(row["activityID"].ToString());
        return activityIDs;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public virtual int DeleteActivityPackage(int packageID)
    {
        // Insert any custom logic/business rules here...
        return Adapter3.DeleteActivityPackage(packageID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
   (System.ComponentModel.DataObjectMethodType.Update, true)]
    public void UpdateActivityPackage(ArrayList activityIDs, string apTimestamp, int packageID)
    {
        int paID = RetrievePAID(packageID);
        for (int i = 0; i < activityIDs.Count; i++)
        {
            int paID2 = paID + i;
            int activityID = Convert.ToInt32(activityIDs[i]);
            Adapter3.UpdateActivityPackage(activityID, apTimestamp, packageID, paID2);
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public int RetrievePAID(int packageID)
    {
        int paID = 0;
        DataTable activitypackageID = Adapter3.RetrievePAID(packageID);
        DataRow firstRowA = activitypackageID.Rows[0];
        paID = Convert.ToInt32(firstRowA["paID"]);
        return paID;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public pud.ActivityPackageDataTable GetActivityUpsell (int packID)
    {

        return Adapter3.GetActivityID(packID);
    }


    /*****************************************************************************
     * ActivityTIer
    *****************************************************************************/
    private ActivityTableAdapter activityAdapter = null;
    protected ActivityTableAdapter Adapter4
    {
        get
        {
            if (activityAdapter == null)
                activityAdapter = new ActivityTableAdapter();
            return activityAdapter;
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public pud.ActivityDataTable retrieveActivity(bool activityVis)
    {
        activityVis = true;
        return Adapter4.GetActivityTrue(activityVis);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public pud.ActivityDataTable retrieveActivities()
    {
        return Adapter4.GetActivity();
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public virtual int DeleteActivity(int Original_activityID)
    {
        // Insert any custom logic/business rules here...
        Adapter3.UpdateAPaid(null, Original_activityID);
        return Adapter4.Delete(Original_activityID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Update, true)]
    public int UpdateActivity(string activityName, string activityDetails, string activityPrice, string aTimestamp, int Original_activityID)
    {
        return Adapter4.Update(activityName, activityDetails, activityPrice, aTimestamp, true, Original_activityID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public int InsertActivity(string activityName, string activityDetails, string activityPrice, string aTimestamp)
    {
        string AP = activityPrice.Substring(1);
        int activityPricing = Convert.ToInt32(AP);
        if (activityPricing < 30)
        {
            activityPricing = 30;
            AP = "$"+activityPricing.ToString();
        }
        return Adapter4.Insert(activityName, activityDetails, AP, aTimestamp, true);
    }
        [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public ArrayList retrieveActivityData(){
        DataTable ActivityData = Adapter4.GetActivityT();
        for (int i = 0 ; i < ActivityData.Rows.Count; i++)
        {
             DataRow firstRow = ActivityData.Rows[i];
             activitydata.Add(firstRow["activityName"].ToString() +"'s cost price is " +firstRow["activityPrice"].ToString() );
        }
        
        return activitydata;
    }
        [System.ComponentModel.DataObjectMethodAttribute
 (System.ComponentModel.DataObjectMethodType.Insert, true)]
        public ArrayList retrieveActivitySData(ArrayList activityList)
        {
            int activityID = 0;
            for (int i = 0; i < activityList.Count; i++)
            {
                activityID = Convert.ToInt32(activityList[i]);
                DataTable ActivityData2 = Adapter4.GetActivityInfo(activityID);
                DataRow firstRow = ActivityData2.Rows[0];
                activitydata2.Add(firstRow["activityName"].ToString() + "'s cost price is " + firstRow["activityPrice"].ToString());
            }

            return activitydata2;
        }
        [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Update, true)]
        public int UpdateActivity2(string activityName, string activityDetails, string activityPrice, string aTimestamp, int Original_activityID)
        {
            DataTable getActivity = Adapter4.GetActivityInfo(Original_activityID);
            DataRow actRow = getActivity.Rows[0];
            activityName = actRow["activityName"].ToString();
            activityDetails = actRow["activityDetails"].ToString();
            activityPrice = actRow["activityPrice"].ToString();
            aTimestamp = actRow["aTimestamp"].ToString();
            return Adapter4.Update(activityName, activityDetails, activityPrice, aTimestamp, false, Original_activityID);
        }
        [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
        public string GetActivityInfoString(int activityID)
        {
            DataTable serviceInfo = Adapter4.GetActivityInfo(activityID);
            DataRow serv = serviceInfo.Rows[0];
            string activity = serv["activityName"].ToString();
            return activity;
        }
        public string GetActivityCostString(int activityID)
        {
            DataTable serviceInfo = Adapter4.GetActivityInfo(activityID);
            DataRow serv = serviceInfo.Rows[0];
            string activityCost = serv["activityPrice"].ToString();
            return activityCost;
        }
    /*****************************************************************************
     * ServiceTIer
    *****************************************************************************/
    private ServiceTableAdapter serviceAdapter = null;
    protected ServiceTableAdapter Adapter5
    {
        get
        {
            if (serviceAdapter == null)
                serviceAdapter = new ServiceTableAdapter();
            return serviceAdapter;
        }
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public pud.ServiceDataTable retrieveService()
    {
        return Adapter5.GetService();
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Select, true)]
    public pud.ServiceDataTable retrieveServices(bool servVis)
    {
        servVis = true;
        return Adapter5.GetServiceTrue(servVis);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public virtual int DeleteService(int Original_servID)
    {
        // Insert any custom logic/business rules here...
        servicedelete = Original_servID;
        Adapter2.UpdateSPservid(null, Original_servID);
        return Adapter5.Delete(Original_servID);

    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Update, true)]
    public int UpdateService(string servName, string servDetails, string servPrice, string sTimestamp, int Original_servID)
    {
        DataTable getService = Adapter5.GetServiceInfo(Original_servID);
        DataRow servRow = getService.Rows[0];
        servName = servRow["servName"].ToString();
        servDetails = servRow["servDetails"].ToString();
        servPrice = servRow["servPrice"].ToString();
        sTimestamp = servRow["sTimestamp"].ToString();
        return Adapter5.Update(servName, servDetails, servPrice, sTimestamp, false, Original_servID);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public int InsertService(string servName, string servDetails, string servPrice, string sTimestamp)
    {
        string SP = servPrice.Substring(1);
        int servicePricing = Convert.ToInt32(SP);
        if (servicePricing < 15)
        {
            servicePricing = 15;
            SP = "$" + servicePricing.ToString();
        }
        return Adapter5.Insert(servName, servDetails, SP, sTimestamp, true);
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public ArrayList retrieveServiceData()
    {
        DataTable serviceData = Adapter5.GetServiceT();
        for (int i = 0; i < serviceData.Rows.Count; i++)
        {
            DataRow servRow = serviceData.Rows[i];
            servicedata.Add(servRow["servName"].ToString() + "'s cost price is " + servRow["servPrice"].ToString());
        }

        return activitydata;
    }
    [System.ComponentModel.DataObjectMethodAttribute
(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public ArrayList retrieveServiceSData(ArrayList serviceList)
    {
        int serviceID = 0;
        for (int i = 0; i < serviceList.Count; i++)
        {
            serviceID = Convert.ToInt32(serviceList[i]);
            DataTable ServiceData2 = Adapter5.GetServiceInfo(serviceID);
            DataRow servRow = ServiceData2.Rows[0];
            servicedata2.Add(servRow["servName"].ToString() + "'s cost price is " + servRow["servPrice"].ToString());
        }

        return servicedata2;
    }
    public string GetServiceData(int serviceID)
    {
        DataTable getActivityData = Adapter5.GetServiceInfo(serviceID);
        DataRow actRow = getActivityData.Rows[0];
        string serviceData = actRow["servName"].ToString();
        return serviceData;
    }
    public string GetServiceCost(int serviceID)
    {
        DataTable getServiceCost = Adapter5.GetServiceInfo(serviceID);
        DataRow actRow = getServiceCost.Rows[0];
        string servicePrice = actRow["servPrice"].ToString();
        return servicePrice;
    }
}