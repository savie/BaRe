.class public final Lam2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Lr73;

.field public b:Lm83;

.field public c:[B

.field public d:Li73;

.field public final synthetic e:Lbm2;


# direct methods
.method public constructor <init>(Lbm2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lam2;->e:Lbm2;

    .line 5
    .line 6
    const-class p1, Lp73;

    .line 7
    .line 8
    invoke-static {p1}, Ln83;->a(Ljava/lang/Class;)Lr73;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lam2;->a:Lr73;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lam2;->a(Z)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object p1, p0, Lam2;->b:Lm83;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lm83;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lam2;->b:Lm83;

    .line 29
    .line 30
    invoke-virtual {p1}, Lm83;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Li73;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lam2;->a(Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    :goto_1
    iput-object p1, p0, Lam2;->d:Li73;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lam2;->e:Lbm2;

    .line 2
    .line 3
    iget-object v1, v0, Lmm2;->b:Lwm2;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lxt6;->b:Lxt6;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    move-object v10, p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-class p1, Lxt6;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    iget-object p1, p0, Lam2;->a:Lr73;

    .line 23
    .line 24
    invoke-interface {p1}, Lr73;->a()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    iget-object v4, v0, Lmm2;->c:Lnr6;

    .line 29
    .line 30
    new-instance v2, Lyt6;

    .line 31
    .line 32
    iget-object v3, v1, Lvc7;->e:Lus6;

    .line 33
    .line 34
    move-object v8, v4

    .line 35
    iget-wide v4, v1, Lvc7;->t:J

    .line 36
    .line 37
    iget-wide v6, v1, Lvc7;->c:J

    .line 38
    .line 39
    iget v11, v1, Lvc7;->q:I

    .line 40
    .line 41
    invoke-direct/range {v2 .. v11}, Lyt6;-><init>(Lus6;JJLnr6;ILjava/util/EnumSet;I)V

    .line 42
    .line 43
    .line 44
    iget-wide v6, v1, Lvc7;->r:J

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lvc7;->b(Lrt6;)Lp21;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "Query directory"

    .line 51
    .line 52
    sget-object v5, Lvc7;->y:Lfo8;

    .line 53
    .line 54
    move-object v4, v8

    .line 55
    invoke-static/range {v2 .. v7}, Lvc7;->a(Lp21;Ljava/lang/String;Ljava/lang/Object;Lzm7;J)Lrt6;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lzt6;

    .line 60
    .line 61
    iget-object v1, v0, Lev6;->a:Ldv6;

    .line 62
    .line 63
    check-cast v1, Lut6;

    .line 64
    .line 65
    iget-wide v1, v1, Lut6;->j:J

    .line 66
    .line 67
    iget-object v0, v0, Lzt6;->e:[B

    .line 68
    .line 69
    const-wide v3, 0x80000006L

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    cmp-long v3, v1, v3

    .line 75
    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    const-wide v3, 0xc000000fL

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    cmp-long v1, v1, v3

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    iget-object v1, p0, Lam2;->c:[B

    .line 88
    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_1
    iput-object v0, p0, Lam2;->c:[B

    .line 99
    .line 100
    sget-object v1, Ln83;->a:Ljava/util/HashMap;

    .line 101
    .line 102
    new-instance v1, Lm83;

    .line 103
    .line 104
    invoke-direct {v1, v0, p1}, Lm83;-><init>([BLr73;)V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Lam2;->b:Lm83;

    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    :goto_2
    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lam2;->b:Lm83;

    .line 112
    .line 113
    iput-object p1, p0, Lam2;->c:[B

    .line 114
    .line 115
    return-void
.end method

.method public final hasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lam2;->d:Li73;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lam2;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lam2;->d:Li73;

    .line 9
    .line 10
    :goto_0
    iget-object v2, p0, Lam2;->b:Lm83;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v2}, Lm83;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lam2;->b:Lm83;

    .line 21
    .line 22
    invoke-virtual {v1}, Lm83;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Li73;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, v2}, Lam2;->a(Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    iput-object v1, p0, Lam2;->d:Li73;

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    invoke-static {}, Lm0;->d()V

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public final remove()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
