#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

extern char **environ;

int main(int argc, char **argv)
{
	int i = 0;

	printf("\n");
	while (environ[i] != NULL)
	{
		printf("[%s] :: ", environ[i]);
		i++;
	}

	char *val = getenv("USER");
	printf("\n\nCurrent value of environment variable USER is [%s]\n", val);

	if (setenv("USER", "Arora", 1))
	{
		printf("\n setenv() failed");
		return (1);
	}
	printf("\n Succcessfully added a new value to existing environment variable USER\n");
	
	val = getenv("USER");
	printf("\nNew value of environment variable USER is [%s]\n", val);

	while (1)
		sleep(2);
	return (0);
}
