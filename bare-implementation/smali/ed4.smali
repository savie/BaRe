.class public final Led4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/concurrent/CountDownLatch;

.field public volatile b:Landroid/content/Intent;

.field public final c:Ldd4;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Led4;->a:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    new-instance v0, Ldd4;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Ldd4;-><init>(Led4;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Led4;->c:Ldd4;

    .line 18
    .line 19
    return-void
.end method
