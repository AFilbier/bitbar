#!/bin/bash

/usr/bin/java -jar /usr/local/bin/jenkins-cli -s "http://192.168.33.10:8080" -auth {{ admin_acc }}:{{ admin_pass }} create-job {{ test_job }} < {{ vagrant_home }}/job.xml