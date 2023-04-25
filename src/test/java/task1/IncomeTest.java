package task1;

import org.example.task1.Income;
import org.junit.Assert;
import org.junit.Test;

public class IncomeTest {

    @Test
    public void maxIncomeTest() {
        int[] inputArray = {7, 1, 5, 3, 6, 4};
        int expected = 0;
        int actual = Income.maxIncome(inputArray);
        Assert.assertEquals(expected, actual);
    }
}



