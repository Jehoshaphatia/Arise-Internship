{
 "cells": [
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "# Arise Application Challenge\n",
    "---"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "Please answer the questions shown below by completing the code within this notebook and filling in your final answers in the respective block of the arise Challenge Answers form. "
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "---"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### Step 1 (this step does not have an answer in the answer form)"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "Please import the Pandas package. You will need to install the package if you do not already have them (`hint - google anaconda install pandas`)."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 145,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Add your code for Question 1 in this code block\n",
    "import pandas as pd"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "---"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### Step 2 (this step does not have an answer in the answer form)"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "Use Pandas to read in the csv titled `application_data.csv` as a Panda's dataframe. Once you have read in the data as a dataframe use Panda's `head()` function to show an overview of the data."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 146,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Add your code for Question 2 in this code block\n",
    "appDataFrame = pd.read_csv('application_data.csv')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 147,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>customerID</th>\n",
       "      <th>loanId</th>\n",
       "      <th>appilcationDate</th>\n",
       "      <th>LoanNumber</th>\n",
       "      <th>LoanAmount</th>\n",
       "      <th>InterestRate</th>\n",
       "      <th>TermDays</th>\n",
       "      <th>repaymentDueDate</th>\n",
       "      <th>repaymentPaidDate</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>839247458</td>\n",
       "      <td>302953235622</td>\n",
       "      <td>2018-12-21</td>\n",
       "      <td>1</td>\n",
       "      <td>7500.0</td>\n",
       "      <td>30.0</td>\n",
       "      <td>30</td>\n",
       "      <td>2019-01-20</td>\n",
       "      <td>2019-01-16</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>217540860</td>\n",
       "      <td>302960101337</td>\n",
       "      <td>2018-12-23</td>\n",
       "      <td>1</td>\n",
       "      <td>7500.0</td>\n",
       "      <td>30.0</td>\n",
       "      <td>30</td>\n",
       "      <td>2019-01-22</td>\n",
       "      <td>2018-12-29</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>522238092</td>\n",
       "      <td>303016988846</td>\n",
       "      <td>2019-01-08</td>\n",
       "      <td>1</td>\n",
       "      <td>7500.0</td>\n",
       "      <td>30.0</td>\n",
       "      <td>30</td>\n",
       "      <td>2019-02-07</td>\n",
       "      <td>2019-01-08</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>3</th>\n",
       "      <td>096754469</td>\n",
       "      <td>302999605504</td>\n",
       "      <td>2019-01-04</td>\n",
       "      <td>1</td>\n",
       "      <td>7500.0</td>\n",
       "      <td>30.0</td>\n",
       "      <td>30</td>\n",
       "      <td>2019-02-03</td>\n",
       "      <td>2019-01-08</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>4</th>\n",
       "      <td>410354345</td>\n",
       "      <td>302951945878</td>\n",
       "      <td>2018-12-21</td>\n",
       "      <td>1</td>\n",
       "      <td>7500.0</td>\n",
       "      <td>30.0</td>\n",
       "      <td>30</td>\n",
       "      <td>2019-01-20</td>\n",
       "      <td>2019-01-17</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "  customerID        loanId appilcationDate  LoanNumber  LoanAmount  \\\n",
       "0  839247458  302953235622      2018-12-21           1      7500.0   \n",
       "1  217540860  302960101337      2018-12-23           1      7500.0   \n",
       "2  522238092  303016988846      2019-01-08           1      7500.0   \n",
       "3  096754469  302999605504      2019-01-04           1      7500.0   \n",
       "4  410354345  302951945878      2018-12-21           1      7500.0   \n",
       "\n",
       "   InterestRate  TermDays repaymentDueDate repaymentPaidDate  \n",
       "0          30.0        30       2019-01-20        2019-01-16  \n",
       "1          30.0        30       2019-01-22        2018-12-29  \n",
       "2          30.0        30       2019-02-07        2019-01-08  \n",
       "3          30.0        30       2019-02-03        2019-01-08  \n",
       "4          30.0        30       2019-01-20        2019-01-17  "
      ]
     },
     "execution_count": 147,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "appDataFrame.head()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "You should now be able to see that the dataset contains information relating to loans that have been disbursed. Each row of the data is specific to a particular loan and displays the customer's ID that took out the loan, a unique loan ID, the date when the client applied for the loan, the loan number of the specific loan (how many loans the client has now taken out), the amount, interest rate, term days, the date when the loan repayment was due and the date the loan was actually repaid."
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "---"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### Question 1"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "Convert `appilcationDate`, `repaymentDueDate` and `repaymentPaidDate` in the dataframes to datetimes. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 148,
   "metadata": {},
   "outputs": [],
   "source": [
    "# convert to dates\n",
    "\n",
    "# import datetime module\n",
    "from datetime import datetime \n",
    "\n",
    "# convert the appilcationDate, repaymentDueDate and repaymentPaidDate in the dataframes to datetimes\n",
    "appDataFrame['appilcationDate'] =  pd.to_datetime(appDataFrame['appilcationDate'],format='%Y-%m-%d')\n",
    "appDataFrame['repaymentDueDate'] =  pd.to_datetime(appDataFrame['repaymentDueDate'],format='%Y-%m-%d')\n",
    "appDataFrame['repaymentPaidDate'] =  pd.to_datetime(appDataFrame['repaymentPaidDate'],format='%Y-%m-%d')"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "Now that the dates have been converted, How many `unique`data types are contained within the application dataset?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 149,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The numbers of unique data types contained within the application dataset is =  4\n"
     ]
    }
   ],
   "source": [
    "# data types\n",
    "# Print The numbers of unique data types contained within the application dataset\n",
    "print('The numbers of unique data types contained within the application dataset is = ', appDataFrame.dtypes.nunique() )"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### Question 2"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "Please calculate the `average` loan amount, interest rate and termdays for all the loans in the dataset? `Round` all number to two decimal places."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 151,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The average loan amount is  13828.08\n"
     ]
    }
   ],
   "source": [
    "# 2a avg loan amount\n",
    "# Calculate the average loan amount\n",
    "averageLoanAmount = appDataFrame[\"LoanAmount\"].mean()\n",
    "\n",
    "# Print The average loan amount\n",
    "print(\"The average loan amount is \", round(averageLoanAmount, 2))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 153,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The average interest rate is  23.06\n"
     ]
    }
   ],
   "source": [
    "# 2b avg interest rate\n",
    "# Calculate the average interest rate\n",
    "averageInterestRate = appDataFrame[\"InterestRate\"].mean()\n",
    "\n",
    "# print the average interest rate\n",
    "print(\"The average interest rate is \", round(averageInterestRate, 2))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 155,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The average term days is  42.08\n"
     ]
    }
   ],
   "source": [
    "# 2c avg term days \n",
    "# Calculate the average term days\n",
    "averageTermDays = appDataFrame[\"TermDays\"].mean()\n",
    "\n",
    "# print the average term days\n",
    "print(\"The average term days is \", round(averageTermDays, 2))"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "---"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### Question 3"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "Please create a new column called `dateDifference` which needs to contains the number of days between when the loan was repaid and when it was due to be repaid. \n",
    "\n",
    "Count the number of loans that were paid more than 3 days late. This can be done by first creating a dataframe only containing the loans that were paid more than 3 days late. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 156,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>customerID</th>\n",
       "      <th>loanId</th>\n",
       "      <th>appilcationDate</th>\n",
       "      <th>LoanNumber</th>\n",
       "      <th>LoanAmount</th>\n",
       "      <th>InterestRate</th>\n",
       "      <th>TermDays</th>\n",
       "      <th>repaymentDueDate</th>\n",
       "      <th>repaymentPaidDate</th>\n",
       "      <th>dateDifference</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>839247458</td>\n",
       "      <td>302953235622</td>\n",
       "      <td>2018-12-21</td>\n",
       "      <td>1</td>\n",
       "      <td>7500.0</td>\n",
       "      <td>30.0</td>\n",
       "      <td>30</td>\n",
       "      <td>2019-01-20</td>\n",
       "      <td>2019-01-16</td>\n",
       "      <td>4 days</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>217540860</td>\n",
       "      <td>302960101337</td>\n",
       "      <td>2018-12-23</td>\n",
       "      <td>1</td>\n",
       "      <td>7500.0</td>\n",
       "      <td>30.0</td>\n",
       "      <td>30</td>\n",
       "      <td>2019-01-22</td>\n",
       "      <td>2018-12-29</td>\n",
       "      <td>24 days</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>522238092</td>\n",
       "      <td>303016988846</td>\n",
       "      <td>2019-01-08</td>\n",
       "      <td>1</td>\n",
       "      <td>7500.0</td>\n",
       "      <td>30.0</td>\n",
       "      <td>30</td>\n",
       "      <td>2019-02-07</td>\n",
       "      <td>2019-01-08</td>\n",
       "      <td>30 days</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>3</th>\n",
       "      <td>096754469</td>\n",
       "      <td>302999605504</td>\n",
       "      <td>2019-01-04</td>\n",
       "      <td>1</td>\n",
       "      <td>7500.0</td>\n",
       "      <td>30.0</td>\n",
       "      <td>30</td>\n",
       "      <td>2019-02-03</td>\n",
       "      <td>2019-01-08</td>\n",
       "      <td>26 days</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>4</th>\n",
       "      <td>410354345</td>\n",
       "      <td>302951945878</td>\n",
       "      <td>2018-12-21</td>\n",
       "      <td>1</td>\n",
       "      <td>7500.0</td>\n",
       "      <td>30.0</td>\n",
       "      <td>30</td>\n",
       "      <td>2019-01-20</td>\n",
       "      <td>2019-01-17</td>\n",
       "      <td>3 days</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "  customerID        loanId appilcationDate  LoanNumber  LoanAmount  \\\n",
       "0  839247458  302953235622      2018-12-21           1      7500.0   \n",
       "1  217540860  302960101337      2018-12-23           1      7500.0   \n",
       "2  522238092  303016988846      2019-01-08           1      7500.0   \n",
       "3  096754469  302999605504      2019-01-04           1      7500.0   \n",
       "4  410354345  302951945878      2018-12-21           1      7500.0   \n",
       "\n",
       "   InterestRate  TermDays repaymentDueDate repaymentPaidDate dateDifference  \n",
       "0          30.0        30       2019-01-20        2019-01-16         4 days  \n",
       "1          30.0        30       2019-01-22        2018-12-29        24 days  \n",
       "2          30.0        30       2019-02-07        2019-01-08        30 days  \n",
       "3          30.0        30       2019-02-03        2019-01-08        26 days  \n",
       "4          30.0        30       2019-01-20        2019-01-17         3 days  "
      ]
     },
     "execution_count": 156,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# Date diffrence between when the loan was repaid and when it was due\n",
    "appDataFrame = appDataFrame.assign(dateDifference = appDataFrame[\"repaymentDueDate\"] - appDataFrame[\"repaymentPaidDate\"])\n",
    "appDataFrame.head()\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 157,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The number of loans that were paid more than 3 days late =  145\n"
     ]
    }
   ],
   "source": [
    "# The number of loans that were paid more than 3 days late\n",
    "\n",
    "appDataFrame['dateDifference'] = appDataFrame['dateDifference'].astype('timedelta64[D]')\n",
    "appDataFrame['dateDifference'] = appDataFrame['dateDifference'].astype('int')\n",
    "appDataFrame['greaterThan3'] = appDataFrame['dateDifference'] < -3\n",
    "appDataFrame.greaterThan3.value_counts()\n",
    "\n",
    "# Print the number of loans that were paid more than 3 days late\n",
    "print(\"The number of loans that were paid more than 3 days late = \", (appDataFrame['greaterThan3']==1).sum()) "
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "---"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### Question 4"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "Please group the dataset by `TermDays` and calculate the `mean` loan amount and the `standard deviation` of loan amount within each term.\n",
    "\n",
    "What is the mean loan amount in 30-day loans and what is the standard deviation of  loan amount in 90-day loans? Please give your answers to the nearest two decimal places. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 160,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The mean loan amount in 30-day loans is =  7941.96\n",
      "The standard deviation of loan amount in 90-day loans is =  18050.14\n"
     ]
    }
   ],
   "source": [
    "# Mean loan amount in 30-day loans and standard deviation of loan amount in 90-day loans\n",
    "\n",
    "# Calculate mean loan amount in 30-day loans \n",
    "meanLoanAmountIn30DaysLoans = round(appDataFrame.groupby('TermDays').get_group(30).mean().LoanAmount, 2)\n",
    "\n",
    "# Calculate standard deviation of loan amount in 90-day loans\n",
    "stdOfLoanAmountIn90DayLoans = round(appDataFrame.groupby('TermDays').get_group(90).std().LoanAmount, 2)\n",
    "\n",
    "# Print the values of the Mean loan amount in 30-day loans and standard deviation of loan amount in 90-day loans\n",
    "print(\"The mean loan amount in 30-day loans is = \", meanLoanAmountIn30DaysLoans )\n",
    "print(\"The standard deviation of loan amount in 90-day loans is = \", stdOfLoanAmountIn90DayLoans )\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "--- "
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### Question 5"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "`Late` loans are defined as loans that were paid `more than 3 days` after their due date. Please find the average number of days that these loans were paid beyond their due date for each `week of the year`. This will require you to break all `appilcationDate's` down into the week of the year they were made and then perform a group by. \n",
    "\n",
    "What is the average number of days that `late` loans applied for in the second week of the year were paid late? Please sumbit your answer rounded to two decimal places. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 161,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The average number of days that late loans applied for in the second week of the year were paid late is =  13.78\n"
     ]
    }
   ],
   "source": [
    "# week of year and average number of late days\n",
    "appDataFrame['week_of_year'] = appDataFrame['appilcationDate'].dt.week\n",
    "appDataFrame['LoanAppliedForIn2ndWeek'] = appDataFrame['week_of_year']  == 2\n",
    "\n",
    "# Calculate the average number of days that the loans were paid beyond their due date for each week of the year\n",
    "appDataFrame.groupby('week_of_year').mean().dateDifference\n",
    "\n",
    "# Calculate the average number of days that late loans applied for in the second week of the year were paid late\n",
    "averageNumberOfDaysof2ndWeek = round(appDataFrame.groupby('week_of_year').get_group(2).mean().dateDifference, 2)\n",
    "\n",
    "# Print the average number of days that late loans applied for in the second week of the year were paid late\n",
    "print(\"The average number of days that late loans applied for in the second week of the year were paid late is = \", averageNumberOfDaysof2ndWeek)\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "---"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### The End"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "Thank you for completing the challenge. Please make sure you have submitted all of your answers to the arise Challenge Answers form. "
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### Notebook\n",
    "Please save you notebook as `yourEmail.ipynb` where you replace `yourEmail` with your actual email address and attach it to the arise Challenge Answers form. "
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.7.1"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 2
}
