class MOE.App extends NB.Module
	constructor: ->
		super

		@name = @constructor.name.toLowerCase()

		@expr.get '/', @home

		@set_static_dir(@name + '/client', '/' + @name)

	home: (req, res) =>
		# Load sections.
		data = {
			head: @r.render('/assets/ejs/head')
			foot: @r.render('/assets/ejs/foot')
			class_name: @name
		}

		# Render page.
		res.send @r.render('client/ejs/home', data)
