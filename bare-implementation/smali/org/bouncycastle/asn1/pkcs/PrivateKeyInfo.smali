.class public Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
.super Ly0;


# instance fields
.field public a:Lt0;

.field public b:Lya;

.field public c:Lj1;

.field public d:Lx1;

.field public e:Lu;


# direct methods
.method public constructor <init>(Lya;Lq1;Lx1;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;Ly0;Lx1;[B)V

    return-void
.end method

.method public constructor <init>(Lya;Ly0;Lx1;[B)V
    .locals 0

    .line 43
    invoke-interface {p2}, Lb0;->d()Lq1;

    move-result-object p2

    invoke-virtual {p2}, Ly0;->i()[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lya;[BLx1;[B)V

    return-void
.end method

.method public constructor <init>(Lya;[BLx1;[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lt0;

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcq0;->b:Ljava/math/BigInteger;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lcq0;->a:Ljava/math/BigInteger;

    .line 12
    .line 13
    :goto_0
    invoke-direct {v0, v1}, Lt0;-><init>(Ljava/math/BigInteger;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->a:Lt0;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->b:Lya;

    .line 19
    .line 20
    new-instance p1, Lp82;

    .line 21
    .line 22
    invoke-direct {p1, p2}, Lj1;-><init>([B)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->c:Lj1;

    .line 26
    .line 27
    iput-object p3, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->d:Lx1;

    .line 28
    .line 29
    if-nez p4, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance p1, Lf82;

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-direct {p1, p4, p2}, Lu;-><init>([BI)V

    .line 37
    .line 38
    .line 39
    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->e:Lu;

    .line 40
    .line 41
    return-void
.end method

.method public static k(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 8

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_7

    .line 10
    .line 11
    new-instance v1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 12
    .line 13
    invoke-static {p0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lv1;->E()Ljava/util/Enumeration;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iput-object v2, v1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->a:Lt0;

    .line 33
    .line 34
    invoke-virtual {v2}, Lt0;->C()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ltz v2, :cond_6

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    if-gt v2, v3, :cond_6

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4}, Lya;->k(Ljava/lang/Object;)Lya;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iput-object v4, v1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->b:Lya;

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iput-object v4, v1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->c:Lj1;

    .line 62
    .line 63
    const/4 v4, -0x1

    .line 64
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_5

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Lq2;

    .line 75
    .line 76
    iget v6, v5, Lq2;->c:I

    .line 77
    .line 78
    if-le v6, v4, :cond_4

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    if-ne v6, v3, :cond_2

    .line 84
    .line 85
    if-lt v2, v3, :cond_1

    .line 86
    .line 87
    sget-object v7, Lu;->b:Lr;

    .line 88
    .line 89
    invoke-virtual {v7, v5, v4}, Lol1;->r(Lq2;Z)Lq1;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lu;

    .line 94
    .line 95
    iput-object v4, v1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->e:Lu;

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    const-string p0, "\'publicKey\' requires version v2(1) or later"

    .line 99
    .line 100
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_2
    const-string p0, "unknown optional field in private key info"

    .line 105
    .line 106
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_3
    sget-object v7, Lx1;->c:Lb1;

    .line 111
    .line 112
    invoke-virtual {v7, v5, v4}, Lol1;->r(Lq2;Z)Lq1;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Lx1;

    .line 117
    .line 118
    iput-object v4, v1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->d:Lx1;

    .line 119
    .line 120
    :goto_1
    move v4, v6

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    const-string p0, "invalid optional field in private key info"

    .line 123
    .line 124
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_5
    return-object v1

    .line 129
    :cond_6
    const-string p0, "invalid version for private key info"

    .line 130
    .line 131
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_7
    return-object v0
.end method


# virtual methods
.method public final d()Lq1;
    .locals 4

    .line 1
    new-instance v0, Lc0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lc0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->a:Lt0;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->b:Lya;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->c:Lj1;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->d:Lx1;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    new-instance v3, Lw82;

    .line 28
    .line 29
    invoke-direct {v3, v2, v2, v1}, Lq2;-><init>(ZILb0;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lc0;->a(Lb0;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->e:Lu;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    new-instance v1, Lw82;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-direct {v1, v2, v3, p0}, Lq2;-><init>(ZILb0;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    new-instance p0, Lt82;

    .line 49
    .line 50
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lt82;->c:I

    .line 55
    .line 56
    return-object p0
.end method

.method public final l()Lq1;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->c:Lj1;

    .line 2
    .line 3
    iget-object p0, p0, Lj1;->a:[B

    .line 4
    .line 5
    invoke-static {p0}, Lq1;->t([B)Lq1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
