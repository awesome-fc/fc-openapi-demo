## OpenAPI powered functions and APIs

### Introduction

This project demonstrates how to build functions from OpenAPI spec and expose the APIs with APIGateway. Thanks to the Alibaba Cloud Function Compute custom runtime support, we can easily deploy the auto-generated server to Function Compute.

### Steps

1. Define APIs in OpenAPI spec. see `api/swagger.yaml`.
2. Generate the server code with [Swagger codegen](https://swagger.io/tools/swagger-codegen/). In this example we use the go-server.
3. Add the funcraft template `template.yml`.
4. Build and deploy the functions.
    ```make build; fun deploy```
5. Update the x-aliyun-apigateway-backend address to the http trigger address got from step 4.
6. Import the API spec to APIGateway by following the [guide](https://www.alibabacloud.com/help/doc-detail/88956.htm#title-4hu-i9g-x9l) and publish all the APIs.
7. Use the swagger UI to debug the API.


