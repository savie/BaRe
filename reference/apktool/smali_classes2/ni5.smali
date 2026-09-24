.class public final Lni5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lni5;->a:I

    .line 5
    .line 6
    iput-wide p2, p0, Lni5;->b:J

    .line 7
    .line 8
    iput-wide p4, p0, Lni5;->c:J

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lni5;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    .line 19
    sub-long/2addr p4, p2

    .line 20
    const-wide/16 p1, 0x1

    .line 21
    .line 22
    add-long/2addr p4, p1

    .line 23
    iput-wide p4, p0, Lni5;->e:J

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lni5;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lni5;->e:J

    .line 8
    .line 9
    cmp-long p0, v0, v2

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method
