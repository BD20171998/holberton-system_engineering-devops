# 0x06. Regular expression

## Learning Objectives

General

- For this project, you have to build your regular expression using Oniguruma, a regular expression library that which is used by Ruby by default. Note that other regular expression libraries sometimes have different properties.

- Because the focus of this exercise is to play with regular expressions (regex), here is the Ruby code that you should use, just replace the regexp part, meaning the code in between the //:

```
sylvain@ubuntu$ cat example.rb
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
sylvain@ubuntu$
sylvain@ubuntu$ ./example.rb 127.0.0.2
127.0.0.2
sylvain@ubuntu$ ./example.rb 127.0.0.1
127.0.0.1
```

## Requirements

- All files are created and compiled on Ubuntu 14.04.4 LTS
- All Bash scripts are linted with Shellcheck

## Tasks

<details>
<summary>View Contents</summary>

### [0. Simply matching Holberton](./0-simply_match_holberton.rb)

<p align="center">
  <img src="https://i.imgur.com/nqBDR90.png">
</p>

### [1. Repetition Token #0](./1-repetition_token_0.rb)

<p align="center">
  <img src="https://i.imgur.com/bv1m1F4.png">
</p>

### [2. Repetition Token #1](./2-repetition_token_1.rb)

<p align="center">
  <img src="https://i.imgur.com/k98KSnA.png">
</p>

### [3. Repetition Token #2](./3-repetition_token_2.rb)

<p align="center">
  <img src="https://i.imgur.com/mtbx0XK.png">
</p>

### [4. Repetition Token #3](./4-repetition_token_3.rb)

<p align="center">
  <img src="https://i.imgur.com/4nfuinl.png">
</p>

### [5. Not quite HBTN yet](./5-beginning_and_end.rb)

- The regular expression must be exactly matching a string that starts with h ends with n and can have any single character in between
- Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

```
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbn' | cat -e
hbn$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbtn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rbb 'h8n' | cat -e
h8n$
```

### [6. Call me maybe](./6-phone_number.rb)

- The regular expression must match a 10 digit phone number

```
sylvain@ubuntu$ ./6-phone_number.rb 4155049898 | cat -e
4155049898$
sylvain@ubuntu$ ./6-phone_number.rb " 4155049898" | cat -e
$
sylvain@ubuntu$ ./6-phone_number.rb "415 504 9898" | cat -e
$
sylvain@ubuntu$ ./6-phone_number.rb "415-504-9898" | cat -e
$
```

### [7. OMG WHY ARE YOU SHOUTING?](./7-OMG_WHY_ARE_YOU_SHOUTING.rb)

- The regular expression must be only matching: capital letters

```
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "I realLy hOpe VancouvEr posseSs Yummy Soft vAnilla Dupper Mint Ice Nutella cream" | cat -e
ILOVESYSADMIN$
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "WHAT do you SAY?" | cat -e
WHATSAY$
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "cannot read you" | cat -e
$
```

### [8. Textme](./100-textme.rb)

- For this task, you’ll be taking over Guillaume’s responsibilities: one afternoon, a TextMe VoIP Engineer comes to you and explains she wants to run some statistics on the TextMe app text messages transactions.

- Requirements:

  - Your script should output: [SENDER],[RECEIVER],[FLAGS]
  - The sender phone number or name (including country code if present)
  - The receiver phone number or name (including country code if present)
  - The flags that were used

```
$ ./100-textme.rb 'Feb 1 11:00:00 ip-10-0-0-11 mdr: 2016-02-01 11:00:00 Receive SMS [SMSC:SYBASE1] [SVC:] [ACT:] [BINF:] [FID:] [from:Google] [to:+16474951758] [flags:-1:0:-1:0:-1] [msg:127:This planet has - or rather had - a problem, which was this: most of the people on it were unhappy for pretty much of the time.] [udh:0:]'
Google,+16474951758,-1:0:-1:0:-1
$
$
$ ./100-textme.rb 'Feb 1 11:00:00 ip-10-0-64-10 mdr: 2016-02-01 11:00:00 Receive SMS [SMSC:SYBASE2] [SVC:] [ACT:] [BINF:] [FID:] [from:+17272713208] [to:+19172319348] [flags:-1:0:-1:0:-1] [msg:136:Orbiting this at a distance of roughly ninety-two million miles is an utterly insignificant little blue green planet whose ape-descended] [udh:0:]'
+17272713208,+19172319348,-1:0:-1:0:-1
$
$ ./100-textme.rb 'Feb 1 11:00:00 ip-10-0-64-11 mdr: 2016-02-01 11:00:00 Sent SMS [SMSC:SYBASE1] [SVC:backendtextme] [ACT:] [BINF:] [FID:] [from:18572406905] [to:14022180266] [flags:-1:0:-1:-1:-1] [msg:136:Far out in the uncharted backwaters of the unfashionable end of the western spiral arm of the Galaxy lies a small unregarded yellow sun.] [udh:0:]'
18572406905,14022180266,-1:0:-1:-1:-1
$
$
$ ./100-textme.rb 'Feb 1 11:00:00 ip-10-0-64-11 mdr: 2016-02-01 11:00:00 Sent SMS [SMSC:SYBASE1] [SVC:backendtextme] [ACT:] [BINF:] [FID:] [from:12392190384] [to:19148265919] [flags:-1:0:-1:-1:-1] [msg:99:life forms are so amazingly primitive that they still think digital watches are a pretty neat idea.] [udh:0:]'
12392190384,19148265919,-1:0:-1:-1:-1
```

</details>


## Author
* **Robert Deprizio** - [BD20171998](https://github.com/BD20171998)
