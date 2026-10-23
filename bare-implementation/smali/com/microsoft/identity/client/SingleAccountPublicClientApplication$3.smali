.class final Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/commands/CommandCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/commands/CommandCallback<",
        "Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;",
        "Lcom/microsoft/identity/common/java/exception/BaseException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

.field final synthetic val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

.field final synthetic val$tokenParameters:Lcom/microsoft/identity/client/TokenParameters;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/SilentAuthenticationCallback;Lcom/microsoft/identity/client/TokenParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$tokenParameters:Lcom/microsoft/identity/client/TokenParameters;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    .line 2
    .line 3
    instance-of v0, p0, Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 8
    .line 9
    check-cast p0, Lut5;

    .line 10
    .line 11
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 12
    .line 13
    iget-object p0, p0, Lut5;->a:Lvt5;

    .line 14
    .line 15
    iget-object v1, p0, La55;->b:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    const/4 v5, 0x0

    .line 19
    const-string v2, "User cancelled login."

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v1, v0}, Lvt5;->j(ZLcom/microsoft/identity/client/AuthenticationResult;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string p0, "Silent requests cannot be cancelled."

    .line 32
    .line 33
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onError(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->msalExceptionFromBaseException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lcom/microsoft/identity/client/SilentAuthenticationCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "callback cannot be null or empty"

    .line 16
    .line 17
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onTaskCompleted(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->getCacheRecordWithTenantProfileData()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 12
    .line 13
    invoke-static {v2, v1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->access$200(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$tokenParameters:Lcom/microsoft/identity/client/TokenParameters;

    .line 17
    .line 18
    invoke-static {p1, p0, v0}, Lcom/microsoft/identity/client/PublicClientApplication;->postAuthResult(Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;Lcom/microsoft/identity/client/TokenParameters;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p0, "callback cannot be null or empty"

    .line 23
    .line 24
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
