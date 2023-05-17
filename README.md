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
    1. Suites  -> the robot files that are called when robot runs
    2. Resources -> user keywords and variables that you can share between tasks and suites
    3.  Locators -> UI elements that can be interacted with in apps and web pages
    4. Assets and Configuration -> images, code library dependencies, and robot entry points whn called from the Control Room

- Suites allows you to structure your robots. the structure can be simple or complex, complex robot can be split into multiple suites that can run separately from Control Room. Each suite my have:
    1. Tasks -> Actual commands that can be run for this robot
    2. User Keywords -> reusable functionality that you use to organize your robots
    3. Variables -> saved values, such as numbers,strings, or lists
    4. Settings -> suite configuration
