# Play Framework Starter

## Initialize

1. Fork this repository.
2. Clone forked repository.
3. Run `make init`. (this may take some time.)
4. Answer the following in the interactive CLI.

※  Enter a `.` at the `name`.

```
This template generates a Play Scala project

name [play-scala-seed]: .
organization [com.example]: com.example
```

## Run

1. Run `make run`. (this launches an interactive bash, but not input. this may take some time.)
2. If you see the following, access [http//localhost:9000](http//localhost:9000)

```
--- (Running the application, auto-reloading is enabled) ---

[info] p.c.s.AkkaHttpServer - Listening for HTTP on /0.0.0.0:9000

(Server started, use Enter to stop and go back to the console...)
```

## Stop

1. Enter `Ctrl + C` to stop the interactive bash.  
2. Run `make stop`.  
   ※ This make command stop a container.
