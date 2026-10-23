.class public final Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;
.super Lcom/microsoft/identity/common/java/util/ResultFuture;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/microsoft/identity/common/java/util/ResultFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCancellationSignal:Lcom/microsoft/identity/common/java/net/CancellationSignal;

.field private final mFinalized:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;->mFinalized:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    new-instance v0, Lcom/microsoft/identity/common/java/net/CancellationSignal;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/net/CancellationSignal;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;->mCancellationSignal:Lcom/microsoft/identity/common/java/net/CancellationSignal;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getCancellationSignal()Lcom/microsoft/identity/common/java/net/CancellationSignal;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;->mCancellationSignal:Lcom/microsoft/identity/common/java/net/CancellationSignal;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCleanedUp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;->mFinalized:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
