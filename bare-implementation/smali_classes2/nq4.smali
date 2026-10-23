.class public final Lnq4;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:Loq4;


# direct methods
.method public constructor <init>(Loq4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnq4;->e:Loq4;

    .line 2
    .line 3
    const/16 p1, 0xa

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lol1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final H()V
    .locals 8

    .line 1
    iget-object v0, p0, Lol1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [S

    .line 4
    .line 5
    iget-object p0, p0, Lnq4;->e:Loq4;

    .line 6
    .line 7
    iget-object p0, p0, Loq4;->d:Lpq4;

    .line 8
    .line 9
    iget-object v1, p0, Lpq4;->n:Laq4;

    .line 10
    .line 11
    iget v2, p0, Lpq4;->z:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Laq4;->b(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x100

    .line 18
    .line 19
    or-int/2addr v1, v2

    .line 20
    iget-object v3, p0, Lgq4;->c:Ldm7;

    .line 21
    .line 22
    iget v3, v3, Ldm7;->a:I

    .line 23
    .line 24
    const/high16 v4, 0x10000

    .line 25
    .line 26
    const/4 v5, 0x7

    .line 27
    if-ge v3, v5, :cond_1

    .line 28
    .line 29
    :cond_0
    ushr-int/lit8 v2, v1, 0x8

    .line 30
    .line 31
    ushr-int/lit8 v3, v1, 0x7

    .line 32
    .line 33
    and-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    iget-object v5, p0, Lpq4;->m:Lbf6;

    .line 36
    .line 37
    invoke-virtual {v5, v0, v2, v3}, Lbf6;->R([SII)V

    .line 38
    .line 39
    .line 40
    shl-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    if-lt v1, v4, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v3, p0, Lpq4;->n:Laq4;

    .line 46
    .line 47
    iget-object v5, p0, Lgq4;->b:[I

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    aget v5, v5, v6

    .line 51
    .line 52
    add-int/lit8 v5, v5, 0x1

    .line 53
    .line 54
    iget v6, p0, Lpq4;->z:I

    .line 55
    .line 56
    add-int/2addr v5, v6

    .line 57
    invoke-virtual {v3, v5}, Laq4;->b(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    :cond_2
    shl-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    and-int v5, v3, v2

    .line 64
    .line 65
    add-int/2addr v5, v2

    .line 66
    ushr-int/lit8 v6, v1, 0x8

    .line 67
    .line 68
    add-int/2addr v5, v6

    .line 69
    ushr-int/lit8 v6, v1, 0x7

    .line 70
    .line 71
    and-int/lit8 v6, v6, 0x1

    .line 72
    .line 73
    iget-object v7, p0, Lpq4;->m:Lbf6;

    .line 74
    .line 75
    invoke-virtual {v7, v0, v5, v6}, Lbf6;->R([SII)V

    .line 76
    .line 77
    .line 78
    shl-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    xor-int v5, v3, v1

    .line 81
    .line 82
    not-int v5, v5

    .line 83
    and-int/2addr v2, v5

    .line 84
    if-lt v1, v4, :cond_2

    .line 85
    .line 86
    :goto_0
    iget-object p0, p0, Lgq4;->c:Ldm7;

    .line 87
    .line 88
    invoke-virtual {p0}, Ldm7;->a()V

    .line 89
    .line 90
    .line 91
    return-void
.end method
