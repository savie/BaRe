.class public final synthetic Lk32;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;

.field public final synthetic b:Landroid/os/CancellationSignal;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:Lt22;


# direct methods
.method public synthetic constructor <init>(Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk32;->a:Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;

    .line 5
    .line 6
    iput-object p2, p0, Lk32;->b:Landroid/os/CancellationSignal;

    .line 7
    .line 8
    iput-object p3, p0, Lk32;->c:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p4, p0, Lk32;->d:Lt22;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lk32;->d:Lt22;

    .line 2
    .line 3
    check-cast p1, Lyw3;

    .line 4
    .line 5
    iget-object v1, p0, Lk32;->a:Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;

    .line 6
    .line 7
    iget-object v2, p0, Lk32;->b:Landroid/os/CancellationSignal;

    .line 8
    .line 9
    iget-object p0, p0, Lk32;->c:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    invoke-static {v1, v2, p0, v0, p1}, Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;->$r8$lambda$RzDSQNuMWPQN0LmT82FX7UtPaM8(Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Lyw3;)Lbe8;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
