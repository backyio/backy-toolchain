buffalo:
	$(info Installing Go-Buffalo)
	$(info --------------------------------------------------------------------)
	@wget https://github.com/gobuffalo/cli/releases/download/v0.18.14/buffalo_0.18.14_Windows_x86_64.tar.gz
	@tar xzvf ./buffalo_0.18.14_Windows_x86_64.tar.gz
	@rm -f ./README.md
	@rm -f ./buffalo_0.18.14_Windows_x86_64.tar.gz
	@wget https://github.com/gobuffalo/cli/releases/download/v0.18.14/buffalo_0.18.14_Linux_x86_64.tar.gz
	@tar xzvf ./buffalo_0.18.14_Linux_x86_64.tar.gz
	@rm -f ./README.md
	@rm -f ./buffalo_0.18.14_Linux_x86_64.tar.gz

protoc:
	$(info Installing Protocol Buffers)
	$(info --------------------------------------------------------------------)
	@wget https://github.com/protocolbuffers/protobuf/releases/download/v23.0-rc2/protoc-23.0-rc-2-win64.zip
	@unzip -o ./protoc-23.0-rc-2-win64.zip
	@rm -f ./readme.txt
	@cp ./bin/protoc.exe ./protoc.exe
	@rm -f -R ./bin
	@rm -f ./protoc-23.0-rc-2-win64.zip
	
	@wget https://github.com/protocolbuffers/protobuf/releases/download/v23.0-rc2/protoc-23.0-rc-2-linux-x86_64.zip
	@unzip -o ./protoc-23.0-rc-2-linux-x86_64.zip
	@rm -f ./readme.txt
	@cp ./bin/protoc ./protoc
	@chmod +x ./protoc
	@rm -f -R ./bin
	@rm -f ./protoc-23.0-rc-2-linux-x86_64.zip

hugo:
	$(info Installing Hugo)
	$(info --------------------------------------------------------------------)
	@wget https://github.com/gohugoio/hugo/releases/download/v0.111.3/hugo_0.111.3_windows-amd64.zip
	@unzip -o ./hugo_0.111.3_windows-amd64.zip
	@rm -f ./hugo_0.111.3_windows-amd64.zip
	@rm -f ./README.md
	@rm -f ./LICENSE
	wget https://github.com/gohugoio/hugo/releases/download/v0.111.3/hugo_0.111.3_linux-amd64.tar.gz
	@tar xzvf hugo_0.111.3_linux-amd64.tar.gz
	@rm -f ./hugo_0.111.3_linux-amd64.tar.gz
	@rm -f ./README.md
	@rm -f ./LICENSE

openapi:
	$(info Installing Openapi Generator)
	$(info --------------------------------------------------------------------)
	@wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/6.6.0/openapi-generator-cli-6.6.0.jar -O openapi-generator-cli.jar

goadesign:
	$(info Installing Goa.Design)
	$(info --------------------------------------------------------------------)
	@git clone --branch v3 https://github.com/goadesign/goa.git
	@cd goa; GOARCH=amd64 GOOS=windows go build -o ../goaa.exe ./cmd/goa
	@cd goa; GOARCH=amd64 GOOS=linux go build -o ../goaa ./cmd/goa
	@rm -f -R ./goa
	@mv ./goaa ./goa
	@chmod +x ./goa
	@mv ./goaa.exe ./goa.exe

pgv:
	$(info Installing Protoc gen validator)
	$(info --------------------------------------------------------------------)
	@wget https://github.com/bufbuild/protoc-gen-validate/releases/download/v1.0.1/protoc-gen-validate_1.0.1_linux_amd64.tar.gz
	@tar xzvf ./protoc-gen-validate_1.0.1_linux_amd64.tar.gz
	@rm -f ./protoc-gen-validate_1.0.1_linux_amd64.tar.gz
	@wget https://github.com/bufbuild/protoc-gen-validate/releases/download/v1.0.1/protoc-gen-validate_1.0.1_windows_amd64.tar.gz
	@tar xzvf  /protoc-gen-validate_1.0.1_windows_amd64.tar.gz
	@rm -f ./protoc-gen-validate_1.0.1_windows_amd64.tar.gz

