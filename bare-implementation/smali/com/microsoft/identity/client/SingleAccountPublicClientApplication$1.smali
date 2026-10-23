.class final Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

.field final synthetic val$callback:Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$CurrentAccountCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$CurrentAccountCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;->val$callback:Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$CurrentAccountCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onMigrationFinished()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/microsoft/identity/client/internal/MsalUtils;->createCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/microsoft/identity/common/internal/commands/GetCurrentAccountCommand;

    .line 14
    .line 15
    new-instance v3, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;

    .line 16
    .line 17
    invoke-direct {v3, v0}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;-><init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1$1;-><init>(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$1;)V

    .line 23
    .line 24
    .line 25
    const-string p0, "921"

    .line 26
    .line 27
    invoke-direct {v2, v1, v3, v0, p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
