# Assignment 1
# Student Name: Ethan Bridgehouse

## Question 1: 

- Create a simple shell script called `state.sh` that will append info listed below into `/tmp/state.log` file:
  - current date and time
  - current load and users logged in
  - all processes running on the machine (long listing that, among other info, includes PID and PPID )
- Create a cron job that will execute this script every 5 minutes (the state info gets appended into file /tmp/state.log every five minutes)

## Question 2: 

- Create a new script `movelog.sh` and another crontab entry so that the `movelog.sh` script will move the `/tmp/state.log` file into file named `statelog.YYYYMMDD` where `YYYYMMDD` is the current date (statelog.20170918, statelog.20170919, ...) and removes old `statelog.YYYYMMDD` files that are 2 or more weeks old.  Each `statelog.YYYMMDD` file has the state info (date, users, processes) stored every 5 minutes for the whole day (from midnight to the next midnight)

## Question 3:

- Setup your SSH keys with your GitHub account so that you can run `git push` and update your online GitHub repo without any password checking. 

- Make a copy of your `state.sh` called `stateGit.sh`, which append a current date and time and the contents of `ls -l` of your local git assignment repository to a file called `state.log` inside the local git directory. 

- Setup a crontab entry so that it automatically captures and updates (commit/push) your Git repository every hour. 

## Question 4:

- Create a new script (check_arg.sh)  which checks its options / arguments and prints out the result of this check. 
If the check fails then the usage message is also printed. 
- Make sure that the script follows the best practices including that it provides meaningful exit code (0=success, nonzero=failure).

```
Syntax: ./check_arg.sh [ -i | -n ] USER
-i and -n are optional but only one of these can be submitted (cannot be used together) and it has to be on the line prior to any user name 
-i means interactive mode (this is the default mode if none is specified)
-n means non-interactive mode 
USER parameter is mandatory but can repeat (more then one user names may be specified)
```

- Script prints out if it runs in interactive or in non-interactive mode. It also checks all user names and makes sure that every user name matches this regular expression: '^[a-z][a-z0-9_]*$' 


## Submitted files expected in Git repository

- Four scripts (with correct naming schemes) for Question 1, 2, 3, and 4
- `state.log`
- A screenshot showing the content of crontab -e
