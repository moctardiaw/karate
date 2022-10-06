package runner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import org.junit.Test;
import static org.junit.Assert.*;

public class ApiTestRunner {
    @Test
    public void testParallel() {

        Results results = Runner.path("classpath:features").tags("test02,test03").parallel(1);
        assertTrue( results.getErrorMessages(), results.getFailCount() == 0);

    }


}