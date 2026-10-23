.class public final Lmy6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lbt3;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Lbt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmy6;->a:Lbt3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 9

    .line 1
    iget-object v0, p0, Lmy6;->a:Lbt3;

    .line 2
    .line 3
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lmy6;->c:J

    .line 14
    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    cmp-long v6, v2, v4

    .line 18
    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    iput-wide v0, p0, Lmy6;->c:J

    .line 22
    .line 23
    iput-wide p1, p0, Lmy6;->b:J

    .line 24
    .line 25
    return-wide v4

    .line 26
    :cond_0
    sub-long v2, v0, v2

    .line 27
    .line 28
    const-wide/16 v6, 0x1

    .line 29
    .line 30
    cmp-long v8, v2, v6

    .line 31
    .line 32
    if-gez v8, :cond_1

    .line 33
    .line 34
    move-wide v2, v6

    .line 35
    :cond_1
    iget-wide v6, p0, Lmy6;->b:J

    .line 36
    .line 37
    sub-long v6, p1, v6

    .line 38
    .line 39
    cmp-long v8, v6, v4

    .line 40
    .line 41
    if-gez v8, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move-wide v4, v6

    .line 45
    :goto_0
    iput-wide v0, p0, Lmy6;->c:J

    .line 46
    .line 47
    iput-wide p1, p0, Lmy6;->b:J

    .line 48
    .line 49
    const-wide/16 p0, 0x3e8

    .line 50
    .line 51
    mul-long/2addr v4, p0

    .line 52
    div-long/2addr v4, v2

    .line 53
    return-wide v4
.end method
