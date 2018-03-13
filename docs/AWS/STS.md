## Module AWS.STS

<fullname>AWS Security Token Service</fullname> <p>The AWS Security Token Service (STS) is a web service that enables you to request temporary, limited-privilege credentials for AWS Identity and Access Management (IAM) users or for users that you authenticate (federated users). This guide provides descriptions of the STS API. For more detailed information about using this service, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html">Temporary Security Credentials</a>. </p> <note> <p> As an alternative to using the API, you can use one of the AWS SDKs, which consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to STS. For example, the SDKs take care of cryptographically signing requests, managing errors, and retrying requests automatically. For information about the AWS SDKs, including how to download and install them, see the <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services page</a>. </p> </note> <p>For information about setting up signatures and authorization through the API, go to <a href="http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing AWS API Requests</a> in the <i>AWS General Reference</i>. For general information about the Query API, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in <i>Using IAM</i>. For information about using security tokens with other AWS products, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html">AWS Services That Work with IAM</a> in the <i>IAM User Guide</i>. </p> <p>If you're new to AWS and need additional technical information about a specific AWS product, you can find the product's technical documentation at <a href="http://aws.amazon.com/documentation/">http://aws.amazon.com/documentation/</a>. </p> <p> <b>Endpoints</b> </p> <p>The AWS Security Token Service (STS) has a default endpoint of https://sts.amazonaws.com that maps to the US East (N. Virginia) region. Additional regions are available and are activated by default. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and Deactivating AWS STS in an AWS Region</a> in the <i>IAM User Guide</i>.</p> <p>For information about STS endpoints, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#sts_region">Regions and Endpoints</a> in the <i>AWS General Reference</i>.</p> <p> <b>Recording API requests</b> </p> <p>STS supports AWS CloudTrail, which is a service that records AWS calls for your AWS account and delivers log files to an Amazon S3 bucket. By using information collected by CloudTrail, you can determine what requests were successfully made to STS, who made the request, when it was made, and so on. To learn more about CloudTrail, including how to turn it on and find your log files, see the <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html">AWS CloudTrail User Guide</a>.</p>

#### `assumeRole`

``` purescript
assumeRole :: forall eff. AssumeRoleRequest -> Aff (exception :: EXCEPTION | eff) AssumeRoleResponse
```

