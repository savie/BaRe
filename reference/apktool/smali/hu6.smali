.class public final Lhu6;
.super Lrt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lnr6;

.field public final f:I

.field public final g:I

.field public final h:[B


# direct methods
.method public constructor <init>(Lus6;JJLnr6;I[B)V
    .locals 8

    .line 1
    const/16 v1, 0x21

    .line 2
    .line 3
    sget-object v3, Lit6;->y:Lit6;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v2, p1

    .line 7
    move-wide v4, p2

    .line 8
    move-wide v6, p4

    .line 9
    invoke-direct/range {v0 .. v7}, Lrt6;-><init>(ILus6;Lit6;JJ)V

    .line 10
    .line 11
    .line 12
    iput-object p6, p0, Lhu6;->e:Lnr6;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lhu6;->f:I

    .line 16
    .line 17
    iput p7, p0, Lhu6;->g:I

    .line 18
    .line 19
    move-object/from16 p1, p8

    .line 20
    .line 21
    iput-object p1, p0, Lhu6;->h:[B

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final h(Lzu6;)V
    .locals 3

    .line 1
    iget v0, p0, Lrt6;->c:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Low0;->k(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iget v1, p0, Lhu6;->f:I

    .line 8
    .line 9
    if-eq v1, v0, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq v1, v0, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-eq v1, v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    if-ne v1, v0, :cond_0

    .line 19
    .line 20
    const-wide/16 v0, 0x4

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    throw p0

    .line 25
    :cond_1
    const-wide/16 v0, 0x3

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-wide/16 v0, 0x2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const-wide/16 v0, 0x1

    .line 32
    .line 33
    :goto_0
    long-to-int v0, v0

    .line 34
    int-to-byte v0, v0

    .line 35
    invoke-virtual {p1, v0}, Low0;->f(B)Low0;

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lhu6;->g:I

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_4
    invoke-static {v0}, Lxs1;->d(I)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    long-to-int v0, v0

    .line 49
    int-to-byte v0, v0

    .line 50
    :goto_1
    invoke-virtual {p1, v0}, Low0;->f(B)Low0;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lhu6;->h:[B

    .line 54
    .line 55
    array-length v1, v0

    .line 56
    int-to-long v1, v1

    .line 57
    invoke-virtual {p1, v1, v2}, Low0;->l(J)V

    .line 58
    .line 59
    .line 60
    const/16 v1, 0x60

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Low0;->k(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lzu6;->v()V

    .line 66
    .line 67
    .line 68
    const-wide/16 v1, 0x0

    .line 69
    .line 70
    invoke-virtual {p1, v1, v2}, Low0;->l(J)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lhu6;->e:Lnr6;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lnr6;->a(Lzu6;)V

    .line 76
    .line 77
    .line 78
    array-length p0, v0

    .line 79
    invoke-virtual {p1, v0, p0}, Low0;->i([BI)Low0;

    .line 80
    .line 81
    .line 82
    return-void
.end method
