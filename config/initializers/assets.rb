# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += %w( page-scroll-annimation.js )
Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( activeNav.js )
Rails.application.config.assets.precompile += %w( three.js )
Rails.application.config.assets.precompile += %w( three.min.js )

Rails.application.config.assets.precompile += %w( motionView.js.erb )

Rails.application.config.assets.precompile += %w( BVHLoader.js.erb )
#Rails.application.config.assets.precompile += %w( BlendCharacter.js )
#Rails.application.config.assets.precompile += %w( BlendCharacterGui.js )
#Rails.application.config.assets.precompile += %w( dat.gui.min.js )
#Rails.application.config.assets.precompile += %w( Detector.js )
#Rails.application.config.assets.precompile += %w( OrbitControls.js )
#Rails.application.config.assets.precompile += %w( stats.min.js )
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
