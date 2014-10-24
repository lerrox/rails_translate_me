# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += [/.*\.js/,/.*\.css/]

Rails.application.config.assets.precompile += %w( application/bootstrap.css )
Rails.application.config.assets.precompile += %w( application/magnific-popup.css )
Rails.application.config.assets.precompile += %w( application/font-awesome.css )
Rails.application.config.assets.precompile += %w( application/flexslider.css )
Rails.application.config.assets.precompile += %w( application/style.css )
Rails.application.config.assets.precompile += %w( application/responsive.css )


Rails.application.config.assets.precompile += %w( aplication/jquery.min.js )
Rails.application.config.assets.precompile += %w( aplication/jquery.migrate.js )
Rails.application.config.assets.precompile += %w( aplication/jquery.magnific-popup.min.js )
Rails.application.config.assets.precompile += %w( aplication/bootstrap.js )
Rails.application.config.assets.precompile += %w( aplication/jquery.magnific-popup.min.js   )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
