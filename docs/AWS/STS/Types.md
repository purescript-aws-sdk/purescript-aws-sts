## Module AWS.STS.Types

#### `options`

``` purescript
options :: Options
```

#### `AssumeRoleRequest`

``` purescript
newtype AssumeRoleRequest
  = AssumeRoleRequest { "RoleArn" :: ArnType', "RoleSessionName" :: RoleSessionNameType', "Policy" :: NullOrUndefined (SessionPolicyDocumentType'), "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType'), "ExternalId" :: NullOrUndefined (ExternalIdType'), "SerialNumber" :: NullOrUndefined (SerialNumberType'), "TokenCode" :: NullOrUndefined (TokenCodeType') }
```

##### Instances
``` purescript
Newtype AssumeRoleRequest _
Generic AssumeRoleRequest _
Show AssumeRoleRequest
Decode AssumeRoleRequest
Encode AssumeRoleRequest
```

#### `newAssumeRoleRequest`

``` purescript
newAssumeRoleRequest :: ArnType' -> RoleSessionNameType' -> AssumeRoleRequest
```

Constructs AssumeRoleRequest from required parameters

#### `newAssumeRoleRequest'`

``` purescript
newAssumeRoleRequest' :: ArnType' -> RoleSessionNameType' -> ({ "RoleArn" :: ArnType', "RoleSessionName" :: RoleSessionNameType', "Policy" :: NullOrUndefined (SessionPolicyDocumentType'), "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType'), "ExternalId" :: NullOrUndefined (ExternalIdType'), "SerialNumber" :: NullOrUndefined (SerialNumberType'), "TokenCode" :: NullOrUndefined (TokenCodeType') } -> { "RoleArn" :: ArnType', "RoleSessionName" :: RoleSessionNameType', "Policy" :: NullOrUndefined (SessionPolicyDocumentType'), "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType'), "ExternalId" :: NullOrUndefined (ExternalIdType'), "SerialNumber" :: NullOrUndefined (SerialNumberType'), "TokenCode" :: NullOrUndefined (TokenCodeType') }) -> AssumeRoleRequest
```

Constructs AssumeRoleRequest's fields from required parameters

#### `AssumeRoleResponse`

``` purescript
newtype AssumeRoleResponse
  = AssumeRoleResponse { "Credentials" :: NullOrUndefined (Credentials), "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser), "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') }
```

<p>Contains the response to a successful <a>AssumeRole</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>

##### Instances
``` purescript
Newtype AssumeRoleResponse _
Generic AssumeRoleResponse _
Show AssumeRoleResponse
Decode AssumeRoleResponse
Encode AssumeRoleResponse
```

#### `newAssumeRoleResponse`

``` purescript
newAssumeRoleResponse :: AssumeRoleResponse
```

Constructs AssumeRoleResponse from required parameters

#### `newAssumeRoleResponse'`

``` purescript
newAssumeRoleResponse' :: ({ "Credentials" :: NullOrUndefined (Credentials), "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser), "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') } -> { "Credentials" :: NullOrUndefined (Credentials), "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser), "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') }) -> AssumeRoleResponse
```

Constructs AssumeRoleResponse's fields from required parameters

#### `AssumeRoleWithSAMLRequest`

``` purescript
newtype AssumeRoleWithSAMLRequest
  = AssumeRoleWithSAMLRequest { "RoleArn" :: ArnType', "PrincipalArn" :: ArnType', "SAMLAssertion" :: SAMLAssertionType, "Policy" :: NullOrUndefined (SessionPolicyDocumentType'), "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType') }
```

##### Instances
``` purescript
Newtype AssumeRoleWithSAMLRequest _
Generic AssumeRoleWithSAMLRequest _
Show AssumeRoleWithSAMLRequest
Decode AssumeRoleWithSAMLRequest
Encode AssumeRoleWithSAMLRequest
```

#### `newAssumeRoleWithSAMLRequest`

``` purescript
newAssumeRoleWithSAMLRequest :: ArnType' -> ArnType' -> SAMLAssertionType -> AssumeRoleWithSAMLRequest
```

Constructs AssumeRoleWithSAMLRequest from required parameters

#### `newAssumeRoleWithSAMLRequest'`

``` purescript
newAssumeRoleWithSAMLRequest' :: ArnType' -> ArnType' -> SAMLAssertionType -> ({ "RoleArn" :: ArnType', "PrincipalArn" :: ArnType', "SAMLAssertion" :: SAMLAssertionType, "Policy" :: NullOrUndefined (SessionPolicyDocumentType'), "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType') } -> { "RoleArn" :: ArnType', "PrincipalArn" :: ArnType', "SAMLAssertion" :: SAMLAssertionType, "Policy" :: NullOrUndefined (SessionPolicyDocumentType'), "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType') }) -> AssumeRoleWithSAMLRequest
```

Constructs AssumeRoleWithSAMLRequest's fields from required parameters

#### `AssumeRoleWithSAMLResponse`

``` purescript
newtype AssumeRoleWithSAMLResponse
  = AssumeRoleWithSAMLResponse { "Credentials" :: NullOrUndefined (Credentials), "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser), "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType'), "Subject" :: NullOrUndefined (Subject), "SubjectType" :: NullOrUndefined (SubjectType), "Issuer" :: NullOrUndefined (Issuer), "Audience" :: NullOrUndefined (Audience), "NameQualifier" :: NullOrUndefined (NameQualifier) }
```

<p>Contains the response to a successful <a>AssumeRoleWithSAML</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>

