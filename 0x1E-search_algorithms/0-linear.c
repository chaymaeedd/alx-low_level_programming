#include "search_algos.h"

/**
 * linear_search - Searches for a value in an array of integers
 * using the Linear Search algorithm.
 *
 * @array: Pointer to the input array.
 * @size: The size of the array.
 * @value: The value to search for.
 *
 * Return: If the value is found, returns the index of the first
 * occurrence in the array. If not found, returns -1.
 */
int linear_search(int *array, size_t size, int value)
{
	int i;

	if (array == NULL)
		return (-1);

	for (i = 0; i < (int)size; i++)
	{
		printf("Value checked array[%u] = [%d]\n", i, array[i]);
		if (value == array[i])
			return (i);
	}
	return (-1);
}
