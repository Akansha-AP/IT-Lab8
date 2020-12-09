using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Lab8Q1
{
    public partial class XMLDocCreation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            string file = Path.Combine(Request.PhysicalApplicationPath, "CarDetails.xml");
            try
            {

                XDocument doc = new XDocument(
                    new XDeclaration("1.0", null, "yes"),
                    new XElement("Cars",
                        new XElement("Detail",
                            new XElement("Name", "I20"),
                            new XElement("Make", "Hyundai"),
                            new XElement("Price", 700000)
                         ),
                        new XElement("Detail",
                            new XElement("Name", "I20"),
                            new XElement("Make", "Hyndai"),
                            new XElement("Price", 700000)
                            )
                    ));
                doc.Save(file);
                lblMsg.Text = "File created.";
            }
            catch(Exception err)
            {
                lblMsg.Text = "File not created. ";
                lblMsg.Text += err.Message;
            }
        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            string file = Path.Combine(Request.PhysicalApplicationPath, "CarDetails.xml");
            XDocument doc = XDocument.Load(file);
            List<Cars> cars = new List<Cars>();
            foreach(XElement element in doc.Element("Cars").Elements("Detail"))
            {
                Cars car = new Cars();
                car.Name = element.Element("Name").Value.ToString();
                car.Make = element.Element("Make").Value.ToString();
                car.Price = (double)element.Element("Price");
                cars.Add(car);
            }
            carsGrid.DataSource = cars;
            carsGrid.DataBind();

        }
    }
    class Cars
    {
        private string name;
        private string make;
        private double price;
        public string Name
        {
            get;set;
        }
        public string Make
        {
            get; set;
        }
        public double Price
        {
            get; set;
        }
    }
}