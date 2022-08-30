import pandas as pd
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.model_selection import train_test_split
import pickle 
from sklearn.naive_bayes import MultinomialNB
data = pd.read_csv("spam.csv",encoding="latin-1")

data.drop(['Unnamed: 2', 'Unnamed: 3', 'Unnamed: 4'],axis=1,inplace=True)

data['class'] = data['class'].map({'ham':0,'spam':1})
 


cv=CountVectorizer()
x = data['message']
y=  data['class']

x=cv.fit_transform(x)
x_train , x_test , y_train , y_test = train_test_split(x,y,test_size=0.2)

model = MultinomialNB()
model.fit(x_train,y_train)
print("the test score is:"+str(model.score(x_test,y_test)*100))

pickle.dump(model , open('SpamPKL.pkl','wb'))

pickle.dump(cv,open("countPKL.pkl","wb"))

clf = pickle.load(open('SpamPKL.PKL','rb'))
msg = "congratulations you have won the lottery of 1000 $"
data = [msg] 
vector = cv.transform(data).toarray()
result = model.predict(vector)
if result==1:
    print("spam")
else:
    print("ham")