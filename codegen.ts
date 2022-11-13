import type { CodegenConfig } from "@graphql-codegen/cli";

const config: CodegenConfig = {
  overwrite: true,
  schema: "https://demo.saleor.io/graphql/",
  // schema: "schema.json",
  generates: {
    "src/generated/bad-models.dart": [{ "flutter-freezed": {} }],
  },
};

export default config;
