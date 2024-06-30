# Bulk User Creator (Linux)

## Description
This script automates the bulk creation of user accounts on a Linux system. It prompts for the username and the number of users to create. Usernames are generated based on the input and stored in a CSV file. Each user is created with a default password that matches their username.

## Requirements
- Linux environment
- `useradd` command available
- To encrypt the password of the users using `mkpasswd` , is it necesarry to install `whois` Packet.
 ```bash
   sudo apt install whois
   ```

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/ciscoAnass/Bulk-Linux-User.git
   cd Bulk-Linux-User
   ```
2. Make the script executable:
   ```bash
   chmod +x BulkUsers.sh
   ```

## Creating a Command Alias (Optional but recommended)

- Add the following line to your shell configuration file (e.g., ~/.bashrc for bash):
  
```bash
echo "alias bulkuser='~/Bulk-Linux-User/BulkUsers.sh'" >> ~/.bashrc
```
Then, apply the changes:

```bash
source ~/.bashrc
```

## Usage
Now you can use the bulkuser alias in your terminal to run the script with parameters. Here's how:

- To create 7 users with the username "poppy" (You can choose whatever Username you want to create , also numbers):
```bash
bulkuser poppy 7
```
- This will generate output similar to:
```yaml
User : poppy1 , Password : poppy1
User : poppy2 , Password : poppy2
User : poppy3 , Password : poppy3
User : poppy4 , Password : poppy4
User : poppy5 , Password : poppy5
User : poppy6 , Password : poppy6
User : poppy7 , Password : poppy7
```
- Additionally, it will create a UsrAccess-poppy.csv file containing the usernames and passwords.

## Verification

- To verify that the users have been created correctly, follow these steps:
```bash
getent passwd | tail -7 | cut -d: -f1
```


## Example Output

After running the script, you will see output similar to:

   