migrate:
	$(info Installing Sql Migrate)
	$(info --------------------------------------------------------------------)
	@git clone https://github.com/backyio/migrate.git
	@cd migrate; GOARCH=amd64 GOOS=windows go build -o ../migratee.exe ./cmd/migrate
	@cd migrate; GOARCH=amd64 GOOS=linux go build -o ../migratee ./cmd/migrate
	@rm -f -R ./migrate
	@mv ./migratee ./migrate
	@chmod +x ./migrate
	@mv ./migratee.exe ./migrate.exe

gomicro:
	$(info Installing Go-Micro command line tools)
	$(info --------------------------------------------------------------------)
	@git clone https://github.com/backyio/go-micro-cli.git
	@cd go-micro-cli; GOARCH=amd64 GOOS=windows go build -o ../go-micro.exe ./cmd/go-micro
	@cd go-micro-cli; GOARCH=amd64 GOOS=linux go build -o ../go-micro ./cmd/go-micro
	@rm -f -R ./go-micro-cli
	@chmod +x ./go-micro

cockroachdb:
	$(info Installing Cockroachdb)
	$(info --------------------------------------------------------------------)
	@wget https://binaries.cockroachdb.com/cockroach-v22.2.8.linux-amd64.tgz
	@tar xzvf ./cockroach-v22.2.8.linux-amd64.tgz
	@mv -f ./cockroach-v22.2.8.linux-amd64/cockroach ./
	@mkdir lib
	@mv -f ./cockroach-v22.2.8.linux-amd64/lib/libgeos.so ./lib
	@mv -f ./cockroach-v22.2.8.linux-amd64/lib/libgeos_c.so ./lib	
	@rm -f -R ./cockroach-v22.2.8.linux-amd64/
	@chmod +x cockroach
	@rm -f ./cockroach-v22.2.8.linux-amd64.tgz
	@wget https://binaries.cockroachdb.com/cockroach-v22.2.8.windows-6.2-amd64.zip
	@unzip -o ./cockroach-v22.2.8.windows-6.2-amd64.zip
	@mv -f ./cockroach-v22.2.8.windows-6.2-amd64/cockroach.exe ./
	@mv -f ./cockroach-v22.2.8.windows-6.2-amd64/lib/libgeos.dll ./lib
	@mv -f ./cockroach-v22.2.8.windows-6.2-amd64/lib/libgeos_c.dll ./lib
	@rm -f -R ./cockroach-v22.2.8.windows-6.2-amd64/
	@rm -f ./cockroach-v22.2.8.windows-6.2-amd64.zip

goreleaser:
	$(info Installing GoReleaseer)
	$(info --------------------------------------------------------------------)
	@wget https://github.com/goreleaser/goreleaser/releases/download/v1.18.1/goreleaser_Windows_x86_64.zip
	@unzip -o ./goreleaser_Windows_x86_64.zip
	@rm -f goreleaser_Windows_x86_64.zip
	@wget https://github.com/goreleaser/goreleaser/releases/download/v1.18.1/goreleaser_Linux_x86_64.tar.gz
	@tar xzfv goreleaser_Linux_x86_64.tar.gz
	@rm -f goreleaser_Linux_x86_64.tar.gz

dbcert:
	$(info Generate CockroachDB cluster certificates)
	$(info --------------------------------------------------------------------)
	@mkdir certs
	@mkdir mycert
	@COCKROACH_SKIP_KEY_PERMISSION_CHECK=true cockroach cert create-ca --certs-dir=./certs --ca-key=./mycert/ca.key
	@COCKROACH_SKIP_KEY_PERMISSION_CHECK=true cockroach cert create-node localhost --certs-dir=./certs --ca-key=./mycert/ca.key	
	@COCKROACH_SKIP_KEY_PERMISSION_CHECK=true cockroach cert create-client root --certs-dir=./certs --ca-key=./mycert/ca.key

all: buffalo protoc hugo goadesign openapi goadesign migrate sqlc gomicro cockroachdb dbcert goreleaser

nodb: buffalo protoc hugo goadesign openapi goadesign migrate sqlc gomicro goreleaser

install: all