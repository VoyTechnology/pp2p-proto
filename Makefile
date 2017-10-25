all: paranoid client

paranoid:
	@mkdir paranoid 2> /dev/null
	protoc -I. --go_out=plugins=grpc:paranoid paranoid.proto

client:
	@mkdir client 2> /dev/null
	protoc -I. --go_out=plugins=grpc:client client.proto

clean:
	@rm -rf paranoid 2> /dev/null
	@rm -rf client 2> /dev/null
