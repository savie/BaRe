.class public final Lj86;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lbt3;

.field public final b:J

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Li86;->a:Li86;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lj86;->a:Lbt3;

    .line 7
    .line 8
    const-wide/16 v0, 0x7d0

    .line 9
    .line 10
    iput-wide v0, p0, Lj86;->b:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Long;)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lj86;->c:Ljava/lang/Long;

    .line 6
    .line 7
    iput-object p1, p0, Lj86;->d:Ljava/lang/Long;

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iget-object v3, p0, Lj86;->d:Ljava/lang/Long;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    cmp-long v1, v1, v5

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    return v4

    .line 29
    :cond_2
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    const-wide/16 v5, 0x0

    .line 34
    .line 35
    cmp-long v1, v1, v5

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Lj86;->c:Ljava/lang/Long;

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    iput-object p3, p0, Lj86;->d:Ljava/lang/Long;

    .line 44
    .line 45
    return v0

    .line 46
    :cond_3
    iget-object v1, p0, Lj86;->a:Lbt3;

    .line 47
    .line 48
    invoke-interface {v1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Number;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    cmp-long v3, p1, v5

    .line 59
    .line 60
    if-lez v3, :cond_4

    .line 61
    .line 62
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 63
    .line 64
    .line 65
    move-result-wide v7

    .line 66
    cmp-long p1, v7, p1

    .line 67
    .line 68
    if-ltz p1, :cond_4

    .line 69
    .line 70
    move p1, v0

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    move p1, v4

    .line 73
    :goto_1
    iget-object p2, p0, Lj86;->c:Ljava/lang/Long;

    .line 74
    .line 75
    if-eqz p2, :cond_6

    .line 76
    .line 77
    iget-wide v7, p0, Lj86;->b:J

    .line 78
    .line 79
    cmp-long v3, v7, v5

    .line 80
    .line 81
    if-lez v3, :cond_6

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    sub-long v5, v1, v5

    .line 88
    .line 89
    cmp-long p2, v5, v7

    .line 90
    .line 91
    if-gez p2, :cond_6

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    move v0, v4

    .line 97
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 98
    .line 99
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lj86;->c:Ljava/lang/Long;

    .line 104
    .line 105
    iput-object p3, p0, Lj86;->d:Ljava/lang/Long;

    .line 106
    .line 107
    :cond_7
    return v0
.end method
