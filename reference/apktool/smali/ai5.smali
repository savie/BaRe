.class public final Lai5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Lvn5;


# static fields
.field public static final f:Lus2;

.field public static final k:Lfe8;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lus2;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lus2;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lai5;->f:Lus2;

    .line 9
    .line 10
    new-instance v0, Lfe8;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-direct {v0, v1}, Lfe8;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lai5;->k:Lfe8;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lai5;->a:I

    packed-switch p1, :pswitch_data_0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance p1, Llr6;

    const/16 v0, 0x80

    .line 126
    invoke-direct {p1, v0}, Lgo4;-><init>(I)V

    .line 127
    iput-object p1, p0, Lai5;->b:Ljava/lang/Object;

    new-instance p1, Llr6;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, Llr6;-><init>(I)V

    iput-object p1, p0, Lai5;->e:Ljava/lang/Object;

    new-instance p1, Ljr6;

    invoke-direct {p1, v0}, Ljr6;-><init>(I)V

    iput-object p1, p0, Lai5;->d:Ljava/lang/Object;

    new-instance p1, Ljr6;

    const/16 v0, 0x200

    invoke-direct {p1, v0}, Ljr6;-><init>(I)V

    iput-object p1, p0, Lai5;->c:Ljava/lang/Object;

    return-void

    .line 128
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 129
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance p1, Lk50;

    const/4 v0, 0x0

    .line 131
    invoke-direct {p1, v0}, Ldg7;-><init>(I)V

    .line 132
    iput-object p1, p0, Lai5;->b:Ljava/lang/Object;

    .line 133
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lai5;->c:Ljava/lang/Object;

    .line 134
    new-instance p1, Lv15;

    invoke-direct {p1}, Lv15;-><init>()V

    iput-object p1, p0, Lai5;->d:Ljava/lang/Object;

    .line 135
    new-instance p1, Lk50;

    .line 136
    invoke-direct {p1, v0}, Ldg7;-><init>(I)V

    .line 137
    iput-object p1, p0, Lai5;->e:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 0

    .line 114
    iput p5, p0, Lai5;->a:I

    iput-object p1, p0, Lai5;->b:Ljava/lang/Object;

    iput-object p2, p0, Lai5;->c:Ljava/lang/Object;

    iput-object p3, p0, Lai5;->d:Ljava/lang/Object;

    iput-object p4, p0, Lai5;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ll22;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lai5;->a:I

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lai5;->b:Ljava/lang/Object;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lai5;->d:Ljava/lang/Object;

    .line 141
    iput-object p1, p0, Lai5;->e:Ljava/lang/Object;

    .line 142
    sget-object p1, Lai5;->f:Lus2;

    iput-object p1, p0, Lai5;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loc6;)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lai5;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lzq8;

    .line 8
    .line 9
    iget-object v1, p1, Loc6;->e:Lnb4;

    .line 10
    .line 11
    const/16 v2, 0xb

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lai5;->b:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object v1, p0, Lai5;->c:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {p1}, Loc6;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Loc6;->b()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p1, Loc6;->b:Lm61;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lm61;->b:Lm61;

    .line 39
    .line 40
    :goto_0
    iget-object v2, p1, Loc6;->e:Lnb4;

    .line 41
    .line 42
    invoke-virtual {p1}, Loc6;->b()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    iget-object v3, p1, Loc6;->a:Lqn5;

    .line 49
    .line 50
    invoke-virtual {v2, v0, v3}, Lnb4;->c(Lm61;Lqn5;)Lhk5;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string p0, "Cannot get index start value if start has not been set"

    .line 56
    .line 57
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :cond_2
    const-string p0, "Cannot get index start name if start has not been set"

    .line 62
    .line 63
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1

    .line 67
    :cond_3
    sget-object v0, Lhk5;->c:Lhk5;

    .line 68
    .line 69
    :goto_1
    iput-object v0, p0, Lai5;->d:Ljava/lang/Object;

    .line 70
    .line 71
    iget-object v0, p1, Loc6;->c:Lqn5;

    .line 72
    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    iget-object v2, p1, Loc6;->d:Lm61;

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    sget-object v2, Lm61;->c:Lm61;

    .line 83
    .line 84
    :goto_2
    iget-object p1, p1, Loc6;->e:Lnb4;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    invoke-virtual {p1, v2, v0}, Lnb4;->c(Lm61;Lqn5;)Lhk5;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    const-string p0, "Cannot get index end value if start has not been set"

    .line 94
    .line 95
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_6
    const-string p0, "Cannot get index end name if start has not been set"

    .line 100
    .line 101
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v1

    .line 105
    :cond_7
    iget-object p1, p1, Loc6;->e:Lnb4;

    .line 106
    .line 107
    invoke-virtual {p1}, Lnb4;->d()Lhk5;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :goto_3
    iput-object p1, p0, Lai5;->e:Ljava/lang/Object;

    .line 112
    .line 113
    return-void
.end method

.method public constructor <init>(Lwa3;)V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lai5;->a:I

    .line 115
    new-instance v0, Lq9;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lq9;-><init>(I)V

    .line 116
    new-instance v1, Lhi;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lhi;-><init>(I)V

    .line 117
    new-instance v2, Lzj;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lzj;-><init>(I)V

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lai5;->b:Ljava/lang/Object;

    .line 121
    iput-object v0, p0, Lai5;->c:Ljava/lang/Object;

    .line 122
    iput-object v1, p0, Lai5;->d:Ljava/lang/Object;

    .line 123
    iput-object v2, p0, Lai5;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwc9;Lx44;Li87;)V
    .locals 5

    const/4 v0, 0x5

    iput v0, p0, Lai5;->a:I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lla;

    .line 145
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p0, v0, Lla;->a:Ljava/lang/Object;

    .line 147
    iput-object p2, v0, Lla;->b:Ljava/lang/Object;

    .line 148
    new-instance v1, Luz7;

    .line 149
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v2, Lvc9;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lvc9;-><init>(BI)V

    iput-object v2, v1, Luz7;->a:Lvc9;

    .line 151
    new-instance v2, Lvc9;

    invoke-direct {v2, v4, v3}, Lvc9;-><init>(BI)V

    iput-object v2, v1, Luz7;->b:Lvc9;

    .line 152
    new-instance v2, Lvc9;

    invoke-direct {v2, v4, v3}, Lvc9;-><init>(BI)V

    iput-object v2, v1, Luz7;->c:Lvc9;

    .line 153
    iput-object v0, v1, Luz7;->d:Lla;

    .line 154
    iput-object v1, p0, Lai5;->b:Ljava/lang/Object;

    .line 155
    iput-object p1, p0, Lai5;->c:Ljava/lang/Object;

    .line 156
    iput-object p2, p0, Lai5;->d:Ljava/lang/Object;

    .line 157
    iput-object p3, p0, Lai5;->e:Ljava/lang/Object;

    return-void
.end method

