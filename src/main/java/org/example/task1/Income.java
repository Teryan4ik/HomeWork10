package org.example.task1;

public class Income {
    public static int maxIncome(int[] prices) {
        int income = 0;
        int minValue = prices[0];
        for (int i = 1; i < prices.length; i++) {
            if (prices[i] < minValue) {
                minValue = prices[i];
            }
            int currentIncome = prices[i] - minValue;
            if (currentIncome > income) {
                income = currentIncome;
            }
        }
        return income;
    }
}
