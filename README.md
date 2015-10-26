docker-wschat
======================

Out-of-the-box wschat docker image


Usage
-----

To create the image `alejandrotorresmx/wschat`, execute the following command on the docker-wschat folder:

	docker build -t alejandrotorresmx/wschat .

You can now push your new image to the registry:

	docker push alejandrotorresmx/wschat


Running your Wordpress docker image
-----------------------------------

Start your image:

	docker run -d -p 80:3000 alejandrotorresmx/wschat

Test your deployment:

	curl http://localhost/

You can now start configuring your node container!


More information
----------------

For details on please visit the [alejandrotorrexmx/docker-wschat repository on github](https://github.com/AlejandroTorresMx)
