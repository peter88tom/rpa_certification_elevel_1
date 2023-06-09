# Chapter 1: RPA certification level I: Beginner's course (VS Code)

[Link to course](https://robocorp.com/docs/courses/beginners-course)

- Before automating a process, it's a good idea to understand and then document it.
- A [**Process Definition Document**](https://robocorp.com/docs/courses/implementing-rpa-robots/process-definition-document#download-our-template-for-your-pdd-documents) is an example of a traditional heavy-weight way to describe a process
- [You can use this templates to create your PDD  ](https://robocorp.com/docs/static/get-started/courses/shared-assets/beginners-course/PDD_RobotSpareBin_Industries_Inc.pdf)

- The level of good enough documentation varies.

# Chapter 2: Setup vs code with Robocorp code extension

[Link to chapter](https://robocorp.com/docs/courses/beginners-course/set-up-robocorp-lab)

- [Sign up for the Robocorp account](https://id.robocorp.com/signup)
- [Install code  Robocorp code extension](https://marketplace.visualstudio.com/items?itemName=robocorp.robocorp-code) and [Robot Framework Language Server Extension](https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp)


# Chapter 3: Introduction to robots
[Link to chapter](https://robocorp.com/docs/courses/beginners-course/your-first-robot)

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
[Link to chapter](https://robocorp.com/docs/courses/beginners-course/getting-to-the-intranet)

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
[Link to chapter](https://robocorp.com/docs/courses/beginners-course/logging-in)

The robot needs to know their selectors. Think of a selector as the street address for an element, such as the username field on the RobotSpareBin intranet login page.

These selectors along with their name and other instructions are stored in locators, in a file called locators.json, from which they can be referenced to in the code or used directly as in-line selectors.

- You can use the `Input Text` keyword from `RPA.Browser.Selenium` library to fill text input fields
- You can tell your robots which elements in a webpages to act on by writing locator( or selector)
- You should `Input Password` keyword to fill password fields
- You should not write or commit credentials direct into your project
- Learning how to find and interact with the web elements is the bread and butter of the web automation


# Chapter 6: Making the robot fill the form after login
[Link to chapter](https://robocorp.com/docs/courses/beginners-course/filling-in-the-sales-form)
- The `Click Button` keyword can click on buttons using the lable as the locator
- Call the `Wait Until Page Contains Element` keyword to wait before proceeding to avoid failures due to the robot advancing too fast
- Hard coding data is an acceptable practice for making progress and finding potential technical blockers faster
- Take small steps. Iterate often

# Chapter 7: Making the robot Download file from remote server
[Link to chapter](https://robocorp.com/docs/courses/beginners-course/downloading-the-excel-file)

In this chapter we learn to make the robot to Download an excel file from remote server.
- You can use the `RPA.HTTP` library, part of the  `rpaframework` collection of open-source automation libraries, to interact with remote servers
- You can use the `Dowload` keyword to easily download remote files to your local computer
- The `Download` keyword can be configured to overwrite an existing files of the same name if found.
- The robot still looks human-readable'ish

# Chapter 8: Making the robot read data from the Excel file and do something with it
[Link to chapter](https://robocorp.com/docs/courses/beginners-course/filling-in-the-sales-form-using-excel-data)

In this chapter we teach the robot how to read the data from the Excel file and insert those data into the HTML form

- You can use the `RPA.Excel.Files` library to work with Excel files. No Excel required
- You can provide arguments to your keywords
- You can open and close Excel files with `Open Workbook` and `Close Workbook` keywords
- You can [loop](https://robocorp.com/docs/languages-and-frameworks/robot-framework/for-loops) over a variable with the `FOR ... IN` syntax.
- There are many useful automation libraries available


# Chapter 9: Making the robot collect the results
[Link to chapter](https://robocorp.com/docs/courses/beginners-course/collecting-the-results)

In this chapter we teach the robot to get the results of sales summary by taking the screenshot of a div where the results have been displayed in the HTML page and save the screenshot.
- The `Screenshot` keyword of the `Selenium` library takes screenshots of the elements.
- Knowing how to use locators gets you a long way when automating web applications.
- There are many types of locators. Choose a good one for your use case.
- The `${OUTPUT_DIR}` runtime variable represents the robot output director. [List of runtime variables](https://robocorp.com/docs/languages-and-frameworks/robot-framework/variables#runtime-variables)
- The `${/}` built-in variable represents the path separator for the current operating system. [List of built-in variables](https://robocorp.com/docs/languages-and-frameworks/robot-framework/variables#built-in-variables)
- The `output` folder is where we should put files that our robot generates

# Chapter 10: Making the robot generate a PDF out of HTML table
[Link to chapter](https://robocorp.com/docs/courses/beginners-course/creating-pdf)

In this chapter wet teach the robot how to turn HTML table into the PDF

- We isolate the part of the page that contains the sales table
- We assign the content(HTML markup) of that part of the page to a variable
- We create a PDF with the HTML content of the table
- You ca use the `Get Element Attribute` keyword from the `RPA.Browser.Selenium` library to get the actual HTML markup of any element using the `outerHTML` attribute
- You can create a PDF file from HTML content using the `RPA.PDF` library and the `Html to Pdf` keyword.

# Chapter 11: Making the robot logout and close the browser
[Link to chapter](https://robocorp.com/docs/courses/beginners-course/logging-out-and-closing-the-browser)

In this chapter we teach the robot to log out and close the browser after all task are done
- The `[Teardown]` keyword ensures your process does not leave a mess behind. Such as an open browser.


# Chapter 12: Running the robot in Control Room
[Link to chapter](https://robocorp.com/docs/courses/beginners-course/running-in-robocorp-cloud)

In this chapter we deployed the robot to cloud and make it run in a cloud instead on our VS code.

There are two ways to publish the robot to [Control Room](https://id.robocorp.com/login):
1. Upload directly to [Control Room](https://id.robocorp.com/login). The robots can be scheduled, run manually or be set up as assistants. [Learn how configure stuffs in Control Room](https://robocorp.com/docs/courses/beginners-course/running-in-robocorp-cloud#logging-into-control-room)
2. Synchronize robots with `Control Room` via `Version control` such as Github or GitLab. This works well for robots developed in VS code or Automation Studio. [Learn more how to use version control and Control Room](https://robocorp.com/docs/courses/software-robot-project-workflow/setting-up-a-version-control-repository) 


More details on this chapter
- You can run robots in Control Room with push of a button
- You need to upload your robot's code to Control Room
- You need to create a Process to run your robots.
- A robot step can be run in multiple processes
- You need to select an unattended worker for your robot step when you add it to a process
- A "unattended workder" is the actual computer that will execute the robot. It can be a Docker container in the cloud or a physical machine running the Robocorp Workforce Agent.
- You can schedule your processes in Control Room to run a specific intervals automatically.
- Robocorp Workforce Agent can be used to run your robots on your any machine.
- Robot Assistants can work together with humans to complete automated taks.