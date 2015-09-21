import grails.test.AbstractCliTestCase

class GenerateTests extends AbstractCliTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testGenerate() {

        execute(["generate"])

        assertEquals 0, waitForProcess()
        verifyHeader()
    }
}
