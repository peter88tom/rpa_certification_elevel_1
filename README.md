# Chapter 1: RPA certification level I: Beginner's course (VS Code)

Notes

- Before automating a process, it's a good idea to understand and then document it.
- A [**Process Definition Document**](https://robocorp.com/docs/courses/implementing-rpa-robots/process-definition-document#download-our-template-for-your-pdd-documents) is an example of a traditional heavy-weight way to describe a process
- [You can use this templates to create your PDD  ](https://robocorp.com/docs/static/get-started/courses/shared-assets/beginners-course/PDD_RobotSpareBin_Industries_Inc.pdf)

- The level of good enough documentation varies.

# Chapter 2: Setup vs code with Robocorp code extension

Notes

- [Sign up for the Robocorp account](https://id.robocorp.com/signup)
- [Install code  Robocorp code extension](https://marketplace.visualstudio.com/items?itemName=robocorp.robocorp-code) and [Robot Framework Language Server Extension](https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp)


# Chapter 3: Introduction to robots
Notes
- Robot is a folder or a zip file packaged in a specific way that containsn everything to run the automation

- Robot structure consist of:
    1. `Suites`  -> the robot files that are called when robot runs
    2. `Resources` -> user keywords and variables that you can share between tasks and suites
    3.  `Locators` -> UI elements that can be interacted with in apps and web pages
    4. `Assets and Configuration` -> images, code library dependencies, and robot entry points whn called from the Control Room

- Suites allows you to structure your robots. the structure can be simple or complex, complex robot can be split into multiple suites that can run separately from Control Room. Each suite my have:
    1. `Tasks` -> Actual commands that can be run for this robot
    2. `User Keywords` -> reusable functionality that you use to organize your robots
    3. `Variables` -> saved values, such as numbers,strings, or lists
    4. `Settings` -> suite configuration

- Running the robot:
    * To run the robot open command palette by pressing `Shift-Command-P`(macOS) or `Ctrl+Shift+P`(Windows). 
    * Once the palette open type `run robot` this will find the command you need press `Enter` to run the `Robocorp: Run Robot` command.

- The task log: 
    * This is where the robot writes a detailed log of everything it did during the task. You can find the log file in robot folder `log.html`. You can open it in any browser and preview it.

- Anatomy of robot: 
    * Small robots are made of `settings, tasks and keywords`, they are placed in section, Take a loot at the `tasks.robot` file. 
    * In that file `*** Settings ***` section typically contain documentation, possibly some libraries, and references to other files.
    * `*** Tasks ***` section defines the task for the robot.


# Chapter 4: Coding the robot
- Try to define the task of your robot in one concise phrase
- You can define your own keywords and call them in your task
- Your own keywords can call other keywords. Keywordception!
- Task should be place under the `*** Tasks ***` section
- Keywords should be place under the `*** Keywords ***` section
- You can get the newkeywords for your robot by adding libraries
- The `conda.yaml` configuration file defines the packages you want to use. For example by defult, the `rfpaframework` package is already defined in the `conda.yaml` file. If you want to add more packages you can add them in the `conda.yaml` file.
- Libraries add new capabilities to your robot. You can find libraries [here](https://robocorp.com/docs/courses/beginners-course/getting-to-the-intranet#fantastic-libraries-and-where-to-find-them)
- Libraries are added in the `*** Settings ***` section of your `.robot` file
- You can use the interactive console to find libraries and keywords. You can open interactive console by clicking `Load in interactive console` under `*** Keywords ***` section.
- You can load and run keywords directly in interactive console. Run it by clicking its name. Edit the keyword. Load the keyword in interactive console.
- You can view keyword documentation in the editor or the interactive console using keyboard shortcuts
- Testing your robots often, even after each edit, gives you continous feedback on how your robot functions.
- You can open a browser with the `Open Available Browser` keyword by giving it the URL you want to open as an argument
- Indentation is important. [You can configur your VS code editor do the auto-format after every save](https://robocorp.com/docs/courses/beginners-course/getting-to-the-intranet#defining-our-task)
- Auto-completion and documentation can be toggled with `Control-Space`(macOS) or `Ctrl+Space`(Windows)


# Chapter 5: Making the robot interact with the browser
The robot needs to know their selectors. Think of a selector as the street address for an element, such as the username field on the RobotSpareBin intranet login page.

These selectors along with their name and other instructions are stored in locators, in a file called locators.json, from which they can be referenced to in the code or used directly as in-line selectors.

- You can use the `Input Text` keyword from `RPA.Browser.Selenium` library to fill text input fields
- You can tell your robots which elements in a webpages to act on by writing locator( or selector)
- You should `Input Password` keyword to fill password fields
- You should not write or commit credentials direct into your project
- Learning how to find and interact with the web elements is the bread and butter of the web automation