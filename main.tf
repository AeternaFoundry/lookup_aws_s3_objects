data "aws_s3_objects" "s3_objects_lookup" {
  for_each = var.s3_objects_lookup

  bucket        = each.value.bucket
  delimiter     = each.value.delimiter
  encoding_type = each.value.encoding_type
  fetch_owner   = each.value.fetch_owner
  max_keys      = each.value.max_keys
  prefix        = each.value.prefix
  region        = each.value.region
  request_payer = each.value.request_payer
  start_after   = each.value.start_after
}

