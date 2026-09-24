.class public final synthetic Lg16;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lh16;

.field public final synthetic b:Lcn6;

.field public final synthetic c:Ljava/security/spec/ECPoint;


# direct methods
.method public synthetic constructor <init>(Lh16;Lcn6;Ljava/security/spec/ECPoint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg16;->a:Lh16;

    .line 5
    .line 6
    iput-object p2, p0, Lg16;->b:Lcn6;

    .line 7
    .line 8
    iput-object p3, p0, Lg16;->c:Ljava/security/spec/ECPoint;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lg16;->b:Lcn6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn6;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lw16;

    .line 8
    .line 9
    iget-object v1, p0, Lg16;->a:Lh16;

    .line 10
    .line 11
    iget-object v2, v1, Lj16;->c:[C

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lw16;->r([C)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, v1, Lj16;->a:Lvh7;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lg16;->c:Ljava/security/spec/ECPoint;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, 0x100

    .line 34
    .line 35
    if-le v2, v3, :cond_1

    .line 36
    .line 37
    sget-object v2, Lvo4;->f:Lvo4;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget-object v2, Lvo4;->e:Lvo4;

    .line 41
    .line 42
    :goto_0
    iget-object v3, v2, Lvo4;->b:Lto4;

    .line 43
    .line 44
    check-cast v3, Lso4;

    .line 45
    .line 46
    iget-object v3, v3, Lso4;->c:Lzt2;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget v5, v3, Lzt2;->a:I

    .line 57
    .line 58
    sget-object v6, Lzt2;->f:Lzt2;

    .line 59
    .line 60
    if-eq v3, v6, :cond_2

    .line 61
    .line 62
    sget-object v6, Lzt2;->e:Lzt2;

    .line 63
    .line 64
    if-eq v3, v6, :cond_2

    .line 65
    .line 66
    int-to-double v5, v5

    .line 67
    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    .line 68
    .line 69
    div-double/2addr v5, v7

    .line 70
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    double-to-int v3, v5

    .line 75
    mul-int/lit8 v5, v3, 0x2

    .line 76
    .line 77
    const/4 v6, 0x1

    .line 78
    add-int/2addr v5, v6

    .line 79
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const/4 v7, 0x4

    .line 84
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v3, v4}, Lvm4;->s(ILjava/math/BigInteger;)[B

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {v3, p0}, Lvm4;->s(ILjava/math/BigInteger;)[B

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    sget-object v3, Lw16;->f:Ll15;

    .line 109
    .line 110
    const-string v4, "Performing key agreement with key in slot {} of type {}"

    .line 111
    .line 112
    invoke-static {v7, v3, v4, v1, v2}, Lms8;->B(ILl15;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1, v2, p0, v6}, Lw16;->q(Lvh7;Lvo4;[BZ)[B

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :cond_2
    const-string p0, "InvalidCurve"

    .line 121
    .line 122
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const/4 p0, 0x0

    .line 126
    return-object p0
.end method
