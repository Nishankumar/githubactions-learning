package main

import (
	"context"
	"fmt"

	"github.com/aws/aws-lambda-go/lambda"
)

type Request struct {
	Name string `json:"name"`
}

type Response struct {
	Message string `json:"message"`
}

func handler(ctx context.Context, req Request) (Response, error) {
	message := fmt.Sprintf("Hello App01, %s! This is a Go Lambda deployed via GitHub Actions 🚀", req.Name)
	return Response{Message: message}, nil
}

func main() {
	lambda.Start(handler)
}