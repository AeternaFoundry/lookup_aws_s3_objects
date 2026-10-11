variable "s3_objects_lookup" {
  description = <<EOT
Map of s3_objects_lookup, attributes below
Required:
    - bucket
Optional:
    - delimiter
    - encoding_type
    - fetch_owner
    - max_keys
    - prefix
    - region
    - request_payer
    - start_after
EOT

  type = map(object({
    bucket        = string
    delimiter     = optional(string)
    encoding_type = optional(string)
    fetch_owner   = optional(bool)
    max_keys      = optional(number)
    prefix        = optional(string)
    region        = optional(string)
    request_payer = optional(string)
    start_after   = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

