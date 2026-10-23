.class public final Lg45;
.super Ljava/lang/Object;


# instance fields
.field public final a:Llr6;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Loe;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Llr6;

    .line 5
    .line 6
    const/16 v1, 0x100

    .line 7
    .line 8
    invoke-direct {v0, v1}, Llr6;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lg45;->a:Llr6;

    .line 12
    .line 13
    const/high16 v0, 0x20000

    .line 14
    .line 15
    const/16 v1, 0x60

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    const/high16 v3, 0x80000

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-eq p1, v4, :cond_2

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x5

    .line 25
    if-eq p1, v5, :cond_1

    .line 26
    .line 27
    if-ne p1, v6, :cond_0

    .line 28
    .line 29
    const/16 p1, 0x8

    .line 30
    .line 31
    iput p1, p0, Lg45;->c:I

    .line 32
    .line 33
    const/4 p1, 0x7

    .line 34
    iput p1, p0, Lg45;->d:I

    .line 35
    .line 36
    iput v4, p0, Lg45;->e:I

    .line 37
    .line 38
    iput v3, p0, Lg45;->f:I

    .line 39
    .line 40
    :goto_0
    iput v1, p0, Lg45;->b:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const-string p0, "The mode "

    .line 44
    .line 45
    const-string v0, "is not supported by Crystals Dilithium!"

    .line 46
    .line 47
    invoke-static {p1, p0, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    throw p0

    .line 56
    :cond_1
    const/4 p1, 0x6

    .line 57
    iput p1, p0, Lg45;->c:I

    .line 58
    .line 59
    iput v6, p0, Lg45;->d:I

    .line 60
    .line 61
    iput v2, p0, Lg45;->e:I

    .line 62
    .line 63
    iput v3, p0, Lg45;->f:I

    .line 64
    .line 65
    const/16 p1, 0x80

    .line 66
    .line 67
    iput p1, p0, Lg45;->b:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iput v2, p0, Lg45;->c:I

    .line 71
    .line 72
    iput v2, p0, Lg45;->d:I

    .line 73
    .line 74
    iput v4, p0, Lg45;->e:I

    .line 75
    .line 76
    iput v0, p0, Lg45;->f:I

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :goto_1
    new-instance p1, Loe;

    .line 80
    .line 81
    const/16 v1, 0x10

    .line 82
    .line 83
    invoke-direct {p1, v1}, Loe;-><init>(I)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lg45;->h:Loe;

    .line 87
    .line 88
    iget p1, p0, Lg45;->c:I

    .line 89
    .line 90
    mul-int/lit16 p1, p1, 0x140

    .line 91
    .line 92
    add-int/lit8 p1, p1, 0x20

    .line 93
    .line 94
    iput p1, p0, Lg45;->g:I

    .line 95
    .line 96
    iget p0, p0, Lg45;->f:I

    .line 97
    .line 98
    if-ne p0, v0, :cond_3

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    if-ne p0, v3, :cond_4

    .line 102
    .line 103
    :goto_2
    return-void

    .line 104
    :cond_4
    const-string p0, "Wrong Dilithium Gamma1!"

    .line 105
    .line 106
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/4 p0, 0x0

    .line 110
    throw p0
.end method
