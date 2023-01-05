
clean:
	find . -name "*.go" -type f -delete
	find . -name "*.py" -type f -delete

generate-go-proto:
	protoc -I=. \
	    --go_out . \
	    v1/user/user.proto

generate-python-proto:
	protoc -I=. \
	    --python_out . \
	    v1/user/user.proto

