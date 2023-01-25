# john_dockerfile

Hi John!

While I don't have the bandwidth to make a django demo repo, figured a short and sweet POC would suffice. Copied some docs from my [python_template](https://github.com/pythoninthegrass/python_template) repo for your reference. (Did add a django folder as well, but it's been a bit since I've tested it haha.)

Two commands to get it working with just docker:

```
λ docker build -t john-docker .

λ docker run -it --rm -v $(PWD):/app john-docker bash
app@a02770ca0530:/app$ ls -l
total 20
-rw-r--r-- 1 app app  529 Jan 25 03:02 Dockerfile
-rw-r--r-- 1 app app    0 Jan 25 02:50 README.md
-rwxr-xr-x 1 app app  519 Jan 25 03:08 hello.py
-rw-r--r-- 1 app app 3733 Jan 25 03:07 poetry.lock
-rw-r--r-- 1 app app  395 Jan 25 03:07 pyproject.toml
-rw-r--r-- 1 app app    1 Jan 25 03:06 requirements.txt
```
