# Hello, Robot Framework!

## Getting Started

### Mac

1. To create a virtual environment with Python 2.7, run `virtualenv -p python2.7 venv`.
2. Activate the virtual environment by `source venv/bin/activate`.
3. Install the required packages by `pip install -r requirements.txt`.
4. Run `robot testcases` to execute all test cases in the folder `testcases`.

### Ubuntu

1. `git clone https://github.com/zkan/hello-robotframework.git`
2. `cd hello-robotframework`
3. `virtualenv venv`
4. `source venv/bin/activate`
5. `pip install -r requirements.txt`
6. `export PATH=$PATH:$(pwd)/webdrivers/linux`
7. `robot testcases/google.robot`

## WebDriver

WebDriver is a tool for test automation for Web application.

* **ChromeDriver** is for Chrome. Download [here](https://chromedriver.storage.googleapis.com/index.html?path=2.27/) (version 2.27).
* **geckodriver** is for Firefox. Download [here](https://github.com/mozilla/geckodriver/releases/tag/v0.14.0) (version 0.14.0).

## Readings

* [Robot Framework Best Practices](https://github.com/idumpling/robotx/blob/master/docs/ROBOT_BEST_PRACTICE.md)
* [Selenium2Library for Robot Framework](http://robotframework.org/Selenium2Library/Selenium2Library.html)
