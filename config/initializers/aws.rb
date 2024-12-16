Aws.config.update({
  region: ENV['AWS_REGION'] || 'us-east-1' # Default to us-east-1 if ENV variable isn't set
})
