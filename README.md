<div align="center">
  <img src="Resources/Branding/logo.png" />
  <br/>
  <b>A programming language for drunk coders</b>
  <br/>
  <br/>
  <a href="https://github.com/nguyenphuminh/FreakC/blob/master/LICENSE.md"><img src="https://img.shields.io/badge/license-MIT-blue.svg"/></a>
</div>

## What is FreakC ?
FreakC is a transpiled esoteric scripting programming language that... has nothing to do with the C programming language. This programming language's syntax is dirty and funny, but it can actually make many decent programs. The language is very similar to Batch, and it is also transpiled to Batch.

## What is in the devkit ?
<li>A FreakC compiler</li>
<li>Some optional utilities</li>

## Compiler's usage
In the "FreakC" folder, open cmd and type this command to compile and run the code:

    freakc "file.fclang"
    
Example:
    
    freakc "Examples/HelloWorld.fclang"
 
If you want to compile the code only, type:

    freakc "file.fclang" --compile
    
If you want to compile the code and show the compiled code, type:

    freakc "file.fclang" --candr
    
To show the current version of the devkit, type:

    freakc --version

<b>The compiler only works on Windows, and can only be compiled to Batch.</b>

## In what part does FreakC upgrade from Batch ?
Well, FreakC is just an esoteric programming language, so you shouldn't expect FreakC to be upgraded from Batch, but here are some of them:

<li>Dirty and Funny syntax</li>
<li>Real while loops</li>
<li>Additional variables like 'numpoop', 'numpuke', etc</li>
<li>Additional functions like 'OddOrEven[fnc]', 'CoolHackerMan[fnc]',...</li>
<li>Additional operators like "++" or "--"</li>

## Tutorials 
<a href=https://github.com/nguyenphuminh/FreakC/blob/master/TUTORIAL.md>Click here to see tutorials</a>

## Samples
<a href=https://github.com/nguyenphuminh/FreakC/tree/master/Examples>Click here to see samples</a>

## Convert FreakC to .EXE files
In "FreakC/Utilities/Scripts" there is a file called battoexe.bat which helps to convert .bat files to .exe files.

So to convert FreakC to .EXE files, you need to compile FreakC codes to Batch, and then convert the Batch file generated by simply dragging that Batch file onto battoexe.bat.

You can actually find plenty of other tools online that helps you to converts Batch files to EXE files.

## Compile in Sublime:
In "FreakC/Utilities/Scripts" there is a file called "FreakC.sublime-build" which is the Sublime Text's build system for FreakC. To use it, please paste it in the "C:\Users\admin\AppData\Roaming\Sublime Text 3\Packages\User" or wherever your Packages folder is. Then, make sure that you have setted the environment variable for FreakC. After that, you will be able to compiles FreakC codes in Sublime Text.

## Frameworks
There are many frameworks in the utilities folder that you can use, I will definitely update the usage of them soon.

<b>Note: I don't own all of those framework.</b>

## 3.x Releases
3.x releases are the finest releases of FreakC, they removes all the unnecessary commands/functions, as well as adding many new useful features like:
<li>Useful variables</li>
<li>Useful functionalities like if statements, for loops, plus/minus by 1 operators and more</li>
<li>The compiler is much more well-built than all the previous releases</li>

## The removal of FCShell
FCShell had always been a great tool for devs, but being so busy and stressed right now, I can't not make any updates for it. You can say that I'm lazy, yeah I'm actually pretty lazy. If I have time, I would bring back FCShell. I am still having fun making FreakC, but I don't have times for it.

## Developers
<li>Owner/Developer: Nguyen Phu Minh</li>

## Copyrights and License
Copyright © 2020 Nguyen Phu Minh

This language is licensed under the MIT License
