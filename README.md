Steps to Configure ssh_public_keys
1. Generate an SSH Key Pair
If you don’t already have an SSH key pair, generate one on your local machine.

On Linux/MacOS:

bash

ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -f ~/.ssh/oci_rsa

-t rsa: Specifies RSA key type.
-b 4096: Sets the key length to 4096 bits.
-f ~/.ssh/oci_rsa: File name for the key (private key will be oci_rsa, public key will be oci_rsa.pub).

On Windows: Use a tool like PuTTYgen to generate an SSH key pair.

The public key will be saved as ~/.ssh/oci_rsa.pub.


2. Add the Public Key to Terraform

Once you have the public key, you can include it in your Terraform configuration.

Open the public key file:

bash

cat ~/.ssh/oci_rsa.pub

The content will look like:

ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAr1Cg==... user@hostname

Add this public key in your Terraform configuration.

