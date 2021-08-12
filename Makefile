target: pom.xml Dockerfile
	docker build -t justin2004/uberjar_builder .
	docker run --rm -it -v uberjar_builder_m2:/root/.m2 -v `pwd`:/mnt justin2004/uberjar_builder ./entry.sh
