.class public final synthetic Lwg2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lch2;


# instance fields
.field public final synthetic a:Lbh2;

.field public final synthetic b:Ljava/util/concurrent/Callable;

.field public final synthetic c:J

.field public final synthetic d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public synthetic constructor <init>(Lbh2;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwg2;->a:Lbh2;

    .line 5
    .line 6
    iput-object p2, p0, Lwg2;->b:Ljava/util/concurrent/Callable;

    .line 7
    .line 8
    iput-wide p3, p0, Lwg2;->c:J

    .line 9
    .line 10
    iput-object p5, p0, Lwg2;->d:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lln5;)Ljava/util/concurrent/ScheduledFuture;
    .locals 5

    .line 1
    iget-object v0, p0, Lwg2;->a:Lbh2;

    .line 2
    .line 3
    iget-object v1, v0, Lbh2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    .line 5
    new-instance v2, Lzg2;

    .line 6
    .line 7
    iget-object v3, p0, Lwg2;->b:Ljava/util/concurrent/Callable;

    .line 8
    .line 9
    invoke-direct {v2, v0, v3, p1}, Lzg2;-><init>(Lbh2;Ljava/util/concurrent/Callable;Lln5;)V

    .line 10
    .line 11
    .line 12
    iget-wide v3, p0, Lwg2;->c:J

    .line 13
    .line 14
    iget-object p0, p0, Lwg2;->d:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    invoke-interface {v1, v2, v3, v4, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