.method public static A(Ljava/lang/String;Ljava/lang/String;)Lza3;
    .locals 6

    .line 1
    const-string v0, "RSA"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    instance-of v2, v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v1, v3

    .line 33
    :goto_0
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :try_start_0
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    .line 44
    .line 45
    invoke-direct {v4, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    check-cast v4, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v4

    .line 59
    new-instance v5, Lbn6;

    .line 60
    .line 61
    invoke-direct {v5, v4}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    move-object v4, v5

    .line 65
    :goto_1
    invoke-static {v4}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-nez v5, :cond_1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :try_start_1
    invoke-static {v2}, Lpe6;->k(Ljava/lang/Object;)Lpe6;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    .line 77
    .line 78
    iget-object v5, v2, Lpe6;->a:Ljava/math/BigInteger;

    .line 79
    .line 80
    iget-object v2, v2, Lpe6;->b:Ljava/math/BigInteger;

    .line 81
    .line 82
    invoke-direct {v4, v5, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    .line 94
    move-object v4, v0

    .line 95
    goto :goto_2

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    new-instance v2, Lbn6;

    .line 98
    .line 99
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    move-object v4, v2

    .line 103
    :goto_2
    invoke-static {v4}, Llg7;->H(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    check-cast v4, Ljava/security/interfaces/RSAPublicKey;

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v4}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_2

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v4}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    new-instance v0, Lza3;

    .line 137
    .line 138
    invoke-direct {v0, p0, p1}, Lza3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_2
    const-string p0, "Filen RSA public and private keys do not match"

    .line 143
    .line 144
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-object v3

    .line 148
    :cond_3
    const-string p0, "Invalid Filen RSA private key"

    .line 149
    .line 150
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-object v3
.end method

.method public static d(Ljava/lang/String;[B)[B
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lhb3;->c(Ljava/lang/String;[B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/16 v0, 0x40

    .line 10
    .line 11
    if-ne p1, v0, :cond_2

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ge p1, v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v1, 0x61

    .line 35
    .line 36
    if-gt v1, v0, :cond_2

    .line 37
    .line 38
    const/16 v1, 0x67

    .line 39
    .line 40
    if-ge v0, v1, :cond_2

    .line 41
    .line 42
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sget-object p1, Lf51;->d:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_2
    const-string p0, "Invalid Filen DEK"

    .line 56
    .line 57
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method public static e(Lxa3;Ljava/util/List;)Lza3;
    .locals 3

    .line 1
    iget-object v0, p0, Lxa3;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Required value was null."

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object p0, p0, Lxa3;->b:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, [B

    .line 32
    .line 33
    :try_start_0
    invoke-static {v0, v2}, Lhb3;->c(Ljava/lang/String;[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2, p0}, Lai5;->A(Ljava/lang/String;Ljava/lang/String;)Lza3;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-object p0

    .line 42
    :catch_0
    move-exception v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 48
    .line 49
    invoke-static {v1}, Lel1;->b1(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/lang/Throwable;

    .line 54
    .line 55
    const-string v0, "No Filen metadata key could decrypt the private key"

    .line 56
    .line 57
    invoke-direct {p0, v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_1
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_2
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object v1
.end method

.method public static o(Lvb8;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-interface {p0}, Lvb8;->getType()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static v(Lfl4;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    instance-of v1, p0, Lel4;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v0

    .line 14
    :goto_0
    if-nez p0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    instance-of v1, p0, Lkl4;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lqj4;->k()Lkl4;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v1, v1, Lkl4;->a:Ljava/io/Serializable;

    .line 26
    .line 27
    instance-of v1, v1, Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-lez p1, :cond_3

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    const-string p0, "Invalid Filen response field type: "

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static w(Ljava/lang/String;[B)Ljava/util/List;
    .locals 6

    .line 1
    invoke-static {p0, p1}, Lhb3;->c(Ljava/lang/String;[B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v1, v0, [C

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0x7c

    .line 10
    .line 11
    aput-char v3, v1, v2

    .line 12
    .line 13
    const/4 v3, 0x6

    .line 14
    invoke-static {p0, v1, v3}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    move-object v4, v3

    .line 38
    check-cast v4, Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 51
    .line 52
    const/16 v3, 0xa

    .line 53
    .line 54
    invoke-static {v1, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/lang/String;

    .line 76
    .line 77
    sget-object v4, Lf51;->a:Ljava/nio/charset/Charset;

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v3, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_4

    .line 109
    .line 110
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    move-object v5, v4

    .line 115
    check-cast v5, [B

    .line 116
    .line 117
    invoke-static {v5}, Lhb3;->t([B)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_3

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-gt p0, v0, :cond_7

    .line 136
    .line 137
    invoke-static {v3}, Lel1;->l1(Ljava/util/List;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    check-cast p0, [B

    .line 142
    .line 143
    if-eqz p0, :cond_6

    .line 144
    .line 145
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    filled-new-array {p1, p0}, [[B

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0

    .line 161
    :cond_6
    :goto_3
    invoke-static {p1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0

    .line 166
    :cond_7
    invoke-static {}, Lnc8;->p()Lww4;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p0, p1}, Lww4;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_b

    .line 182
    .line 183
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, [B

    .line 188
    .line 189
    invoke-virtual {p0}, Lww4;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_8

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_8
    invoke-virtual {p0, v2}, Lww4;->listIterator(I)Ljava/util/ListIterator;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    :cond_9
    move-object v3, v1

    .line 201
    check-cast v3, Lvw4;

    .line 202
    .line 203
    invoke-virtual {v3}, Lvw4;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_a

    .line 208
    .line 209
    invoke-virtual {v3}, Lvw4;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    check-cast v3, [B

    .line 214
    .line 215
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_9

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_a
    :goto_5
    invoke-virtual {p0, v0}, Lww4;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_b
    invoke-static {p0}, Lnc8;->h(Lww4;)Lww4;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0
.end method

.method public static x(Lfl4;)I
    .locals 3

    .line 1
    const-string v0, "authVersion"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_5

    .line 9
    .line 10
    instance-of v1, p0, Lel4;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    if-eqz p0, :cond_5

    .line 17
    .line 18
    instance-of v1, p0, Lkl4;

    .line 19
    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    invoke-virtual {p0}, Lqj4;->k()Lkl4;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lkl4;->a:Ljava/io/Serializable;

    .line 27
    .line 28
    instance-of v1, v1, Ljava/lang/Number;

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p0}, Lqj4;->d()Ljava/math/BigDecimal;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-static {}, Leb3;->getEntries()Ljx2;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    move-object v2, v1

    .line 47
    check-cast v2, Ll3;

    .line 48
    .line 49
    invoke-virtual {v2}, Ll3;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    :cond_1
    check-cast v1, Lz3;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v2, Lw3;

    .line 61
    .line 62
    invoke-direct {v2, v1}, Lw3;-><init>(Lz3;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {v2}, Lw3;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v2}, Lw3;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Leb3;

    .line 76
    .line 77
    invoke-virtual {v1}, Leb3;->getValue()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-ne v1, p0, :cond_2

    .line 82
    .line 83
    return p0

    .line 84
    :cond_3
    const-string v1, "Unsupported Filen auth version: "

    .line 85
    .line 86
    invoke-static {p0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return v0

    .line 94
    :catch_0
    move-exception p0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string v1, "Invalid Filen auth version"

    .line 98
    .line 99
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_4
    const-string p0, "Invalid Filen response field type: authVersion"

    .line 104
    .line 105
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return v0

    .line 109
    :cond_5
    const-string p0, "Missing Filen response field: authVersion"

    .line 110
    .line 111
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return v0
.end method

.method public static y(Lfl4;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Missing Filen response field: "

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p0, :cond_4

    .line 9
    .line 10
    instance-of v2, p0, Lel4;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p0, v1

    .line 16
    :goto_0
    if-eqz p0, :cond_4

    .line 17
    .line 18
    instance-of v2, p0, Lkl4;

    .line 19
    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0}, Lqj4;->k()Lkl4;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v2, v2, Lkl4;->a:Ljava/io/Serializable;

    .line 27
    .line 28
    instance-of v2, v2, Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-object p0, v1

    .line 44
    :goto_1
    if-eqz p0, :cond_2

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_3
    const-string p0, "Invalid Filen response field type: "

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v1
.end method


# virtual methods
.method public B()Lte9;
    .locals 7

    .line 1
    iget-object v0, p0, Lai5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgf9;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    iget-object v2, p0, Lai5;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lkm8;

    .line 11
    .line 12
    if-eqz v2, :cond_9

    .line 13
    .line 14
    iget-object v3, p0, Lai5;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Lkm8;

    .line 17
    .line 18
    if-eqz v3, :cond_9

    .line 19
    .line 20
    iget v4, v0, Lgf9;->a:I

    .line 21
    .line 22
    iget-object v2, v2, Lkm8;->a:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Ld2a;

    .line 25
    .line 26
    iget-object v2, v2, Ld2a;->a:[B

    .line 27
    .line 28
    array-length v2, v2

    .line 29
    if-ne v4, v2, :cond_8

    .line 30
    .line 31
    iget v2, v0, Lgf9;->b:I

    .line 32
    .line 33
    iget-object v3, v3, Lkm8;->a:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Ld2a;

    .line 36
    .line 37
    iget-object v3, v3, Ld2a;->a:[B

    .line 38
    .line 39
    array-length v3, v3

    .line 40
    if-ne v2, v3, :cond_7

    .line 41
    .line 42
    invoke-virtual {v0}, Lgf9;->a()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lai5;->e:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Ljava/lang/Integer;

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string p0, "Cannot create key without ID requirement with parameters with ID requirement"

    .line 56
    .line 57
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_1
    :goto_0
    iget-object v0, p0, Lai5;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lgf9;

    .line 64
    .line 65
    invoke-virtual {v0}, Lgf9;->a()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    iget-object v0, p0, Lai5;->e:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Ljava/lang/Integer;

    .line 74
    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const-string p0, "Cannot create key with ID requirement with parameters without ID requirement"

    .line 79
    .line 80
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_3
    :goto_1
    iget-object v0, p0, Lai5;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Lgf9;

    .line 87
    .line 88
    iget-object v0, v0, Lgf9;->e:Lef9;

    .line 89
    .line 90
    sget-object v2, Lef9;->e:Lef9;

    .line 91
    .line 92
    if-ne v0, v2, :cond_4

    .line 93
    .line 94
    sget-object v0, Lzs9;->a:Ld2a;

    .line 95
    .line 96
    :goto_2
    move-object v5, v0

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    sget-object v2, Lef9;->d:Lef9;

    .line 99
    .line 100
    if-ne v0, v2, :cond_5

    .line 101
    .line 102
    iget-object v0, p0, Lai5;->e:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-static {v0}, Lzs9;->a(I)Ld2a;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    sget-object v2, Lef9;->c:Lef9;

    .line 116
    .line 117
    if-ne v0, v2, :cond_6

    .line 118
    .line 119
    iget-object v0, p0, Lai5;->e:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-static {v0}, Lzs9;->b(I)Ld2a;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    goto :goto_2

    .line 132
    :goto_3
    new-instance v1, Lte9;

    .line 133
    .line 134
    iget-object v0, p0, Lai5;->b:Ljava/lang/Object;

    .line 135
    .line 136
    move-object v2, v0

    .line 137
    check-cast v2, Lgf9;

    .line 138
    .line 139
    iget-object v0, p0, Lai5;->c:Ljava/lang/Object;

    .line 140
    .line 141
    move-object v3, v0

    .line 142
    check-cast v3, Lkm8;

    .line 143
    .line 144
    iget-object v0, p0, Lai5;->d:Ljava/lang/Object;

    .line 145
    .line 146
    move-object v4, v0

    .line 147
    check-cast v4, Lkm8;

    .line 148
    .line 149
    iget-object p0, p0, Lai5;->e:Ljava/lang/Object;

    .line 150
    .line 151
    move-object v6, p0

    .line 152
    check-cast v6, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-direct/range {v1 .. v6}, Lte9;-><init>(Lgf9;Lkm8;Lkm8;Ld2a;Ljava/lang/Integer;)V

    .line 155
    .line 156
    .line 157
    return-object v1

    .line 158
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    const-string v0, "Unknown AesCtrHmacAeadParameters.Variant: "

    .line 163
    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object v1

    .line 172
    :cond_7
    const-string p0, "HMAC key size mismatch"

    .line 173
    .line 174
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-object v1

    .line 178
    :cond_8
    const-string p0, "AES key size mismatch"

    .line 179
    .line 180
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-object v1

    .line 184
    :cond_9
    const-string p0, "Cannot build without key material"

    .line 185
    .line 186
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-object v1

    .line 190
    :cond_a
    const-string p0, "Cannot build without parameters"

    .line 191
    .line 192
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-object v1
.end method

.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;)Lch5;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lai5;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x1

    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lzh5;

    .line 29
    .line 30
    iget-object v6, p0, Lai5;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v6, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    move v3, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v5, v4, Lzh5;->a:Ljava/lang/Class;

    .line 43
    .line 44
    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    iget-object v5, v4, Lzh5;->b:Ljava/lang/Class;

    .line 51
    .line 52
    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_0

    .line 57
    .line 58
    iget-object v5, p0, Lai5;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v5, Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    iget-object v5, v4, Lzh5;->c:Ldh5;

    .line 66
    .line 67
    invoke-interface {v5, p0}, Ldh5;->y(Lai5;)Lch5;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    iget-object v5, p0, Lai5;->d:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-le v1, v5, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lai5;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Lus2;

    .line 93
    .line 94
    iget-object p2, p0, Lai5;->e:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p2, Ll22;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance p1, Lyh5;

    .line 102
    .line 103
    invoke-direct {p1, v0, p2}, Lyh5;-><init>(Ljava/util/ArrayList;Ll22;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    monitor-exit p0

    .line 107
    return-object p1

    .line 108
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-ne v1, v5, :cond_4

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lch5;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    monitor-exit p0

    .line 121
    return-object p1

    .line 122
    :cond_4
    if-eqz v3, :cond_5

    .line 123
    .line 124
    :try_start_2
    sget-object p1, Lai5;->k:Lfe8;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    monitor-exit p0

    .line 127
    return-object p1

    .line 128
    :cond_5
    :try_start_3
    new-instance v0, Lji6;

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v2, "Failed to find any ModelLoaders for model: "

    .line 133
    .line 134
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p1, " and data: "

    .line 141
    .line 142
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    :goto_1
    :try_start_4
    iget-object p2, p0, Lai5;->d:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p2, Ljava/util/HashSet;

    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :catchall_1
    move-exception p1

    .line 165
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 166
    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lai5;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lzh5;

    .line 26
    .line 27
    iget-object v3, p0, Lai5;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v3, v2, Lzh5;->a:Ljava/lang/Class;

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    iget-object v3, p0, Lai5;->d:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v3, Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object v3, v2, Lzh5;->c:Ldh5;

    .line 54
    .line 55
    invoke-interface {v3, p0}, Ldh5;->y(Lai5;)Lch5;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lai5;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Ljava/util/HashSet;

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    monitor-exit p0

    .line 73
    return-object v0

    .line 74
    :goto_1
    :try_start_1
    iget-object v0, p0, Lai5;->d:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :catchall_1
    move-exception p1

    .line 83
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    throw p1
.end method

.method public c(Lsb4;Lqn5;)Lsb4;
    .locals 0

    .line 1
    return-object p1
.end method

.method public f()Lzq8;
    .locals 0

    .line 1
    iget-object p0, p0, Lai5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lzq8;

    .line 4
    .line 5
    return-object p0
.end method

.method public g()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public getIndex()Lnb4;
    .locals 0

    .line 1
    iget-object p0, p0, Lai5;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lnb4;

    .line 4
    .line 5
    return-object p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lai5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lai5;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lai5;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public h(Ljava/lang/String;I[B)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lai5;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lbt3;

    .line 4
    .line 5
    sget-object v0, Leb3;->V3:Leb3;

    .line 6
    .line 7
    invoke-virtual {v0}, Leb3;->getValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    sget-object p2, Lhb3;->a:[B

    .line 14
    .line 15
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, [B

    .line 20
    .line 21
    invoke-static {p1, p3, p0}, Lhb3;->l(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    sget-object p2, Lhb3;->a:[B

    .line 27
    .line 28
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, [B

    .line 33
    .line 34
    invoke-static {p1, p3, p0}, Lhb3;->k(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public i(Lsb4;Lm61;Lqn5;Lgy5;Lun5;Lvk9;)Lsb4;
    .locals 7

    .line 1
    new-instance v0, Lhk5;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lai5;->u(Lhk5;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p3, Lqv2;->e:Lqv2;

    .line 13
    .line 14
    :cond_0
    move-object v3, p3

    .line 15
    iget-object p0, p0, Lai5;->b:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    check-cast v0, Lzq8;

    .line 19
    .line 20
    move-object v1, p1

    .line 21
    move-object v2, p2

    .line 22
    move-object v4, p4

    .line 23
    move-object v5, p5

    .line 24
    move-object v6, p6

    .line 25
    invoke-virtual/range {v0 .. v6}, Lzq8;->i(Lsb4;Lm61;Lqn5;Lgy5;Lun5;Lvk9;)Lsb4;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public declared-synchronized j(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lai5;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lzh5;

    .line 26
    .line 27
    iget-object v3, v2, Lzh5;->b:Ljava/lang/Class;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    iget-object v3, v2, Lzh5;->a:Ljava/lang/Class;

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    iget-object v2, v2, Lzh5;->b:Ljava/lang/Class;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    monitor-exit p0

    .line 52
    return-object v0

    .line 53
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p1
.end method

.method public k(Ljava/lang/Class;)Lgd;
    .locals 1

    .line 1
    iget-object p0, p0, Lai5;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lx44;

    .line 4
    .line 5
    iget-object p0, p0, Lx44;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lom5;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v0, Lgd;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lgd;-><init>(Lom5;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public l(Lsb4;Lsb4;Lvk9;)Lsb4;
    .locals 4

    .line 1
    iget-object v0, p2, Lsb4;->a:Lqn5;

    .line 2
    .line 3
    invoke-interface {v0}, Lqn5;->Z()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p2, Lqv2;->e:Lqv2;

    .line 10
    .line 11
    iget-object v0, p0, Lai5;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lnb4;

    .line 14
    .line 15
    new-instance v1, Lsb4;

    .line 16
    .line 17
    invoke-direct {v1, p2, v0}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    sget-object v0, Lqv2;->e:Lqv2;

    .line 22
    .line 23
    new-instance v1, Lsb4;

    .line 24
    .line 25
    iget-object v2, p2, Lsb4;->a:Lqn5;

    .line 26
    .line 27
    invoke-interface {v2, v0}, Lqn5;->q(Lqn5;)Lqn5;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p2, Lsb4;->c:Lnb4;

    .line 32
    .line 33
    iget-object v3, p2, Lsb4;->b:Lra4;

    .line 34
    .line 35
    invoke-direct {v1, v0, v2, v3}, Lsb4;-><init>(Lqn5;Lnb4;Lra4;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lsb4;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lhk5;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lai5;->u(Lhk5;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    iget-object v0, v0, Lhk5;->a:Lm61;

    .line 61
    .line 62
    sget-object v2, Lqv2;->e:Lqv2;

    .line 63
    .line 64
    invoke-virtual {v1, v0, v2}, Lsb4;->e(Lm61;Lqn5;)Lsb4;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    :goto_1
    iget-object p0, p0, Lai5;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Lzq8;

    .line 72
    .line 73
    invoke-virtual {p0, p1, v1, p3}, Lzq8;->l(Lsb4;Lsb4;Lvk9;)Lsb4;

    .line 74
    .line 75
    .line 76
    return-object v1
.end method

.method public m(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lai5;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lx44;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lx44;->d(Ljava/lang/Class;)Lq27;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lq27;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    invoke-static {p0}, Lz85;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public n()Lcz4;
    .locals 0

    .line 1
    iget-object p0, p0, Lai5;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lx44;

    .line 4
    .line 5
    iget-object p0, p0, Lx44;->n:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lvq3;

    .line 8
    .line 9
    iget-object p0, p0, Lvq3;->a:Lcz4;

    .line 10
    .line 11
    return-object p0
.end method

.method public p(Ljava/lang/String;[B)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lai5;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lmt3;

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v0, v2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [B

    .line 16
    .line 17
    array-length v2, v0

    .line 18
    if-ne v2, v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lai5;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lwa3;

    .line 23
    .line 24
    invoke-static {v0}, Lhb3;->t([B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object p0, p0, Lai5;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lbt3;

    .line 31
    .line 32
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, [B

    .line 37
    .line 38
    invoke-static {v2, p2, p0}, Lhb3;->l(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p2, "dek"

    .line 43
    .line 44
    invoke-static {p2, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const-string p2, "POST"

    .line 55
    .line 56
    check-cast p0, Ljava/util/Map;

    .line 57
    .line 58
    const-string v2, "/v3/user/dek"

    .line 59
    .line 60
    invoke-static {v1, p2, v2, p0, p1}, Lwa3;->c(Lwa3;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lqj4;

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lhb3;->t([B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    sget-object p1, Lf51;->d:Ljava/nio/charset/Charset;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_0
    const-string p0, "Invalid generated Filen DEK length"

    .line 82
    .line 83
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 p0, 0x0

    .line 87
    return-object p0
.end method

.method public q(Ljava/lang/String;Ljava/util/ArrayList;)Lza3;
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lai5;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lwa3;

    .line 11
    .line 12
    const-string v0, "/v3/user/keyPair/info"

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lwa3;->a(Ljava/lang/String;Ljava/lang/String;)Lqj4;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lqj4;->i()Lfl4;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Lxa3;

    .line 23
    .line 24
    const-string v0, "privateKey"

    .line 25
    .line 26
    invoke-static {p0, v0}, Lai5;->v(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "publicKey"

    .line 31
    .line 32
    invoke-static {p0, v2}, Lai5;->v(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {p1, v0, p0}, Lxa3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lxa3;->a()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    invoke-static {p1, p2}, Lai5;->e(Lxa3;Ljava/util/List;)Lza3;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_0
    const-string p0, "Missing persisted Filen key pair"

    .line 51
    .line 52
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_1
    const-string p0, "Missing Filen metadata keys"

    .line 57
    .line 58
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v1
.end method

.method public r(Ljava/lang/String;Ljava/util/List;Lfl4;I)Lza3;
    .locals 8

    .line 1
    iget-object v0, p0, Lai5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwa3;

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    new-instance v1, Lxa3;

    .line 12
    .line 13
    const-string v2, "privateKey"

    .line 14
    .line 15
    invoke-static {p3, v2}, Lai5;->v(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "publicKey"

    .line 20
    .line 21
    invoke-static {p3, v4}, Lai5;->v(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-direct {v1, v3, p3}, Lxa3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    const-string p3, "/v3/user/keyPair/info"

    .line 29
    .line 30
    invoke-virtual {v0, p3, p1}, Lwa3;->a(Ljava/lang/String;Ljava/lang/String;)Lqj4;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p3}, Lqj4;->i()Lfl4;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    new-instance v3, Lxa3;

    .line 39
    .line 40
    invoke-static {p3, v2}, Lai5;->v(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {p3, v4}, Lai5;->v(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-direct {v3, v5, p3}, Lxa3;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lxa3;->a()Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    const-string v5, "POST"

    .line 56
    .line 57
    if-eqz p3, :cond_1

    .line 58
    .line 59
    :try_start_1
    invoke-static {v3, p2}, Lai5;->e(Lxa3;Ljava/util/List;)Lza3;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    const-string v3, "/v3/user/keyPair/update"

    .line 64
    .line 65
    iget-object v6, p3, Lza3;->b:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v7, Lpw5;

    .line 68
    .line 69
    invoke-direct {v7, v4, v6}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v4, p3, Lza3;->a:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p2}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, [B

    .line 79
    .line 80
    invoke-virtual {p0, v4, p4, v6}, Lai5;->h(Ljava/lang/String;I[B)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    new-instance p4, Lpw5;

    .line 85
    .line 86
    invoke-direct {p4, v2, p0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    filled-new-array {v7, p4}, [Lpw5;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    check-cast p0, Ljava/util/Map;

    .line 101
    .line 102
    invoke-static {v0, v5, v3, p0, p1}, Lwa3;->c(Lwa3;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lqj4;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    .line 104
    .line 105
    return-object p3

    .line 106
    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {v1}, Lxa3;->a()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_0

    .line 112
    .line 113
    :try_start_2
    invoke-static {v1, p2}, Lai5;->e(Lxa3;Ljava/util/List;)Lza3;

    .line 114
    .line 115
    .line 116
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    return-object p0

    .line 118
    :catch_1
    move-exception p1

    .line 119
    invoke-static {p1, p0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_0
    throw p0

    .line 124
    :cond_1
    invoke-virtual {v1}, Lxa3;->a()Z

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    if-eqz p3, :cond_2

    .line 129
    .line 130
    invoke-static {v1, p2}, Lai5;->e(Lxa3;Ljava/util/List;)Lza3;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :cond_2
    iget-object p3, p0, Lai5;->e:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p3, Lbt3;

    .line 138
    .line 139
    invoke-interface {p3}, Lbt3;->invoke()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    check-cast p3, Ljava/security/KeyPair;

    .line 144
    .line 145
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v1, v3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {p3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    invoke-interface {p3}, Ljava/security/Key;->getEncoded()[B

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    invoke-virtual {v3, p3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-static {v1, p3}, Lai5;->A(Ljava/lang/String;Ljava/lang/String;)Lza3;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    iget-object v1, p3, Lza3;->b:Ljava/lang/String;

    .line 188
    .line 189
    new-instance v3, Lpw5;

    .line 190
    .line 191
    invoke-direct {v3, v4, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, p3, Lza3;->a:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {p2}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    check-cast p2, [B

    .line 201
    .line 202
    invoke-virtual {p0, v1, p4, p2}, Lai5;->h(Ljava/lang/String;I[B)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    new-instance p2, Lpw5;

    .line 207
    .line 208
    invoke-direct {p2, v2, p0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    filled-new-array {v3, p2}, [Lpw5;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-static {p0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    check-cast p0, Ljava/util/Map;

    .line 223
    .line 224
    const-string p2, "/v3/user/keyPair/set"

    .line 225
    .line 226
    invoke-static {v0, v5, p2, p0, p1}, Lwa3;->c(Lwa3;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lqj4;

    .line 227
    .line 228
    .line 229
    return-object p3

    .line 230
    :catch_2
    move-exception p0

    .line 231
    invoke-virtual {v1}, Lxa3;->a()Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_3

    .line 236
    .line 237
    :try_start_3
    invoke-static {v1, p2}, Lai5;->e(Lxa3;Ljava/util/List;)Lza3;

    .line 238
    .line 239
    .line 240
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 241
    return-object p0

    .line 242
    :catch_3
    move-exception p1

    .line 243
    invoke-static {p1, p0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 244
    .line 245
    .line 246
    throw p1

    .line 247
    :cond_3
    throw p0

    .line 248
    :cond_4
    const-string p0, "Missing Filen metadata keys"

    .line 249
    .line 250
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const/4 p0, 0x0

    .line 254
    return-object p0
.end method

.method public s(ILjava/lang/String;[BLfl4;)Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lai5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lwa3;

    .line 5
    .line 6
    sget-object v0, Leb3;->V1:Leb3;

    .line 7
    .line 8
    invoke-virtual {v0}, Leb3;->getValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eq p1, v0, :cond_6

    .line 13
    .line 14
    sget-object v0, Leb3;->V2:Leb3;

    .line 15
    .line 16
    invoke-virtual {v0}, Leb3;->getValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    sget-object v0, Leb3;->V3:Leb3;

    .line 24
    .line 25
    invoke-virtual {v0}, Leb3;->getValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ne p1, v0, :cond_5

    .line 30
    .line 31
    const-string p1, "dek"

    .line 32
    .line 33
    invoke-static {p4, p1}, Lai5;->v(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    :try_start_0
    const-string v0, "/v3/user/dek"

    .line 38
    .line 39
    invoke-virtual {v1, v0, p2}, Lwa3;->a(Ljava/lang/String;Ljava/lang/String;)Lqj4;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0, p1}, Lai5;->v(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p1, p3}, Lai5;->d(Ljava/lang/String;[B)[B

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :catch_0
    move-exception v0

    .line 71
    move-object p0, v0

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 74
    .line 75
    invoke-static {p4, p3}, Lai5;->d(Ljava/lang/String;[B)[B

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :cond_3
    invoke-virtual {p0, p2, p3}, Lai5;->p(Ljava/lang/String;[B)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :goto_1
    if-eqz p4, :cond_4

    .line 92
    .line 93
    :try_start_1
    invoke-static {p4, p3}, Lai5;->d(Ljava/lang/String;[B)[B

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    goto/16 :goto_5

    .line 102
    .line 103
    :catch_1
    move-exception v0

    .line 104
    move-object p1, v0

    .line 105
    invoke-static {p1, p0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :cond_4
    throw p0

    .line 110
    :cond_5
    const-string p0, "Unsupported Filen auth version: "

    .line 111
    .line 112
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/4 p0, 0x0

    .line 120
    return-object p0

    .line 121
    :cond_6
    :goto_2
    const-string p1, "masterKeys"

    .line 122
    .line 123
    invoke-static {p4, p1}, Lai5;->v(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p4

    .line 127
    :try_start_2
    sget-object v0, Lhb3;->a:[B

    .line 128
    .line 129
    new-instance v0, Ljava/lang/String;

    .line 130
    .line 131
    sget-object v2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 132
    .line 133
    invoke-direct {v0, p3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lai5;->c:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Lbt3;

    .line 139
    .line 140
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    check-cast p0, [B

    .line 145
    .line 146
    invoke-static {v0, p3, p0}, Lhb3;->k(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const-string v3, "/v3/user/masterKeys"

    .line 151
    .line 152
    invoke-static {p1, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    const-string v2, "POST"

    .line 163
    .line 164
    move-object v4, p0

    .line 165
    check-cast v4, Ljava/util/Map;

    .line 166
    .line 167
    new-instance v7, Lzk;

    .line 168
    .line 169
    const/16 p0, 0x9

    .line 170
    .line 171
    invoke-direct {v7, p0}, Lzk;-><init>(I)V

    .line 172
    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    move-object v5, p2

    .line 176
    invoke-virtual/range {v1 .. v7}, Lwa3;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Lbt3;)Lqj4;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p0}, Lqj4;->i()Lfl4;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    const-string p1, "keys"

    .line 185
    .line 186
    invoke-static {p0, p1}, Lai5;->v(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    if-eqz p0, :cond_8

    .line 191
    .line 192
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_7

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_7
    invoke-static {p0, p3}, Lai5;->w(Ljava/lang/String;[B)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    goto :goto_5

    .line 204
    :catch_2
    move-exception v0

    .line 205
    move-object p0, v0

    .line 206
    goto :goto_4

    .line 207
    :cond_8
    :goto_3
    if-eqz p4, :cond_9

    .line 208
    .line 209
    invoke-static {p4, p3}, Lai5;->w(Ljava/lang/String;[B)Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    goto :goto_5

    .line 214
    :cond_9
    invoke-static {p3}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 218
    goto :goto_5

    .line 219
    :goto_4
    if-eqz p4, :cond_a

    .line 220
    .line 221
    :try_start_3
    invoke-static {p4, p3}, Lai5;->w(Ljava/lang/String;[B)Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 225
    :goto_5
    return-object p0

    .line 226
    :catch_3
    move-exception v0

    .line 227
    move-object p1, v0

    .line 228
    invoke-static {p1, p0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 229
    .line 230
    .line 231
    throw p1

    .line 232
    :cond_a
    throw p0
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "email"

    .line 6
    .line 7
    const-string v3, "Unsupported Filen auth version: "

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    sget-object v4, Ldb3;->AuthInfo:Ldb3;

    .line 24
    .line 25
    :try_start_0
    iget-object v5, v0, Lai5;->b:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v7, v5

    .line 28
    check-cast v7, Lwa3;

    .line 29
    .line 30
    const-string v9, "/v3/auth/info"

    .line 31
    .line 32
    invoke-static {v2, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    check-cast v5, Ljava/util/Map;

    .line 40
    .line 41
    sget-object v8, Lwa3;->f:Ljava/util/List;

    .line 42
    .line 43
    check-cast v5, Ljava/util/Map;

    .line 44
    .line 45
    const-string v8, "POST"

    .line 46
    .line 47
    move-object v10, v5

    .line 48
    check-cast v10, Ljava/util/Map;

    .line 49
    .line 50
    new-instance v13, Lzk;

    .line 51
    .line 52
    const/16 v5, 0x9

    .line 53
    .line 54
    invoke-direct {v13, v5}, Lzk;-><init>(I)V

    .line 55
    .line 56
    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v12, 0x0

    .line 59
    invoke-virtual/range {v7 .. v13}, Lwa3;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Lbt3;)Lqj4;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v7}, Lqj4;->i()Lfl4;

    .line 64
    .line 65
    .line 66
    move-result-object v7
    :try_end_0
    .catch Lbb3; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    .line 67
    :try_start_1
    invoke-static {v7}, Lai5;->x(Lfl4;)I

    .line 68
    .line 69
    .line 70
    move-result v8
    :try_end_1
    .catch Lbb3; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    .line 71
    :try_start_2
    const-string v9, "salt"

    .line 72
    .line 73
    invoke-static {v7, v9}, Lai5;->v(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    if-nez v7, :cond_0

    .line 78
    .line 79
    const-string v7, ""

    .line 80
    .line 81
    :cond_0
    move-object v11, v7

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    goto/16 :goto_c

    .line 85
    .line 86
    :goto_0
    sget-object v7, Leb3;->V1:Leb3;

    .line 87
    .line 88
    invoke-virtual {v7}, Leb3;->getValue()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-eq v8, v9, :cond_2

    .line 93
    .line 94
    invoke-static {v11}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-nez v9, :cond_1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    const-string v0, "Missing Filen response field: salt"

    .line 102
    .line 103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v1
    :try_end_2
    .catch Lbb3; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    :cond_2
    :goto_1
    sget-object v4, Ldb3;->KeyDerivation:Ldb3;

    .line 110
    .line 111
    :try_start_3
    invoke-virtual {v7}, Leb3;->getValue()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-ne v8, v7, :cond_3

    .line 116
    .line 117
    invoke-static {v1}, Lhb3;->d(Ljava/lang/String;)Lib3;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    goto :goto_2

    .line 122
    :catch_1
    move-exception v0

    .line 123
    goto/16 :goto_b

    .line 124
    .line 125
    :cond_3
    sget-object v7, Leb3;->V2:Leb3;

    .line 126
    .line 127
    invoke-virtual {v7}, Leb3;->getValue()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-ne v8, v7, :cond_4

    .line 132
    .line 133
    invoke-static {v1, v11}, Lhb3;->g(Ljava/lang/String;Ljava/lang/String;)Lib3;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    sget-object v7, Leb3;->V3:Leb3;

    .line 139
    .line 140
    invoke-virtual {v7}, Leb3;->getValue()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-ne v8, v7, :cond_9

    .line 145
    .line 146
    invoke-static {v1, v11}, Lhb3;->h(Ljava/lang/String;Ljava/lang/String;)Lib3;

    .line 147
    .line 148
    .line 149
    move-result-object v1
    :try_end_3
    .catch Lbb3; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 150
    :goto_2
    sget-object v3, Ldb3;->Login:Ldb3;

    .line 151
    .line 152
    :try_start_4
    iget-object v4, v0, Lai5;->b:Ljava/lang/Object;

    .line 153
    .line 154
    move-object v12, v4

    .line 155
    check-cast v12, Lwa3;

    .line 156
    .line 157
    const-string v14, "/v3/login"

    .line 158
    .line 159
    new-instance v4, Lpw5;

    .line 160
    .line 161
    invoke-direct {v4, v2, v6}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    const-string v2, "password"

    .line 165
    .line 166
    iget-object v7, v1, Lib3;->b:Ljava/lang/String;

    .line 167
    .line 168
    new-instance v9, Lpw5;

    .line 169
    .line 170
    invoke-direct {v9, v2, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const-string v2, "twoFactorCode"

    .line 174
    .line 175
    invoke-static/range {p3 .. p3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-eqz v7, :cond_5

    .line 180
    .line 181
    const-string v7, "XXXXXX"

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catch_2
    move-exception v0

    .line 185
    goto/16 :goto_9

    .line 186
    .line 187
    :cond_5
    move-object/from16 v7, p3

    .line 188
    .line 189
    :goto_3
    new-instance v10, Lpw5;

    .line 190
    .line 191
    invoke-direct {v10, v2, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    const-string v2, "authVersion"

    .line 195
    .line 196
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    new-instance v13, Lpw5;

    .line 201
    .line 202
    invoke-direct {v13, v2, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    filled-new-array {v4, v9, v10, v13}, [Lpw5;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v2}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    check-cast v2, Ljava/util/Map;

    .line 214
    .line 215
    check-cast v2, Ljava/util/Map;

    .line 216
    .line 217
    const-string v13, "POST"

    .line 218
    .line 219
    move-object v15, v2

    .line 220
    check-cast v15, Ljava/util/Map;

    .line 221
    .line 222
    new-instance v2, Lzk;

    .line 223
    .line 224
    invoke-direct {v2, v5}, Lzk;-><init>(I)V

    .line 225
    .line 226
    .line 227
    const/16 v16, 0x0

    .line 228
    .line 229
    const/16 v17, 0x0

    .line 230
    .line 231
    move-object/from16 v18, v2

    .line 232
    .line 233
    invoke-virtual/range {v12 .. v18}, Lwa3;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Lbt3;)Lqj4;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v2}, Lqj4;->i()Lfl4;

    .line 238
    .line 239
    .line 240
    move-result-object v2
    :try_end_4
    .catch Lbb3; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 241
    :try_start_5
    const-string v4, "apiKey"

    .line 242
    .line 243
    invoke-static {v2, v4}, Lai5;->y(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v7
    :try_end_5
    .catch Lbb3; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 247
    sget-object v3, Ldb3;->MetadataKeys:Ldb3;

    .line 248
    .line 249
    :try_start_6
    iget-object v1, v1, Lib3;->a:[B

    .line 250
    .line 251
    invoke-virtual {v0, v8, v7, v1, v2}, Lai5;->s(ILjava/lang/String;[BLfl4;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v1
    :try_end_6
    .catch Lbb3; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 255
    sget-object v3, Ldb3;->KeyPair:Ldb3;

    .line 256
    .line 257
    :try_start_7
    invoke-virtual {v0, v7, v1, v2, v8}, Lai5;->r(Ljava/lang/String;Ljava/util/List;Lfl4;I)Lza3;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    iget-object v2, v2, Lza3;->a:Ljava/lang/String;

    .line 262
    .line 263
    sget-object v4, Leb3;->V3:Leb3;

    .line 264
    .line 265
    invoke-virtual {v4}, Leb3;->getValue()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    const/4 v5, 0x0

    .line 270
    if-ne v8, v4, :cond_6

    .line 271
    .line 272
    new-instance v4, Lya3;

    .line 273
    .line 274
    invoke-static {v2}, Lhb3;->i(Ljava/lang/String;)[B

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    invoke-virtual {v10, v2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    invoke-static {v2}, Lhb3;->j([B)[B

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-direct {v4, v9, v2}, Lya3;-><init>([B[B)V

    .line 294
    .line 295
    .line 296
    goto :goto_4

    .line 297
    :catch_3
    move-exception v0

    .line 298
    goto :goto_8

    .line 299
    :cond_6
    new-instance v4, Lya3;

    .line 300
    .line 301
    new-array v2, v5, [B

    .line 302
    .line 303
    new-array v9, v5, [B

    .line 304
    .line 305
    invoke-direct {v4, v2, v9}, Lya3;-><init>([B[B)V
    :try_end_7
    .catch Lbb3; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 306
    .line 307
    .line 308
    :goto_4
    sget-object v2, Ldb3;->BaseFolder:Ldb3;

    .line 309
    .line 310
    :try_start_8
    iget-object v0, v0, Lai5;->b:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v0, Lwa3;

    .line 313
    .line 314
    const-string v3, "/v3/user/baseFolder"

    .line 315
    .line 316
    invoke-virtual {v0, v3, v7}, Lwa3;->a(Ljava/lang/String;Ljava/lang/String;)Lqj4;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    const-string v3, "uuid"

    .line 325
    .line 326
    invoke-static {v0, v3}, Lai5;->y(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v12
    :try_end_8
    .catch Lbb3; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 330
    new-instance v10, Ljava/util/ArrayList;

    .line 331
    .line 332
    const/16 v0, 0xa

    .line 333
    .line 334
    invoke-static {v1, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    .line 340
    .line 341
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_7

    .line 350
    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    check-cast v1, [B

    .line 356
    .line 357
    invoke-static {v1}, Lhb3;->t([B)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    goto :goto_5

    .line 365
    :cond_7
    sget-object v0, Lhb3;->a:[B

    .line 366
    .line 367
    iget-object v0, v4, Lya3;->a:[B

    .line 368
    .line 369
    invoke-static {v0}, Lhb3;->t([B)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v13

    .line 373
    iget-object v0, v4, Lya3;->b:[B

    .line 374
    .line 375
    invoke-static {v0}, Lhb3;->t([B)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v14

    .line 379
    sget-object v0, Leb3;->V3:Leb3;

    .line 380
    .line 381
    invoke-virtual {v0}, Leb3;->getValue()I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-ne v8, v0, :cond_8

    .line 386
    .line 387
    const/4 v5, 0x2

    .line 388
    :cond_8
    move v15, v5

    .line 389
    new-instance v5, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 390
    .line 391
    const-string v9, ""

    .line 392
    .line 393
    invoke-direct/range {v5 .. v15}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 394
    .line 395
    .line 396
    return-object v5

    .line 397
    :catch_4
    move-exception v0

    .line 398
    goto :goto_6

    .line 399
    :catch_5
    move-exception v0

    .line 400
    goto :goto_7

    .line 401
    :goto_6
    new-instance v1, Lbb3;

    .line 402
    .line 403
    invoke-direct {v1, v2, v0}, Lbb3;-><init>(Ldb3;Ljava/lang/Exception;)V

    .line 404
    .line 405
    .line 406
    throw v1

    .line 407
    :goto_7
    throw v0

    .line 408
    :goto_8
    new-instance v1, Lbb3;

    .line 409
    .line 410
    invoke-direct {v1, v3, v0}, Lbb3;-><init>(Ldb3;Ljava/lang/Exception;)V

    .line 411
    .line 412
    .line 413
    throw v1

    .line 414
    :catch_6
    move-exception v0

    .line 415
    throw v0

    .line 416
    :catch_7
    move-exception v0

    .line 417
    new-instance v1, Lbb3;

    .line 418
    .line 419
    invoke-direct {v1, v3, v0}, Lbb3;-><init>(Ldb3;Ljava/lang/Exception;)V

    .line 420
    .line 421
    .line 422
    throw v1

    .line 423
    :catch_8
    move-exception v0

    .line 424
    throw v0

    .line 425
    :catch_9
    move-exception v0

    .line 426
    new-instance v1, Lbb3;

    .line 427
    .line 428
    invoke-direct {v1, v3, v0}, Lbb3;-><init>(Ldb3;Ljava/lang/Exception;)V

    .line 429
    .line 430
    .line 431
    throw v1

    .line 432
    :catch_a
    move-exception v0

    .line 433
    throw v0

    .line 434
    :catch_b
    move-exception v0

    .line 435
    goto :goto_a

    .line 436
    :goto_9
    new-instance v1, Lbb3;

    .line 437
    .line 438
    invoke-direct {v1, v3, v0}, Lbb3;-><init>(Ldb3;Ljava/lang/Exception;)V

    .line 439
    .line 440
    .line 441
    throw v1

    .line 442
    :goto_a
    throw v0

    .line 443
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 444
    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    throw v0
    :try_end_9
    .catch Lbb3; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 461
    :goto_b
    new-instance v1, Lbb3;

    .line 462
    .line 463
    invoke-direct {v1, v4, v0}, Lbb3;-><init>(Ldb3;Ljava/lang/Exception;)V

    .line 464
    .line 465
    .line 466
    throw v1

    .line 467
    :catch_c
    move-exception v0

    .line 468
    throw v0

    .line 469
    :goto_c
    new-instance v1, Lbb3;

    .line 470
    .line 471
    invoke-direct {v1, v4, v0}, Lbb3;-><init>(Ldb3;Ljava/lang/Exception;)V

    .line 472
    .line 473
    .line 474
    throw v1

    .line 475
    :catch_d
    move-exception v0

    .line 476
    throw v0

    .line 477
    :catch_e
    move-exception v0

    .line 478
    new-instance v1, Lbb3;

    .line 479
    .line 480
    invoke-direct {v1, v4, v0}, Lbb3;-><init>(Ldb3;Ljava/lang/Exception;)V

    .line 481
    .line 482
    .line 483
    throw v1

    .line 484
    :catch_f
    move-exception v0

    .line 485
    throw v0

    .line 486
    :catch_10
    move-exception v0

    .line 487
    goto :goto_d

    .line 488
    :catch_11
    move-exception v0

    .line 489
    goto :goto_e

    .line 490
    :goto_d
    new-instance v1, Lbb3;

    .line 491
    .line 492
    invoke-direct {v1, v4, v0}, Lbb3;-><init>(Ldb3;Ljava/lang/Exception;)V

    .line 493
    .line 494
    .line 495
    throw v1

    .line 496
    :goto_e
    throw v0
.end method

.method public u(Lhk5;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lai5;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnb4;

    .line 4
    .line 5
    iget-object v1, p0, Lai5;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lhk5;

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gtz v1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lai5;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lhk5;

    .line 18
    .line 19
    invoke-interface {v0, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-gtz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public z(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Ldb3;->SessionValidation:Ldb3;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->hasRestorableCryptoState()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_8

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getMetadataKeysHex()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/16 v4, 0xa

    .line 18
    .line 19
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v4}, Lhb3;->q(Ljava/lang/String;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lbb3; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getAuthVersion()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    sget-object v2, Leb3;->V3:Leb3;

    .line 58
    .line 59
    invoke-virtual {v2}, Leb3;->getValue()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x2

    .line 65
    if-ne v1, v4, :cond_4

    .line 66
    .line 67
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getNameHmacKeyHex()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getLegacyNameHmacKeyHex()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getNameHmacKeyVersion()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eq v1, v6, :cond_4

    .line 96
    .line 97
    :cond_3
    :goto_1
    sget-object v1, Ldb3;->KeyPair:Ldb3;

    .line 98
    .line 99
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getApiKey()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v0, v4, v3}, Lai5;->q(Ljava/lang/String;Ljava/util/ArrayList;)Lza3;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    iget-object v3, v3, Lza3;->a:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v4, Lya3;

    .line 110
    .line 111
    invoke-static {v3}, Lhb3;->i(Ljava/lang/String;)[B

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v8, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {v3}, Lhb3;->j([B)[B

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-direct {v4, v7, v3}, Lya3;-><init>([B[B)V
    :try_end_1
    .catch Lbb3; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :catch_1
    move-exception v0

    .line 135
    new-instance v2, Lbb3;

    .line 136
    .line 137
    invoke-direct {v2, v1, v0}, Lbb3;-><init>(Ldb3;Ljava/lang/Exception;)V

    .line 138
    .line 139
    .line 140
    throw v2

    .line 141
    :catch_2
    move-exception v0

    .line 142
    throw v0

    .line 143
    :cond_4
    sget-object v1, Lhb3;->a:[B

    .line 144
    .line 145
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getNameHmacKeyHex()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v1}, Lhb3;->q(Ljava/lang/String;)[B

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getLegacyNameHmacKeyHex()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    if-eqz v3, :cond_6

    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-lez v4, :cond_5

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    const/4 v3, 0x0

    .line 167
    :goto_2
    if-eqz v3, :cond_6

    .line 168
    .line 169
    invoke-static {v3}, Lhb3;->q(Ljava/lang/String;)[B

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    goto :goto_3

    .line 174
    :cond_6
    new-array v3, v5, [B

    .line 175
    .line 176
    :goto_3
    new-instance v4, Lya3;

    .line 177
    .line 178
    invoke-direct {v4, v1, v3}, Lya3;-><init>([B[B)V

    .line 179
    .line 180
    .line 181
    :goto_4
    sget-object v1, Ldb3;->BaseFolder:Ldb3;

    .line 182
    .line 183
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getApiKey()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    iget-object v0, v0, Lai5;->b:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Lwa3;

    .line 190
    .line 191
    const-string v7, "/v3/user/baseFolder"

    .line 192
    .line 193
    invoke-virtual {v0, v7, v3}, Lwa3;->a(Ljava/lang/String;Ljava/lang/String;)Lqj4;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const-string v3, "uuid"

    .line 202
    .line 203
    invoke-static {v0, v3}, Lai5;->y(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v14
    :try_end_2
    .catch Lbb3; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 207
    iget-object v0, v4, Lya3;->a:[B

    .line 208
    .line 209
    invoke-static {v0}, Lhb3;->t([B)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v15

    .line 213
    iget-object v0, v4, Lya3;->b:[B

    .line 214
    .line 215
    invoke-static {v0}, Lhb3;->t([B)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v16

    .line 219
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getAuthVersion()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    invoke-virtual {v2}, Leb3;->getValue()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-ne v0, v1, :cond_7

    .line 228
    .line 229
    move/from16 v17, v6

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_7
    move/from16 v17, v5

    .line 233
    .line 234
    :goto_5
    const/16 v18, 0x37

    .line 235
    .line 236
    const/16 v19, 0x0

    .line 237
    .line 238
    const/4 v8, 0x0

    .line 239
    const/4 v9, 0x0

    .line 240
    const/4 v10, 0x0

    .line 241
    const-string v11, ""

    .line 242
    .line 243
    const/4 v12, 0x0

    .line 244
    const/4 v13, 0x0

    .line 245
    move-object/from16 v7, p1

    .line 246
    .line 247
    invoke-static/range {v7 .. v19}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    return-object v0

    .line 252
    :catch_3
    move-exception v0

    .line 253
    new-instance v2, Lbb3;

    .line 254
    .line 255
    invoke-direct {v2, v1, v0}, Lbb3;-><init>(Ldb3;Ljava/lang/Exception;)V

    .line 256
    .line 257
    .line 258
    throw v2

    .line 259
    :catch_4
    move-exception v0

    .line 260
    throw v0

    .line 261
    :cond_8
    :try_start_3
    const-string v0, "Invalid persisted Filen session"

    .line 262
    .line 263
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 264
    .line 265
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v2
    :try_end_3
    .catch Lbb3; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 269
    :goto_6
    new-instance v2, Lbb3;

    .line 270
    .line 271
    invoke-direct {v2, v1, v0}, Lbb3;-><init>(Ldb3;Ljava/lang/Exception;)V

    .line 272
    .line 273
    .line 274
    throw v2

    .line 275
    :catch_5
    move-exception v0

    .line 276
    throw v0
.end method