<p>Returns a set of temporary security credentials (consisting of an access key ID, a secret access key, and a security token) that you can use to access AWS resources that you might not normally have access to. Typically, you use <code>AssumeRole</code> for cross-account access or federation. For a comparison of <code>AssumeRole</code> with the other APIs that produce temporary credentials, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security Credentials</a> and <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing the AWS STS APIs</a> in the <i>IAM User Guide</i>.</p> <p> <b>Important:</b> You cannot call <code>AssumeRole</code> by using AWS root account credentials; access is denied. You must use credentials for an IAM user or an IAM role to call <code>AssumeRole</code>. </p> <p>For cross-account access, imagine that you own multiple accounts and need to access resources in each account. You could create long-term credentials in each account to access those resources. However, managing all those credentials and remembering which one can access which account can be time consuming. Instead, you can create one set of long-term credentials in one account and then use temporary security credentials to access all the other accounts by assuming roles in those accounts. For more information about roles, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">IAM Roles (Delegation and Federation)</a> in the <i>IAM User Guide</i>. </p> <p>For federation, you can, for example, grant single sign-on access to the AWS Management Console. If you already have an identity and authentication system in your corporate network, you don't have to recreate user identities in AWS in order to grant those user identities access to AWS. Instead, after a user has been authenticated, you call <code>AssumeRole</code> (and specify the role with the appropriate permissions) to get temporary security credentials for that user. With those temporary security credentials, you construct a sign-in URL that users can use to access the console. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html#sts-introduction">Common Scenarios for Temporary Credentials</a> in the <i>IAM User Guide</i>.</p> <p>The temporary security credentials are valid for the duration that you specified when calling <code>AssumeRole</code>, which can be from 900 seconds (15 minutes) to a maximum of 3600 seconds (1 hour). The default is 1 hour. </p> <p>The temporary security credentials created by <code>AssumeRole</code> can be used to make API calls to any AWS service with the following exception: you cannot call the STS service's <code>GetFederationToken</code> or <code>GetSessionToken</code> APIs.</p> <p>Optionally, you can pass an IAM access policy to this operation. If you choose not to pass a policy, the temporary security credentials that are returned by the operation have the permissions that are defined in the access policy of the role that is being assumed. If you pass a policy to this operation, the temporary security credentials that are returned by the operation have the permissions that are allowed by both the access policy of the role that is being assumed, <i> <b>and</b> </i> the policy that you pass. This gives you a way to further restrict the permissions for the resulting temporary security credentials. You cannot use the passed policy to grant permissions that are in excess of those allowed by the access policy of the role that is being assumed. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_assumerole.html">Permissions for AssumeRole, AssumeRoleWithSAML, and AssumeRoleWithWebIdentity</a> in the <i>IAM User Guide</i>.</p> <p>To assume a role, your AWS account must be trusted by the role. The trust relationship is defined in the role's trust policy when the role is created. That trust policy states which accounts are allowed to delegate access to this account's role. </p> <p>The user who wants to access the role must also have permissions delegated from the role's administrator. If the user is in a different account than the role, then the user's administrator must attach a policy that allows the user to call AssumeRole on the ARN of the role in the other account. If the user is in the same account as the role, then you can either attach a policy to the user (identical to the previous different account user), or you can add the user as a principal directly in the role's trust policy. In this case, the trust policy acts as the only resource-based policy in IAM, and users in the same account as the role do not need explicit permission to assume the role. For more information about trust policies and resource-based policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM Policies</a> in the <i>IAM User Guide</i>.</p> <p> <b>Using MFA with AssumeRole</b> </p> <p>You can optionally include multi-factor authentication (MFA) information when you call <code>AssumeRole</code>. This is useful for cross-account scenarios in which you want to make sure that the user who is assuming the role has been authenticated using an AWS MFA device. In that scenario, the trust policy of the role being assumed includes a condition that tests for MFA authentication; if the caller does not include valid MFA information, the request to assume the role is denied. The condition in a trust policy that tests for MFA authentication might look like the following example.</p> <p> <code>"Condition": {"Bool": {"aws:MultiFactorAuthPresent": true}}</code> </p> <p>For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/MFAProtectedAPI.html">Configuring MFA-Protected API Access</a> in the <i>IAM User Guide</i> guide.</p> <p>To use MFA with <code>AssumeRole</code>, you pass values for the <code>SerialNumber</code> and <code>TokenCode</code> parameters. The <code>SerialNumber</code> value identifies the user's hardware or virtual MFA device. The <code>TokenCode</code> is the time-based one-time password (TOTP) that the MFA devices produces. </p>

#### `assumeRoleWithSAML`

``` purescript
assumeRoleWithSAML :: forall eff. AssumeRoleWithSAMLRequest -> Aff (exception :: EXCEPTION | eff) AssumeRoleWithSAMLResponse
```

