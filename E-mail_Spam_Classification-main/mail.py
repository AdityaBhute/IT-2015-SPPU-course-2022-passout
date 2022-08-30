# Importing librariesimport imaplib
import email
from email.header import decode_header
import imaplib
import os
from sklearn.feature_extraction.text import CountVectorizer
import pickle as pickle
from tkinter import *

user = 'projectmailgps@gmail.com'
password = '9325447358'
imap_url = 'imap.gmail.com'

win = Tk()
win.geometry("700x400")
text=Text(win)

# Function to get email content part i.e its body part

def clean(text):
    # clean text for creating a folder
    return "".join(c if c.isalnum() else "_" for c in text)

# this is done to make SSL connection with GMAIL
imap = imaplib.IMAP4_SSL(imap_url)

# logging the user in
imap.login(user, password)

# calling function to check for email under this label
status , data  = imap.select('Inbox')
clf = pickle.load(open('SpamPKL.PKL','rb'))
spam = 0 
cv = pickle.load(open("countPKL.pkl","rb"))
ham = 0 
for i in range(int(data[0]), 0,-1):
    # fetch the email message by ID
    res, msg = imap.fetch(str(i), "(RFC822)")
    for response in msg:
        if isinstance(response, tuple):
            # parse a bytes email into a message object
            msg = email.message_from_bytes(response[1])
            # decode the email subject
            subject, encoding = decode_header(msg["Subject"])[0]
            if isinstance(subject, bytes):
                # if it's a bytes, decode to str
                subject = subject.decode(encoding)
            # decode email sender
            From, encoding = decode_header(msg.get("From"))[0]
            if isinstance(From, bytes):
                From = From.decode(encoding)
            #print("Subject:", subject)
            #print("From:", From)
            # if the email message is multipart
            if msg.is_multipart():
                # iterate over email parts
                for part in msg.walk():
                    # extract content type of email
                    content_type = part.get_content_type()
                    content_disposition = str(part.get("Content-Disposition"))
                    try:
                        # get the email body
                        body = part.get_payload(decode=True).decode()
                    except:
                        pass
                    if content_type == "text/plain" and "attachment" not in content_disposition:
                        # print text/plain emails and skip attachments
                        text.insert(INSERT,body+"\n")
                        print(body)
                        data = [body]
                        vector = cv.transform(data).toarray()
                        res = clf.predict(vector)
                        if res==1:
                            text.insert(INSERT,"spam\n")
                            print("spam")
                        else:
                            text.insert(INSERT,"HAM\n")
                            print("Ham")
                        
            else:
                # extract content type of email
                content_type = msg.get_content_type()
                # get the email body
                body = msg.get_payload(decode=True).decode()
                if content_type == "text/plain":
                    # print only text email parts
                    print(body)
            if content_type == "text/html":
                pass
            text.insert(INSERT , "="*40+"\n")
            print("="*100)
# close the connection and logout

text.insert(INSERT,"Hello\n")
text.insert(INSERT,"Inserted")
text.pack()


text.tag_add("Write Here", "1.0", "1.4")  
text.tag_add("Click Here", "1.8", "1.13")  
  
text.tag_config("Write Here", background="yellow", foreground="black")  
text.tag_config("Click Here", background="black", foreground="white") 

win.mainloop()
imap.close()
imap.logout()