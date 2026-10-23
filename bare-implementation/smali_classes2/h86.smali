.class public final Lh86;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lbt3;

.field public final b:J

.field public c:J

.field public d:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lbt3;JLjava/lang/Long;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lh86;->a:Lbt3;

    .line 8
    .line 9
    iput-wide p2, p0, Lh86;->b:J

    .line 10
    .line 11
    iput-object p4, p0, Lh86;->d:Ljava/lang/Long;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 11

    .line 1
    iget-object v0, p0, Lh86;->a:Lbt3;

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
    iget-object v2, p0, Lh86;->d:Ljava/lang/Long;

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long v5, p1, v3

    .line 18
    .line 19
    if-gez v5, :cond_0

    .line 20
    .line 21
    move-wide p1, v3

    .line 22
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    iput-object v5, p0, Lh86;->d:Ljava/lang/Long;

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    iput-wide p1, p0, Lh86;->c:J

    .line 31
    .line 32
    return-wide v3

    .line 33
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    sub-long/2addr v0, v5

    .line 38
    const-wide/16 v5, 0x1

    .line 39
    .line 40
    cmp-long v2, v0, v5

    .line 41
    .line 42
    if-gez v2, :cond_2

    .line 43
    .line 44
    move-wide v0, v5

    .line 45
    :cond_2
    iget-wide v5, p0, Lh86;->c:J

    .line 46
    .line 47
    sub-long v5, p1, v5

    .line 48
    .line 49
    cmp-long v2, v5, v3

    .line 50
    .line 51
    if-gez v2, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move-wide v3, v5

    .line 55
    :goto_0
    iput-wide p1, p0, Lh86;->c:J

    .line 56
    .line 57
    div-long p1, v3, v0

    .line 58
    .line 59
    iget-wide v5, p0, Lh86;->b:J

    .line 60
    .line 61
    const-wide/16 v7, 0x3e8

    .line 62
    .line 63
    div-long v9, v5, v7

    .line 64
    .line 65
    cmp-long p0, p1, v9

    .line 66
    .line 67
    if-lez p0, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    mul-long/2addr p1, v7

    .line 71
    rem-long/2addr v3, v0

    .line 72
    mul-long/2addr v3, v7

    .line 73
    div-long/2addr v3, v0

    .line 74
    sub-long v0, v5, v3

    .line 75
    .line 76
    cmp-long p0, p1, v0

    .line 77
    .line 78
    if-lez p0, :cond_5

    .line 79
    .line 80
    :goto_1
    return-wide v5

    .line 81
    :cond_5
    add-long/2addr p1, v3

    .line 82
    return-wide p1
.end method
