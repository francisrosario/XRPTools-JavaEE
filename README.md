<h1 align="center"> XRP Wallet Tools - JavaEE
  
![](XRPWALLET.gif)
  
</h1> <br>

# Quick Introduction

XRP Wallet Tools is A JavaEE based XRP Wallet webapp tool that enables users to create wallet, perform ledger transactions like sending XRP and creating NFT coins. Recently XRP released **xrpl4j library, This project will utilized the said library** , Will strictly use **servlets** at the same time MVC Model.

Automated WebApp Deployment using Heroku: or by clicking Environments
https://xrptools-web-dev.herokuapp.com/

[![DeepSource](https://deepsource.io/gh/francisrosario/XRPTools-JaveEE.svg/?label=active+issues&show_trend=true)](https://deepsource.io/gh/francisrosario/XRPTools-JaveEE/?ref=repository-badge)

**Temporary UI: Metronic Bootstrap Design**

<b>Phase #1</b>
  - Perform creation of XRP Wallet
  - Show Wallet Transaction
  - Add avg. XRP Crypto Price on Header
  - Perform XRP / NFT Transaction
  - Add XRP Chart
  - Vanity Address Generator option
  - **One-Click NFT Maker** 

<b>Phase #2</b>

  - Complete redesign of wallet design
  - Implementation of NFT Marketplace
  - XRP Wallet Tools NFT Browser / Viewer

**In-Progress Transparency:**
1. Check if Wallet Exist then create a servlet Session to access XRP Wallet Tools
2. Frontend Design

**Progress Transparency:**

( Friday May 28, 2021 )

1. Included Licensed (Purchased) Admin template frontend as XRP Wallet temporary design.
2. Simple vanity wallet generator Method #1 & XRP Wallet creation based on seedgenerator

( Sat May 29. 2021 )

1. Conducted controller test from index.jsp -> XRP Wallet Tools dashboard
2. Get transaction on currentWallet will be using Stringbuilder for creating transaction display.


( Monday May 31, 2021 )

1. Conducted research on Implementing **One-Click NFT Maker** , I've found the commands that neededs to be automated https://gist.github.com/WietseWind/06e563a9988ad25043f24c091fceaba8
2. Refining controller from index.jsp to dashboard in local git. If Wallet is not activated then don't permit going to XRP Wallet Tools dashboard
3. Conducted research if security library (AES Encryption & Decryption) will be implemented for this project.


( Sun Jun 6, 2021 )

1. Implemented textbox for performing XRP Transaction in Dashboard
2. Temporary business logic for creating xrp wallet, sending xrp, getting xrp balance.
3. Added feature for finding 3 letters vanity address
4. Trying parametized string builder for json request in creating NFT Coin.

( Mon Jun 14. 2021 - Update #5)

1. Fixed XRP Transfer form.
2. Added NFT Coins in Dashboard.
![image](https://user-images.githubusercontent.com/8011433/121847784-b20dec00-cd1b-11eb-8e6f-52bf79d0d850.png)
3. Added QR Code for Classic Address
4. Preparing webapp for main-net. 
