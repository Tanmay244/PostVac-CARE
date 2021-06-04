import pandas as pd
import numpy as np
import random
import re
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_simil


df = pd.read_csv('cdc_qa.csv',
                 header=0,
                 names=['Questions', 'Answers'])


vectorizer = CountVectorizer()
count_vec = vectorizer.fit_transform(df['Questions']).toarray()

def COVIDbot(user_response):
  text = vectorizer.transform([user_response]).toarray()
  df['similarity'] = cosine_similarity(count_vec, text)
  return df.sort_values(['similarity'], ascending=False).iloc[0]['Answers']


COVIDbot('what is coronavirus?')


welcome_input = ("hello", "hi", "greetings", "sup", "what's up","hey",)
welcome_response = ["hi", "hey", "*nods*", "hi there", "hello", "I am glad! You are talking to me"]
def welcome(user_response):
    for word in user_response.split():
        if word.lower() in welcome_input:
            return random.choice(welcome_response)
          
flag=True
print("Greetings! I am a chatbot and I will try to answer your questions about COVID-19. If you want to exit, type Bye!")
while(flag==True):
    user_response = input()
    user_response = user_response.lower()
    if(user_response not in ['bye','shutdown','exit', 'quit']):
        if(user_response=='thanks' or user_response=='thank you'):
            flag=False
            print("Chatbot : You are welcome..")
        else:
            if(welcome(user_response)!=None):
                print("Chatbot : "+welcome(user_response))
            else:
                print("Chatbot : ",end="")
                print(COVIDbot(user_response))
    else:
        flag=False
        print("Chatbot : Bye!!!")
