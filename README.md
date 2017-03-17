# Technex----Analiticity
HUNT FOR GOLD

Gold has been a great commodity for a very long time. It has been used in general exchange as a currency, minted into coins, or simply traded by weighted nuggets. It all depends on what time period a person happened to find themselves. The basis for its precious nature is found in nature itself. Gold is a fairly difficult but not impossible resource to find. That allows it to have value.

When you are hunting for gold,rocks and minerals are one of the most important things you can look at to find gold location clues.Out of the billions of combination of rock and mineral types,there are only a handful of gold deposit minerals that you really need to keep an eye out for.

So here is a task for you.You have to predict whether or not gold mines will be present in a region on the basis of amount of different minerals and rocks found in and around that region. The training data attached here gives the amount of those minerals at various sites and presence(1)/absence(0) of gold mines at that place. The Test data contains information about all those attributes except the actual presence of gold mine,which you have to predict and submit it as output.

The Training and Test data can be downloaded from here

Input Format

    Sr no.
    Column 'B' to 'I' - concentration of different minerals and ores on a realtive scale, on which 1 means highest concentration.0 corresponds to complete absence of mineral/ore
    Gold mine - whether or not gold mine is present at that location. 0 - absent 1 - present

Output Format

Submit the predicted value of gold mines location sorted by serial number. If 0,0,1 are the values corresponding to the serial number 1,2,3. Output is
0
0
1
* MAKE SURE THAT THE OUTPUT HAS EXACTLY 5500 ROWS.

Partial marking is present. For ex. if you correctly predict 1500 outcomes then score alloted will be (1500/5500)*100





AIR QUALITY

In statistics,régression linéaire a.k.a linear regression is an approach for modeling the relationship between a scalar dependent variable y and one or more explanatory variables (or independent variables) denoted X.In linear regression, the relationships are modeled using linear predictor functions whose unknown model parameters are estimated from the data.

Linear regression was the first type of regression to be used extensively in practical applications.This is because models which depend linearly on their unknown parameters are easier to fit than models which are non-linearly related to their parameters and because the statistical properties of the resulting estimators are easier to determine.

Here Air Quality data of a particular location on a hourly basis for 1 year has been given. Build a linear regression model for this data with T(temperature) as the goal field and all other attributes as independent variables.Then find the sum total of all the positive coefficients in the model.Let it comes out to be 'X'. Finally enter your output as floor(X)

Air quality data can be downloaded from here

**The floor function |x|, also called the greatest integer function or integer value gives the largest integer less than or equal to x*.

Input Format

    Date: date on which observation was taken
    Time:time at which observation was taken
    O3: concentration of ozone gas
    CO: concentration of CO gas
    C6H6: concentration of benzene gas
    SO2: concentration of sulphur dioxide gas
    NO2: concentration of nitrogen dioxide gas
    NOx(GT): concentration of other oxides of nitrogen
    Pb: concentration of lead
    PM(2.5): other parameter
    PM(10): other parameter
    RH: relative humidity
    AH: actual humidity
    T : temperature

Constraints

Output should be an integer quantity.

Output Format

Out of all the variables if there are 2 variables A and B having positive coefficients 0.145 and 1.254 respectively

Then X = 0.145+1.254 =1.399.

So floor(X)=1.

Hence Output is: 1




Election Extravaganza

Election season is like party time at the casino, all Bellagio like fireworks and Swarovski studded promises and the sounds of poker chips stacking Up and Down.

Currently India is also headed for a long and critical election season that span over five states,just as many weeks and 160 million voters. Many strategies are used by politicians to lure voters.Political advertising is one of them, used by candidates to reach and influence voters. It can include several different mediums and span several months over the course of a political campaign.Large amount is spend by politicians on such advertisings.

Given here is data of total amount spend by different politicians over advertising all over the country in previous elections, along with different factors on which these expense depends like total time duration of compaigning,total no of hoardings,sizes of flexes,newspaper advertisement etc(some values have been normalised).

Build a model with the help of training data with total expenditure as the goal field and predict the total expenditures for the given test data.

The Training and Test Data can be downloaded from here

Input Format

    Sr No.
    F1 - F16 - different factors
    Total expenditures: total amount(in thousands) spent on advertising

Output Format

Submit the predicted value of total expenditures by serial number. If k1,k2,k3 are the values corresponding to the serial number 1,2,3. Output is
k1
k2
k3
* _MAKE SURE THAT THE OUTPUT HAS EXACTLY 2300 ROWS.

Partial marking is present. for ex. if your model accuracy is 60% than score alloted will be (0.6*200)=120
