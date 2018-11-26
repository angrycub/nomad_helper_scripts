#! /bin/bash


export JOB_ID="example"
curl http://127.0.0.1:4646/v1/jobs?pretty=true > jobs.json
curl http://127.0.0.1:4646/v1/job/${JOB_ID}?pretty=true > job.json
curl http://127.0.0.1:4646/v1/evaluations?pretty=true > evals.json
curl http://127.0.0.1:4646/v1/allocations?pretty=true > allocs.json
for alloc in `nomad job status -verbose ${JOB_ID} | grep Allocations -A999 | tail -n +3 | awk '{print $1}'`; do curl http://127.0.0.1:4646/v1/allocation/${alloc}?pretty=true > ${alloc}.json; echo ${alloc}; done

