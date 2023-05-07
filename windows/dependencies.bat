rem https://github.com/goadesign/model
go install honnef.co/go/tools/cmd/staticcheck@latest
go install goa.design/clue/mock/cmd/cmg@latest
go install goa.design/model/cmd/mdl@latest
go install goa.design/goa/v3/...@v3
go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.27.1
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2.0
go install github.com/DarthSim/overmind/v2@latest