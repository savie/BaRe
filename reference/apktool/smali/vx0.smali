.class public Lvx0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvx0;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 10
    .line 11
    iput-wide p2, p0, Lvx0;->b:J

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    add-int/lit8 v1, p1, -0x1

    .line 15
    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lvx0;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 19
    .line 20
    new-instance v2, Lox0;

    .line 21
    .line 22
    invoke-direct {v2, p2, p3}, Lox0;-><init>(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p0, "unable to allocate byte buffer; this should not happen"

    .line 35
    .line 36
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    throw p0

    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lox0;
    .locals 3

    .line 1
    iget-object v0, p0, Lvx0;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lox0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lox0;

    .line 13
    .line 14
    iget-wide v1, p0, Lvx0;->b:J

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Lox0;-><init>(J)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