##### Instances
``` purescript
Newtype AssumeRoleWithSAMLResponse _
Generic AssumeRoleWithSAMLResponse _
Show AssumeRoleWithSAMLResponse
Decode AssumeRoleWithSAMLResponse
Encode AssumeRoleWithSAMLResponse
```

#### `newAssumeRoleWithSAMLResponse`

``` purescript
newAssumeRoleWithSAMLResponse :: AssumeRoleWithSAMLResponse
```

Constructs AssumeRoleWithSAMLResponse from required parameters

#### `newAssumeRoleWithSAMLResponse'`

``` purescript
newAssumeRoleWithSAMLResponse' :: ({ "Credentials" :: NullOrUndefined (Credentials), "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser), "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType'), "Subject" :: NullOrUndefined (Subject), "SubjectType" :: NullOrUndefined (SubjectType), "Issuer" :: NullOrUndefined (Issuer), "Audience" :: NullOrUndefined (Audience), "NameQualifier" :: NullOrUndefined (NameQualifier) } -> { "Credentials" :: NullOrUndefined (Credentials), "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser), "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType'), "Subject" :: NullOrUndefined (Subject), "SubjectType" :: NullOrUndefined (SubjectType), "Issuer" :: NullOrUndefined (Issuer), "Audience" :: NullOrUndefined (Audience), "NameQualifier" :: NullOrUndefined (NameQualifier) }) -> AssumeRoleWithSAMLResponse
```

Constructs AssumeRoleWithSAMLResponse's fields from required parameters

#### `AssumeRoleWithWebIdentityRequest`

``` purescript
newtype AssumeRoleWithWebIdentityRequest
  = AssumeRoleWithWebIdentityRequest { "RoleArn" :: ArnType', "RoleSessionName" :: RoleSessionNameType', "WebIdentityToken" :: ClientTokenType', "ProviderId" :: NullOrUndefined (UrlType'), "Policy" :: NullOrUndefined (SessionPolicyDocumentType'), "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType') }
```

##### Instances
``` purescript
Newtype AssumeRoleWithWebIdentityRequest _
Generic AssumeRoleWithWebIdentityRequest _
Show AssumeRoleWithWebIdentityRequest
Decode AssumeRoleWithWebIdentityRequest
Encode AssumeRoleWithWebIdentityRequest
```

#### `newAssumeRoleWithWebIdentityRequest`

``` purescript
newAssumeRoleWithWebIdentityRequest :: ArnType' -> RoleSessionNameType' -> ClientTokenType' -> AssumeRoleWithWebIdentityRequest
```

Constructs AssumeRoleWithWebIdentityRequest from required parameters

#### `newAssumeRoleWithWebIdentityRequest'`

``` purescript
newAssumeRoleWithWebIdentityRequest' :: ArnType' -> RoleSessionNameType' -> ClientTokenType' -> ({ "RoleArn" :: ArnType', "RoleSessionName" :: RoleSessionNameType', "WebIdentityToken" :: ClientTokenType', "ProviderId" :: NullOrUndefined (UrlType'), "Policy" :: NullOrUndefined (SessionPolicyDocumentType'), "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType') } -> { "RoleArn" :: ArnType', "RoleSessionName" :: RoleSessionNameType', "WebIdentityToken" :: ClientTokenType', "ProviderId" :: NullOrUndefined (UrlType'), "Policy" :: NullOrUndefined (SessionPolicyDocumentType'), "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType') }) -> AssumeRoleWithWebIdentityRequest
```

Constructs AssumeRoleWithWebIdentityRequest's fields from required parameters

#### `AssumeRoleWithWebIdentityResponse`

``` purescript
newtype AssumeRoleWithWebIdentityResponse
  = AssumeRoleWithWebIdentityResponse { "Credentials" :: NullOrUndefined (Credentials), "SubjectFromWebIdentityToken" :: NullOrUndefined (WebIdentitySubjectType'), "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser), "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType'), "Provider" :: NullOrUndefined (Issuer), "Audience" :: NullOrUndefined (Audience) }
```

<p>Contains the response to a successful <a>AssumeRoleWithWebIdentity</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>

##### Instances
``` purescript
Newtype AssumeRoleWithWebIdentityResponse _
Generic AssumeRoleWithWebIdentityResponse _
Show AssumeRoleWithWebIdentityResponse
Decode AssumeRoleWithWebIdentityResponse
Encode AssumeRoleWithWebIdentityResponse
```

#### `newAssumeRoleWithWebIdentityResponse`

``` purescript
newAssumeRoleWithWebIdentityResponse :: AssumeRoleWithWebIdentityResponse
```

Constructs AssumeRoleWithWebIdentityResponse from required parameters

#### `newAssumeRoleWithWebIdentityResponse'`

``` purescript
newAssumeRoleWithWebIdentityResponse' :: ({ "Credentials" :: NullOrUndefined (Credentials), "SubjectFromWebIdentityToken" :: NullOrUndefined (WebIdentitySubjectType'), "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser), "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType'), "Provider" :: NullOrUndefined (Issuer), "Audience" :: NullOrUndefined (Audience) } -> { "Credentials" :: NullOrUndefined (Credentials), "SubjectFromWebIdentityToken" :: NullOrUndefined (WebIdentitySubjectType'), "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser), "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType'), "Provider" :: NullOrUndefined (Issuer), "Audience" :: NullOrUndefined (Audience) }) -> AssumeRoleWithWebIdentityResponse
```

Constructs AssumeRoleWithWebIdentityResponse's fields from required parameters

#### `AssumedRoleUser`

``` purescript
newtype AssumedRoleUser
  = AssumedRoleUser { "AssumedRoleId" :: AssumedRoleIdType', "Arn" :: ArnType' }
```

