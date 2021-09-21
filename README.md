this is an example of using scone-server with docker image.

To start docker container:

    $ make scone-start

This will load a minimal knowledge at directory `scone-knowledge.d`.

Then, send a query:

    $ make query

Finally, stop the container:

    $ make scone-stop
