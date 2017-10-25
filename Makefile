all: paranoid

paranoid:
	@mkdir paranoid 2> /dev/null
	protoc -I. --go_out=plugins=grpc:paranoid paranoid.proto

clean:
	@rm -rf paranoid 2> /dev/null
