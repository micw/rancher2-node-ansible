#!/bin/bash

for ini in *.ini; do
  ansible-playbook -i $ini playbook.yml -t ssh
done

