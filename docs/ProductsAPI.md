# ProductsAPI

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchProducts**](ProductsAPI.md#batchproducts) | **POST** /v1/stores/{store_id}/products/batch | Batch push products
[**bulkUpdateProducts**](ProductsAPI.md#bulkupdateproducts) | **PATCH** /v1/store-products/bulk | Bulk update products
[**getProduct**](ProductsAPI.md#getproduct) | **GET** /v1/store-products/{product_id} | Get a product
[**queryProducts**](ProductsAPI.md#queryproducts) | **GET** /v1/store-products | Query products


# **batchProducts**
```swift
    open class func batchProducts(storeId: String, batchProductsRequest: BatchProductsRequest, completion: @escaping (_ data: BatchProductsResponse?, _ error: Error?) -> Void)
```

Batch push products

Push up to 100 products to a custom platform store. Creates new products or updates existing ones matched by external_id. Only available for stores with platform=custom.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let storeId = "storeId_example" // String | Store connection UUID
let batchProductsRequest = BatchProductsRequest(products: [BatchProductsRequest_products_inner(externalId: "externalId_example", title: "title_example", productUrl: "productUrl_example", sku: "sku_example", description: "description_example", priceCurrent: 123, priceOriginal: 123, currency: "currency_example", stockStatus: "stockStatus_example", stockQuantity: 123, imageUrl: "imageUrl_example", additionalImages: ["additionalImages_example"], categories: ["categories_example"], tags: ["tags_example"], variants: [123])]) // BatchProductsRequest | 

// Batch push products
ProductsAPI.batchProducts(storeId: storeId, batchProductsRequest: batchProductsRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String** | Store connection UUID | 
 **batchProductsRequest** | [**BatchProductsRequest**](BatchProductsRequest.md) |  | 

### Return type

[**BatchProductsResponse**](BatchProductsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkUpdateProducts**
```swift
    open class func bulkUpdateProducts(bulkUpdateProductsRequest: BulkUpdateProductsRequest, completion: @escaping (_ data: BulkUpdateProducts200Response?, _ error: Error?) -> Void)
```

Bulk update products

Bulk update product visibility. Maximum 500 products per request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let bulkUpdateProductsRequest = bulkUpdateProducts_request(productIds: ["productIds_example"], isActive: false) // BulkUpdateProductsRequest | 

// Bulk update products
ProductsAPI.bulkUpdateProducts(bulkUpdateProductsRequest: bulkUpdateProductsRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkUpdateProductsRequest** | [**BulkUpdateProductsRequest**](BulkUpdateProductsRequest.md) |  | 

### Return type

[**BulkUpdateProducts200Response**](BulkUpdateProducts200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProduct**
```swift
    open class func getProduct(productId: String, completion: @escaping (_ data: GetProduct200Response?, _ error: Error?) -> Void)
```

Get a product

Get detailed information about a specific product.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let productId = "productId_example" // String | Product UUID

// Get a product
ProductsAPI.getProduct(productId: productId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String** | Product UUID | 

### Return type

[**GetProduct200Response**](GetProduct200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryProducts**
```swift
    open class func queryProducts(storeId: String? = nil, category: String? = nil, stockStatus: StockStatus_queryProducts? = nil, onSale: Bool? = nil, search: String? = nil, facets: Bool? = nil, groupBySku: Bool? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: QueryProducts200Response?, _ error: Error?) -> Void)
```

Query products

Search and filter products across all connected stores. Supports faceted search and cross-store SKU deduplication for unified inventory views.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let storeId = "storeId_example" // String | Filter by store connection UUID (optional)
let category = "category_example" // String | Filter by category name (optional)
let stockStatus = "stockStatus_example" // String | Filter by stock status (optional)
let onSale = true // Bool | Filter to products currently on sale (optional)
let search = "search_example" // String | Search by title or SKU (optional)
let facets = true // Bool | Include facet aggregations (categories, price ranges, stores) (optional) (default to false)
let groupBySku = true // Bool | Merge products with same SKU across stores into unified entries (optional) (default to false)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// Query products
ProductsAPI.queryProducts(storeId: storeId, category: category, stockStatus: stockStatus, onSale: onSale, search: search, facets: facets, groupBySku: groupBySku, page: page, perPage: perPage) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String** | Filter by store connection UUID | [optional] 
 **category** | **String** | Filter by category name | [optional] 
 **stockStatus** | **String** | Filter by stock status | [optional] 
 **onSale** | **Bool** | Filter to products currently on sale | [optional] 
 **search** | **String** | Search by title or SKU | [optional] 
 **facets** | **Bool** | Include facet aggregations (categories, price ranges, stores) | [optional] [default to false]
 **groupBySku** | **Bool** | Merge products with same SKU across stores into unified entries | [optional] [default to false]
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

[**QueryProducts200Response**](QueryProducts200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