<p>The identifiers for the temporary security credentials that the operation returns.</p>

##### Instances
``` purescript
Newtype AssumedRoleUser _
Generic AssumedRoleUser _
Show AssumedRoleUser
Decode AssumedRoleUser
Encode AssumedRoleUser
```

#### `newAssumedRoleUser`

``` purescript
newAssumedRoleUser :: ArnType' -> AssumedRoleIdType' -> AssumedRoleUser
```

Constructs AssumedRoleUser from required parameters

#### `newAssumedRoleUser'`

``` purescript
newAssumedRoleUser' :: ArnType' -> AssumedRoleIdType' -> ({ "AssumedRoleId" :: AssumedRoleIdType', "Arn" :: ArnType' } -> { "AssumedRoleId" :: AssumedRoleIdType', "Arn" :: ArnType' }) -> AssumedRoleUser
```

Constructs AssumedRoleUser's fields from required parameters

#### `Audience`

``` purescript
newtype Audience
  = Audience String
```

##### Instances
``` purescript
Newtype Audience _
Generic Audience _
Show Audience
Decode Audience
Encode Audience
```

#### `Credentials`

``` purescript
newtype Credentials
  = Credentials { "AccessKeyId" :: AccessKeyIdType', "SecretAccessKey" :: AccessKeySecretType', "SessionToken" :: TokenType', "Expiration" :: DateType' }
```

<p>AWS credentials for API authentication.</p>

##### Instances
``` purescript
Newtype Credentials _
Generic Credentials _
Show Credentials
Decode Credentials
Encode Credentials
```

#### `newCredentials`

``` purescript
newCredentials :: AccessKeyIdType' -> DateType' -> AccessKeySecretType' -> TokenType' -> Credentials
```

Constructs Credentials from required parameters

#### `newCredentials'`

``` purescript
newCredentials' :: AccessKeyIdType' -> DateType' -> AccessKeySecretType' -> TokenType' -> ({ "AccessKeyId" :: AccessKeyIdType', "SecretAccessKey" :: AccessKeySecretType', "SessionToken" :: TokenType', "Expiration" :: DateType' } -> { "AccessKeyId" :: AccessKeyIdType', "SecretAccessKey" :: AccessKeySecretType', "SessionToken" :: TokenType', "Expiration" :: DateType' }) -> Credentials
```

Constructs Credentials's fields from required parameters

#### `DecodeAuthorizationMessageRequest`

``` purescript
newtype DecodeAuthorizationMessageRequest
  = DecodeAuthorizationMessageRequest { "EncodedMessage" :: EncodedMessageType' }
```

##### Instances
``` purescript
Newtype DecodeAuthorizationMessageRequest _
Generic DecodeAuthorizationMessageRequest _
Show DecodeAuthorizationMessageRequest
Decode DecodeAuthorizationMessageRequest
Encode DecodeAuthorizationMessageRequest
```

#### `newDecodeAuthorizationMessageRequest`

``` purescript
newDecodeAuthorizationMessageRequest :: EncodedMessageType' -> DecodeAuthorizationMessageRequest
```

Constructs DecodeAuthorizationMessageRequest from required parameters

#### `newDecodeAuthorizationMessageRequest'`

``` purescript
newDecodeAuthorizationMessageRequest' :: EncodedMessageType' -> ({ "EncodedMessage" :: EncodedMessageType' } -> { "EncodedMessage" :: EncodedMessageType' }) -> DecodeAuthorizationMessageRequest
```

Constructs DecodeAuthorizationMessageRequest's fields from required parameters

#### `DecodeAuthorizationMessageResponse`

``` purescript
newtype DecodeAuthorizationMessageResponse
  = DecodeAuthorizationMessageResponse { "DecodedMessage" :: NullOrUndefined (DecodedMessageType') }
```

<p>A document that contains additional information about the authorization status of a request from an encoded message that is returned in response to an AWS request.</p>

##### Instances
``` purescript
Newtype DecodeAuthorizationMessageResponse _
Generic DecodeAuthorizationMessageResponse _
Show DecodeAuthorizationMessageResponse
Decode DecodeAuthorizationMessageResponse
Encode DecodeAuthorizationMessageResponse
```

#### `newDecodeAuthorizationMessageResponse`

``` purescript
newDecodeAuthorizationMessageResponse :: DecodeAuthorizationMessageResponse
```

Constructs DecodeAuthorizationMessageResponse from required parameters

#### `newDecodeAuthorizationMessageResponse'`

``` purescript
newDecodeAuthorizationMessageResponse' :: ({ "DecodedMessage" :: NullOrUndefined (DecodedMessageType') } -> { "DecodedMessage" :: NullOrUndefined (DecodedMessageType') }) -> DecodeAuthorizationMessageResponse
```

Constructs DecodeAuthorizationMessageResponse's fields from required parameters

#### `ExpiredTokenException`

``` purescript
newtype ExpiredTokenException
  = ExpiredTokenException { message :: NullOrUndefined (ExpiredIdentityTokenMessage') }
```

<p>The web identity token that was passed is expired or is not valid. Get a new identity token from the identity provider and then retry the request.</p>

##### Instances
``` purescript
Newtype ExpiredTokenException _
Generic ExpiredTokenException _
Show ExpiredTokenException
Decode ExpiredTokenException
Encode ExpiredTokenException
```

#### `newExpiredTokenException`

``` purescript
newExpiredTokenException :: ExpiredTokenException
```

Constructs ExpiredTokenException from required parameters

#### `newExpiredTokenException'`

