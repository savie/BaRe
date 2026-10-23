.class final Lcom/microsoft/identity/client/PublicClientApplication$16;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/client/PublicClientApplication;

.field final synthetic val$acquireTokenSilentParameters:Lcom/microsoft/identity/client/AcquireTokenSilentParameters;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$16;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$16;->val$acquireTokenSilentParameters:Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$16;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplication$16;->val$acquireTokenSilentParameters:Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->getCallback()Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2, p0}, Lcom/microsoft/identity/client/PublicClientApplication;->getCommandCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/java/commands/CommandCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/Account;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->getCallback()Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-string v6, "authority"

    .line 32
    .line 33
    invoke-static {v2, v6}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "account"

    .line 37
    .line 38
    invoke-static {v3, v2}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v2, "callback"

    .line 42
    .line 43
    invoke-static {v5, v2}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "scopes"

    .line 47
    .line 48
    invoke-static {v4, v2}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1, p0}, Lcom/microsoft/identity/client/PublicClientApplication;->selectAccountRecordForTokenRequest(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/client/TokenParameters;->setAccountRecord(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v1, v2, p0}, Lcom/microsoft/identity/client/internal/MsalUtils;->createSilentTokenCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    new-instance v2, Lcom/microsoft/identity/common/java/commands/SilentTokenCommand;

    .line 67
    .line 68
    new-instance v3, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-direct {v3, v1, v4}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;-><init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/authorities/Authority;)V

    .line 75
    .line 76
    .line 77
    const-string v1, "23"

    .line 78
    .line 79
    invoke-direct {v2, p0, v3, v0, v1}, Lcom/microsoft/identity/common/java/commands/BaseCommand;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v2}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catch_0
    move-exception p0

    .line 87
    invoke-static {p0}, Lcom/microsoft/identity/common/PropertyBagUtil;->baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    new-instance v1, Landroid/os/Handler;

    .line 92
    .line 93
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 98
    .line 99
    .line 100
    new-instance v2, Lcom/microsoft/identity/client/PublicClientApplication$16$1;

    .line 101
    .line 102
    invoke-direct {v2, v0, p0}, Lcom/microsoft/identity/client/PublicClientApplication$16$1;-><init>(Lcom/microsoft/identity/common/java/commands/CommandCallback;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    return-void
.end method