<p>Returns a set of temporary security credentials for users who have been authenticated via a SAML authentication response. This operation provides a mechanism for tying an enterprise identity store or directory to role-based AWS access without user-specific credentials or configuration. For a comparison of <code>AssumeRoleWithSAML</code> with the other APIs that produce temporary credentials, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security Credentials</a> and <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing the AWS STS APIs</a> in the <i>IAM User Guide</i>.</p> <p>The temporary security credentials returned by this operation consist of an access key ID, a secret access key, and a security token. Applications can use these temporary security credentials to sign calls to AWS services.</p> <p>The temporary security credentials are valid for the duration that you specified when calling <code>AssumeRole</code>, or until the time specified in the SAML authentication response's <code>SessionNotOnOrAfter</code> value, whichever is shorter. The duration can be from 900 seconds (15 minutes) to a maximum of 3600 seconds (1 hour). The default is 1 hour.</p> <p>The temporary security credentials created by <code>AssumeRoleWithSAML</code> can be used to make API calls to any AWS service with the following exception: you cannot call the STS service's <code>GetFederationToken</code> or <code>GetSessionToken</code> APIs.</p> <p>Optionally, you can pass an IAM access policy to this operation. If you choose not to pass a policy, the temporary security credentials that are returned by the operation have the permissions that are defined in the access policy of the role that is being assumed. If you pass a policy to this operation, the temporary security credentials that are returned by the operation have the permissions that are allowed by the intersection of both the access policy of the role that is being assumed, <i> <b>and</b> </i> the policy that you pass. This means that both policies must grant the permission for the action to be allowed. This gives you a way to further restrict the permissions for the resulting temporary security credentials. You cannot use the passed policy to grant permissions that are in excess of those allowed by the access policy of the role that is being assumed. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_assumerole.html">Permissions for AssumeRole, AssumeRoleWithSAML, and AssumeRoleWithWebIdentity</a> in the <i>IAM User Guide</i>.</p> <p>Before your application can call <code>AssumeRoleWithSAML</code>, you must configure your SAML identity provider (IdP) to issue the claims required by AWS. Additionally, you must use AWS Identity and Access Management (IAM) to create a SAML provider entity in your AWS account that represents your identity provider, and create an IAM role that specifies this SAML provider in its trust policy. </p> <p>Calling <code>AssumeRoleWithSAML</code> does not require the use of AWS security credentials. The identity of the caller is validated by using keys in the metadata document that is uploaded for the SAML provider entity for your identity provider. </p> <important> <p>Calling <code>AssumeRoleWithSAML</code> can result in an entry in your AWS CloudTrail logs. The entry includes the value in the <code>NameID</code> element of the SAML assertion. We recommend that you use a NameIDType that is not associated with any personally identifiable information (PII). For example, you could instead use the Persistent Identifier (<code>urn:oasis:names:tc:SAML:2.0:nameid-format:persistent</code>).</p> </important> <p>For more information, see the following resources:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based Federation</a> in the <i>IAM User Guide</i>. </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml.html">Creating SAML Identity Providers</a> in the <i>IAM User Guide</i>. </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml_relying-party.html">Configuring a Relying Party and Claims</a> in the <i>IAM User Guide</i>. </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_saml.html">Creating a Role for SAML 2.0 Federation</a> in the <i>IAM User Guide</i>. </p> </li> </ul>

#### `assumeRoleWithWebIdentity`

``` purescript
assumeRoleWithWebIdentity :: forall eff. AssumeRoleWithWebIdentityRequest -> Aff (exception :: EXCEPTION | eff) AssumeRoleWithWebIdentityResponse
```

