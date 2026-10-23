.class public final Lqu6;
.super Llt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:Lnr6;

.field public final g:La93;


# direct methods
.method public constructor <init>(Lus6;Lnr6;JJLa93;I)V
    .locals 9

    .line 1
    sget-object v3, Lit6;->q:Lit6;

    .line 2
    .line 3
    invoke-virtual/range {p7 .. p7}, La93;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    move/from16 v1, p8

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    const/16 v1, 0x31

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    move-object v2, p1

    .line 17
    move-wide v4, p3

    .line 18
    move-wide v6, p5

    .line 19
    invoke-direct/range {v0 .. v8}, Llt6;-><init>(ILus6;Lit6;JJI)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lqu6;->f:Lnr6;

    .line 23
    .line 24
    move-object/from16 p1, p7

    .line 25
    .line 26
    iput-object p1, p0, Lqu6;->g:La93;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final h(Lzu6;)V
    .locals 8

    .line 1
    iget v0, p0, Lrt6;->c:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Low0;->k(I)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x70

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Low0;->k(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lev6;->a:Ldv6;

    .line 12
    .line 13
    check-cast v0, Lut6;

    .line 14
    .line 15
    iget v0, v0, Lut6;->b:I

    .line 16
    .line 17
    const/high16 v1, 0x10000

    .line 18
    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget v2, p0, Llt6;->e:I

    .line 21
    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-long v3, v0

    .line 27
    invoke-virtual {p1, v3, v4}, Low0;->l(J)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lqu6;->g:La93;

    .line 31
    .line 32
    iget-wide v3, v0, La93;->a:J

    .line 33
    .line 34
    invoke-virtual {p1, v3, v4}, Low0;->m(J)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lqu6;->f:Lnr6;

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Lnr6;->a(Lzu6;)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    invoke-virtual {p1, v3, v4}, Low0;->l(J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, La93;->a()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    iget-object v6, p0, Lev6;->a:Ldv6;

    .line 52
    .line 53
    check-cast v6, Lut6;

    .line 54
    .line 55
    iget v6, v6, Lut6;->b:I

    .line 56
    .line 57
    mul-int/2addr v6, v1

    .line 58
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    sub-int/2addr v5, v2

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    int-to-long v5, v5

    .line 69
    invoke-virtual {p1, v5, v6}, Low0;->l(J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2}, Low0;->k(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v2}, Low0;->k(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v3, v4}, Low0;->l(J)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lev6;->a:Ldv6;

    .line 82
    .line 83
    check-cast p0, Lut6;

    .line 84
    .line 85
    iget p0, p0, Lut6;->b:I

    .line 86
    .line 87
    new-array v1, v1, [B

    .line 88
    .line 89
    :goto_0
    if-ge v2, p0, :cond_0

    .line 90
    .line 91
    :try_start_0
    invoke-virtual {v0, v1}, La93;->b([B)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-virtual {p1, v1, v3}, Low0;->i([BI)Low0;

    .line 96
    .line 97
    .line 98
    iget-wide v4, v0, La93;->a:J

    .line 99
    .line 100
    int-to-long v6, v3

    .line 101
    add-long/2addr v4, v6

    .line 102
    iput-wide v4, v0, La93;->a:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p0

    .line 108
    new-instance p1, Lgv6;

    .line 109
    .line 110
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_0
    return-void
.end method
