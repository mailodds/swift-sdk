# OAuth20API

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createToken**](OAuth20API.md#createtoken) | **POST** /oauth/token | Create token
[**getJwks**](OAuth20API.md#getjwks) | **GET** /.well-known/jwks.json | Get JSON Web Key Set
[**introspectToken**](OAuth20API.md#introspecttoken) | **POST** /oauth/introspect | Introspect token
[**oauthServerMetadata**](OAuth20API.md#oauthservermetadata) | **GET** /.well-known/oauth-authorization-server | OAuth server metadata
[**revokeToken**](OAuth20API.md#revoketoken) | **POST** /oauth/revoke | Revoke token


# **createToken**
```swift
    open class func createToken(grantType: GrantType_createToken, code: String? = nil, redirectUri: String? = nil, clientId: String? = nil, clientSecret: String? = nil, refreshToken: String? = nil, scope: String? = nil, codeVerifier: String? = nil, completion: @escaping (_ data: CreateToken200Response?, _ error: Error?) -> Void)
```

Create token

Exchange an authorization code, client credentials, or refresh token for access and refresh tokens. Authenticate via client_secret_post or client_secret_basic.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let grantType = "grantType_example" // String | 
let code = "code_example" // String | Authorization code (for authorization_code grant) (optional)
let redirectUri = "redirectUri_example" // String | Must match the original redirect_uri (optional)
let clientId = "clientId_example" // String |  (optional)
let clientSecret = "clientSecret_example" // String |  (optional)
let refreshToken = "refreshToken_example" // String | Refresh token (for refresh_token grant) (optional)
let scope = "scope_example" // String | Space-separated scopes (optional)
let codeVerifier = "codeVerifier_example" // String | PKCE code verifier (optional)

// Create token
OAuth20API.createToken(grantType: grantType, code: code, redirectUri: redirectUri, clientId: clientId, clientSecret: clientSecret, refreshToken: refreshToken, scope: scope, codeVerifier: codeVerifier) { (response, error) in
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
 **grantType** | **String** |  | 
 **code** | **String** | Authorization code (for authorization_code grant) | [optional] 
 **redirectUri** | **String** | Must match the original redirect_uri | [optional] 
 **clientId** | **String** |  | [optional] 
 **clientSecret** | **String** |  | [optional] 
 **refreshToken** | **String** | Refresh token (for refresh_token grant) | [optional] 
 **scope** | **String** | Space-separated scopes | [optional] 
 **codeVerifier** | **String** | PKCE code verifier | [optional] 

### Return type

[**CreateToken200Response**](CreateToken200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJwks**
```swift
    open class func getJwks(completion: @escaping (_ data: JwksResponse?, _ error: Error?) -> Void)
```

Get JSON Web Key Set

Public key set for verifying JWT access tokens issued by this server.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// Get JSON Web Key Set
OAuth20API.getJwks() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **introspectToken**
```swift
    open class func introspectToken(token: String, tokenTypeHint: TokenTypeHint_introspectToken? = nil, clientId: String? = nil, clientSecret: String? = nil, completion: @escaping (_ data: IntrospectToken200Response?, _ error: Error?) -> Void)
```

Introspect token

Introspect a token to determine its active state and metadata (RFC 7662). Requires client authentication.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let token = "token_example" // String | Token to introspect
let tokenTypeHint = "tokenTypeHint_example" // String |  (optional)
let clientId = "clientId_example" // String |  (optional)
let clientSecret = "clientSecret_example" // String |  (optional)

// Introspect token
OAuth20API.introspectToken(token: token, tokenTypeHint: tokenTypeHint, clientId: clientId, clientSecret: clientSecret) { (response, error) in
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
 **token** | **String** | Token to introspect | 
 **tokenTypeHint** | **String** |  | [optional] 
 **clientId** | **String** |  | [optional] 
 **clientSecret** | **String** |  | [optional] 

### Return type

[**IntrospectToken200Response**](IntrospectToken200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthServerMetadata**
```swift
    open class func oauthServerMetadata(completion: @escaping (_ data: OAuthServerMetadata?, _ error: Error?) -> Void)
```

OAuth server metadata

OAuth 2.0 Authorization Server Metadata (RFC 8414). Returns server configuration including supported grant types, scopes, and endpoints.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds


// OAuth server metadata
OAuth20API.oauthServerMetadata() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**OAuthServerMetadata**](OAuthServerMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeToken**
```swift
    open class func revokeToken(token: String, tokenTypeHint: TokenTypeHint_revokeToken? = nil, clientId: String? = nil, clientSecret: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Revoke token

Revoke an access or refresh token (RFC 7009). Requires client authentication. Always returns 200 per spec to prevent token scanning.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MailOdds

let token = "token_example" // String | Token to revoke
let tokenTypeHint = "tokenTypeHint_example" // String |  (optional)
let clientId = "clientId_example" // String |  (optional)
let clientSecret = "clientSecret_example" // String |  (optional)

// Revoke token
OAuth20API.revokeToken(token: token, tokenTypeHint: tokenTypeHint, clientId: clientId, clientSecret: clientSecret) { (response, error) in
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
 **token** | **String** | Token to revoke | 
 **tokenTypeHint** | **String** |  | [optional] 
 **clientId** | **String** |  | [optional] 
 **clientSecret** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

