
# Arise Application Challenge
---

Please answer the questions shown below by completing the code within this notebook and filling in your final answers in the respective block of the arise Challenge Answers form. 

---

### Step 1 (this step does not have an answer in the answer form)

Please import the Pandas package. You will need to install the package if you do not already have them (`hint - google anaconda install pandas`).


```python
# Add your code for Question 1 in this code block
import pandas as pd
```

---

### Step 2 (this step does not have an answer in the answer form)

Use Pandas to read in the csv titled `application_data.csv` as a Panda's dataframe. Once you have read in the data as a dataframe use Panda's `head()` function to show an overview of the data.


```python
# Add your code for Question 2 in this code block
appDataFrame = pd.read_csv('application_data.csv')
```


```python
appDataFrame.head()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>customerID</th>
      <th>loanId</th>
      <th>appilcationDate</th>
      <th>LoanNumber</th>
      <th>LoanAmount</th>
      <th>InterestRate</th>
      <th>TermDays</th>
      <th>repaymentDueDate</th>
      <th>repaymentPaidDate</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>839247458</td>
      <td>302953235622</td>
      <td>2018-12-21</td>
      <td>1</td>
      <td>7500.0</td>
      <td>30.0</td>
      <td>30</td>
      <td>2019-01-20</td>
      <td>2019-01-16</td>
    </tr>
    <tr>
      <th>1</th>
      <td>217540860</td>
      <td>302960101337</td>
      <td>2018-12-23</td>
      <td>1</td>
      <td>7500.0</td>
      <td>30.0</td>
      <td>30</td>
      <td>2019-01-22</td>
      <td>2018-12-29</td>
    </tr>
    <tr>
      <th>2</th>
      <td>522238092</td>
      <td>303016988846</td>
      <td>2019-01-08</td>
      <td>1</td>
      <td>7500.0</td>
      <td>30.0</td>
      <td>30</td>
      <td>2019-02-07</td>
      <td>2019-01-08</td>
    </tr>
    <tr>
      <th>3</th>
      <td>096754469</td>
      <td>302999605504</td>
      <td>2019-01-04</td>
      <td>1</td>
      <td>7500.0</td>
      <td>30.0</td>
      <td>30</td>
      <td>2019-02-03</td>
      <td>2019-01-08</td>
    </tr>
    <tr>
      <th>4</th>
      <td>410354345</td>
      <td>302951945878</td>
      <td>2018-12-21</td>
      <td>1</td>
      <td>7500.0</td>
      <td>30.0</td>
      <td>30</td>
      <td>2019-01-20</td>
      <td>2019-01-17</td>
    </tr>
  </tbody>
</table>
</div>



You should now be able to see that the dataset contains information relating to loans that have been disbursed. Each row of the data is specific to a particular loan and displays the customer's ID that took out the loan, a unique loan ID, the date when the client applied for the loan, the loan number of the specific loan (how many loans the client has now taken out), the amount, interest rate, term days, the date when the loan repayment was due and the date the loan was actually repaid.

---

### Question 1

Convert `appilcationDate`, `repaymentDueDate` and `repaymentPaidDate` in the dataframes to datetimes. 


```python
# convert to dates

# import datetime module
from datetime import datetime 

# convert the appilcationDate, repaymentDueDate and repaymentPaidDate in the dataframes to datetimes
appDataFrame['appilcationDate'] =  pd.to_datetime(appDataFrame['appilcationDate'],format='%Y-%m-%d')
appDataFrame['repaymentDueDate'] =  pd.to_datetime(appDataFrame['repaymentDueDate'],format='%Y-%m-%d')
appDataFrame['repaymentPaidDate'] =  pd.to_datetime(appDataFrame['repaymentPaidDate'],format='%Y-%m-%d')
```

Now that the dates have been converted, How many `unique`data types are contained within the application dataset?


```python
# data types
# Print The numbers of unique data types contained within the application dataset
print('The numbers of unique data types contained within the application dataset = ', appDataFrame.dtypes.nunique() )
```

    The numbers of unique data types contained within the application dataset =  4


### Question 2

Please calculate the `average` loan amount, interest rate and termdays for all the loans in the dataset? `Round` all number to two decimal places.


```python
# 2a avg loan amount
# Calculate the average loan amount
averageLoanAmount = appDataFrame["LoanAmount"].mean()

# Print The average loan amount
print("The average loan amount is ", round(averageLoanAmount, 2))
```

    The average loan amount is  13828.08



```python
# 2b avg interest rate
# Calculate the average interest rate
averageInterestRate = appDataFrame["InterestRate"].mean()

# print the average interest rate
print("The average interest rate is ", round(averageInterestRate, 2))
```

    The average interest rate is  23.06



```python
# 2c avg term days 
# Calculate the average term days
averageTermDays = appDataFrame["TermDays"].mean()

# print the average term days
print("The average term days is ", round(averageTermDays, 2))
```

    The average term days is  42.08


---

### Question 3

Please create a new column called `dateDifference` which needs to contains the number of days between when the loan was repaid and when it was due to be repaid. 

Count the number of loans that were paid more than 3 days late. This can be done by first creating a dataframe only containing the loans that were paid more than 3 days late. 


```python
# Date diffrence between when the loan was repaid and when it was due
appDataFrame = appDataFrame.assign(dateDifference = appDataFrame["repaymentDueDate"] - appDataFrame["repaymentPaidDate"])
appDataFrame.head()

