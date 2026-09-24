.class public final Lrs6;
.super Lrt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Ljava/util/EnumSet;

.field public f:Lnr6;


# virtual methods
.method public final f(Lzu6;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Low0;->r()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Low0;->n()B

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Low0;->n()B

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Low0;->b:Lvw2;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lvw2;->e(Low0;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const-class v3, Los6;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v1, v2, v3, v4}, Lsz8;->k0(JLjava/lang/Class;Lbp5;)Lsx2;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Los6;

    .line 24
    .line 25
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Low0;->p(I)[B

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Low0;->p(I)[B

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lvw2;->e(Low0;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    const-class v4, Lw63;

    .line 50
    .line 51
    invoke-static {v2, v3, v4}, Lsz8;->i0(JLjava/lang/Class;)Ljava/util/EnumSet;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iput-object v2, p0, Lrs6;->e:Ljava/util/EnumSet;

    .line 56
    .line 57
    const/4 v2, 0x4

    .line 58
    invoke-virtual {p1, v2}, Low0;->t(I)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Lnr6;

    .line 62
    .line 63
    new-array v3, v1, [B

    .line 64
    .line 65
    invoke-virtual {p1, v3, v1}, Low0;->o([BI)V

    .line 66
    .line 67
    .line 68
    new-array v4, v1, [B

    .line 69
    .line 70
    invoke-virtual {p1, v4, v1}, Low0;->o([BI)V

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-direct {v2, v1, v3, v4}, Lnr6;-><init>(I[B[B)V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lrs6;->f:Lnr6;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lvw2;->e(Low0;)J

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lvw2;->e(Low0;)J

    .line 83
    .line 84
    .line 85
    return-void
.end method