``` purescript
newExpiredTokenException' :: ({ message :: NullOrUndefined (ExpiredIdentityTokenMessage') } -> { message :: NullOrUndefined (ExpiredIdentityTokenMessage') }) -> ExpiredTokenException
```

Constructs ExpiredTokenException's fields from required parameters

#### `FederatedUser`

``` purescript
newtype FederatedUser
  = FederatedUser { "FederatedUserId" :: FederatedIdType', "Arn" :: ArnType' }
```

<p>Identifiers for the federated user that is associated with the credentials.</p>

##### Instances
``` purescript
Newtype FederatedUser _
Generic FederatedUser _
Show FederatedUser
Decode FederatedUser
Encode FederatedUser
```

#### `newFederatedUser`

``` purescript
newFederatedUser :: ArnType' -> FederatedIdType' -> FederatedUser
```

Constructs FederatedUser from required parameters

#### `newFederatedUser'`

``` purescript
newFederatedUser' :: ArnType' -> FederatedIdType' -> ({ "FederatedUserId" :: FederatedIdType', "Arn" :: ArnType' } -> { "FederatedUserId" :: FederatedIdType', "Arn" :: ArnType' }) -> FederatedUser
```

Constructs FederatedUser's fields from required parameters

#### `GetCallerIdentityRequest`

``` purescript
newtype GetCallerIdentityRequest
  = GetCallerIdentityRequest NoArguments
```

##### Instances
``` purescript
Newtype GetCallerIdentityRequest _
Generic GetCallerIdentityRequest _
Show GetCallerIdentityRequest
Decode GetCallerIdentityRequest
Encode GetCallerIdentityRequest
```

#### `GetCallerIdentityResponse`

``` purescript
newtype GetCallerIdentityResponse
  = GetCallerIdentityResponse { "UserId" :: NullOrUndefined (UserIdType'), "Account" :: NullOrUndefined (AccountType'), "Arn" :: NullOrUndefined (ArnType') }
```

<p>Contains the response to a successful <a>GetCallerIdentity</a> request, including information about the entity making the request.</p>

##### Instances
``` purescript
Newtype GetCallerIdentityResponse _
Generic GetCallerIdentityResponse _
Show GetCallerIdentityResponse
Decode GetCallerIdentityResponse
Encode GetCallerIdentityResponse
```

#### `newGetCallerIdentityResponse`

``` purescript
newGetCallerIdentityResponse :: GetCallerIdentityResponse
```

Constructs GetCallerIdentityResponse from required parameters

#### `newGetCallerIdentityResponse'`

``` purescript
newGetCallerIdentityResponse' :: ({ "UserId" :: NullOrUndefined (UserIdType'), "Account" :: NullOrUndefined (AccountType'), "Arn" :: NullOrUndefined (ArnType') } -> { "UserId" :: NullOrUndefined (UserIdType'), "Account" :: NullOrUndefined (AccountType'), "Arn" :: NullOrUndefined (ArnType') }) -> GetCallerIdentityResponse
```

Constructs GetCallerIdentityResponse's fields from required parameters

#### `GetFederationTokenRequest`

``` purescript
newtype GetFederationTokenRequest
  = GetFederationTokenRequest { "Name" :: UserNameType', "Policy" :: NullOrUndefined (SessionPolicyDocumentType'), "DurationSeconds" :: NullOrUndefined (DurationSecondsType') }
```

##### Instances
``` purescript
Newtype GetFederationTokenRequest _
Generic GetFederationTokenRequest _
Show GetFederationTokenRequest
Decode GetFederationTokenRequest
Encode GetFederationTokenRequest
```

#### `newGetFederationTokenRequest`

``` purescript
newGetFederationTokenRequest :: UserNameType' -> GetFederationTokenRequest
```

Constructs GetFederationTokenRequest from required parameters

#### `newGetFederationTokenRequest'`

``` purescript
newGetFederationTokenRequest' :: UserNameType' -> ({ "Name" :: UserNameType', "Policy" :: NullOrUndefined (SessionPolicyDocumentType'), "DurationSeconds" :: NullOrUndefined (DurationSecondsType') } -> { "Name" :: UserNameType', "Policy" :: NullOrUndefined (SessionPolicyDocumentType'), "DurationSeconds" :: NullOrUndefined (DurationSecondsType') }) -> GetFederationTokenRequest
```

Constructs GetFederationTokenRequest's fields from required parameters

#### `GetFederationTokenResponse`

``` purescript
newtype GetFederationTokenResponse
  = GetFederationTokenResponse { "Credentials" :: NullOrUndefined (Credentials), "FederatedUser" :: NullOrUndefined (FederatedUser), "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') }
```

<p>Contains the response to a successful <a>GetFederationToken</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>

##### Instances
``` purescript
Newtype GetFederationTokenResponse _
Generic GetFederationTokenResponse _
Show GetFederationTokenResponse
Decode GetFederationTokenResponse
Encode GetFederationTokenResponse
```

#### `newGetFederationTokenResponse`

``` purescript
newGetFederationTokenResponse :: GetFederationTokenResponse
```

Constructs GetFederationTokenResponse from required parameters

#### `newGetFederationTokenResponse'`

``` purescript
newGetFederationTokenResponse' :: ({ "Credentials" :: NullOrUndefined (Credentials), "FederatedUser" :: NullOrUndefined (FederatedUser), "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') } -> { "Credentials" :: NullOrUndefined (Credentials), "FederatedUser" :: NullOrUndefined (FederatedUser), "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') }) -> GetFederationTokenResponse
```

Constructs GetFederationTokenResponse's fields from required parameters

#### `GetSessionTokenRequest`

