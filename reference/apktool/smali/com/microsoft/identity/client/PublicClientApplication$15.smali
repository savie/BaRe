.class final Lcom/microsoft/identity/client/PublicClientApplication$15;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/client/PublicClientApplication;

.field final synthetic val$acquireTokenParameters:Lcom/microsoft/identity/client/AcquireTokenParameters;

.field final synthetic val$publicApiId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$15;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$15;->val$acquireTokenParameters:Lcom/microsoft/identity/client/AcquireTokenParameters;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/client/PublicClientApplication$15;->val$publicApiId:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$15;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication$15;->val$acquireTokenParameters:Lcom/microsoft/identity/client/AcquireTokenParameters;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getCallback()Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v0, v3, v2}, Lcom/microsoft/identity/client/PublicClientApplication;->getCommandCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/java/commands/CommandCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :try_start_0
    invoke-virtual {v2}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getActivity()Landroid/app/Activity;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v2}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getCallback()Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, "activity"

    .line 28
    .line 29
    invoke-static {v3, v6}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v3, "scopes"

    .line 33
    .line 34
    invoke-static {v4, v3}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v3, "callback"

    .line 38
    .line 39
    invoke-static {v5, v3}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/microsoft/identity/client/PublicClientApplication;->selectAccountRecordForTokenRequest(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/client/TokenParameters;->setAccountRecord(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v1, v3, v2}, Lcom/microsoft/identity/client/internal/MsalUtils;->createInteractiveTokenCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/client/AcquireTokenParameters;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v3, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    .line 58
    .line 59
    new-instance v4, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-direct {v4, v1, v5}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;-><init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/authorities/Authority;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplication$15;->val$publicApiId:Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {v3, v2, v4, v0, p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->beginInteractive(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catch_0
    move-exception p0

    .line 78
    invoke-static {p0}, Lcom/microsoft/identity/common/PropertyBagUtil;->baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance v1, Landroid/os/Handler;

    .line 83
    .line 84
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lcom/microsoft/identity/client/PublicClientApplication$15$1;

    .line 92
    .line 93
    invoke-direct {v2, v0, p0}, Lcom/microsoft/identity/client/PublicClientApplication$15$1;-><init>(Lcom/microsoft/identity/common/java/commands/CommandCallback;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    .line 98
    .line 99
    return-void
.end method
