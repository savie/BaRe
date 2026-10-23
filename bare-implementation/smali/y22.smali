.class public final synthetic Ly22;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Landroid/os/CancellationSignal;

.field public final synthetic b:Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;


# direct methods
.method public synthetic constructor <init>(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly22;->a:Landroid/os/CancellationSignal;

    .line 5
    .line 6
    iput-object p2, p0, Ly22;->b:Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ly22;->b:Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 2
    .line 3
    check-cast p1, Lxp0;

    .line 4
    .line 5
    iget-object p0, p0, Ly22;->a:Landroid/os/CancellationSignal;

    .line 6
    .line 7
    invoke-static {p0, v0, p1}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$1p-ZE-A12pkutKgK_hdgnOulY6Y(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Lxp0;)Lbe8;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
