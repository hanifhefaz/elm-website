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
    , { answer = "", question = "Are all your products new and original, or are they used?"}
    , { answer = "", question = "Is it possible for me to cancel my order and what would be the procedure of doing it?"}
    , { answer = "", question = "Can I order and buy a phone from your web site from any country?"}
    , { answer = "", question = "Are there any additional costs other than those that I see when confirming the order?"}
    , { answer = "", question = "Can I expect to get the User manual together with the product?"}
    , { answer = "", question = "Can I buy any product in installments?"}
    , { answer = "", question = "Why on E-asy web site you have the same model with different prices?"}
    , { answer = "", question = "Why do you have different prices for different colors of same phone on your web site?"}
    , { answer = "", question = "Can you deliver in small towns and villages?"}
    , { answer = "", question = "Can I personally come and take over my order?"}
    , { answer = "", question = "Can I return my phone, what is the procedure and what is the time period that I can expect my money to be refunded?"}
    , { answer = "", question = "Package was delivered to me damaged, how can I refund my loss?"}
    , { answer = "", question = "Where are your stores located?"}
    , { answer = "", question = "Do you offer an extended warranty or a device protection plan for phones?"}
    , { answer = "", question = "Do you repair phones?"}
    , { answer = "", question = "Do you sell accessories?"}
    , { answer = "", question = "Where can I find your Privacy Policy?"}
    , { answer = "", question = "How do I provide The Mobile Shop with feedback?"}
    , { answer = "", question = "Is it possible to check the goods before buying?"}
    , { answer = "", question = "Is it necessary to have an account to shop on E-asy?"}
    , { answer = "", question = "Can I use an item that has been given to me as a gift from a state sponsored or an NGO-funded freebie distribution programme to get discounts through exchange offers?"}
    , { answer = "", question = "Can I order a product that is 'Out of Stock' or 'Temporarily Unavailable'?"}
    , { answer = "", question = "Are there any hidden charges (Octroi or Sales Tax) when I shop on E-asy?"}
    , { answer = "", question = "How do you process Refund for an order, purchased using a Gift Card?"}
    , { answer = "", question = "How can I track the status of my Refund?"}
    , { answer = "", question = "How can I check my order status?"}
    , { answer = "", question = "How can I cancel my order?"}
    , { answer = "", question = "When can I expect refund for my returned item?"}
    , { answer = "", question = "What are the different modes of payment available?"}
    ]