```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>customerID</th>
      <th>loanId</th>
      <th>appilcationDate</th>
      <th>LoanNumber</th>
      <th>LoanAmount</th>
      <th>InterestRate</th>
      <th>TermDays</th>
      <th>repaymentDueDate</th>
      <th>repaymentPaidDate</th>
      <th>dateDifference</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>839247458</td>
      <td>302953235622</td>
      <td>2018-12-21</td>
      <td>1</td>
      <td>7500.0</td>
      <td>30.0</td>
      <td>30</td>
      <td>2019-01-20</td>
      <td>2019-01-16</td>
      <td>4 days</td>
    </tr>
    <tr>
      <th>1</th>
      <td>217540860</td>
      <td>302960101337</td>
      <td>2018-12-23</td>
      <td>1</td>
      <td>7500.0</td>
      <td>30.0</td>
      <td>30</td>
      <td>2019-01-22</td>
      <td>2018-12-29</td>
      <td>24 days</td>
    </tr>
    <tr>
      <th>2</th>
      <td>522238092</td>
      <td>303016988846</td>
      <td>2019-01-08</td>
      <td>1</td>
      <td>7500.0</td>
      <td>30.0</td>
      <td>30</td>
      <td>2019-02-07</td>
      <td>2019-01-08</td>
      <td>30 days</td>
    </tr>
    <tr>
      <th>3</th>
      <td>096754469</td>
      <td>302999605504</td>
      <td>2019-01-04</td>
      <td>1</td>
      <td>7500.0</td>
      <td>30.0</td>
      <td>30</td>
      <td>2019-02-03</td>
      <td>2019-01-08</td>
      <td>26 days</td>
    </tr>
    <tr>
      <th>4</th>
      <td>410354345</td>
      <td>302951945878</td>
      <td>2018-12-21</td>
      <td>1</td>
      <td>7500.0</td>
      <td>30.0</td>
      <td>30</td>
      <td>2019-01-20</td>
      <td>2019-01-17</td>
      <td>3 days</td>
    </tr>
  </tbody>
</table>
</div>




```python
# The number of loans that were paid more than 3 days late

appDataFrame['dateDifference'] = appDataFrame['dateDifference'].astype('timedelta64[D]')
appDataFrame['dateDifference'] = appDataFrame['dateDifference'].astype('int')
appDataFrame['greaterThan3'] = appDataFrame['dateDifference'] < -3
appDataFrame.greaterThan3.value_counts()

# Print the number of loans that were paid more than 3 days late
print("The number of loans that were paid more than 3 days late = ", (appDataFrame['greaterThan3']==1).sum()) 
```

    The number of loans that were paid more than 3 days late =  145


---

### Question 4

Please group the dataset by `TermDays` and calculate the `mean` loan amount and the `standard deviation` of loan amount within each term.

What is the mean loan amount in 30-day loans and what is the standard deviation of  loan amount in 90-day loans? Please give your answers to the nearest two decimal places. 


```python
# Mean loan amount in 30-day loans and standard deviation of loan amount in 90-day loans

# Calculate mean loan amount in 30-day loans 
meanLoanAmountIn30DaysLoans = round(appDataFrame.groupby('TermDays').get_group(30).mean().LoanAmount, 2)

# Calculate standard deviation of loan amount in 90-day loans
stdOfLoanAmountIn90DayLoans = round(appDataFrame.groupby('TermDays').get_group(90).std().LoanAmount, 2)

# Print out the values of the Mean loan amount in 30-day loans and standard deviation of loan amount in 90-day loans
print("The mean loan amount in 30-day loans is = ", meanLoanAmountIn30DaysLoans )
print("The tandard deviation of loan amount in 90-day loans is = ", stdOfLoanAmountIn90DayLoans )


```

    The mean loan amount in 30-day loans is =  7941.96
    The tandard deviation of loan amount in 90-day loans is =  18050.14


--- 

### Question 5

`Late` loans are defined as loans that were paid `more than 3 days` after their due date. Please find the average number of days that these loans were paid beyond their due date for each `week of the year`. This will require you to break all `appilcationDate's` down into the week of the year they were made and then perform a group by. 

What is the average number of days that `late` loans applied for in the second week of the year were paid late? Please sumbit your answer rounded to two decimal places. 


```python
# week of year and average number of late days
appDataFrame['week_of_year'] = appDataFrame['appilcationDate'].dt.week
appDataFrame['LoanAppliedForIn2ndWeek'] = appDataFrame['week_of_year']  == 2

# Calculate the average number of days that the loans were paid beyond their due date for each week of the year
appDataFrame.groupby('week_of_year').mean().dateDifference

#The average number of days that late loans applied for in the second week of the year were paid late
averageNumberOfDaysof2ndWeek = round(appDataFrame.groupby('week_of_year').get_group(2).mean().dateDifference, 2)

print("The average number of days that late loans applied for in the second week of the year were paid late is = ", averageNumberOfDaysof2ndWeek)


```

    The average number of days that late loans applied for in the second week of the year were paid late is =  13.78


---

### The End

Thank you for completing the challenge. Please make sure you have submitted all of your answers to the arise Challenge Answers form. 

### Notebook
Please save you notebook as `yourEmail.ipynb` where you replace `yourEmail` with your actual email address and attach it to the arise Challenge Answers form. 
