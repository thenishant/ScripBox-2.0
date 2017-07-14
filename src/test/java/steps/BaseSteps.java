package steps;

import com.testvagrant.commons.entities.SmartBOT;
import com.testvagrant.intents.Intent;
import com.testvagrant.optimus.device.OptimusController;
import io.appium.java_client.AppiumDriver;
import utils.OptimusImpl;

import java.util.List;

public class BaseSteps {


    protected static OptimusImpl optimus;
    protected static OptimusController controller;
    protected static List<SmartBOT> smartBOTs;
    protected static Intent intent;

    protected AppiumDriver getDriverInstanceFor(String appConsumer) {
        return getSmartBOTBelongingTo(appConsumer).getDriver();
    }

    protected SmartBOT getSmartBOTBelongingTo(String appConsumer) {
        return optimus.findBOTFor(appConsumer);
    }
}