``` purescript
newtype GetSessionTokenRequest
  = GetSessionTokenRequest { "DurationSeconds" :: NullOrUndefined (DurationSecondsType'), "SerialNumber" :: NullOrUndefined (SerialNumberType'), "TokenCode" :: NullOrUndefined (TokenCodeType') }
```

##### Instances
``` purescript
Newtype GetSessionTokenRequest _
Generic GetSessionTokenRequest _
Show GetSessionTokenRequest
Decode GetSessionTokenRequest
Encode GetSessionTokenRequest
```

#### `newGetSessionTokenRequest`

``` purescript
newGetSessionTokenRequest :: GetSessionTokenRequest
```

Constructs GetSessionTokenRequest from required parameters

#### `newGetSessionTokenRequest'`

``` purescript
newGetSessionTokenRequest' :: ({ "DurationSeconds" :: NullOrUndefined (DurationSecondsType'), "SerialNumber" :: NullOrUndefined (SerialNumberType'), "TokenCode" :: NullOrUndefined (TokenCodeType') } -> { "DurationSeconds" :: NullOrUndefined (DurationSecondsType'), "SerialNumber" :: NullOrUndefined (SerialNumberType'), "TokenCode" :: NullOrUndefined (TokenCodeType') }) -> GetSessionTokenRequest
```

Constructs GetSessionTokenRequest's fields from required parameters

#### `GetSessionTokenResponse`

``` purescript
newtype GetSessionTokenResponse
  = GetSessionTokenResponse { "Credentials" :: NullOrUndefined (Credentials) }
```

<p>Contains the response to a successful <a>GetSessionToken</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>

##### Instances
``` purescript
Newtype GetSessionTokenResponse _
Generic GetSessionTokenResponse _
Show GetSessionTokenResponse
Decode GetSessionTokenResponse
Encode GetSessionTokenResponse
```

#### `newGetSessionTokenResponse`

``` purescript
newGetSessionTokenResponse :: GetSessionTokenResponse
```

Constructs GetSessionTokenResponse from required parameters

#### `newGetSessionTokenResponse'`

``` purescript
newGetSessionTokenResponse' :: ({ "Credentials" :: NullOrUndefined (Credentials) } -> { "Credentials" :: NullOrUndefined (Credentials) }) -> GetSessionTokenResponse
```

Constructs GetSessionTokenResponse's fields from required parameters

#### `IDPCommunicationErrorException`

``` purescript
newtype IDPCommunicationErrorException
  = IDPCommunicationErrorException { message :: NullOrUndefined (IdpCommunicationErrorMessage') }
```

<p>The request could not be fulfilled because the non-AWS identity provider (IDP) that was asked to verify the incoming identity token could not be reached. This is often a transient error caused by network conditions. Retry the request a limited number of times so that you don't exceed the request rate. If the error persists, the non-AWS identity provider might be down or not responding.</p>

##### Instances
``` purescript
Newtype IDPCommunicationErrorException _
Generic IDPCommunicationErrorException _
Show IDPCommunicationErrorException
Decode IDPCommunicationErrorException
Encode IDPCommunicationErrorException
```

#### `newIDPCommunicationErrorException`

``` purescript
newIDPCommunicationErrorException :: IDPCommunicationErrorException
```

Constructs IDPCommunicationErrorException from required parameters

#### `newIDPCommunicationErrorException'`

``` purescript
newIDPCommunicationErrorException' :: ({ message :: NullOrUndefined (IdpCommunicationErrorMessage') } -> { message :: NullOrUndefined (IdpCommunicationErrorMessage') }) -> IDPCommunicationErrorException
```

Constructs IDPCommunicationErrorException's fields from required parameters

#### `IDPRejectedClaimException`

``` purescript
newtype IDPRejectedClaimException
  = IDPRejectedClaimException { message :: NullOrUndefined (IdpRejectedClaimMessage') }
```

<p>The identity provider (IdP) reported that authentication failed. This might be because the claim is invalid.</p> <p>If this error is returned for the <code>AssumeRoleWithWebIdentity</code> operation, it can also mean that the claim has expired or has been explicitly revoked. </p>

##### Instances
``` purescript
Newtype IDPRejectedClaimException _
Generic IDPRejectedClaimException _
Show IDPRejectedClaimException
Decode IDPRejectedClaimException
Encode IDPRejectedClaimException
```

#### `newIDPRejectedClaimException`

``` purescript
newIDPRejectedClaimException :: IDPRejectedClaimException
```

Constructs IDPRejectedClaimException from required parameters

#### `newIDPRejectedClaimException'`

``` purescript
newIDPRejectedClaimException' :: ({ message :: NullOrUndefined (IdpRejectedClaimMessage') } -> { message :: NullOrUndefined (IdpRejectedClaimMessage') }) -> IDPRejectedClaimException
```

Constructs IDPRejectedClaimException's fields from required parameters

#### `InvalidAuthorizationMessageException`

``` purescript
newtype InvalidAuthorizationMessageException
  = InvalidAuthorizationMessageException { message :: NullOrUndefined (InvalidAuthorizationMessage') }
```

<p>The error returned if the message passed to <code>DecodeAuthorizationMessage</code> was invalid. This can happen if the token contains invalid characters, such as linebreaks. </p>

##### Instances
``` purescript
Newtype InvalidAuthorizationMessageException _
Generic InvalidAuthorizationMessageException _
Show InvalidAuthorizationMessageException
Decode InvalidAuthorizationMessageException
Encode InvalidAuthorizationMessageException
```

#### `newInvalidAuthorizationMessageException`

``` purescript
newInvalidAuthorizationMessageException :: InvalidAuthorizationMessageException
```

