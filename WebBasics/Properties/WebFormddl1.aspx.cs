/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBasics.Properties
{
    public partial class WebFormddl1 : System.Web.UI.Page
    {
        private List<string> GetCountries() 
        {
            List<string> lstCountries = new List<string>();
            lstCountries.Add("India");
            lstCountries.Add("USA");
            return lstCountries;
        }
        private List<string> GetStates(string country)
        {
            List<string> indianStates = new List<string>()
            {
                "Telangana","Chennai","Maharastra","Goa"
            };
            List<string> usaStates = new List<string>()
            {
                "Califorina","Texas","Dallas","Nividea"
            };
            if(country.ToLower() == "india")
                return indianStates;
            else if(country.ToLower() =="usa")
                return usaStates;
            return new List<string>();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (var item in GetCountries())
                {
                    ddlCountry.Items.Add(item);
                }
            }
           
        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            string country = ddlCountry.SelectedValue;
            List<string> states = GetStates(country); 
            ddlStates.Items.Clear();
            foreach (var item in states)
            {
                ddlStates.Items.Add(item);
            }
        }
    }
}*/
using System;
using System.Collections.Generic;
using System.Web.UI;

namespace WebBasics.Properties
{
    public partial class WebFormddl1 : Page
    {
        private List<string> GetCountries()
        {
            List<string> lstCountries = new List<string>();
            lstCountries.Add("India");
            lstCountries.Add("USA");
            return lstCountries;
        }

        private List<string> GetStates(string country)
        {
            if (country.ToLower() == "india")
            {
                return new List<string> { "Telangana", "Chennai", "Maharashtra", "Goa" };
            }
            else if (country.ToLower() == "usa")
            {
                return new List<string> { "California", "Texas", "Dallas", "Nevada" };
            }
            else
            {
                return new List<string>();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (var item in GetCountries())
                {
                    ddlCountry.Items.Add(item);
                }
            }
        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            string country = ddlCountry.SelectedValue;
            List<string> states = GetStates(country);
            ddlStates.Items.Clear();
            foreach (var item in states)
            {
                ddlStates.Items.Add(item);
            }
        }
    }
}