<p>Returns a set of temporary security credentials for users who have been authenticated in a mobile or web application with a web identity provider, such as Amazon Cognito, Login with Amazon, Facebook, Google, or any OpenID Connect-compatible identity provider.</p> <note> <p>For mobile applications, we recommend that you use Amazon Cognito. You can use Amazon Cognito with the <a href="http://aws.amazon.com/sdkforios/">AWS SDK for iOS</a> and the <a href="http://aws.amazon.com/sdkforandroid/">AWS SDK for Android</a> to uniquely identify a user and supply the user with a consistent identity throughout the lifetime of an application.</p> <p>To learn more about Amazon Cognito, see <a href="http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-auth.html#d0e840">Amazon Cognito Overview</a> in the <i>AWS SDK for Android Developer Guide</i> guide and <a href="http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-auth.html#d0e664">Amazon Cognito Overview</a> in the <i>AWS SDK for iOS Developer Guide</i>.</p> </note> <p>Calling <code>AssumeRoleWithWebIdentity</code> does not require the use of AWS security credentials. Therefore, you can distribute an application (for example, on mobile devices) that requests temporary security credentials without including long-term AWS credentials in the application, and without deploying server-based proxy services that use long-term AWS credentials. Instead, the identity of the caller is validated by using a token from the web identity provider. For a comparison of <code>AssumeRoleWithWebIdentity</code> with the other APIs that produce temporary credentials, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security Credentials</a> and <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing the AWS STS APIs</a> in the <i>IAM User Guide</i>.</p> <p>The temporary security credentials returned by this API consist of an access key ID, a secret access key, and a security token. Applications can use these temporary security credentials to sign calls to AWS service APIs.</p> <p>The credentials are valid for the duration that you specified when calling <code>AssumeRoleWithWebIdentity</code>, which can be from 900 seconds (15 minutes) to a maximum of 3600 seconds (1 hour). The default is 1 hour. </p> <p>The temporary security credentials created by <code>AssumeRoleWithWebIdentity</code> can be used to make API calls to any AWS service with the following exception: you cannot call the STS service's <code>GetFederationToken</code> or <code>GetSessionToken</code> APIs.</p> <p>Optionally, you can pass an IAM access policy to this operation. If you choose not to pass a policy, the temporary security credentials that are returned by the operation have the permissions that are defined in the access policy of the role that is being assumed. If you pass a policy to this operation, the temporary security credentials that are returned by the operation have the permissions that are allowed by both the access policy of the role that is being assumed, <i> <b>and</b> </i> the policy that you pass. This gives you a way to further restrict the permissions for the resulting temporary security credentials. You cannot use the passed policy to grant permissions that are in excess of those allowed by the access policy of the role that is being assumed. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_assumerole.html">Permissions for AssumeRole, AssumeRoleWithSAML, and AssumeRoleWithWebIdentity</a> in the <i>IAM User Guide</i>.</p> <p>Before your application can call <code>AssumeRoleWithWebIdentity</code>, you must have an identity token from a supported identity provider and create a role that the application can assume. The role that your application assumes must trust the identity provider that is associated with the identity token. In other words, the identity provider must be specified in the role's trust policy. </p> <important> <p>Calling <code>AssumeRoleWithWebIdentity</code> can result in an entry in your AWS CloudTrail logs. The entry includes the <a href="http://openid.net/specs/openid-connect-core-1_0.html#Claims">Subject</a> of the provided Web Identity Token. We recommend that you avoid using any personally identifiable information (PII) in this field. For example, you could instead use a GUID or a pairwise identifier, as <a href="http://openid.net/specs/openid-connect-core-1_0.html#SubjectIDTypes">suggested in the OIDC specification</a>.</p> </important> <p>For more information about how to use web identity federation and the <code>AssumeRoleWithWebIdentity</code> API, see the following resources: </p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc_manual.html">Using Web Identity Federation APIs for Mobile Apps</a> and <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity">Federation Through a Web-based Identity Provider</a>. </p> </li> <li> <p> <a href="https://web-identity-federation-playground.s3.amazonaws.com/index.html"> Web Identity Federation Playground</a>. This interactive website lets you walk through the process of authenticating via Login with Amazon, Facebook, or Google, getting temporary security credentials, and then using those credentials to make a request to AWS. </p> </li> <li> <p> <a href="http://aws.amazon.com/sdkforios/">AWS SDK for iOS</a> and <a href="http://aws.amazon.com/sdkforandroid/">AWS SDK for Android</a>. These toolkits contain sample apps that show how to invoke the identity providers, and then how to use the information from these providers to get and use temporary security credentials. </p> </li> <li> <p> <a href="http://aws.amazon.com/articles/web-identity-federation-with-mobile-applications">Web Identity Federation with Mobile Applications</a>. This article discusses web identity federation and shows an example of how to use web identity federation to get access to content in Amazon S3. </p> </li> </ul>

#### `decodeAuthorizationMessage`

``` purescript
decodeAuthorizationMessage :: forall eff. DecodeAuthorizationMessageRequest -> Aff (exception :: EXCEPTION | eff) DecodeAuthorizationMessageResponse
```

