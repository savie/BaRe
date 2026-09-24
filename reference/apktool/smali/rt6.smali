.class public abstract Lrt6;
.super Lev6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:I

.field public d:Ls40;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    new-instance v0, Lut6;

    invoke-direct {v0}, Lut6;-><init>()V

    invoke-direct {p0, v0}, Lev6;-><init>(Ldv6;)V

    return-void
.end method

.method public constructor <init>(ILus6;Lit6;JJ)V
    .locals 1

    .line 1
    new-instance v0, Lut6;

    .line 2
    .line 3
    invoke-direct {v0}, Lut6;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lev6;-><init>(Ldv6;)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lrt6;->c:I

    .line 10
    .line 11
    iput-object p2, v0, Lut6;->a:Lus6;

    .line 12
    .line 13
    iput-object p3, v0, Lut6;->e:Lit6;

    .line 14
    .line 15
    iput-wide p4, v0, Lut6;->h:J

    .line 16
    .line 17
    iput-wide p6, v0, Lut6;->i:J

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lzu6;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lrt6;->g(Lzu6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b()Lzu6;
    .locals 0

    .line 1
    iget-object p0, p0, Lev6;->b:Lzu6;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()I
    .locals 0

    .line 1
    const/high16 p0, 0x10000

    .line 2
    .line 3
    return p0
.end method

.method public e()Lrt6;
    .locals 0

    .line 1
    return-object p0
.end method

.method public f(Lzu6;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "Should be implemented by specific message type"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public g(Lzu6;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lev6;->b:Lzu6;

    .line 2
    .line 3
    iget-object v0, p0, Lev6;->a:Ldv6;

    .line 4
    .line 5
    check-cast v0, Lut6;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v1, p1, Low0;->d:I

    .line 11
    .line 12
    iput v1, v0, Lut6;->n:I

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    sget-object v2, Lut6;->q:[B

    .line 16
    .line 17
    invoke-virtual {p1, v2, v1}, Low0;->i([BI)Low0;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x40

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Low0;->k(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lut6;->a:Lus6;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x2

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    if-eq v1, v3, :cond_0

    .line 36
    .line 37
    iget v1, v0, Lut6;->b:I

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Low0;->k(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1, v2}, Lzu6;->u(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v1, v0, Lut6;->a:Lus6;

    .line 47
    .line 48
    invoke-virtual {v1}, Lus6;->a()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    new-array v1, v2, [B

    .line 55
    .line 56
    fill-array-data v1, :array_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1, v2}, Low0;->i([BI)Low0;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v2}, Lzu6;->u(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p1}, Lzu6;->w()V

    .line 67
    .line 68
    .line 69
    :goto_1
    iget-object v1, v0, Lut6;->e:Lit6;

    .line 70
    .line 71
    iget v1, v1, Lit6;->a:I

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Low0;->k(I)V

    .line 74
    .line 75
    .line 76
    iget v1, v0, Lut6;->c:I

    .line 77
    .line 78
    iget v2, v0, Lut6;->b:I

    .line 79
    .line 80
    add-int/2addr v1, v2

    .line 81
    invoke-virtual {p1, v1}, Low0;->k(I)V

    .line 82
    .line 83
    .line 84
    iget-wide v1, v0, Lut6;->k:J

    .line 85
    .line 86
    invoke-virtual {p1, v1, v2}, Low0;->l(J)V

    .line 87
    .line 88
    .line 89
    iget v1, v0, Lut6;->l:I

    .line 90
    .line 91
    int-to-long v1, v1

    .line 92
    invoke-virtual {p1, v1, v2}, Low0;->l(J)V

    .line 93
    .line 94
    .line 95
    iget-wide v1, v0, Lut6;->f:J

    .line 96
    .line 97
    invoke-virtual {p1, v1, v2}, Low0;->g(J)V

    .line 98
    .line 99
    .line 100
    iget-wide v1, v0, Lut6;->k:J

    .line 101
    .line 102
    sget-object v3, Lkt6;->b:Lkt6;

    .line 103
    .line 104
    invoke-static {v1, v2, v3}, Lsz8;->H(JLsx2;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    iget-wide v1, v0, Lut6;->g:J

    .line 111
    .line 112
    invoke-virtual {p1, v1, v2}, Low0;->g(J)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    invoke-virtual {p1}, Lzu6;->w()V

    .line 117
    .line 118
    .line 119
    iget-wide v1, v0, Lut6;->i:J

    .line 120
    .line 121
    invoke-virtual {p1, v1, v2}, Low0;->l(J)V

    .line 122
    .line 123
    .line 124
    :goto_2
    iget-wide v0, v0, Lut6;->h:J

    .line 125
    .line 126
    invoke-virtual {p1, v0, v1}, Low0;->g(J)V

    .line 127
    .line 128
    .line 129
    sget-object v0, Lut6;->p:[B

    .line 130
    .line 131
    const/16 v1, 0x10

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Low0;->i([BI)Low0;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lrt6;->h(Lzu6;)V

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lev6;->a:Ldv6;

    .line 140
    .line 141
    check-cast p0, Lut6;

    .line 142
    .line 143
    iget p1, p1, Low0;->d:I

    .line 144
    .line 145
    iput p1, p0, Lut6;->o:I

    .line 146
    .line 147
    return-void

    .line 148
    nop

    .line 149
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public h(Lzu6;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "Should be implemented by specific message type"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lev6;->a:Ldv6;

    .line 7
    .line 8
    check-cast v1, Lut6;

    .line 9
    .line 10
    iget-object v1, v1, Lut6;->e:Lit6;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " with message id << "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lev6;->a:Ldv6;

    .line 21
    .line 22
    check-cast p0, Lut6;

    .line 23
    .line 24
    iget-wide v1, p0, Lut6;->f:J

    .line 25
    .line 26
    const-string p0, " >>"

    .line 27
    .line 28
    invoke-static {v1, v2, p0, v0}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