Constructs InvalidAuthorizationMessageException from required parameters

#### `newInvalidAuthorizationMessageException'`

``` purescript
newInvalidAuthorizationMessageException' :: ({ message :: NullOrUndefined (InvalidAuthorizationMessage') } -> { message :: NullOrUndefined (InvalidAuthorizationMessage') }) -> InvalidAuthorizationMessageException
```

Constructs InvalidAuthorizationMessageException's fields from required parameters

#### `InvalidIdentityTokenException`

``` purescript
newtype InvalidIdentityTokenException
  = InvalidIdentityTokenException { message :: NullOrUndefined (InvalidIdentityTokenMessage') }
```

<p>The web identity token that was passed could not be validated by AWS. Get a new identity token from the identity provider and then retry the request.</p>

##### Instances
``` purescript
Newtype InvalidIdentityTokenException _
Generic InvalidIdentityTokenException _
Show InvalidIdentityTokenException
Decode InvalidIdentityTokenException
Encode InvalidIdentityTokenException
```

#### `newInvalidIdentityTokenException`

``` purescript
newInvalidIdentityTokenException :: InvalidIdentityTokenException
```

Constructs InvalidIdentityTokenException from required parameters

#### `newInvalidIdentityTokenException'`

``` purescript
newInvalidIdentityTokenException' :: ({ message :: NullOrUndefined (InvalidIdentityTokenMessage') } -> { message :: NullOrUndefined (InvalidIdentityTokenMessage') }) -> InvalidIdentityTokenException
```

Constructs InvalidIdentityTokenException's fields from required parameters

#### `Issuer`

``` purescript
newtype Issuer
  = Issuer String
```

##### Instances
``` purescript
Newtype Issuer _
Generic Issuer _
Show Issuer
Decode Issuer
Encode Issuer
```

#### `MalformedPolicyDocumentException`

``` purescript
newtype MalformedPolicyDocumentException
  = MalformedPolicyDocumentException { message :: NullOrUndefined (MalformedPolicyDocumentMessage') }
```

<p>The request was rejected because the policy document was malformed. The error message describes the specific error.</p>

##### Instances
``` purescript
Newtype MalformedPolicyDocumentException _
Generic MalformedPolicyDocumentException _
Show MalformedPolicyDocumentException
Decode MalformedPolicyDocumentException
Encode MalformedPolicyDocumentException
```

#### `newMalformedPolicyDocumentException`

``` purescript
newMalformedPolicyDocumentException :: MalformedPolicyDocumentException
```

Constructs MalformedPolicyDocumentException from required parameters

#### `newMalformedPolicyDocumentException'`

``` purescript
newMalformedPolicyDocumentException' :: ({ message :: NullOrUndefined (MalformedPolicyDocumentMessage') } -> { message :: NullOrUndefined (MalformedPolicyDocumentMessage') }) -> MalformedPolicyDocumentException
```

Constructs MalformedPolicyDocumentException's fields from required parameters

#### `NameQualifier`

``` purescript
newtype NameQualifier
  = NameQualifier String
```

##### Instances
``` purescript
Newtype NameQualifier _
Generic NameQualifier _
Show NameQualifier
Decode NameQualifier
Encode NameQualifier
```

#### `PackedPolicyTooLargeException`

``` purescript
newtype PackedPolicyTooLargeException
  = PackedPolicyTooLargeException { message :: NullOrUndefined (PackedPolicyTooLargeMessage') }
```

<p>The request was rejected because the policy document was too large. The error message describes how big the policy document is, in packed form, as a percentage of what the API allows.</p>

##### Instances
``` purescript
Newtype PackedPolicyTooLargeException _
Generic PackedPolicyTooLargeException _
Show PackedPolicyTooLargeException
Decode PackedPolicyTooLargeException
Encode PackedPolicyTooLargeException
```

#### `newPackedPolicyTooLargeException`

``` purescript
newPackedPolicyTooLargeException :: PackedPolicyTooLargeException
```

Constructs PackedPolicyTooLargeException from required parameters

#### `newPackedPolicyTooLargeException'`

``` purescript
newPackedPolicyTooLargeException' :: ({ message :: NullOrUndefined (PackedPolicyTooLargeMessage') } -> { message :: NullOrUndefined (PackedPolicyTooLargeMessage') }) -> PackedPolicyTooLargeException
```

Constructs PackedPolicyTooLargeException's fields from required parameters

#### `RegionDisabledException`

``` purescript
newtype RegionDisabledException
  = RegionDisabledException { message :: NullOrUndefined (RegionDisabledMessage') }
```

<p>STS is not activated in the requested region for the account that is being asked to generate credentials. The account administrator must use the IAM console to activate STS in that region. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and Deactivating AWS STS in an AWS Region</a> in the <i>IAM User Guide</i>.</p>

##### Instances
``` purescript
Newtype RegionDisabledException _
Generic RegionDisabledException _
Show RegionDisabledException
Decode RegionDisabledException
Encode RegionDisabledException
```

#### `newRegionDisabledException`

``` purescript
newRegionDisabledException :: RegionDisabledException
```

Constructs RegionDisabledException from required parameters

#### `newRegionDisabledException'`

``` purescript
newRegionDisabledException' :: ({ message :: NullOrUndefined (RegionDisabledMessage') } -> { message :: NullOrUndefined (RegionDisabledMessage') }) -> RegionDisabledException
```

Constructs RegionDisabledException's fields from required parameters

#### `SAMLAssertionType`

``` purescript
newtype SAMLAssertionType
  = SAMLAssertionType String
```

