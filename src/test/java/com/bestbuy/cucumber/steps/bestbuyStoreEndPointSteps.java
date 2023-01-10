package com.bestbuy.cucumber.steps;

import com.bestbuy.bestbuyinfo.StoreSteps;
import com.bestbuy.model.StorePojo;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.ValidatableResponse;
import net.thucydides.core.annotations.Steps;

public class bestbuyStoreEndPointSteps {
    static ValidatableResponse response;
    static int id;
    static String name = "HomeAppliances";
    static String type = "BigBox";
    static String address = "10 XYZ Road";
    static String address2 = "NW 10";
    static String city = "London";
    static String state = "England";
    static String zip = "67687";
    static int lat = 23;
    static int lng = 24;
    static String hours ="Mon: 9-10; Tue: 9-10; Wed: 9-10; Thurs: 9-10; Fri: 9-10; Sat: 9-10; Sun: 9-4";
    private StorePojo.Services services;
    @Steps
    StoreSteps storeSteps;
    @When("^User sends a GET request to stores endpoint$")
    public void userSendsAGETRequestToStoresEndpoint() {
        response = storeSteps.getAllStoreInfo();
    }

    @When("^User sends a POST request by providing the information to stores endpoint$")
    public void userSendsAPOSTRequestByProvidingTheInformationToStoresEndpoint() {
        response = storeSteps.createStore(name, type, address,address2, city, state, zip, lat, lng, hours,services);
        id = response.extract().path("id");
    }
    @Then("^User must get back valid status code 201 for post request$")
    public void userMustGetBackValidStatusCodeForPostRequest() {
        response.statusCode(201);
    }

    @When("^User sends a PUT request by providing the information to stores/id endpoint$")
    public void userSendsAPUTRequestByProvidingTheInformationToStoresIdEndpoint() {
        name = name + "_updated";
        response = storeSteps.updateStore(id,name, type, address,address2, city, state, zip, lat, lng, hours,services);
    }

    @When("^User sends a DELETE request to stores/id endpoint$")
    public void userSendsADELETERequestToStoresIdEndpoint() {
        storeSteps.deleteStore(id);
    }


}
