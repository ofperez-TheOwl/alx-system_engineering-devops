Shell permissions

Each file is a script that perfoms a shell permission action. 

0-iam_betty swithes the current user to user betty
1-who_am_i  prints the effective id of the current user
2-groups prints the groups of the current user
changes the owner of the file hello to the user betty
4-empty creates an empty file named hello
5-execute gives execute permission to the owner of the file named hello
6-multiple_permissions gives execute permission to the owner and group owner and read permission to others for the file hello
6-multiple_permissions gives execute permission to everybody for the file hello
8-James_Bond gives zero permission to owner and owner group but execute permission to other for the file hello