##### Instances
``` purescript
Newtype SAMLAssertionType _
Generic SAMLAssertionType _
Show SAMLAssertionType
Decode SAMLAssertionType
Encode SAMLAssertionType
```

#### `Subject`

``` purescript
newtype Subject
  = Subject String
```

##### Instances
``` purescript
Newtype Subject _
Generic Subject _
Show Subject
Decode Subject
Encode Subject
```

#### `SubjectType`

``` purescript
newtype SubjectType
  = SubjectType String
```

##### Instances
``` purescript
Newtype SubjectType _
Generic SubjectType _
Show SubjectType
Decode SubjectType
Encode SubjectType
```

#### `AccessKeyIdType'`

``` purescript
newtype AccessKeyIdType'
  = AccessKeyIdType' String
```

##### Instances
``` purescript
Newtype AccessKeyIdType' _
Generic AccessKeyIdType' _
Show AccessKeyIdType'
Decode AccessKeyIdType'
Encode AccessKeyIdType'
```

#### `AccessKeySecretType'`

``` purescript
newtype AccessKeySecretType'
  = AccessKeySecretType' String
```

##### Instances
``` purescript
Newtype AccessKeySecretType' _
Generic AccessKeySecretType' _
Show AccessKeySecretType'
Decode AccessKeySecretType'
Encode AccessKeySecretType'
```

#### `AccountType'`

``` purescript
newtype AccountType'
  = AccountType' String
```

##### Instances
``` purescript
Newtype AccountType' _
Generic AccountType' _
Show AccountType'
Decode AccountType'
Encode AccountType'
```

#### `ArnType'`

``` purescript
newtype ArnType'
  = ArnType' String
```

##### Instances
``` purescript
Newtype ArnType' _
Generic ArnType' _
Show ArnType'
Decode ArnType'
Encode ArnType'
```

#### `AssumedRoleIdType'`

``` purescript
newtype AssumedRoleIdType'
  = AssumedRoleIdType' String
```

##### Instances
``` purescript
Newtype AssumedRoleIdType' _
Generic AssumedRoleIdType' _
Show AssumedRoleIdType'
Decode AssumedRoleIdType'
Encode AssumedRoleIdType'
```

#### `ClientTokenType'`

``` purescript
newtype ClientTokenType'
  = ClientTokenType' String
```

##### Instances
``` purescript
Newtype ClientTokenType' _
Generic ClientTokenType' _
Show ClientTokenType'
Decode ClientTokenType'
Encode ClientTokenType'
```

#### `DateType'`

``` purescript
newtype DateType'
  = DateType' Timestamp
```

##### Instances
``` purescript
Newtype DateType' _
Generic DateType' _
Show DateType'
Decode DateType'
Encode DateType'
```

#### `DecodedMessageType'`

``` purescript
newtype DecodedMessageType'
  = DecodedMessageType' String
```

##### Instances
``` purescript
Newtype DecodedMessageType' _
Generic DecodedMessageType' _
Show DecodedMessageType'
Decode DecodedMessageType'
Encode DecodedMessageType'
```

#### `DurationSecondsType'`

``` purescript
newtype DurationSecondsType'
  = DurationSecondsType' Int
```

##### Instances
``` purescript
Newtype DurationSecondsType' _
Generic DurationSecondsType' _
Show DurationSecondsType'
Decode DurationSecondsType'
Encode DurationSecondsType'
```

#### `EncodedMessageType'`

``` purescript
newtype EncodedMessageType'
  = EncodedMessageType' String
```

##### Instances
``` purescript
Newtype EncodedMessageType' _
Generic EncodedMessageType' _
Show EncodedMessageType'
Decode EncodedMessageType'
Encode EncodedMessageType'
```

#### `ExpiredIdentityTokenMessage'`

``` purescript
newtype ExpiredIdentityTokenMessage'
  = ExpiredIdentityTokenMessage' String
```

##### Instances
``` purescript
Newtype ExpiredIdentityTokenMessage' _
Generic ExpiredIdentityTokenMessage' _
Show ExpiredIdentityTokenMessage'
Decode ExpiredIdentityTokenMessage'
Encode ExpiredIdentityTokenMessage'
```

#### `ExternalIdType'`

``` purescript
newtype ExternalIdType'
  = ExternalIdType' String
```

##### Instances
``` purescript
Newtype ExternalIdType' _
Generic ExternalIdType' _
Show ExternalIdType'
Decode ExternalIdType'
Encode ExternalIdType'
```

#### `FederatedIdType'`

``` purescript
newtype FederatedIdType'
  = FederatedIdType' String
```

##### Instances
``` purescript
Newtype FederatedIdType' _
Generic FederatedIdType' _
Show FederatedIdType'
Decode FederatedIdType'
Encode FederatedIdType'
```

#### `IdpCommunicationErrorMessage'`

``` purescript
newtype IdpCommunicationErrorMessage'
  = IdpCommunicationErrorMessage' String
```

##### Instances
``` purescript
Newtype IdpCommunicationErrorMessage' _
Generic IdpCommunicationErrorMessage' _
Show IdpCommunicationErrorMessage'
Decode IdpCommunicationErrorMessage'
Encode IdpCommunicationErrorMessage'
```

#### `IdpRejectedClaimMessage'`

``` purescript
newtype IdpRejectedClaimMessage'
  = IdpRejectedClaimMessage' String
```

##### Instances
``` purescript
Newtype IdpRejectedClaimMessage' _
Generic IdpRejectedClaimMessage' _
Show IdpRejectedClaimMessage'
Decode IdpRejectedClaimMessage'
Encode IdpRejectedClaimMessage'
```

#### `InvalidAuthorizationMessage'`

