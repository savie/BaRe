.class public final Lz1a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyu9;


# instance fields
.field public final a:Lb2a;

.field public final b:Ljava/lang/String;

.field public final c:Ljavax/crypto/spec/SecretKeySpec;

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb2a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lb2a;-><init>(Lz1a;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lz1a;->a:Lb2a;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-static {v1}, Lu48;->c(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    iput-object p1, p0, Lz1a;->b:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p2, p0, Lz1a;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    array-length p2, p2

    .line 27
    const/16 v2, 0x10

    .line 28
    .line 29
    if-lt p2, v2, :cond_5

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/4 v2, -0x1

    .line 36
    sparse-switch p2, :sswitch_data_0

    .line 37
    .line 38
    .line 39
    :goto_0
    move v1, v2

    .line 40
    goto :goto_1

    .line 41
    :sswitch_0
    const-string p2, "HMACSHA512"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x4

    .line 51
    goto :goto_1

    .line 52
    :sswitch_1
    const-string p2, "HMACSHA384"

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v1, 0x3

    .line 62
    goto :goto_1

    .line 63
    :sswitch_2
    const-string p2, "HMACSHA256"

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :sswitch_3
    const-string p2, "HMACSHA224"

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-nez p2, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/4 v1, 0x1

    .line 82
    goto :goto_1

    .line 83
    :sswitch_4
    const-string p2, "HMACSHA1"

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    const/4 v1, 0x0

    .line 93
    :cond_4
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 97
    .line 98
    const-string p2, "unknown Hmac algorithm: "

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :pswitch_0
    const/16 p1, 0x40

    .line 109
    .line 110
    iput p1, p0, Lz1a;->d:I

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :pswitch_1
    const/16 p1, 0x30

    .line 114
    .line 115
    iput p1, p0, Lz1a;->d:I

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :pswitch_2
    const/16 p1, 0x20

    .line 119
    .line 120
    iput p1, p0, Lz1a;->d:I

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :pswitch_3
    const/16 p1, 0x1c

    .line 124
    .line 125
    iput p1, p0, Lz1a;->d:I

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :pswitch_4
    const/16 p1, 0x14

    .line 129
    .line 130
    iput p1, p0, Lz1a;->d:I

    .line 131
    .line 132
    :goto_2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_5
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 137
    .line 138
    const-string p1, "key size too small, need at least 16 bytes"

    .line 139
    .line 140
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_6
    const-string p0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    .line 145
    .line 146
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const/4 p0, 0x0

    .line 150
    throw p0

    .line 151
    :sswitch_data_0
    .sparse-switch
        -0x6ca99674 -> :sswitch_4
        0x1762408f -> :sswitch_3
        0x176240ee -> :sswitch_2
        0x1762450a -> :sswitch_1
        0x17624bb1 -> :sswitch_0
    .end sparse-switch

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a([BI)[B
    .locals 1

    .line 1
    iget v0, p0, Lz1a;->d:I

    .line 2
    .line 3
    if-gt p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lz1a;->a:Lb2a;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljavax/crypto/Mac;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljavax/crypto/Mac;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 32
    .line 33
    const-string p1, "tag size too big"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method