<p>Decodes additional information about the authorization status of a request from an encoded message returned in response to an AWS request.</p> <p>For example, if a user is not authorized to perform an action that he or she has requested, the request returns a <code>Client.UnauthorizedOperation</code> response (an HTTP 403 response). Some AWS actions additionally return an encoded message that can provide details about this authorization failure. </p> <note> <p>Only certain AWS actions return an encoded authorization message. The documentation for an individual action indicates whether that action returns an encoded message in addition to returning an HTTP code.</p> </note> <p>The message is encoded because the details of the authorization status can constitute privileged information that the user who requested the action should not see. To decode an authorization status message, a user must be granted permissions via an IAM policy to request the <code>DecodeAuthorizationMessage</code> (<code>sts:DecodeAuthorizationMessage</code>) action. </p> <p>The decoded message includes the following type of information:</p> <ul> <li> <p>Whether the request was denied due to an explicit deny or due to the absence of an explicit allow. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-denyallow">Determining Whether a Request is Allowed or Denied</a> in the <i>IAM User Guide</i>. </p> </li> <li> <p>The principal who made the request.</p> </li> <li> <p>The requested action.</p> </li> <li> <p>The requested resource.</p> </li> <li> <p>The values of condition keys in the context of the user's request.</p> </li> </ul>

#### `getCallerIdentity`

``` purescript
getCallerIdentity :: forall eff. GetCallerIdentityRequest -> Aff (exception :: EXCEPTION | eff) GetCallerIdentityResponse
```

<p>Returns details about the IAM identity whose credentials are used to call the API.</p>

#### `getFederationToken`

``` purescript
getFederationToken :: forall eff. GetFederationTokenRequest -> Aff (exception :: EXCEPTION | eff) GetFederationTokenResponse
```

<p>Returns a set of temporary security credentials (consisting of an access key ID, a secret access key, and a security token) for a federated user. A typical use is in a proxy application that gets temporary security credentials on behalf of distributed applications inside a corporate network. Because you must call the <code>GetFederationToken</code> action using the long-term security credentials of an IAM user, this call is appropriate in contexts where those credentials can be safely stored, usually in a server-based application. For a comparison of <code>GetFederationToken</code> with the other APIs that produce temporary credentials, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security Credentials</a> and <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing the AWS STS APIs</a> in the <i>IAM User Guide</i>.</p> <note> <p>If you are creating a mobile-based or browser-based app that can authenticate users using a web identity provider like Login with Amazon, Facebook, Google, or an OpenID Connect-compatible identity provider, we recommend that you use <a href="http://aws.amazon.com/cognito/">Amazon Cognito</a> or <code>AssumeRoleWithWebIdentity</code>. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity">Federation Through a Web-based Identity Provider</a>.</p> </note> <p>The <code>GetFederationToken</code> action must be called by using the long-term AWS security credentials of an IAM user. You can also call <code>GetFederationToken</code> using the security credentials of an AWS root account, but we do not recommended it. Instead, we recommend that you create an IAM user for the purpose of the proxy application and then attach a policy to the IAM user that limits federated users to only the actions and resources that they need access to. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html">IAM Best Practices</a> in the <i>IAM User Guide</i>. </p> <p>The temporary security credentials that are obtained by using the long-term credentials of an IAM user are valid for the specified duration, from 900 seconds (15 minutes) up to a maximium of 129600 seconds (36 hours). The default is 43200 seconds (12 hours). Temporary credentials that are obtained by using AWS root account credentials have a maximum duration of 3600 seconds (1 hour).</p> <p>The temporary security credentials created by <code>GetFederationToken</code> can be used to make API calls to any AWS service with the following exceptions:</p> <ul> <li> <p>You cannot use these credentials to call any IAM APIs.</p> </li> <li> <p>You cannot call any STS APIs except <code>GetCallerIdentity</code>.</p> </li> </ul> <p> <b>Permissions</b> </p> <p>The permissions for the temporary security credentials returned by <code>GetFederationToken</code> are determined by a combination of the following: </p> <ul> <li> <p>The policy or policies that are attached to the IAM user whose credentials are used to call <code>GetFederationToken</code>.</p> </li> <li> <p>The policy that is passed as a parameter in the call.</p> </li> </ul> <p>The passed policy is attached to the temporary security credentials that result from the <code>GetFederationToken</code> API call--that is, to the <i>federated user</i>. When the federated user makes an AWS request, AWS evaluates the policy attached to the federated user in combination with the policy or policies attached to the IAM user whose credentials were used to call <code>GetFederationToken</code>. AWS allows the federated user's request only when both the federated user <i> <b>and</b> </i> the IAM user are explicitly allowed to perform the requested action. The passed policy cannot grant more permissions than those that are defined in the IAM user policy.</p> <p>A typical use case is that the permissions of the IAM user whose credentials are used to call <code>GetFederationToken</code> are designed to allow access to all the actions and resources that any federated user will need. Then, for individual users, you pass a policy to the operation that scopes down the permissions to a level that's appropriate to that individual user, using a policy that allows only a subset of permissions that are granted to the IAM user. </p> <p>If you do not pass a policy, the resulting temporary security credentials have no effective permissions. The only exception is when the temporary security credentials are used to access a resource that has a resource-based policy that specifically allows the federated user to access the resource.</p> <p>For more information about how permissions work, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_getfederationtoken.html">Permissions for GetFederationToken</a>. For information about using <code>GetFederationToken</code> to create temporary security credentials, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken">GetFederationToken—Federation Through a Custom Identity Broker</a>. </p>

