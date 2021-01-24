#!/bin/bash

homesize ()
{
	date
	du -h ~ | tail -n 1
}

homesize
