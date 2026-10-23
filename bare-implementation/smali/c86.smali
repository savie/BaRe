.class public final Lc86;
.super Lzq3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public b:J

.field public final c:Le11;

.field public d:J


# direct methods
.method public constructor <init>(Lyw0;JLe11;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzq3;-><init>(Lnh7;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lc86;->c:Le11;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f0(Lnw0;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lzq3;->a:Lnh7;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lnh7;->f0(Lnw0;J)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lc86;->d:J

    .line 7
    .line 8
    add-long/2addr v0, p2

    .line 9
    iput-wide v0, p0, Lc86;->d:J

    .line 10
    .line 11
    iget-wide p1, p0, Lc86;->b:J

    .line 12
    .line 13
    sub-long p1, v0, p1

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long p1, p1, v2

    .line 18
    .line 19
    if-ltz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lc86;->c:Le11;

    .line 22
    .line 23
    iget-object p1, p1, Le11;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Lmt3;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-interface {p1, p2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-wide p1, p0, Lc86;->d:J

    .line 37
    .line 38
    iput-wide p1, p0, Lc86;->b:J

    .line 39
    .line 40
    :cond_1
    return-void
.end method
