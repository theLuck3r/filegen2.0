#!/bin/sh

while true; do
  DATE=$(date +"%Y-%m-%d_%H-%M-%S")
  FILENAME="/tmp/file_${DATE}.txt"

  # Generate the file
  echo "This is a new file generated at ${DATE}" > ${FILENAME}

  # Send the file to the remote container
  #sftp -o StrictHostKeyChecking=no -i /keys/id_rsa -P ${SFTP_PORT} ${SFTP_USER}@${SFTP_HOST}:${SFTP_PATH} < ${FILENAME}

  # Wait for 1 minute
  sleep 60
done
