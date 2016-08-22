Project.create([
	{
		title: 'sniffdit',
		description: 'A web content aggregator for dog lovers.  Developed with the MEAN stack and hosted on Heroku.  Currently in development.',
		image: 'https://s3.amazonaws.com/camronkhan/images/dogs-sniffing.jpg',
		project_location: 'http://sniffdit.herokuapp.com/',
		source_location: 'https://github.com/camronkhan/sniffdit'
	},
	{
		title: 'Ant Colony Simulation',
		description: 'A simulation of an ant colony.  Developed in Java SE 7 for my Data Structures & Algorithms course and available as a downloadable .jar file.',
		image: 'https://s3.amazonaws.com/camronkhan/images/ant.jpg',
		project_location: 'https://s3.amazonaws.com/camronkhan/projects/ant_colony_simulation.jar',
		source_location: 'https://github.com/camronkhan/ant_colony'
	},
	{
		title: 'Simple Calculator',
		description: 'A simple calculator that performs operations on one digit integers.  Developed in C# for my .NET course and available as a downloadable .exe file.',
		image: 'https://s3.amazonaws.com/camronkhan/images/calculator.jpg',
		project_location: 'https://s3.amazonaws.com/camronkhan/projects/simple_calculator.exe',
		source_location: 'https://github.com/camronkhan/simple_calc'
	},
	{
		title: 'Guess the Number',
		description: 'Two players compete to guess a pseudorandom number. Developed in C for my Operating Systems course.',
		image: 'https://s3.amazonaws.com/camronkhan/images/number.jpg',
		source_location: 'https://github.com/camronkhan/guess_the_number'
	},
	{
		title: 'University Bathroom',
		description: 'Simulates a university bathroom with a policy that when a woman is in the bathroom only other women may enter and vice versa. Developed in C for my Operating Systems course.',
		image: 'https://s3.amazonaws.com/camronkhan/images/washroom.jpg',
		source_location: 'https://github.com/camronkhan/university_bathroom'
	},
	{
		title: 'Plus Minus - Java',
		description: 'Recursively adds or subtracts each number in a list to determine if the value matches any number in that list. Developed in Java SE 8 for my Programming Language Theory course.',
		image: 'https://s3.amazonaws.com/camronkhan/images/tree.jpg',
		source_location: 'https://github.com/camronkhan/plus_minus_java'
	},
	{
		title: 'Plus Minus - Scheme',
		description: 'Recursively adds or subtracts each number in a list to determine if the value matches any number in that list. Developed in Scheme (R5RS) for my Programming Language Theory course.',
		image: 'https://s3.amazonaws.com/camronkhan/images/math.jpg',
		source_location: 'https://github.com/camronkhan/plus_minus_scheme'
	},
	{
		title: 'Blissful Moments by Stephanie',
		description: 'A one-page scrolling website developed for a local photographer. Developed in HTML5, CSS3, jQuery, AJAX, PHP 5, and Bootstrap 3.',
		image: 'https://s3.amazonaws.com/camronkhan/images/rose-camera.jpg',
		project_location: 'http://blissfulmomentsbystephanie.com/',
		source_location: 'https://github.com/camronkhan/blissful_moments',
		featured: true
	},
	{
		title: 'ePortfolio',
		description: 'View the code behind this ePortfolio. This site was developed with Ruby 2, Rails 4, PostgreSQL 9.5, Bootstrap 3, Sass, CoffeeScript, and jQuery. It is hosted on Heroku and assets are served from AWS S3.',
		image: 'https://s3.amazonaws.com/camronkhan/images/web-develop.jpg',
		project_location: 'http://camronkhan.com/',
		source_location: 'https://github.com/camronkhan/camronkhan',
		featured: true
	},
	{
		title: 'SSC Product Support',
		description: 'Stores searchable product, technical support, and repair service information that is accessible by call center agents during customer interactions. Developed in Ruby 2, Rails 4, PostgreSQL 9.5, Bootstrap 3, Sass, CoffeeScript, and jQuery. It is hosted on Heroku and assets are served from AWS S3.',
		image: 'https://s3.amazonaws.com/camronkhan/images/body-camera.jpg',
		project_location: 'https://ssc-product-support.herokuapp.com/',
		source_location: 'https://github.com/camronkhan/psdb',
		featured: true
	}
])

User.create([
	{
		name: 'Camron',
		email: 'camron.khan@gmail.com',
		password: ENV['CAMRONKHAN_PASSWORD'],
		password_confirmation: ENV['CAMRONKHAN_PASSWORD']
	}
])