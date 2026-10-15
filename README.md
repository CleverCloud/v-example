![Logo Clever Cloud](./assets/clever-cloud-logo.png)

# Deploy a V (veb) application on Clever Cloud
[![Clever Cloud - PaaS](https://img.shields.io/badge/Clever%20Cloud-PaaS-orange)](https://clever-cloud.com)

This is an example of how to deploy a [V](https://vlang.io) web application, built with
[veb](https://modules.vlang.io/veb.html), the web framework of the V standard library, on
Clever Cloud.

This example uses the [V (Vlang) runtime](https://www.clever.cloud/developers/doc/deploy/applications/v/).
The application is a "Hello world" HTTP server that listens on `0.0.0.0:8080`, as required
by the runtime.

## How it works

The V runtime needs no configuration file:

- **Build**: the project is compiled with `v . -prod`. Set `ENVIRONMENT=development` to
  compile without `-prod`. If a `v.mod` file exists, dependencies are installed with
  `v install` first (this example only uses the standard library, so there is none).
- **Run**: the compiled binary is executed directly. Set `CC_RUN_COMMAND` to override it.
- **Version**: the V version is provided by the Clever Cloud base image (V 0.5.2 at the
  time of writing) and cannot be pinned from the repository.

## Project structure

```
.
├── server.v    # veb application: one route (/) answering on 0.0.0.0:8080
└── README.md
```

## Deployment steps

To deploy this application, you need [Clever Tools](https://github.com/CleverCloud/clever-tools), the Clever Cloud CLI.

```bash
git clone https://github.com/CleverCloud/v-example
cd v-example

# Step 1: Create the application
clever create --type v v-example

# Step 2: Add your domain (optional but recommended)
clever domain add <YOUR_DOMAIN_NAME>

# Step 3: Deploy
clever deploy
```

And you're done! Your application is deploying and will be available on the `<YOUR_DOMAIN_NAME>` domain.

## Running locally

If you want to run the example on your machine, [install V](https://github.com/vlang/v#installing-v-from-source), then:

```bash
v run .   # start the server on http://localhost:8080
```

## Troubleshooting

If you encounter issues:

1. Check the application logs: `clever logs`
2. Verify all environment variables are correctly set: `clever env`
3. Make sure the application listens on `0.0.0.0:8080`.

## Contributing

Contributions to improve this deployment example are welcome! Please feel free to submit pull requests or open issues for any enhancements or bug fixes.

## License

This example is provided under the terms of the MIT license.
