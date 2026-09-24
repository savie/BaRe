.class public final Lvg8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final synthetic b:Lwg8;


# direct methods
.method public constructor <init>(Lwg8;Lug8;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvg8;->b:Lwg8;

    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lvg8;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 12
    .line 13
    sget-object v1, Lwg8;->n:Ll15;

    .line 14
    .line 15
    const-string v2, "Creating new CachedOtpConnection"

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ll15;->k(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lwg8;->a:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    new-instance v0, Lxy1;

    .line 26
    .line 27
    const/4 v1, 0x5

    .line 28
    invoke-direct {v0, v1, p0, p2}, Lxy1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Lvg8;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    sget-object v0, Lwg8;->p:Ltg8;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
