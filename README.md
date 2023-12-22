# Digicard

Your mobile personal business card. 

## Getting Started
This is a Beta version of our full Open-Source project. If you'd like to contribute to the project, feel free to open a PR and explain what your change set does. 
This project uses Flutter, an open-source cross platform mobile app framework. To develop for this project, youll need to download the Flutter SDK from Flutter's website. 
Once you've downloaded the SDK, you're ready to run a local version. To get started, run: 
`flutter pub get` - this will get all the dependencies 
then run 
`open -a simulator` - this opens a simulator on macOS 
then 
`flutter run`

## Current Features
As this is a Beta version meant as a proof of concept, all information is coded with my information for an AI conference I'm attending. If you want to utilize your own information, you'll need to change the hard-coded values. Adding Google Firebase functionality to house all of this is next on the road map. 
The current functional features include: 
- Home Card 
    - `Text` and `Email` options with all info for quick networking
    - `List Card` items for various simple links such as LinkedIn, Github, or Resume downloads
        - List Cards currently have 2 action options. One to text and one to generate a scannable QR Code
- QR Code Generator
    - Generates a styled QR Code for easy scanning and sending info (managed through your home page)

## Features Coming Soon (Early to Mid January 2024)
Here's a list of whays coming up next in the roadmap for this project. 
- Contacts Page 
    - This will add the ability to add contacts not only to the app itself, but to export them to your associated Contact Book in your OS.
- Backend Functionality 
    - Right now everything is hard-coded for the POC, but I will be linking a Google Firebase NoSQL database to the app as its the most straight forward with Google's ecosystem. From there, youll be able to manage all info and styling through the settings page rather than having to adjust the hard coded functionality. 

## License 
This is an open source project meant to help developers display something unique that they can use to network or add as a project to their resumes. 
Please keep this open source and free for everybody. I can't stop you from using it for profit, but lets just agree in good faith thay everyone will keep this project free and open for everyone. 






