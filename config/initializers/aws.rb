Aws.config.update({
  region: ENV['AWS_REGION'], # Fetch the region from environment variables
  credentials: Aws::Credentials.new(
    ENV['AWS_ACCESS_KEY_ID'], # Fetch the access key from environment variables
    ENV['AWS_SECRET_ACCESS_KEY'] # Fetch the secret key from environment variables
  )
})
