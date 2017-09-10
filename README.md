Script for uploading temperature measurements from Raspberry Pi to Firebase.

See https://www.hackster.io/timfernando/a-raspberry-pi-thermometer-you-can-access-anywhere-33061c for how to attach a digital thermometer to a Raspberry Pi.

The enclosed script assumes that the AUTH environment variable is your Firebase database secret.  You can find that secret in
the Firebase console under Overview -> Project Settings -> Service Accounts -> Database Secrets.  Warning: the Firebase console warns that Database Secrets are deprecated, so these instructions will eventually be obsolete.

The script uses the "bc" command, which as of this writing is not bundled with the NOOBS distribution.  To install the bc command, run this:

    sudo apt-get install -y bc
    
    
