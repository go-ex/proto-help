# 安装代码工具
install:
	brew install protobuf
	go get -u github.com/golang/protobuf/proto
	go get -u github.com/golang/protobuf/protoc-gen-go

protoc:
	protoc --proto_path=./http \
	--go_out=./http \
	./http/*

# 工具调用格式， --name=value
php-gen:
	php script/proto-gen-php --proto_path=./proto/controllers --out_path=./app/http/controllers