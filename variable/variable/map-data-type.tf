
# این کد یک متغیر ورودی از نوع مپ (کلید/مقدار) می‌گیرد و بدون هیچ تغییری، دقیقاً همان را در خروجی ترمینال نمایش می‌دهد.
variable "my-map" {
  type = map(any)
}
output "variable_value" {
  value = var.my-map

}