#### `getSessionToken`

``` purescript
getSessionToken :: forall eff. GetSessionTokenRequest -> Aff (exception :: EXCEPTION | eff) GetSessionTokenResponse
```

<p>Returns a set of temporary credentials for an AWS account or IAM user. The credentials consist of an access key ID, a secret access key, and a security token. Typically, you use <code>GetSessionToken</code> if you want to use MFA to protect programmatic calls to specific AWS APIs like Amazon EC2 <code>StopInstances</code>. MFA-enabled IAM users would need to call <code>GetSessionToken</code> and submit an MFA code that is associated with their MFA device. Using the temporary security credentials that are returned from the call, IAM users can then make programmatic calls to APIs that require MFA authentication. If you do not supply a correct MFA code, then the API returns an access denied error. For a comparison of <code>GetSessionToken</code> with the other APIs that produce temporary credentials, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security Credentials</a> and <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing the AWS STS APIs</a> in the <i>IAM User Guide</i>.</p> <p>The <code>GetSessionToken</code> action must be called by using the long-term AWS security credentials of the AWS account or an IAM user. Credentials that are created by IAM users are valid for the duration that you specify, from 900 seconds (15 minutes) up to a maximum of 129600 seconds (36 hours), with a default of 43200 seconds (12 hours); credentials that are created by using account credentials can range from 900 seconds (15 minutes) up to a maximum of 3600 seconds (1 hour), with a default of 1 hour. </p> <p>The temporary security credentials created by <code>GetSessionToken</code> can be used to make API calls to any AWS service with the following exceptions:</p> <ul> <li> <p>You cannot call any IAM APIs unless MFA authentication information is included in the request.</p> </li> <li> <p>You cannot call any STS API <i>except</i> <code>AssumeRole</code> or <code>GetCallerIdentity</code>.</p> </li> </ul> <note> <p>We recommend that you do not call <code>GetSessionToken</code> with root account credentials. Instead, follow our <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#create-iam-users">best practices</a> by creating one or more IAM users, giving them the necessary permissions, and using IAM users for everyday interaction with AWS. </p> </note> <p>The permissions associated with the temporary security credentials returned by <code>GetSessionToken</code> are based on the permissions associated with account or IAM user whose credentials are used to call the action. If <code>GetSessionToken</code> is called using root account credentials, the temporary credentials have root account permissions. Similarly, if <code>GetSessionToken</code> is called using the credentials of an IAM user, the temporary credentials have the same permissions as the IAM user. </p> <p>For more information about using <code>GetSessionToken</code> to create temporary credentials, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken">Temporary Credentials for Users in Untrusted Environments</a> in the <i>IAM User Guide</i>. </p>

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


