#!/bin/bash
if [ -z ${PORT+x} ]; then
    PORT=8080
fi


bash openrefine/refine -i 0.0.0.0 -p $PORT -x refine.headless=false 