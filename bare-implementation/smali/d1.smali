.class public final Ld1;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lnh4;I)V
    .locals 0

    .line 1
    iput p2, p0, Ld1;->e:I

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final C(Lm2;[B)Lz0;
    .locals 6

    .line 1
    iget p1, p0, Ld1;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    new-instance v1, Lp0;

    .line 13
    .line 14
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lnh4;

    .line 17
    .line 18
    invoke-direct {v1, p0, p2}, Lp0;-><init>(Lnh4;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    .line 20
    .line 21
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    if-lez p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :catch_0
    :cond_0
    move p0, v0

    .line 32
    :goto_1
    if-eqz p0, :cond_1

    .line 33
    .line 34
    :try_start_2
    invoke-virtual {v1}, Lp0;->g()Lz0;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :try_start_3
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p0

    .line 43
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :catchall_1
    move-exception p1

    .line 58
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_3
    throw p0

    .line 62
    :catch_2
    move-exception p0

    .line 63
    goto :goto_4

    .line 64
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 65
    .line 66
    .line 67
    new-instance p0, Ly1;

    .line 68
    .line 69
    invoke-direct {p0, p1, p2}, Ly1;-><init>(Ljava/util/HashSet;[B)V

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :goto_4
    new-instance p1, Lo1;

    .line 74
    .line 75
    const-string p2, "Could not parse ASN.1 SET contents."

    .line 76
    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    .line 79
    invoke-direct {p1, p0, p2, v0}, Lo1;-><init>(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :pswitch_0
    array-length p0, p2

    .line 84
    if-lez p0, :cond_5

    .line 85
    .line 86
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 87
    .line 88
    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 89
    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    div-int/lit8 v1, v0, 0x28

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const/16 v1, 0x2e

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    rem-int/lit8 v0, v0, 0x28

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    :goto_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-lez v0, :cond_4

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    const/16 v2, 0x7f

    .line 126
    .line 127
    if-ge v0, v2, :cond_2

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_2
    and-int/lit8 v0, v0, 0x7f

    .line 137
    .line 138
    int-to-long v3, v0

    .line 139
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    const/4 v4, 0x7

    .line 148
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    and-int/lit8 v4, v3, 0x7f

    .line 153
    .line 154
    int-to-long v4, v4

    .line 155
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-gt v3, v2, :cond_3

    .line 164
    .line 165
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_4
    new-instance p0, Lg1;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    sget-object v0, Lm2;->j:Li2;

    .line 179
    .line 180
    invoke-direct {p0, v0, p2}, Lr1;-><init>(Lm2;[B)V

    .line 181
    .line 182
    .line 183
    iput-object p1, p0, Lg1;->c:Ljava/lang/String;

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_5
    const-string p0, "An ASN.1 OBJECT IDENTIFIER should have at least a one byte value"

    .line 187
    .line 188
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const/4 p0, 0x0

    .line 192
    :goto_6
    return-object p0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
