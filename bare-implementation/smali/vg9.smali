.class public final Lvg9;
.super Loe9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lah9;

.field public final e:Lkm8;

.field public final f:Ld2a;

.field public final k:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lah9;Lkm8;Ld2a;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvg9;->d:Lah9;

    .line 5
    .line 6
    iput-object p2, p0, Lvg9;->e:Lkm8;

    .line 7
    .line 8
    iput-object p3, p0, Lvg9;->f:Ld2a;

    .line 9
    .line 10
    iput-object p4, p0, Lvg9;->k:Ljava/lang/Integer;

    .line 11
    .line 12
    return-void
.end method

.method public static K(Lef9;Lkm8;Ljava/lang/Integer;)Lvg9;
    .locals 5

    .line 1
    iget-object v0, p1, Lkm8;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld2a;

    .line 4
    .line 5
    sget-object v1, Lef9;->n:Lef9;

    .line 6
    .line 7
    if-eq p0, v1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p2, "For given Variant "

    .line 19
    .line 20
    const-string v0, " the value of idRequirement must be non-null"

    .line 21
    .line 22
    invoke-static {p2, p0, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 31
    if-ne p0, v1, :cond_3

    .line 32
    .line 33
    if-nez p2, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const-string p0, "For given Variant NO_PREFIX the value of idRequirement must be null"

    .line 37
    .line 38
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_3
    :goto_1
    iget-object v3, v0, Ld2a;->a:[B

    .line 43
    .line 44
    array-length v3, v3

    .line 45
    const/16 v4, 0x20

    .line 46
    .line 47
    if-ne v3, v4, :cond_7

    .line 48
    .line 49
    new-instance v0, Lah9;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lah9;-><init>(Lef9;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lvg9;

    .line 55
    .line 56
    if-ne p0, v1, :cond_4

    .line 57
    .line 58
    sget-object p0, Lzs9;->a:Ld2a;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    sget-object v1, Lef9;->k:Lef9;

    .line 62
    .line 63
    if-ne p0, v1, :cond_5

    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Lzs9;->a(I)Ld2a;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    goto :goto_2

    .line 74
    :cond_5
    sget-object v1, Lef9;->f:Lef9;

    .line 75
    .line 76
    if-ne p0, v1, :cond_6

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-static {p0}, Lzs9;->b(I)Ld2a;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :goto_2
    invoke-direct {v3, v0, p1, p0, p2}, Lvg9;-><init>(Lah9;Lkm8;Ld2a;Ljava/lang/Integer;)V

    .line 87
    .line 88
    .line 89
    return-object v3

    .line 90
    :cond_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string p1, "Unknown Variant: "

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object v2

    .line 104
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 105
    .line 106
    iget-object p1, v0, Ld2a;->a:[B

    .line 107
    .line 108
    array-length p1, p1

    .line 109
    const-string p2, "ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not "

    .line 110
    .line 111
    invoke-static {p1, p2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0
.end method


# virtual methods
.method public final synthetic G()Lbd9;
    .locals 0

    .line 1
    iget-object p0, p0, Lvg9;->d:Lah9;

    .line 2
    .line 3
    return-object p0
.end method

.method public final H()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lvg9;->k:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final J()Ld2a;
    .locals 0

    .line 1
    iget-object p0, p0, Lvg9;->f:Ld2a;

    .line 2
    .line 3
    return-object p0
.end method
