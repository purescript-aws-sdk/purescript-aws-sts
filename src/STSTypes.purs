
module AWS.STS.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AssumeRoleRequest = AssumeRoleRequest 
  { "RoleArn" :: (ArnType')
  , "RoleSessionName" :: (RoleSessionNameType')
  , "Policy" :: NullOrUndefined (SessionPolicyDocumentType')
  , "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType')
  , "ExternalId" :: NullOrUndefined (ExternalIdType')
  , "SerialNumber" :: NullOrUndefined (SerialNumberType')
  , "TokenCode" :: NullOrUndefined (TokenCodeType')
  }
derive instance newtypeAssumeRoleRequest :: Newtype AssumeRoleRequest _
derive instance repGenericAssumeRoleRequest :: Generic AssumeRoleRequest _
instance showAssumeRoleRequest :: Show AssumeRoleRequest where show = genericShow
instance decodeAssumeRoleRequest :: Decode AssumeRoleRequest where decode = genericDecode options
instance encodeAssumeRoleRequest :: Encode AssumeRoleRequest where encode = genericEncode options

-- | Constructs AssumeRoleRequest from required parameters
newAssumeRoleRequest :: ArnType' -> RoleSessionNameType' -> AssumeRoleRequest
newAssumeRoleRequest _RoleArn _RoleSessionName = AssumeRoleRequest { "RoleArn": _RoleArn, "RoleSessionName": _RoleSessionName, "DurationSeconds": (NullOrUndefined Nothing), "ExternalId": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing), "SerialNumber": (NullOrUndefined Nothing), "TokenCode": (NullOrUndefined Nothing) }

-- | Constructs AssumeRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssumeRoleRequest' :: ArnType' -> RoleSessionNameType' -> ( { "RoleArn" :: (ArnType') , "RoleSessionName" :: (RoleSessionNameType') , "Policy" :: NullOrUndefined (SessionPolicyDocumentType') , "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType') , "ExternalId" :: NullOrUndefined (ExternalIdType') , "SerialNumber" :: NullOrUndefined (SerialNumberType') , "TokenCode" :: NullOrUndefined (TokenCodeType') } -> {"RoleArn" :: (ArnType') , "RoleSessionName" :: (RoleSessionNameType') , "Policy" :: NullOrUndefined (SessionPolicyDocumentType') , "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType') , "ExternalId" :: NullOrUndefined (ExternalIdType') , "SerialNumber" :: NullOrUndefined (SerialNumberType') , "TokenCode" :: NullOrUndefined (TokenCodeType') } ) -> AssumeRoleRequest
newAssumeRoleRequest' _RoleArn _RoleSessionName customize = (AssumeRoleRequest <<< customize) { "RoleArn": _RoleArn, "RoleSessionName": _RoleSessionName, "DurationSeconds": (NullOrUndefined Nothing), "ExternalId": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing), "SerialNumber": (NullOrUndefined Nothing), "TokenCode": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>AssumeRole</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>
newtype AssumeRoleResponse = AssumeRoleResponse 
  { "Credentials" :: NullOrUndefined (Credentials)
  , "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser)
  , "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType')
  }
derive instance newtypeAssumeRoleResponse :: Newtype AssumeRoleResponse _
derive instance repGenericAssumeRoleResponse :: Generic AssumeRoleResponse _
instance showAssumeRoleResponse :: Show AssumeRoleResponse where show = genericShow
instance decodeAssumeRoleResponse :: Decode AssumeRoleResponse where decode = genericDecode options
instance encodeAssumeRoleResponse :: Encode AssumeRoleResponse where encode = genericEncode options

-- | Constructs AssumeRoleResponse from required parameters
newAssumeRoleResponse :: AssumeRoleResponse
newAssumeRoleResponse  = AssumeRoleResponse { "AssumedRoleUser": (NullOrUndefined Nothing), "Credentials": (NullOrUndefined Nothing), "PackedPolicySize": (NullOrUndefined Nothing) }

-- | Constructs AssumeRoleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssumeRoleResponse' :: ( { "Credentials" :: NullOrUndefined (Credentials) , "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser) , "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') } -> {"Credentials" :: NullOrUndefined (Credentials) , "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser) , "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') } ) -> AssumeRoleResponse
newAssumeRoleResponse'  customize = (AssumeRoleResponse <<< customize) { "AssumedRoleUser": (NullOrUndefined Nothing), "Credentials": (NullOrUndefined Nothing), "PackedPolicySize": (NullOrUndefined Nothing) }



newtype AssumeRoleWithSAMLRequest = AssumeRoleWithSAMLRequest 
  { "RoleArn" :: (ArnType')
  , "PrincipalArn" :: (ArnType')
  , "SAMLAssertion" :: (SAMLAssertionType)
  , "Policy" :: NullOrUndefined (SessionPolicyDocumentType')
  , "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType')
  }
derive instance newtypeAssumeRoleWithSAMLRequest :: Newtype AssumeRoleWithSAMLRequest _
derive instance repGenericAssumeRoleWithSAMLRequest :: Generic AssumeRoleWithSAMLRequest _
instance showAssumeRoleWithSAMLRequest :: Show AssumeRoleWithSAMLRequest where show = genericShow
instance decodeAssumeRoleWithSAMLRequest :: Decode AssumeRoleWithSAMLRequest where decode = genericDecode options
instance encodeAssumeRoleWithSAMLRequest :: Encode AssumeRoleWithSAMLRequest where encode = genericEncode options

-- | Constructs AssumeRoleWithSAMLRequest from required parameters
newAssumeRoleWithSAMLRequest :: ArnType' -> ArnType' -> SAMLAssertionType -> AssumeRoleWithSAMLRequest
newAssumeRoleWithSAMLRequest _PrincipalArn _RoleArn _SAMLAssertion = AssumeRoleWithSAMLRequest { "PrincipalArn": _PrincipalArn, "RoleArn": _RoleArn, "SAMLAssertion": _SAMLAssertion, "DurationSeconds": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing) }

-- | Constructs AssumeRoleWithSAMLRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssumeRoleWithSAMLRequest' :: ArnType' -> ArnType' -> SAMLAssertionType -> ( { "RoleArn" :: (ArnType') , "PrincipalArn" :: (ArnType') , "SAMLAssertion" :: (SAMLAssertionType) , "Policy" :: NullOrUndefined (SessionPolicyDocumentType') , "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType') } -> {"RoleArn" :: (ArnType') , "PrincipalArn" :: (ArnType') , "SAMLAssertion" :: (SAMLAssertionType) , "Policy" :: NullOrUndefined (SessionPolicyDocumentType') , "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType') } ) -> AssumeRoleWithSAMLRequest
newAssumeRoleWithSAMLRequest' _PrincipalArn _RoleArn _SAMLAssertion customize = (AssumeRoleWithSAMLRequest <<< customize) { "PrincipalArn": _PrincipalArn, "RoleArn": _RoleArn, "SAMLAssertion": _SAMLAssertion, "DurationSeconds": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>AssumeRoleWithSAML</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>
newtype AssumeRoleWithSAMLResponse = AssumeRoleWithSAMLResponse 
  { "Credentials" :: NullOrUndefined (Credentials)
  , "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser)
  , "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType')
  , "Subject" :: NullOrUndefined (Subject)
  , "SubjectType" :: NullOrUndefined (SubjectType)
  , "Issuer" :: NullOrUndefined (Issuer)
  , "Audience" :: NullOrUndefined (Audience)
  , "NameQualifier" :: NullOrUndefined (NameQualifier)
  }
derive instance newtypeAssumeRoleWithSAMLResponse :: Newtype AssumeRoleWithSAMLResponse _
derive instance repGenericAssumeRoleWithSAMLResponse :: Generic AssumeRoleWithSAMLResponse _
instance showAssumeRoleWithSAMLResponse :: Show AssumeRoleWithSAMLResponse where show = genericShow
instance decodeAssumeRoleWithSAMLResponse :: Decode AssumeRoleWithSAMLResponse where decode = genericDecode options
instance encodeAssumeRoleWithSAMLResponse :: Encode AssumeRoleWithSAMLResponse where encode = genericEncode options

-- | Constructs AssumeRoleWithSAMLResponse from required parameters
newAssumeRoleWithSAMLResponse :: AssumeRoleWithSAMLResponse
newAssumeRoleWithSAMLResponse  = AssumeRoleWithSAMLResponse { "AssumedRoleUser": (NullOrUndefined Nothing), "Audience": (NullOrUndefined Nothing), "Credentials": (NullOrUndefined Nothing), "Issuer": (NullOrUndefined Nothing), "NameQualifier": (NullOrUndefined Nothing), "PackedPolicySize": (NullOrUndefined Nothing), "Subject": (NullOrUndefined Nothing), "SubjectType": (NullOrUndefined Nothing) }

-- | Constructs AssumeRoleWithSAMLResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssumeRoleWithSAMLResponse' :: ( { "Credentials" :: NullOrUndefined (Credentials) , "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser) , "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') , "Subject" :: NullOrUndefined (Subject) , "SubjectType" :: NullOrUndefined (SubjectType) , "Issuer" :: NullOrUndefined (Issuer) , "Audience" :: NullOrUndefined (Audience) , "NameQualifier" :: NullOrUndefined (NameQualifier) } -> {"Credentials" :: NullOrUndefined (Credentials) , "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser) , "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') , "Subject" :: NullOrUndefined (Subject) , "SubjectType" :: NullOrUndefined (SubjectType) , "Issuer" :: NullOrUndefined (Issuer) , "Audience" :: NullOrUndefined (Audience) , "NameQualifier" :: NullOrUndefined (NameQualifier) } ) -> AssumeRoleWithSAMLResponse
newAssumeRoleWithSAMLResponse'  customize = (AssumeRoleWithSAMLResponse <<< customize) { "AssumedRoleUser": (NullOrUndefined Nothing), "Audience": (NullOrUndefined Nothing), "Credentials": (NullOrUndefined Nothing), "Issuer": (NullOrUndefined Nothing), "NameQualifier": (NullOrUndefined Nothing), "PackedPolicySize": (NullOrUndefined Nothing), "Subject": (NullOrUndefined Nothing), "SubjectType": (NullOrUndefined Nothing) }



newtype AssumeRoleWithWebIdentityRequest = AssumeRoleWithWebIdentityRequest 
  { "RoleArn" :: (ArnType')
  , "RoleSessionName" :: (RoleSessionNameType')
  , "WebIdentityToken" :: (ClientTokenType')
  , "ProviderId" :: NullOrUndefined (UrlType')
  , "Policy" :: NullOrUndefined (SessionPolicyDocumentType')
  , "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType')
  }
derive instance newtypeAssumeRoleWithWebIdentityRequest :: Newtype AssumeRoleWithWebIdentityRequest _
derive instance repGenericAssumeRoleWithWebIdentityRequest :: Generic AssumeRoleWithWebIdentityRequest _
instance showAssumeRoleWithWebIdentityRequest :: Show AssumeRoleWithWebIdentityRequest where show = genericShow
instance decodeAssumeRoleWithWebIdentityRequest :: Decode AssumeRoleWithWebIdentityRequest where decode = genericDecode options
instance encodeAssumeRoleWithWebIdentityRequest :: Encode AssumeRoleWithWebIdentityRequest where encode = genericEncode options

-- | Constructs AssumeRoleWithWebIdentityRequest from required parameters
newAssumeRoleWithWebIdentityRequest :: ArnType' -> RoleSessionNameType' -> ClientTokenType' -> AssumeRoleWithWebIdentityRequest
newAssumeRoleWithWebIdentityRequest _RoleArn _RoleSessionName _WebIdentityToken = AssumeRoleWithWebIdentityRequest { "RoleArn": _RoleArn, "RoleSessionName": _RoleSessionName, "WebIdentityToken": _WebIdentityToken, "DurationSeconds": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing), "ProviderId": (NullOrUndefined Nothing) }

-- | Constructs AssumeRoleWithWebIdentityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssumeRoleWithWebIdentityRequest' :: ArnType' -> RoleSessionNameType' -> ClientTokenType' -> ( { "RoleArn" :: (ArnType') , "RoleSessionName" :: (RoleSessionNameType') , "WebIdentityToken" :: (ClientTokenType') , "ProviderId" :: NullOrUndefined (UrlType') , "Policy" :: NullOrUndefined (SessionPolicyDocumentType') , "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType') } -> {"RoleArn" :: (ArnType') , "RoleSessionName" :: (RoleSessionNameType') , "WebIdentityToken" :: (ClientTokenType') , "ProviderId" :: NullOrUndefined (UrlType') , "Policy" :: NullOrUndefined (SessionPolicyDocumentType') , "DurationSeconds" :: NullOrUndefined (RoleDurationSecondsType') } ) -> AssumeRoleWithWebIdentityRequest
newAssumeRoleWithWebIdentityRequest' _RoleArn _RoleSessionName _WebIdentityToken customize = (AssumeRoleWithWebIdentityRequest <<< customize) { "RoleArn": _RoleArn, "RoleSessionName": _RoleSessionName, "WebIdentityToken": _WebIdentityToken, "DurationSeconds": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing), "ProviderId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>AssumeRoleWithWebIdentity</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>
newtype AssumeRoleWithWebIdentityResponse = AssumeRoleWithWebIdentityResponse 
  { "Credentials" :: NullOrUndefined (Credentials)
  , "SubjectFromWebIdentityToken" :: NullOrUndefined (WebIdentitySubjectType')
  , "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser)
  , "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType')
  , "Provider" :: NullOrUndefined (Issuer)
  , "Audience" :: NullOrUndefined (Audience)
  }
derive instance newtypeAssumeRoleWithWebIdentityResponse :: Newtype AssumeRoleWithWebIdentityResponse _
derive instance repGenericAssumeRoleWithWebIdentityResponse :: Generic AssumeRoleWithWebIdentityResponse _
instance showAssumeRoleWithWebIdentityResponse :: Show AssumeRoleWithWebIdentityResponse where show = genericShow
instance decodeAssumeRoleWithWebIdentityResponse :: Decode AssumeRoleWithWebIdentityResponse where decode = genericDecode options
instance encodeAssumeRoleWithWebIdentityResponse :: Encode AssumeRoleWithWebIdentityResponse where encode = genericEncode options

-- | Constructs AssumeRoleWithWebIdentityResponse from required parameters
newAssumeRoleWithWebIdentityResponse :: AssumeRoleWithWebIdentityResponse
newAssumeRoleWithWebIdentityResponse  = AssumeRoleWithWebIdentityResponse { "AssumedRoleUser": (NullOrUndefined Nothing), "Audience": (NullOrUndefined Nothing), "Credentials": (NullOrUndefined Nothing), "PackedPolicySize": (NullOrUndefined Nothing), "Provider": (NullOrUndefined Nothing), "SubjectFromWebIdentityToken": (NullOrUndefined Nothing) }

-- | Constructs AssumeRoleWithWebIdentityResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssumeRoleWithWebIdentityResponse' :: ( { "Credentials" :: NullOrUndefined (Credentials) , "SubjectFromWebIdentityToken" :: NullOrUndefined (WebIdentitySubjectType') , "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser) , "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') , "Provider" :: NullOrUndefined (Issuer) , "Audience" :: NullOrUndefined (Audience) } -> {"Credentials" :: NullOrUndefined (Credentials) , "SubjectFromWebIdentityToken" :: NullOrUndefined (WebIdentitySubjectType') , "AssumedRoleUser" :: NullOrUndefined (AssumedRoleUser) , "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') , "Provider" :: NullOrUndefined (Issuer) , "Audience" :: NullOrUndefined (Audience) } ) -> AssumeRoleWithWebIdentityResponse
newAssumeRoleWithWebIdentityResponse'  customize = (AssumeRoleWithWebIdentityResponse <<< customize) { "AssumedRoleUser": (NullOrUndefined Nothing), "Audience": (NullOrUndefined Nothing), "Credentials": (NullOrUndefined Nothing), "PackedPolicySize": (NullOrUndefined Nothing), "Provider": (NullOrUndefined Nothing), "SubjectFromWebIdentityToken": (NullOrUndefined Nothing) }



-- | <p>The identifiers for the temporary security credentials that the operation returns.</p>
newtype AssumedRoleUser = AssumedRoleUser 
  { "AssumedRoleId" :: (AssumedRoleIdType')
  , "Arn" :: (ArnType')
  }
derive instance newtypeAssumedRoleUser :: Newtype AssumedRoleUser _
derive instance repGenericAssumedRoleUser :: Generic AssumedRoleUser _
instance showAssumedRoleUser :: Show AssumedRoleUser where show = genericShow
instance decodeAssumedRoleUser :: Decode AssumedRoleUser where decode = genericDecode options
instance encodeAssumedRoleUser :: Encode AssumedRoleUser where encode = genericEncode options

-- | Constructs AssumedRoleUser from required parameters
newAssumedRoleUser :: ArnType' -> AssumedRoleIdType' -> AssumedRoleUser
newAssumedRoleUser _Arn _AssumedRoleId = AssumedRoleUser { "Arn": _Arn, "AssumedRoleId": _AssumedRoleId }

-- | Constructs AssumedRoleUser's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssumedRoleUser' :: ArnType' -> AssumedRoleIdType' -> ( { "AssumedRoleId" :: (AssumedRoleIdType') , "Arn" :: (ArnType') } -> {"AssumedRoleId" :: (AssumedRoleIdType') , "Arn" :: (ArnType') } ) -> AssumedRoleUser
newAssumedRoleUser' _Arn _AssumedRoleId customize = (AssumedRoleUser <<< customize) { "Arn": _Arn, "AssumedRoleId": _AssumedRoleId }



newtype Audience = Audience String
derive instance newtypeAudience :: Newtype Audience _
derive instance repGenericAudience :: Generic Audience _
instance showAudience :: Show Audience where show = genericShow
instance decodeAudience :: Decode Audience where decode = genericDecode options
instance encodeAudience :: Encode Audience where encode = genericEncode options



-- | <p>AWS credentials for API authentication.</p>
newtype Credentials = Credentials 
  { "AccessKeyId" :: (AccessKeyIdType')
  , "SecretAccessKey" :: (AccessKeySecretType')
  , "SessionToken" :: (TokenType')
  , "Expiration" :: (DateType')
  }
derive instance newtypeCredentials :: Newtype Credentials _
derive instance repGenericCredentials :: Generic Credentials _
instance showCredentials :: Show Credentials where show = genericShow
instance decodeCredentials :: Decode Credentials where decode = genericDecode options
instance encodeCredentials :: Encode Credentials where encode = genericEncode options

-- | Constructs Credentials from required parameters
newCredentials :: AccessKeyIdType' -> DateType' -> AccessKeySecretType' -> TokenType' -> Credentials
newCredentials _AccessKeyId _Expiration _SecretAccessKey _SessionToken = Credentials { "AccessKeyId": _AccessKeyId, "Expiration": _Expiration, "SecretAccessKey": _SecretAccessKey, "SessionToken": _SessionToken }

-- | Constructs Credentials's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCredentials' :: AccessKeyIdType' -> DateType' -> AccessKeySecretType' -> TokenType' -> ( { "AccessKeyId" :: (AccessKeyIdType') , "SecretAccessKey" :: (AccessKeySecretType') , "SessionToken" :: (TokenType') , "Expiration" :: (DateType') } -> {"AccessKeyId" :: (AccessKeyIdType') , "SecretAccessKey" :: (AccessKeySecretType') , "SessionToken" :: (TokenType') , "Expiration" :: (DateType') } ) -> Credentials
newCredentials' _AccessKeyId _Expiration _SecretAccessKey _SessionToken customize = (Credentials <<< customize) { "AccessKeyId": _AccessKeyId, "Expiration": _Expiration, "SecretAccessKey": _SecretAccessKey, "SessionToken": _SessionToken }



newtype DecodeAuthorizationMessageRequest = DecodeAuthorizationMessageRequest 
  { "EncodedMessage" :: (EncodedMessageType')
  }
derive instance newtypeDecodeAuthorizationMessageRequest :: Newtype DecodeAuthorizationMessageRequest _
derive instance repGenericDecodeAuthorizationMessageRequest :: Generic DecodeAuthorizationMessageRequest _
instance showDecodeAuthorizationMessageRequest :: Show DecodeAuthorizationMessageRequest where show = genericShow
instance decodeDecodeAuthorizationMessageRequest :: Decode DecodeAuthorizationMessageRequest where decode = genericDecode options
instance encodeDecodeAuthorizationMessageRequest :: Encode DecodeAuthorizationMessageRequest where encode = genericEncode options

-- | Constructs DecodeAuthorizationMessageRequest from required parameters
newDecodeAuthorizationMessageRequest :: EncodedMessageType' -> DecodeAuthorizationMessageRequest
newDecodeAuthorizationMessageRequest _EncodedMessage = DecodeAuthorizationMessageRequest { "EncodedMessage": _EncodedMessage }

-- | Constructs DecodeAuthorizationMessageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecodeAuthorizationMessageRequest' :: EncodedMessageType' -> ( { "EncodedMessage" :: (EncodedMessageType') } -> {"EncodedMessage" :: (EncodedMessageType') } ) -> DecodeAuthorizationMessageRequest
newDecodeAuthorizationMessageRequest' _EncodedMessage customize = (DecodeAuthorizationMessageRequest <<< customize) { "EncodedMessage": _EncodedMessage }



-- | <p>A document that contains additional information about the authorization status of a request from an encoded message that is returned in response to an AWS request.</p>
newtype DecodeAuthorizationMessageResponse = DecodeAuthorizationMessageResponse 
  { "DecodedMessage" :: NullOrUndefined (DecodedMessageType')
  }
derive instance newtypeDecodeAuthorizationMessageResponse :: Newtype DecodeAuthorizationMessageResponse _
derive instance repGenericDecodeAuthorizationMessageResponse :: Generic DecodeAuthorizationMessageResponse _
instance showDecodeAuthorizationMessageResponse :: Show DecodeAuthorizationMessageResponse where show = genericShow
instance decodeDecodeAuthorizationMessageResponse :: Decode DecodeAuthorizationMessageResponse where decode = genericDecode options
instance encodeDecodeAuthorizationMessageResponse :: Encode DecodeAuthorizationMessageResponse where encode = genericEncode options

-- | Constructs DecodeAuthorizationMessageResponse from required parameters
newDecodeAuthorizationMessageResponse :: DecodeAuthorizationMessageResponse
newDecodeAuthorizationMessageResponse  = DecodeAuthorizationMessageResponse { "DecodedMessage": (NullOrUndefined Nothing) }

-- | Constructs DecodeAuthorizationMessageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecodeAuthorizationMessageResponse' :: ( { "DecodedMessage" :: NullOrUndefined (DecodedMessageType') } -> {"DecodedMessage" :: NullOrUndefined (DecodedMessageType') } ) -> DecodeAuthorizationMessageResponse
newDecodeAuthorizationMessageResponse'  customize = (DecodeAuthorizationMessageResponse <<< customize) { "DecodedMessage": (NullOrUndefined Nothing) }



-- | <p>The web identity token that was passed is expired or is not valid. Get a new identity token from the identity provider and then retry the request.</p>
newtype ExpiredTokenException = ExpiredTokenException 
  { "message" :: NullOrUndefined (ExpiredIdentityTokenMessage')
  }
derive instance newtypeExpiredTokenException :: Newtype ExpiredTokenException _
derive instance repGenericExpiredTokenException :: Generic ExpiredTokenException _
instance showExpiredTokenException :: Show ExpiredTokenException where show = genericShow
instance decodeExpiredTokenException :: Decode ExpiredTokenException where decode = genericDecode options
instance encodeExpiredTokenException :: Encode ExpiredTokenException where encode = genericEncode options

-- | Constructs ExpiredTokenException from required parameters
newExpiredTokenException :: ExpiredTokenException
newExpiredTokenException  = ExpiredTokenException { "message": (NullOrUndefined Nothing) }

-- | Constructs ExpiredTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExpiredTokenException' :: ( { "message" :: NullOrUndefined (ExpiredIdentityTokenMessage') } -> {"message" :: NullOrUndefined (ExpiredIdentityTokenMessage') } ) -> ExpiredTokenException
newExpiredTokenException'  customize = (ExpiredTokenException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Identifiers for the federated user that is associated with the credentials.</p>
newtype FederatedUser = FederatedUser 
  { "FederatedUserId" :: (FederatedIdType')
  , "Arn" :: (ArnType')
  }
derive instance newtypeFederatedUser :: Newtype FederatedUser _
derive instance repGenericFederatedUser :: Generic FederatedUser _
instance showFederatedUser :: Show FederatedUser where show = genericShow
instance decodeFederatedUser :: Decode FederatedUser where decode = genericDecode options
instance encodeFederatedUser :: Encode FederatedUser where encode = genericEncode options

-- | Constructs FederatedUser from required parameters
newFederatedUser :: ArnType' -> FederatedIdType' -> FederatedUser
newFederatedUser _Arn _FederatedUserId = FederatedUser { "Arn": _Arn, "FederatedUserId": _FederatedUserId }

-- | Constructs FederatedUser's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFederatedUser' :: ArnType' -> FederatedIdType' -> ( { "FederatedUserId" :: (FederatedIdType') , "Arn" :: (ArnType') } -> {"FederatedUserId" :: (FederatedIdType') , "Arn" :: (ArnType') } ) -> FederatedUser
newFederatedUser' _Arn _FederatedUserId customize = (FederatedUser <<< customize) { "Arn": _Arn, "FederatedUserId": _FederatedUserId }



newtype GetCallerIdentityRequest = GetCallerIdentityRequest Types.NoArguments
derive instance newtypeGetCallerIdentityRequest :: Newtype GetCallerIdentityRequest _
derive instance repGenericGetCallerIdentityRequest :: Generic GetCallerIdentityRequest _
instance showGetCallerIdentityRequest :: Show GetCallerIdentityRequest where show = genericShow
instance decodeGetCallerIdentityRequest :: Decode GetCallerIdentityRequest where decode = genericDecode options
instance encodeGetCallerIdentityRequest :: Encode GetCallerIdentityRequest where encode = genericEncode options



-- | <p>Contains the response to a successful <a>GetCallerIdentity</a> request, including information about the entity making the request.</p>
newtype GetCallerIdentityResponse = GetCallerIdentityResponse 
  { "UserId" :: NullOrUndefined (UserIdType')
  , "Account" :: NullOrUndefined (AccountType')
  , "Arn" :: NullOrUndefined (ArnType')
  }
derive instance newtypeGetCallerIdentityResponse :: Newtype GetCallerIdentityResponse _
derive instance repGenericGetCallerIdentityResponse :: Generic GetCallerIdentityResponse _
instance showGetCallerIdentityResponse :: Show GetCallerIdentityResponse where show = genericShow
instance decodeGetCallerIdentityResponse :: Decode GetCallerIdentityResponse where decode = genericDecode options
instance encodeGetCallerIdentityResponse :: Encode GetCallerIdentityResponse where encode = genericEncode options

-- | Constructs GetCallerIdentityResponse from required parameters
newGetCallerIdentityResponse :: GetCallerIdentityResponse
newGetCallerIdentityResponse  = GetCallerIdentityResponse { "Account": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "UserId": (NullOrUndefined Nothing) }

-- | Constructs GetCallerIdentityResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCallerIdentityResponse' :: ( { "UserId" :: NullOrUndefined (UserIdType') , "Account" :: NullOrUndefined (AccountType') , "Arn" :: NullOrUndefined (ArnType') } -> {"UserId" :: NullOrUndefined (UserIdType') , "Account" :: NullOrUndefined (AccountType') , "Arn" :: NullOrUndefined (ArnType') } ) -> GetCallerIdentityResponse
newGetCallerIdentityResponse'  customize = (GetCallerIdentityResponse <<< customize) { "Account": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "UserId": (NullOrUndefined Nothing) }



newtype GetFederationTokenRequest = GetFederationTokenRequest 
  { "Name" :: (UserNameType')
  , "Policy" :: NullOrUndefined (SessionPolicyDocumentType')
  , "DurationSeconds" :: NullOrUndefined (DurationSecondsType')
  }
derive instance newtypeGetFederationTokenRequest :: Newtype GetFederationTokenRequest _
derive instance repGenericGetFederationTokenRequest :: Generic GetFederationTokenRequest _
instance showGetFederationTokenRequest :: Show GetFederationTokenRequest where show = genericShow
instance decodeGetFederationTokenRequest :: Decode GetFederationTokenRequest where decode = genericDecode options
instance encodeGetFederationTokenRequest :: Encode GetFederationTokenRequest where encode = genericEncode options

-- | Constructs GetFederationTokenRequest from required parameters
newGetFederationTokenRequest :: UserNameType' -> GetFederationTokenRequest
newGetFederationTokenRequest _Name = GetFederationTokenRequest { "Name": _Name, "DurationSeconds": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing) }

-- | Constructs GetFederationTokenRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFederationTokenRequest' :: UserNameType' -> ( { "Name" :: (UserNameType') , "Policy" :: NullOrUndefined (SessionPolicyDocumentType') , "DurationSeconds" :: NullOrUndefined (DurationSecondsType') } -> {"Name" :: (UserNameType') , "Policy" :: NullOrUndefined (SessionPolicyDocumentType') , "DurationSeconds" :: NullOrUndefined (DurationSecondsType') } ) -> GetFederationTokenRequest
newGetFederationTokenRequest' _Name customize = (GetFederationTokenRequest <<< customize) { "Name": _Name, "DurationSeconds": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>GetFederationToken</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>
newtype GetFederationTokenResponse = GetFederationTokenResponse 
  { "Credentials" :: NullOrUndefined (Credentials)
  , "FederatedUser" :: NullOrUndefined (FederatedUser)
  , "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType')
  }
derive instance newtypeGetFederationTokenResponse :: Newtype GetFederationTokenResponse _
derive instance repGenericGetFederationTokenResponse :: Generic GetFederationTokenResponse _
instance showGetFederationTokenResponse :: Show GetFederationTokenResponse where show = genericShow
instance decodeGetFederationTokenResponse :: Decode GetFederationTokenResponse where decode = genericDecode options
instance encodeGetFederationTokenResponse :: Encode GetFederationTokenResponse where encode = genericEncode options

-- | Constructs GetFederationTokenResponse from required parameters
newGetFederationTokenResponse :: GetFederationTokenResponse
newGetFederationTokenResponse  = GetFederationTokenResponse { "Credentials": (NullOrUndefined Nothing), "FederatedUser": (NullOrUndefined Nothing), "PackedPolicySize": (NullOrUndefined Nothing) }

-- | Constructs GetFederationTokenResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFederationTokenResponse' :: ( { "Credentials" :: NullOrUndefined (Credentials) , "FederatedUser" :: NullOrUndefined (FederatedUser) , "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') } -> {"Credentials" :: NullOrUndefined (Credentials) , "FederatedUser" :: NullOrUndefined (FederatedUser) , "PackedPolicySize" :: NullOrUndefined (NonNegativeIntegerType') } ) -> GetFederationTokenResponse
newGetFederationTokenResponse'  customize = (GetFederationTokenResponse <<< customize) { "Credentials": (NullOrUndefined Nothing), "FederatedUser": (NullOrUndefined Nothing), "PackedPolicySize": (NullOrUndefined Nothing) }



newtype GetSessionTokenRequest = GetSessionTokenRequest 
  { "DurationSeconds" :: NullOrUndefined (DurationSecondsType')
  , "SerialNumber" :: NullOrUndefined (SerialNumberType')
  , "TokenCode" :: NullOrUndefined (TokenCodeType')
  }
derive instance newtypeGetSessionTokenRequest :: Newtype GetSessionTokenRequest _
derive instance repGenericGetSessionTokenRequest :: Generic GetSessionTokenRequest _
instance showGetSessionTokenRequest :: Show GetSessionTokenRequest where show = genericShow
instance decodeGetSessionTokenRequest :: Decode GetSessionTokenRequest where decode = genericDecode options
instance encodeGetSessionTokenRequest :: Encode GetSessionTokenRequest where encode = genericEncode options

-- | Constructs GetSessionTokenRequest from required parameters
newGetSessionTokenRequest :: GetSessionTokenRequest
newGetSessionTokenRequest  = GetSessionTokenRequest { "DurationSeconds": (NullOrUndefined Nothing), "SerialNumber": (NullOrUndefined Nothing), "TokenCode": (NullOrUndefined Nothing) }

-- | Constructs GetSessionTokenRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSessionTokenRequest' :: ( { "DurationSeconds" :: NullOrUndefined (DurationSecondsType') , "SerialNumber" :: NullOrUndefined (SerialNumberType') , "TokenCode" :: NullOrUndefined (TokenCodeType') } -> {"DurationSeconds" :: NullOrUndefined (DurationSecondsType') , "SerialNumber" :: NullOrUndefined (SerialNumberType') , "TokenCode" :: NullOrUndefined (TokenCodeType') } ) -> GetSessionTokenRequest
newGetSessionTokenRequest'  customize = (GetSessionTokenRequest <<< customize) { "DurationSeconds": (NullOrUndefined Nothing), "SerialNumber": (NullOrUndefined Nothing), "TokenCode": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>GetSessionToken</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>
newtype GetSessionTokenResponse = GetSessionTokenResponse 
  { "Credentials" :: NullOrUndefined (Credentials)
  }
derive instance newtypeGetSessionTokenResponse :: Newtype GetSessionTokenResponse _
derive instance repGenericGetSessionTokenResponse :: Generic GetSessionTokenResponse _
instance showGetSessionTokenResponse :: Show GetSessionTokenResponse where show = genericShow
instance decodeGetSessionTokenResponse :: Decode GetSessionTokenResponse where decode = genericDecode options
instance encodeGetSessionTokenResponse :: Encode GetSessionTokenResponse where encode = genericEncode options

-- | Constructs GetSessionTokenResponse from required parameters
newGetSessionTokenResponse :: GetSessionTokenResponse
newGetSessionTokenResponse  = GetSessionTokenResponse { "Credentials": (NullOrUndefined Nothing) }

-- | Constructs GetSessionTokenResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSessionTokenResponse' :: ( { "Credentials" :: NullOrUndefined (Credentials) } -> {"Credentials" :: NullOrUndefined (Credentials) } ) -> GetSessionTokenResponse
newGetSessionTokenResponse'  customize = (GetSessionTokenResponse <<< customize) { "Credentials": (NullOrUndefined Nothing) }



-- | <p>The request could not be fulfilled because the non-AWS identity provider (IDP) that was asked to verify the incoming identity token could not be reached. This is often a transient error caused by network conditions. Retry the request a limited number of times so that you don't exceed the request rate. If the error persists, the non-AWS identity provider might be down or not responding.</p>
newtype IDPCommunicationErrorException = IDPCommunicationErrorException 
  { "message" :: NullOrUndefined (IdpCommunicationErrorMessage')
  }
derive instance newtypeIDPCommunicationErrorException :: Newtype IDPCommunicationErrorException _
derive instance repGenericIDPCommunicationErrorException :: Generic IDPCommunicationErrorException _
instance showIDPCommunicationErrorException :: Show IDPCommunicationErrorException where show = genericShow
instance decodeIDPCommunicationErrorException :: Decode IDPCommunicationErrorException where decode = genericDecode options
instance encodeIDPCommunicationErrorException :: Encode IDPCommunicationErrorException where encode = genericEncode options

-- | Constructs IDPCommunicationErrorException from required parameters
newIDPCommunicationErrorException :: IDPCommunicationErrorException
newIDPCommunicationErrorException  = IDPCommunicationErrorException { "message": (NullOrUndefined Nothing) }

-- | Constructs IDPCommunicationErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIDPCommunicationErrorException' :: ( { "message" :: NullOrUndefined (IdpCommunicationErrorMessage') } -> {"message" :: NullOrUndefined (IdpCommunicationErrorMessage') } ) -> IDPCommunicationErrorException
newIDPCommunicationErrorException'  customize = (IDPCommunicationErrorException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The identity provider (IdP) reported that authentication failed. This might be because the claim is invalid.</p> <p>If this error is returned for the <code>AssumeRoleWithWebIdentity</code> operation, it can also mean that the claim has expired or has been explicitly revoked. </p>
newtype IDPRejectedClaimException = IDPRejectedClaimException 
  { "message" :: NullOrUndefined (IdpRejectedClaimMessage')
  }
derive instance newtypeIDPRejectedClaimException :: Newtype IDPRejectedClaimException _
derive instance repGenericIDPRejectedClaimException :: Generic IDPRejectedClaimException _
instance showIDPRejectedClaimException :: Show IDPRejectedClaimException where show = genericShow
instance decodeIDPRejectedClaimException :: Decode IDPRejectedClaimException where decode = genericDecode options
instance encodeIDPRejectedClaimException :: Encode IDPRejectedClaimException where encode = genericEncode options

-- | Constructs IDPRejectedClaimException from required parameters
newIDPRejectedClaimException :: IDPRejectedClaimException
newIDPRejectedClaimException  = IDPRejectedClaimException { "message": (NullOrUndefined Nothing) }

-- | Constructs IDPRejectedClaimException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIDPRejectedClaimException' :: ( { "message" :: NullOrUndefined (IdpRejectedClaimMessage') } -> {"message" :: NullOrUndefined (IdpRejectedClaimMessage') } ) -> IDPRejectedClaimException
newIDPRejectedClaimException'  customize = (IDPRejectedClaimException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The error returned if the message passed to <code>DecodeAuthorizationMessage</code> was invalid. This can happen if the token contains invalid characters, such as linebreaks. </p>
newtype InvalidAuthorizationMessageException = InvalidAuthorizationMessageException 
  { "message" :: NullOrUndefined (InvalidAuthorizationMessage')
  }
derive instance newtypeInvalidAuthorizationMessageException :: Newtype InvalidAuthorizationMessageException _
derive instance repGenericInvalidAuthorizationMessageException :: Generic InvalidAuthorizationMessageException _
instance showInvalidAuthorizationMessageException :: Show InvalidAuthorizationMessageException where show = genericShow
instance decodeInvalidAuthorizationMessageException :: Decode InvalidAuthorizationMessageException where decode = genericDecode options
instance encodeInvalidAuthorizationMessageException :: Encode InvalidAuthorizationMessageException where encode = genericEncode options

-- | Constructs InvalidAuthorizationMessageException from required parameters
newInvalidAuthorizationMessageException :: InvalidAuthorizationMessageException
newInvalidAuthorizationMessageException  = InvalidAuthorizationMessageException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidAuthorizationMessageException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidAuthorizationMessageException' :: ( { "message" :: NullOrUndefined (InvalidAuthorizationMessage') } -> {"message" :: NullOrUndefined (InvalidAuthorizationMessage') } ) -> InvalidAuthorizationMessageException
newInvalidAuthorizationMessageException'  customize = (InvalidAuthorizationMessageException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The web identity token that was passed could not be validated by AWS. Get a new identity token from the identity provider and then retry the request.</p>
newtype InvalidIdentityTokenException = InvalidIdentityTokenException 
  { "message" :: NullOrUndefined (InvalidIdentityTokenMessage')
  }
derive instance newtypeInvalidIdentityTokenException :: Newtype InvalidIdentityTokenException _
derive instance repGenericInvalidIdentityTokenException :: Generic InvalidIdentityTokenException _
instance showInvalidIdentityTokenException :: Show InvalidIdentityTokenException where show = genericShow
instance decodeInvalidIdentityTokenException :: Decode InvalidIdentityTokenException where decode = genericDecode options
instance encodeInvalidIdentityTokenException :: Encode InvalidIdentityTokenException where encode = genericEncode options

-- | Constructs InvalidIdentityTokenException from required parameters
newInvalidIdentityTokenException :: InvalidIdentityTokenException
newInvalidIdentityTokenException  = InvalidIdentityTokenException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidIdentityTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidIdentityTokenException' :: ( { "message" :: NullOrUndefined (InvalidIdentityTokenMessage') } -> {"message" :: NullOrUndefined (InvalidIdentityTokenMessage') } ) -> InvalidIdentityTokenException
newInvalidIdentityTokenException'  customize = (InvalidIdentityTokenException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype Issuer = Issuer String
derive instance newtypeIssuer :: Newtype Issuer _
derive instance repGenericIssuer :: Generic Issuer _
instance showIssuer :: Show Issuer where show = genericShow
instance decodeIssuer :: Decode Issuer where decode = genericDecode options
instance encodeIssuer :: Encode Issuer where encode = genericEncode options



-- | <p>The request was rejected because the policy document was malformed. The error message describes the specific error.</p>
newtype MalformedPolicyDocumentException = MalformedPolicyDocumentException 
  { "message" :: NullOrUndefined (MalformedPolicyDocumentMessage')
  }
derive instance newtypeMalformedPolicyDocumentException :: Newtype MalformedPolicyDocumentException _
derive instance repGenericMalformedPolicyDocumentException :: Generic MalformedPolicyDocumentException _
instance showMalformedPolicyDocumentException :: Show MalformedPolicyDocumentException where show = genericShow
instance decodeMalformedPolicyDocumentException :: Decode MalformedPolicyDocumentException where decode = genericDecode options
instance encodeMalformedPolicyDocumentException :: Encode MalformedPolicyDocumentException where encode = genericEncode options

-- | Constructs MalformedPolicyDocumentException from required parameters
newMalformedPolicyDocumentException :: MalformedPolicyDocumentException
newMalformedPolicyDocumentException  = MalformedPolicyDocumentException { "message": (NullOrUndefined Nothing) }

-- | Constructs MalformedPolicyDocumentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMalformedPolicyDocumentException' :: ( { "message" :: NullOrUndefined (MalformedPolicyDocumentMessage') } -> {"message" :: NullOrUndefined (MalformedPolicyDocumentMessage') } ) -> MalformedPolicyDocumentException
newMalformedPolicyDocumentException'  customize = (MalformedPolicyDocumentException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype NameQualifier = NameQualifier String
derive instance newtypeNameQualifier :: Newtype NameQualifier _
derive instance repGenericNameQualifier :: Generic NameQualifier _
instance showNameQualifier :: Show NameQualifier where show = genericShow
instance decodeNameQualifier :: Decode NameQualifier where decode = genericDecode options
instance encodeNameQualifier :: Encode NameQualifier where encode = genericEncode options



-- | <p>The request was rejected because the policy document was too large. The error message describes how big the policy document is, in packed form, as a percentage of what the API allows.</p>
newtype PackedPolicyTooLargeException = PackedPolicyTooLargeException 
  { "message" :: NullOrUndefined (PackedPolicyTooLargeMessage')
  }
derive instance newtypePackedPolicyTooLargeException :: Newtype PackedPolicyTooLargeException _
derive instance repGenericPackedPolicyTooLargeException :: Generic PackedPolicyTooLargeException _
instance showPackedPolicyTooLargeException :: Show PackedPolicyTooLargeException where show = genericShow
instance decodePackedPolicyTooLargeException :: Decode PackedPolicyTooLargeException where decode = genericDecode options
instance encodePackedPolicyTooLargeException :: Encode PackedPolicyTooLargeException where encode = genericEncode options

-- | Constructs PackedPolicyTooLargeException from required parameters
newPackedPolicyTooLargeException :: PackedPolicyTooLargeException
newPackedPolicyTooLargeException  = PackedPolicyTooLargeException { "message": (NullOrUndefined Nothing) }

-- | Constructs PackedPolicyTooLargeException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPackedPolicyTooLargeException' :: ( { "message" :: NullOrUndefined (PackedPolicyTooLargeMessage') } -> {"message" :: NullOrUndefined (PackedPolicyTooLargeMessage') } ) -> PackedPolicyTooLargeException
newPackedPolicyTooLargeException'  customize = (PackedPolicyTooLargeException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>STS is not activated in the requested region for the account that is being asked to generate credentials. The account administrator must use the IAM console to activate STS in that region. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and Deactivating AWS STS in an AWS Region</a> in the <i>IAM User Guide</i>.</p>
newtype RegionDisabledException = RegionDisabledException 
  { "message" :: NullOrUndefined (RegionDisabledMessage')
  }
derive instance newtypeRegionDisabledException :: Newtype RegionDisabledException _
derive instance repGenericRegionDisabledException :: Generic RegionDisabledException _
instance showRegionDisabledException :: Show RegionDisabledException where show = genericShow
instance decodeRegionDisabledException :: Decode RegionDisabledException where decode = genericDecode options
instance encodeRegionDisabledException :: Encode RegionDisabledException where encode = genericEncode options

-- | Constructs RegionDisabledException from required parameters
newRegionDisabledException :: RegionDisabledException
newRegionDisabledException  = RegionDisabledException { "message": (NullOrUndefined Nothing) }

-- | Constructs RegionDisabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegionDisabledException' :: ( { "message" :: NullOrUndefined (RegionDisabledMessage') } -> {"message" :: NullOrUndefined (RegionDisabledMessage') } ) -> RegionDisabledException
newRegionDisabledException'  customize = (RegionDisabledException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype SAMLAssertionType = SAMLAssertionType String
derive instance newtypeSAMLAssertionType :: Newtype SAMLAssertionType _
derive instance repGenericSAMLAssertionType :: Generic SAMLAssertionType _
instance showSAMLAssertionType :: Show SAMLAssertionType where show = genericShow
instance decodeSAMLAssertionType :: Decode SAMLAssertionType where decode = genericDecode options
instance encodeSAMLAssertionType :: Encode SAMLAssertionType where encode = genericEncode options



newtype Subject = Subject String
derive instance newtypeSubject :: Newtype Subject _
derive instance repGenericSubject :: Generic Subject _
instance showSubject :: Show Subject where show = genericShow
instance decodeSubject :: Decode Subject where decode = genericDecode options
instance encodeSubject :: Encode Subject where encode = genericEncode options



newtype SubjectType = SubjectType String
derive instance newtypeSubjectType :: Newtype SubjectType _
derive instance repGenericSubjectType :: Generic SubjectType _
instance showSubjectType :: Show SubjectType where show = genericShow
instance decodeSubjectType :: Decode SubjectType where decode = genericDecode options
instance encodeSubjectType :: Encode SubjectType where encode = genericEncode options



newtype AccessKeyIdType' = AccessKeyIdType' String
derive instance newtypeAccessKeyIdType' :: Newtype AccessKeyIdType' _
derive instance repGenericAccessKeyIdType' :: Generic AccessKeyIdType' _
instance showAccessKeyIdType' :: Show AccessKeyIdType' where show = genericShow
instance decodeAccessKeyIdType' :: Decode AccessKeyIdType' where decode = genericDecode options
instance encodeAccessKeyIdType' :: Encode AccessKeyIdType' where encode = genericEncode options



newtype AccessKeySecretType' = AccessKeySecretType' String
derive instance newtypeAccessKeySecretType' :: Newtype AccessKeySecretType' _
derive instance repGenericAccessKeySecretType' :: Generic AccessKeySecretType' _
instance showAccessKeySecretType' :: Show AccessKeySecretType' where show = genericShow
instance decodeAccessKeySecretType' :: Decode AccessKeySecretType' where decode = genericDecode options
instance encodeAccessKeySecretType' :: Encode AccessKeySecretType' where encode = genericEncode options



newtype AccountType' = AccountType' String
derive instance newtypeAccountType' :: Newtype AccountType' _
derive instance repGenericAccountType' :: Generic AccountType' _
instance showAccountType' :: Show AccountType' where show = genericShow
instance decodeAccountType' :: Decode AccountType' where decode = genericDecode options
instance encodeAccountType' :: Encode AccountType' where encode = genericEncode options



newtype ArnType' = ArnType' String
derive instance newtypeArnType' :: Newtype ArnType' _
derive instance repGenericArnType' :: Generic ArnType' _
instance showArnType' :: Show ArnType' where show = genericShow
instance decodeArnType' :: Decode ArnType' where decode = genericDecode options
instance encodeArnType' :: Encode ArnType' where encode = genericEncode options



newtype AssumedRoleIdType' = AssumedRoleIdType' String
derive instance newtypeAssumedRoleIdType' :: Newtype AssumedRoleIdType' _
derive instance repGenericAssumedRoleIdType' :: Generic AssumedRoleIdType' _
instance showAssumedRoleIdType' :: Show AssumedRoleIdType' where show = genericShow
instance decodeAssumedRoleIdType' :: Decode AssumedRoleIdType' where decode = genericDecode options
instance encodeAssumedRoleIdType' :: Encode AssumedRoleIdType' where encode = genericEncode options



newtype ClientTokenType' = ClientTokenType' String
derive instance newtypeClientTokenType' :: Newtype ClientTokenType' _
derive instance repGenericClientTokenType' :: Generic ClientTokenType' _
instance showClientTokenType' :: Show ClientTokenType' where show = genericShow
instance decodeClientTokenType' :: Decode ClientTokenType' where decode = genericDecode options
instance encodeClientTokenType' :: Encode ClientTokenType' where encode = genericEncode options



newtype DateType' = DateType' Types.Timestamp
derive instance newtypeDateType' :: Newtype DateType' _
derive instance repGenericDateType' :: Generic DateType' _
instance showDateType' :: Show DateType' where show = genericShow
instance decodeDateType' :: Decode DateType' where decode = genericDecode options
instance encodeDateType' :: Encode DateType' where encode = genericEncode options



newtype DecodedMessageType' = DecodedMessageType' String
derive instance newtypeDecodedMessageType' :: Newtype DecodedMessageType' _
derive instance repGenericDecodedMessageType' :: Generic DecodedMessageType' _
instance showDecodedMessageType' :: Show DecodedMessageType' where show = genericShow
instance decodeDecodedMessageType' :: Decode DecodedMessageType' where decode = genericDecode options
instance encodeDecodedMessageType' :: Encode DecodedMessageType' where encode = genericEncode options



newtype DurationSecondsType' = DurationSecondsType' Int
derive instance newtypeDurationSecondsType' :: Newtype DurationSecondsType' _
derive instance repGenericDurationSecondsType' :: Generic DurationSecondsType' _
instance showDurationSecondsType' :: Show DurationSecondsType' where show = genericShow
instance decodeDurationSecondsType' :: Decode DurationSecondsType' where decode = genericDecode options
instance encodeDurationSecondsType' :: Encode DurationSecondsType' where encode = genericEncode options



newtype EncodedMessageType' = EncodedMessageType' String
derive instance newtypeEncodedMessageType' :: Newtype EncodedMessageType' _
derive instance repGenericEncodedMessageType' :: Generic EncodedMessageType' _
instance showEncodedMessageType' :: Show EncodedMessageType' where show = genericShow
instance decodeEncodedMessageType' :: Decode EncodedMessageType' where decode = genericDecode options
instance encodeEncodedMessageType' :: Encode EncodedMessageType' where encode = genericEncode options



newtype ExpiredIdentityTokenMessage' = ExpiredIdentityTokenMessage' String
derive instance newtypeExpiredIdentityTokenMessage' :: Newtype ExpiredIdentityTokenMessage' _
derive instance repGenericExpiredIdentityTokenMessage' :: Generic ExpiredIdentityTokenMessage' _
instance showExpiredIdentityTokenMessage' :: Show ExpiredIdentityTokenMessage' where show = genericShow
instance decodeExpiredIdentityTokenMessage' :: Decode ExpiredIdentityTokenMessage' where decode = genericDecode options
instance encodeExpiredIdentityTokenMessage' :: Encode ExpiredIdentityTokenMessage' where encode = genericEncode options



newtype ExternalIdType' = ExternalIdType' String
derive instance newtypeExternalIdType' :: Newtype ExternalIdType' _
derive instance repGenericExternalIdType' :: Generic ExternalIdType' _
instance showExternalIdType' :: Show ExternalIdType' where show = genericShow
instance decodeExternalIdType' :: Decode ExternalIdType' where decode = genericDecode options
instance encodeExternalIdType' :: Encode ExternalIdType' where encode = genericEncode options



newtype FederatedIdType' = FederatedIdType' String
derive instance newtypeFederatedIdType' :: Newtype FederatedIdType' _
derive instance repGenericFederatedIdType' :: Generic FederatedIdType' _
instance showFederatedIdType' :: Show FederatedIdType' where show = genericShow
instance decodeFederatedIdType' :: Decode FederatedIdType' where decode = genericDecode options
instance encodeFederatedIdType' :: Encode FederatedIdType' where encode = genericEncode options



newtype IdpCommunicationErrorMessage' = IdpCommunicationErrorMessage' String
derive instance newtypeIdpCommunicationErrorMessage' :: Newtype IdpCommunicationErrorMessage' _
derive instance repGenericIdpCommunicationErrorMessage' :: Generic IdpCommunicationErrorMessage' _
instance showIdpCommunicationErrorMessage' :: Show IdpCommunicationErrorMessage' where show = genericShow
instance decodeIdpCommunicationErrorMessage' :: Decode IdpCommunicationErrorMessage' where decode = genericDecode options
instance encodeIdpCommunicationErrorMessage' :: Encode IdpCommunicationErrorMessage' where encode = genericEncode options



newtype IdpRejectedClaimMessage' = IdpRejectedClaimMessage' String
derive instance newtypeIdpRejectedClaimMessage' :: Newtype IdpRejectedClaimMessage' _
derive instance repGenericIdpRejectedClaimMessage' :: Generic IdpRejectedClaimMessage' _
instance showIdpRejectedClaimMessage' :: Show IdpRejectedClaimMessage' where show = genericShow
instance decodeIdpRejectedClaimMessage' :: Decode IdpRejectedClaimMessage' where decode = genericDecode options
instance encodeIdpRejectedClaimMessage' :: Encode IdpRejectedClaimMessage' where encode = genericEncode options



newtype InvalidAuthorizationMessage' = InvalidAuthorizationMessage' String
derive instance newtypeInvalidAuthorizationMessage' :: Newtype InvalidAuthorizationMessage' _
derive instance repGenericInvalidAuthorizationMessage' :: Generic InvalidAuthorizationMessage' _
instance showInvalidAuthorizationMessage' :: Show InvalidAuthorizationMessage' where show = genericShow
instance decodeInvalidAuthorizationMessage' :: Decode InvalidAuthorizationMessage' where decode = genericDecode options
instance encodeInvalidAuthorizationMessage' :: Encode InvalidAuthorizationMessage' where encode = genericEncode options



newtype InvalidIdentityTokenMessage' = InvalidIdentityTokenMessage' String
derive instance newtypeInvalidIdentityTokenMessage' :: Newtype InvalidIdentityTokenMessage' _
derive instance repGenericInvalidIdentityTokenMessage' :: Generic InvalidIdentityTokenMessage' _
instance showInvalidIdentityTokenMessage' :: Show InvalidIdentityTokenMessage' where show = genericShow
instance decodeInvalidIdentityTokenMessage' :: Decode InvalidIdentityTokenMessage' where decode = genericDecode options
instance encodeInvalidIdentityTokenMessage' :: Encode InvalidIdentityTokenMessage' where encode = genericEncode options



newtype MalformedPolicyDocumentMessage' = MalformedPolicyDocumentMessage' String
derive instance newtypeMalformedPolicyDocumentMessage' :: Newtype MalformedPolicyDocumentMessage' _
derive instance repGenericMalformedPolicyDocumentMessage' :: Generic MalformedPolicyDocumentMessage' _
instance showMalformedPolicyDocumentMessage' :: Show MalformedPolicyDocumentMessage' where show = genericShow
instance decodeMalformedPolicyDocumentMessage' :: Decode MalformedPolicyDocumentMessage' where decode = genericDecode options
instance encodeMalformedPolicyDocumentMessage' :: Encode MalformedPolicyDocumentMessage' where encode = genericEncode options



newtype NonNegativeIntegerType' = NonNegativeIntegerType' Int
derive instance newtypeNonNegativeIntegerType' :: Newtype NonNegativeIntegerType' _
derive instance repGenericNonNegativeIntegerType' :: Generic NonNegativeIntegerType' _
instance showNonNegativeIntegerType' :: Show NonNegativeIntegerType' where show = genericShow
instance decodeNonNegativeIntegerType' :: Decode NonNegativeIntegerType' where decode = genericDecode options
instance encodeNonNegativeIntegerType' :: Encode NonNegativeIntegerType' where encode = genericEncode options



newtype PackedPolicyTooLargeMessage' = PackedPolicyTooLargeMessage' String
derive instance newtypePackedPolicyTooLargeMessage' :: Newtype PackedPolicyTooLargeMessage' _
derive instance repGenericPackedPolicyTooLargeMessage' :: Generic PackedPolicyTooLargeMessage' _
instance showPackedPolicyTooLargeMessage' :: Show PackedPolicyTooLargeMessage' where show = genericShow
instance decodePackedPolicyTooLargeMessage' :: Decode PackedPolicyTooLargeMessage' where decode = genericDecode options
instance encodePackedPolicyTooLargeMessage' :: Encode PackedPolicyTooLargeMessage' where encode = genericEncode options



newtype RegionDisabledMessage' = RegionDisabledMessage' String
derive instance newtypeRegionDisabledMessage' :: Newtype RegionDisabledMessage' _
derive instance repGenericRegionDisabledMessage' :: Generic RegionDisabledMessage' _
instance showRegionDisabledMessage' :: Show RegionDisabledMessage' where show = genericShow
instance decodeRegionDisabledMessage' :: Decode RegionDisabledMessage' where decode = genericDecode options
instance encodeRegionDisabledMessage' :: Encode RegionDisabledMessage' where encode = genericEncode options



newtype RoleDurationSecondsType' = RoleDurationSecondsType' Int
derive instance newtypeRoleDurationSecondsType' :: Newtype RoleDurationSecondsType' _
derive instance repGenericRoleDurationSecondsType' :: Generic RoleDurationSecondsType' _
instance showRoleDurationSecondsType' :: Show RoleDurationSecondsType' where show = genericShow
instance decodeRoleDurationSecondsType' :: Decode RoleDurationSecondsType' where decode = genericDecode options
instance encodeRoleDurationSecondsType' :: Encode RoleDurationSecondsType' where encode = genericEncode options



newtype RoleSessionNameType' = RoleSessionNameType' String
derive instance newtypeRoleSessionNameType' :: Newtype RoleSessionNameType' _
derive instance repGenericRoleSessionNameType' :: Generic RoleSessionNameType' _
instance showRoleSessionNameType' :: Show RoleSessionNameType' where show = genericShow
instance decodeRoleSessionNameType' :: Decode RoleSessionNameType' where decode = genericDecode options
instance encodeRoleSessionNameType' :: Encode RoleSessionNameType' where encode = genericEncode options



newtype SerialNumberType' = SerialNumberType' String
derive instance newtypeSerialNumberType' :: Newtype SerialNumberType' _
derive instance repGenericSerialNumberType' :: Generic SerialNumberType' _
instance showSerialNumberType' :: Show SerialNumberType' where show = genericShow
instance decodeSerialNumberType' :: Decode SerialNumberType' where decode = genericDecode options
instance encodeSerialNumberType' :: Encode SerialNumberType' where encode = genericEncode options



newtype SessionPolicyDocumentType' = SessionPolicyDocumentType' String
derive instance newtypeSessionPolicyDocumentType' :: Newtype SessionPolicyDocumentType' _
derive instance repGenericSessionPolicyDocumentType' :: Generic SessionPolicyDocumentType' _
instance showSessionPolicyDocumentType' :: Show SessionPolicyDocumentType' where show = genericShow
instance decodeSessionPolicyDocumentType' :: Decode SessionPolicyDocumentType' where decode = genericDecode options
instance encodeSessionPolicyDocumentType' :: Encode SessionPolicyDocumentType' where encode = genericEncode options



newtype TokenCodeType' = TokenCodeType' String
derive instance newtypeTokenCodeType' :: Newtype TokenCodeType' _
derive instance repGenericTokenCodeType' :: Generic TokenCodeType' _
instance showTokenCodeType' :: Show TokenCodeType' where show = genericShow
instance decodeTokenCodeType' :: Decode TokenCodeType' where decode = genericDecode options
instance encodeTokenCodeType' :: Encode TokenCodeType' where encode = genericEncode options



newtype TokenType' = TokenType' String
derive instance newtypeTokenType' :: Newtype TokenType' _
derive instance repGenericTokenType' :: Generic TokenType' _
instance showTokenType' :: Show TokenType' where show = genericShow
instance decodeTokenType' :: Decode TokenType' where decode = genericDecode options
instance encodeTokenType' :: Encode TokenType' where encode = genericEncode options



newtype UrlType' = UrlType' String
derive instance newtypeUrlType' :: Newtype UrlType' _
derive instance repGenericUrlType' :: Generic UrlType' _
instance showUrlType' :: Show UrlType' where show = genericShow
instance decodeUrlType' :: Decode UrlType' where decode = genericDecode options
instance encodeUrlType' :: Encode UrlType' where encode = genericEncode options



newtype UserIdType' = UserIdType' String
derive instance newtypeUserIdType' :: Newtype UserIdType' _
derive instance repGenericUserIdType' :: Generic UserIdType' _
instance showUserIdType' :: Show UserIdType' where show = genericShow
instance decodeUserIdType' :: Decode UserIdType' where decode = genericDecode options
instance encodeUserIdType' :: Encode UserIdType' where encode = genericEncode options



newtype UserNameType' = UserNameType' String
derive instance newtypeUserNameType' :: Newtype UserNameType' _
derive instance repGenericUserNameType' :: Generic UserNameType' _
instance showUserNameType' :: Show UserNameType' where show = genericShow
instance decodeUserNameType' :: Decode UserNameType' where decode = genericDecode options
instance encodeUserNameType' :: Encode UserNameType' where encode = genericEncode options



newtype WebIdentitySubjectType' = WebIdentitySubjectType' String
derive instance newtypeWebIdentitySubjectType' :: Newtype WebIdentitySubjectType' _
derive instance repGenericWebIdentitySubjectType' :: Generic WebIdentitySubjectType' _
instance showWebIdentitySubjectType' :: Show WebIdentitySubjectType' where show = genericShow
instance decodeWebIdentitySubjectType' :: Decode WebIdentitySubjectType' where decode = genericDecode options
instance encodeWebIdentitySubjectType' :: Encode WebIdentitySubjectType' where encode = genericEncode options

