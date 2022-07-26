#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

/**
 * infinite_while - runs undefinetely
 *
 * Return: int; always 0
 *
 * Description: use sleep() from unistd.h
 */
int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}

/**
 * main - entry point for program that creates 5 zombies processes
 *
 * Return: int; always 0
 *
 * Description: use fork() from unistd.h
 * TheOwl
 */
int main(void)
{
	pid_t zPID;
	int i;

	for (i = 0; i < 5; i++)
	{
		zPID = fork();
		if (zPID == 0)
			exit(0);
		else
			printf("Zombie process created, PID: %d\n", zPID);
	}
	return (infinite_while());
}
