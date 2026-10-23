.class public final Lyt6;
.super Llt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:I

.field public final g:Ljava/util/Set;

.field public final h:Lnr6;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lus6;JJLnr6;ILjava/util/EnumSet;I)V
    .locals 9

    .line 1
    const/16 v1, 0x21

    .line 2
    .line 3
    sget-object v3, Lit6;->t:Lit6;

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
    move/from16 v8, p9

    .line 10
    .line 11
    invoke-direct/range {v0 .. v8}, Llt6;-><init>(ILus6;Lit6;JJI)V

    .line 12
    .line 13
    .line 14
    move/from16 p1, p7

    .line 15
    .line 16
    iput p1, p0, Lyt6;->f:I

    .line 17
    .line 18
    move-object/from16 p1, p8

    .line 19
    .line 20
    iput-object p1, p0, Lyt6;->g:Ljava/util/Set;

    .line 21
    .line 22
    iput-object p6, p0, Lyt6;->h:Lnr6;

    .line 23
    .line 24
    const-string p1, "*"

    .line 25
    .line 26
    iput-object p1, p0, Lyt6;->i:Ljava/lang/String;

    .line 27
    .line 28
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
    iget v0, p0, Lyt6;->f:I

    .line 7
    .line 8
    invoke-static {v0}, Lxs1;->d(I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    long-to-int v0, v0

    .line 13
    int-to-byte v0, v0

    .line 14
    invoke-virtual {p1, v0}, Low0;->f(B)Low0;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lyt6;->g:Ljava/util/Set;

    .line 18
    .line 19
    invoke-static {v0}, Lsz8;->j0(Ljava/util/Collection;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    long-to-int v0, v0

    .line 24
    int-to-byte v0, v0

    .line 25
    invoke-virtual {p1, v0}, Low0;->f(B)Low0;

    .line 26
    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Low0;->l(J)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lyt6;->h:Lnr6;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lnr6;->a(Lzu6;)V

    .line 36
    .line 37
    .line 38
    const/16 v0, 0x60

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Low0;->k(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lyt6;->i:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    mul-int/lit8 v1, v1, 0x2

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Low0;->k(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lev6;->a:Ldv6;

    .line 55
    .line 56
    check-cast v1, Lut6;

    .line 57
    .line 58
    iget v1, v1, Lut6;->b:I

    .line 59
    .line 60
    const/high16 v2, 0x10000

    .line 61
    .line 62
    mul-int/2addr v1, v2

    .line 63
    iget p0, p0, Llt6;->e:I

    .line 64
    .line 65
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    int-to-long v1, p0

    .line 70
    invoke-virtual {p1, v1, v2}, Low0;->l(J)V

    .line 71
    .line 72
    .line 73
    sget-object p0, Lh51;->d:Ljava/nio/charset/Charset;

    .line 74
    .line 75
    invoke-virtual {p1, v0, p0}, Low0;->j(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
