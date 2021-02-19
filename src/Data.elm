module Data exposing (..)

-- this is our data or data for list of Dicts

type alias Answer =
    { answer : String, question : String }


data : List Answer
data =
    [ { answer = "Sorry, there is no match to your text, please be more specific", question = "i"}
    , { answer = "In order to return a product, you have to provide a good reason for that. If the product was not working from the beginning, we will accept it. If you have warranty, we will accept it. otherwise, we do not accept the returns.", question = "What is the return policy?"}
    , { answer = "We can ship to any place you would like to. it may take several days, dependig on your distance.", question = "What are the shipping Options?"}
    , { answer = "There is no internation tax, however, you will have to pay the local tax for buying a new product.", question = "What are the international taxes, duties, etc. that I have to pay?"}
    , { answer = "when you buy things online, you will recieve your order in your mail.", question = "When will I receive my order?"}
    , { answer = "You can send us the order number, and we will send you the order back to you.", question = "What do I do if I never received my order?"}
    , { answer = "In that case, please contact us, or send us a mail.", question = "What do I do if I received a defective order?"}
    , { answer = "You can edit your order at anytime before you proceed to pay.", question = "How do I make changes to an order I’ve already placed?"}
    , { answer = "Our main brance is located in Bratislava, Twin City", question = "Where are you located?"}
    , { answer = "That belongs to you. we will never gurranty that.", question = "How do I make sure I order the right size?"}
    , { answer = "we are trying our best to reach to our customers, as soon as possible. but you can send us mails or call us at vvv@vvv.com and +421000000000", question = "How do I contact your company if my question isn’t answered here?"}
    , { answer = "You can track the status of your order, once it is shipped, with your tracking number.", question = "What is the status of my order?"}
    , { answer = "As far, as you have not paid, you can change your order.", question = "Can I change my order?"}
    , { answer = "we ship to almost any part of the world.", question = "Where do you ship?"}
    , { answer = "the day you buy a product, we prepare it for shipping. the next day it is shipped.", question = "How long does it take to ship my order?"}
    , { answer = "We accept, VISA, G-Pay, Master Card and Cash.", question = "What payment methods do you accept?"}
    , { answer = "the main currency we use here is Euro.", question = "Which currency will I be charged in?"}
    , { answer = "Yes, but each fast shipping will cost you extra money.", question = "Do you offer fast shipping?"}
    , { answer = "Yes. you can select the warranty when buying the product. it will cost you extra money, but has its own advantages.", question = "Is there a warranty?"}
    ]
