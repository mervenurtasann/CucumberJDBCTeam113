package stepDefinitions;

import io.cucumber.java.en.Given;
import org.junit.Assert;
import utulities.JDBCReusableMethods;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import static junit.framework.TestCase.assertEquals;

public class Stepdefinition {
    String query;
    ResultSet rs;
    int flag;
    @Given("Database baglantisi kurulur.")
    public void database_baglantisi_kurulur() {
        JDBCReusableMethods.createConnection();
    }
    @Given("Query hazirlanir")
    public void query_hazirlanir() {
        query = "Select charge_id From heallife_hospitaltraining.ambulance_call Where patient_id=1 AND driver='Smith'";

    }
    @Given("Query calistirilir ve sonuclari alinir")
    public void query_calistirilir_ve_sonuclari_alinir() {
        Statement st = JDBCReusableMethods.getStatement();
        rs = JDBCReusableMethods.executeQuery(query);
    }
    @Given("Query sonuclari dogrulanir")
    public void query_sonuclari_dogrulanir() throws SQLException {
        int expectedData = 2;
        while (rs.next()){
            flag++;
        }
        assertEquals(expectedData,flag);

    }
    @Given("Database baglantisi kapatilir")
    public void database_baglantisi_kapatilir() {
        JDBCReusableMethods.closeConnection();
    }

}
