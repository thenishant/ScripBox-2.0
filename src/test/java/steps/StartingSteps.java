package steps;

import com.testvagrant.commons.utils.JsonUtil;
import com.testvagrant.intents.Intent;
import com.testvagrant.optimus.device.OptimusController;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import utils.OptimusImpl;

import java.io.IOException;


public class StartingSteps extends BaseSteps {

    @Before
    public void setUp(Scenario scenario) throws Exception {
        String testFeed = System.getProperty("testFeed") + ".json";
        String appJson = new JsonUtil().getAppJson(testFeed);

        controller = new OptimusController(appJson, scenario);
        smartBOTs = controller.registerSmartBOTs();
        optimus = new OptimusImpl(smartBOTs);
        intent = new Intent();
    }

    @After
    public void tearDown(Scenario scenario) throws IOException {
        if (scenario.isFailed()) {
            byte[] failedScreens = optimus.getScreenCapture();
            scenario.embed(failedScreens, "image/png");
        }
        controller.deRegisterSmartBOTs(smartBOTs);
    }
}