#!/bin/bash
clamscan -i -r -z / > /root/global-scan-$(date "+%A-%B-%d-%T-%y").txt
