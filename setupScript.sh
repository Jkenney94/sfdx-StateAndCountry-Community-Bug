#!/bin/bash

set -x

sfdx force:org:create -s -f ./config/project-scratch-def.json -a ScratchOrg
sfdx force:source:push -u ScratchOrg
sfdx force:apex:test:run -l RunLocalTests -w 15