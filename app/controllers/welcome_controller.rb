class WelcomeController < ApplicationController
	def index
    @glossaries = Glossary.all
	end
end
