.class public final Lwg;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J

.field public final b:Lmt3;

.field public final c:J

.field public d:J


# direct methods
.method public constructor <init>(JJLmt3;)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p3, p0, Lwg;->a:J

    .line 8
    .line 9
    iput-object p5, p0, Lwg;->b:Lmt3;

    .line 10
    .line 11
    add-long/2addr p1, p3

    .line 12
    const-wide/16 p3, 0x0

    .line 13
    .line 14
    cmp-long p5, p1, p3

    .line 15
    .line 16
    if-gez p5, :cond_0

    .line 17
    .line 18
    move-wide p1, p3

    .line 19
    :cond_0
    iput-wide p1, p0, Lwg;->c:J

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lug;J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lwg;->d:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, p2, v2

    .line 6
    .line 7
    if-gez v4, :cond_0

    .line 8
    .line 9
    move-wide p2, v2

    .line 10
    :cond_0
    add-long/2addr v0, p2

    .line 11
    iget-wide p2, p0, Lwg;->a:J

    .line 12
    .line 13
    iget-wide v8, p0, Lwg;->c:J

    .line 14
    .line 15
    sub-long p2, v8, p2

    .line 16
    .line 17
    cmp-long v4, p2, v2

    .line 18
    .line 19
    if-gez v4, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-wide v2, p2

    .line 23
    :goto_0
    cmp-long p2, v0, v2

    .line 24
    .line 25
    if-lez p2, :cond_2

    .line 26
    .line 27
    move-wide v6, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move-wide v6, v0

    .line 30
    :goto_1
    iput-wide v6, p0, Lwg;->d:J

    .line 31
    .line 32
    new-instance v4, Lvg;

    .line 33
    .line 34
    move-object v5, p1

    .line 35
    invoke-direct/range {v4 .. v9}, Lvg;-><init>(Lug;JJ)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lwg;->b:Lmt3;

    .line 39
    .line 40
    invoke-interface {p0, v4}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-void
.end method