``` purescript
newtype InvalidAuthorizationMessage'
  = InvalidAuthorizationMessage' String
```

##### Instances
``` purescript
Newtype InvalidAuthorizationMessage' _
Generic InvalidAuthorizationMessage' _
Show InvalidAuthorizationMessage'
Decode InvalidAuthorizationMessage'
Encode InvalidAuthorizationMessage'
```

#### `InvalidIdentityTokenMessage'`

``` purescript
newtype InvalidIdentityTokenMessage'
  = InvalidIdentityTokenMessage' String
```

##### Instances
``` purescript
Newtype InvalidIdentityTokenMessage' _
Generic InvalidIdentityTokenMessage' _
Show InvalidIdentityTokenMessage'
Decode InvalidIdentityTokenMessage'
Encode InvalidIdentityTokenMessage'
```

#### `MalformedPolicyDocumentMessage'`

``` purescript
newtype MalformedPolicyDocumentMessage'
  = MalformedPolicyDocumentMessage' String
```

##### Instances
``` purescript
Newtype MalformedPolicyDocumentMessage' _
Generic MalformedPolicyDocumentMessage' _
Show MalformedPolicyDocumentMessage'
Decode MalformedPolicyDocumentMessage'
Encode MalformedPolicyDocumentMessage'
```

#### `NonNegativeIntegerType'`

``` purescript
newtype NonNegativeIntegerType'
  = NonNegativeIntegerType' Int
```

##### Instances
``` purescript
Newtype NonNegativeIntegerType' _
Generic NonNegativeIntegerType' _
Show NonNegativeIntegerType'
Decode NonNegativeIntegerType'
Encode NonNegativeIntegerType'
```

#### `PackedPolicyTooLargeMessage'`

``` purescript
newtype PackedPolicyTooLargeMessage'
  = PackedPolicyTooLargeMessage' String
```

##### Instances
``` purescript
Newtype PackedPolicyTooLargeMessage' _
Generic PackedPolicyTooLargeMessage' _
Show PackedPolicyTooLargeMessage'
Decode PackedPolicyTooLargeMessage'
Encode PackedPolicyTooLargeMessage'
```

#### `RegionDisabledMessage'`

``` purescript
newtype RegionDisabledMessage'
  = RegionDisabledMessage' String
```

##### Instances
``` purescript
Newtype RegionDisabledMessage' _
Generic RegionDisabledMessage' _
Show RegionDisabledMessage'
Decode RegionDisabledMessage'
Encode RegionDisabledMessage'
```

#### `RoleDurationSecondsType'`

``` purescript
newtype RoleDurationSecondsType'
  = RoleDurationSecondsType' Int
```

##### Instances
``` purescript
Newtype RoleDurationSecondsType' _
Generic RoleDurationSecondsType' _
Show RoleDurationSecondsType'
Decode RoleDurationSecondsType'
Encode RoleDurationSecondsType'
```

#### `RoleSessionNameType'`

``` purescript
newtype RoleSessionNameType'
  = RoleSessionNameType' String
```

##### Instances
``` purescript
Newtype RoleSessionNameType' _
Generic RoleSessionNameType' _
Show RoleSessionNameType'
Decode RoleSessionNameType'
Encode RoleSessionNameType'
```

#### `SerialNumberType'`

``` purescript
newtype SerialNumberType'
  = SerialNumberType' String
```

##### Instances
``` purescript
Newtype SerialNumberType' _
Generic SerialNumberType' _
Show SerialNumberType'
Decode SerialNumberType'
Encode SerialNumberType'
```

#### `SessionPolicyDocumentType'`

``` purescript
newtype SessionPolicyDocumentType'
  = SessionPolicyDocumentType' String
```

##### Instances
``` purescript
Newtype SessionPolicyDocumentType' _
Generic SessionPolicyDocumentType' _
Show SessionPolicyDocumentType'
Decode SessionPolicyDocumentType'
Encode SessionPolicyDocumentType'
```

#### `TokenCodeType'`

``` purescript
newtype TokenCodeType'
  = TokenCodeType' String
```

##### Instances
``` purescript
Newtype TokenCodeType' _
Generic TokenCodeType' _
Show TokenCodeType'
Decode TokenCodeType'
Encode TokenCodeType'
```

#### `TokenType'`

``` purescript
newtype TokenType'
  = TokenType' String
```

##### Instances
``` purescript
Newtype TokenType' _
Generic TokenType' _
Show TokenType'
Decode TokenType'
Encode TokenType'
```

#### `UrlType'`

``` purescript
newtype UrlType'
  = UrlType' String
```

##### Instances
``` purescript
Newtype UrlType' _
Generic UrlType' _
Show UrlType'
Decode UrlType'
Encode UrlType'
```

#### `UserIdType'`

``` purescript
newtype UserIdType'
  = UserIdType' String
```

##### Instances
``` purescript
Newtype UserIdType' _
Generic UserIdType' _
Show UserIdType'
Decode UserIdType'
Encode UserIdType'
```

#### `UserNameType'`

``` purescript
newtype UserNameType'
  = UserNameType' String
```

##### Instances
``` purescript
Newtype UserNameType' _
Generic UserNameType' _
Show UserNameType'
Decode UserNameType'
Encode UserNameType'
```

#### `WebIdentitySubjectType'`

``` purescript
newtype WebIdentitySubjectType'
  = WebIdentitySubjectType' String
```

##### Instances
``` purescript
Newtype WebIdentitySubjectType' _
Generic WebIdentitySubjectType' _
Show WebIdentitySubjectType'
Decode WebIdentitySubjectType'
Encode WebIdentitySubjectType'
```


