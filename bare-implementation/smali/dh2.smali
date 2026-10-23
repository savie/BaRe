.class public final Ldh2;
.super Lh5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/ScheduledFuture;


# instance fields
.field public final n:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Lch2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lln5;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, p0, v1}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lch2;->a(Lln5;)Ljava/util/concurrent/ScheduledFuture;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Ldh2;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldh2;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    iget-object p0, p0, Lh5;->a:Ljava/lang/Object;

    .line 4
    .line 5
    instance-of v1, p0, La5;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast p0, La5;

    .line 10
    .line 11
    iget-boolean p0, p0, La5;->a:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    invoke-interface {v0, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/concurrent/Delayed;

    .line 2
    .line 3
    iget-object p0, p0, Ldh2;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 0

    .line 1
    iget-object p0, p0, Ldh2;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method
