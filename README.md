# tf-file-2-mime
Terraform Module for getting mime-type of a file

Note: This module only looks at a files extension and infers the mime-type from a list of known file extensions.

## Usage

```terraform
module "mimetype" {
    source = "github.com/apollorion/tf-file-2-mime"
    filename = "my-awesome-doc.csv"
}

output "mime" {
    value = module.mimetype.mimetype
}
```
output would equal `text/csv` in this case.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_types"></a> [custom\_types](#input\_custom\_types) | Map of strings to support custom mime-types. Key = file extension, Value = mime-type | `map(string)` | `{}` | no |
| <a name="input_filename"></a> [filename](#input\_filename) | Filename of the file to find mime-type | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_mimetype"></a> [mimetype](#output\_mimetype) | mime-type of the provided file. |
