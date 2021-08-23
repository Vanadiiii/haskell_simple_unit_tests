import Test.HUnit

simpleTest = TestCase $ assertEqual "1 equals 1" 1 1

otherTest = TestCase $ assertEqual "'a' equals 'a'" 'a' 'a'

tests = TestList [
    TestLabel "simple" simpleTest,
    TestLabel "other" otherTest]

multiplyAssertions = TestCase $ do
    assertEqual "1 == 1" 1 1
    assertEqual "10 / 5 == 2" (10/5) 2

errorCauseTest = TestCase $ assertEqual "1 equal 2" 1 2

-- to check one of this test U can do that:
-- run this script in CL by this:
-- 'ghc Tests.hs -e "runTestTT yourTestCaseName"'

