.class public final synthetic Lt32;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Landroid/os/CancellationSignal;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lt22;


# direct methods
.method public synthetic constructor <init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt32;->a:Landroid/os/CancellationSignal;

    .line 5
    .line 6
    iput-object p2, p0, Lt32;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lt32;->c:Lt22;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lt32;->c:Lt22;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Void;

    .line 4
    .line 5
    iget-object v1, p0, Lt32;->a:Landroid/os/CancellationSignal;

    .line 6
    .line 7
    iget-object p0, p0, Lt32;->b:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    invoke-static {v1, p0, v0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$CkXA6uyZF5r3Uy4uE_kF2MrG3TY(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Void;)Lbe8;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
