#!/bin/bash

git add .

DATE=$(date)

git commit -m "commited at ${DATE}"

git push 
