#!/bin/bash
is_binary_file() {
  local file="$1"
  if file -b --mime-encoding "$file" | grep -q -v '^us-ascii$'; then
    return 0
  else
    return 1
  fi
}
virtualenv_dir=""

find_virtualenv() {
  local current_dir="$1"
  local virtualenv_dir=""

  while IFS= read -r dir; do

    if [[ -d "$dir/bin" && -f "$dir/pyvenv.cfg" ]]; then
      python_file="$dir/bin/python"
      if [[ -f "$python_file" ]] && is_binary_file "$python_file"; then
        virtualenv_dir="$(basename "$dir")"
        break
      fi
      # Check if "python.exe" file is present and a binary
      python_exe_file="$dir/Scripts/python.exe"
      if [[ -f "$python_exe_file" ]] && is_binary_file "$python_exe_file"; then
        virtualenv_dir="$(basename "$dir")"
        break
      fi
    fi
  done < <(find "$current_dir" -maxdepth 1 -type d)
  echo $virtualenv_dir
}

current_directory=$(pwd)

virtualenv_dir=`find_virtualenv "$current_directory" &`
wait $!
echo
if [[ -n "$virtualenv_dir" ]]; then
  echo "Virtual environment directory found: $virtualenv_dir"
else
  echo "No virtual environment directory found in the current directory."
fi
echo "$virtualenv_dir" > variables


echo "Fetching access token......"
export access_token=$(curl -X POST $COGNITO_TOKEN_URI -H "Content-Type: application/x-www-form-urlencoded" -d "client_id=$CLIENT_ID" -d "client_secret=$CLIENT_SECRET" -d "grant_type=client_credentials" | jq -r '.access_token')
echo "access_token:" $access_token
echo "Fetched access token successfully"
echo "deployed url value:" $DEPLOYED_URL
echo "s3 path:" $S3_PATH
if test "$STATUS"
then 
    export apiresponse=$(curl -X POST -v $GQL_URL -H 'Content-Type: application/json' -H "x-api-token:${access_token}" -d '{"query": "mutation($repoName: String!,$s3Path: String,$deployedUrl: String, $serviceName: String, $runId: String,$status: String){ updateUserAssessmentDetails(repoName:$repoName,deployedUrl:$deployedUrl,s3Path:$s3Path,serviceName:$serviceName,runId:$runId,status:$status){ok}} ","variables": {"repoName": "'"${REPO_NAME}"'", "runId": "'"${RUN_ID}"'", "status": "'"${STATUS}"'"}}' )
else
    export apiresponse=$(curl -X POST -v $GQL_URL -H 'Content-Type: application/json' -H "x-api-token:${access_token}" -d '{"query": "mutation($repoName: String!,$s3Path: String,$deployedUrl: String, $serviceName: String, $runId: String,$status: String){ updateUserAssessmentDetails(repoName:$repoName,deployedUrl:$deployedUrl,s3Path:$s3Path,serviceName:$serviceName,runId:$runId,status:$status){ok}} ","variables": {"repoName": "'"${REPO_NAME}"'", "s3Path": "'"${S3_PATH}"'", "serviceName": "'"${SERVICE_NAME}"'", "deployedUrl": "'"${DEPLOYED_URL}"'", "runId": "'"${RUN_ID}"'"}}' )
fi
echo "api response:" $apiresponse