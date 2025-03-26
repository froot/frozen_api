Sentry.init do |config|
  config.dsn = 'https://f0f516238b3b65f543d8dd9a4749e0cd@o4509045437104128.ingest.us.sentry.io/4509045438742528'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  config.traces_sample_rate = 1.0
  config.rails.report_rescued_exceptions = true

  # Add data like request headers and IP for users,
  # see https://docs.sentry.io/platforms/ruby/data-management/data-collected/ for more info
  config.send_default_pii = true
end