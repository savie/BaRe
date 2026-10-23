.class Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Identity;


# instance fields
.field public final a:Lcom/jcraft/jsch/OpenSshCertificate;

.field public final b:Ljava/lang/String;

.field public final c:[B

.field public final d:Lcom/jcraft/jsch/KeyPair;

.field public final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLcom/jcraft/jsch/OpenSshCertificate;Lcom/jcraft/jsch/KeyPair;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->e:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->a:Lcom/jcraft/jsch/OpenSshCertificate;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->d:Lcom/jcraft/jsch/KeyPair;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->b:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->c:[B

    .line 13
    .line 14
    return-void
.end method

.method public static a([B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_b

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    invoke-static {p0, v0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->a([BI)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_b

    .line 14
    .line 15
    array-length v1, p0

    .line 16
    if-eqz v1, :cond_b

    .line 17
    .line 18
    array-length v1, p0

    .line 19
    const/16 v2, 0x64

    .line 20
    .line 21
    if-le v1, v2, :cond_1

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 26
    .line 27
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v3, -0x1

    .line 38
    sparse-switch p0, :sswitch_data_0

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :sswitch_0
    const-string p0, "ecdsa-sha2-nistp256-cert-v01@openssh.com"

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_2
    const/16 v3, 0x8

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :sswitch_1
    const-string p0, "ecdsa-sha2-nistp384-cert-v01@openssh.com"

    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 v3, 0x7

    .line 67
    goto :goto_0

    .line 68
    :sswitch_2
    const-string p0, "ssh-dss-cert-v01@openssh.com"

    .line 69
    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_4

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const/4 v3, 0x6

    .line 78
    goto :goto_0

    .line 79
    :sswitch_3
    const-string p0, "rsa-sha2-256-cert-v01@openssh.com"

    .line 80
    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_5

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    const/4 v3, 0x5

    .line 89
    goto :goto_0

    .line 90
    :sswitch_4
    const-string p0, "ssh-ed448-cert-v01@openssh.com"

    .line 91
    .line 92
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_6

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    const/4 v3, 0x4

    .line 100
    goto :goto_0

    .line 101
    :sswitch_5
    const-string p0, "ecdsa-sha2-nistp521-cert-v01@openssh.com"

    .line 102
    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-nez p0, :cond_7

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    const/4 v3, 0x3

    .line 111
    goto :goto_0

    .line 112
    :sswitch_6
    const-string p0, "rsa-sha2-512-cert-v01@openssh.com"

    .line 113
    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-nez p0, :cond_8

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_8
    const/4 v3, 0x2

    .line 122
    goto :goto_0

    .line 123
    :sswitch_7
    const-string p0, "ssh-ed25519-cert-v01@openssh.com"

    .line 124
    .line 125
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_9

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_9
    move v3, v2

    .line 133
    goto :goto_0

    .line 134
    :sswitch_8
    const-string p0, "ssh-rsa-cert-v01@openssh.com"

    .line 135
    .line 136
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-nez p0, :cond_a

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_a
    move v3, v0

    .line 144
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 145
    .line 146
    .line 147
    return v0

    .line 148
    :pswitch_0
    return v2

    .line 149
    :cond_b
    :goto_1
    return v0

    .line 150
    nop

    .line 151
    :sswitch_data_0
    .sparse-switch
        -0x6e416ecf -> :sswitch_8
        -0x4e631eea -> :sswitch_7
        -0x414d2bf0 -> :sswitch_6
        -0xd639142 -> :sswitch_5
        -0xc1e38e8 -> :sswitch_4
        0xd8b76f3 -> :sswitch_3
        0x3f0fe02d -> :sswitch_2
        0x4b541863 -> :sswitch_1
        0x7dc932ff -> :sswitch_0
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
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/Identity;
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const-string v2, "\'"

    .line 6
    .line 7
    const-string v3, "Certificate key type mismatch: declared type \'"

    .line 8
    .line 9
    const-string v4, "Key type declared at the beginning of the certificate file, does not correspond to the encoded key type. Declared type: \'"

    .line 10
    .line 11
    const-string v5, "certificate is not valid. Valid after: "

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    :try_start_0
    invoke-static {v0, v6}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->a([BI)[B

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    if-eqz v7, :cond_9

    .line 19
    .line 20
    array-length v8, v7

    .line 21
    if-eqz v8, :cond_9

    .line 22
    .line 23
    const/4 v8, 0x1

    .line 24
    invoke-static {v0, v8}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->a([BI)[B

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    if-eqz v9, :cond_8

    .line 29
    .line 30
    array-length v10, v9

    .line 31
    if-eqz v10, :cond_8

    .line 32
    .line 33
    const/4 v10, 0x2

    .line 34
    invoke-static {v0, v10}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->a([BI)[B

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    array-length v11, v9

    .line 39
    invoke-static {v9, v6, v11}, Lcom/jcraft/jsch/Util;->i([BII)[B

    .line 40
    .line 41
    .line 42
    move-result-object v15

    .line 43
    invoke-static {v1, v15}, Lcom/jcraft/jsch/OpenSshCertificateParser;->a(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/OpenSshCertificate;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    iget-wide v11, v9, Lcom/jcraft/jsch/OpenSshCertificate;->g:J

    .line 48
    .line 49
    iget-wide v13, v9, Lcom/jcraft/jsch/OpenSshCertificate;->f:J

    .line 50
    .line 51
    iget-object v8, v9, Lcom/jcraft/jsch/OpenSshCertificate;->a:Ljava/lang/String;

    .line 52
    .line 53
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    array-length v6, v7

    .line 56
    move-object/from16 p2, v15

    .line 57
    .line 58
    new-instance v15, Ljava/lang/String;

    .line 59
    .line 60
    move-object/from16 v19, v3

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-direct {v15, v7, v3, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 64
    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    array-length v7, v0

    .line 69
    new-instance v6, Ljava/lang/String;

    .line 70
    .line 71
    invoke-direct {v6, v0, v3, v7, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const/4 v6, 0x0

    .line 76
    :goto_0
    if-eqz v8, :cond_7

    .line 77
    .line 78
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_7

    .line 83
    .line 84
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    .line 95
    .line 96
    .line 97
    move-result-wide v7

    .line 98
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Long;->compareUnsigned(JJ)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-gtz v0, :cond_1

    .line 103
    .line 104
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Long;->compareUnsigned(JJ)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-gez v0, :cond_1

    .line 109
    .line 110
    const/16 v16, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    move/from16 v16, v3

    .line 114
    .line 115
    :goto_1
    if-nez v16, :cond_4

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    const-wide/16 v3, 0x0

    .line 127
    .line 128
    cmp-long v5, v13, v3

    .line 129
    .line 130
    const-string v7, "infinity"

    .line 131
    .line 132
    if-gez v5, :cond_2

    .line 133
    .line 134
    move-object v5, v7

    .line 135
    goto :goto_2

    .line 136
    :cond_2
    :try_start_1
    sget-object v5, Lcom/jcraft/jsch/SftpATTRS;->i:Ljava/time/format/DateTimeFormatter;

    .line 137
    .line 138
    invoke-static {v13, v14}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-static {v5, v8}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    sget-object v8, Lcom/jcraft/jsch/SftpATTRS;->i:Ljava/time/format/DateTimeFormatter;

    .line 151
    .line 152
    invoke-virtual {v8, v5}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v5, " - Valid before: "

    .line 160
    .line 161
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    cmp-long v3, v11, v3

    .line 165
    .line 166
    if-gez v3, :cond_3

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_3
    sget-object v3, Lcom/jcraft/jsch/SftpATTRS;->i:Ljava/time/format/DateTimeFormatter;

    .line 170
    .line 171
    invoke-static {v11, v12}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-static {v3, v4}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    sget-object v4, Lcom/jcraft/jsch/SftpATTRS;->i:Ljava/time/format/DateTimeFormatter;

    .line 184
    .line 185
    invoke-virtual {v4, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    :goto_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    const/4 v3, 0x2

    .line 197
    invoke-interface {v0, v3, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_4
    iget-object v0, v9, Lcom/jcraft/jsch/OpenSshCertificate;->b:[B

    .line 201
    .line 202
    if-nez v0, :cond_5

    .line 203
    .line 204
    const/4 v0, 0x0

    .line 205
    goto :goto_4

    .line 206
    :cond_5
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, [B

    .line 211
    .line 212
    :goto_4
    if-eqz v0, :cond_6

    .line 213
    .line 214
    move-object/from16 v2, p1

    .line 215
    .line 216
    invoke-static {v1, v2, v0}, Lcom/jcraft/jsch/KeyPair;->p(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)Lcom/jcraft/jsch/KeyPair;

    .line 217
    .line 218
    .line 219
    move-result-object v17
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    new-instance v12, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;

    .line 221
    .line 222
    move-object/from16 v13, p0

    .line 223
    .line 224
    move-object/from16 v18, v6

    .line 225
    .line 226
    move-object/from16 v16, v9

    .line 227
    .line 228
    move-object v14, v15

    .line 229
    move-object/from16 v15, p2

    .line 230
    .line 231
    invoke-direct/range {v12 .. v18}, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;-><init>(Ljava/lang/String;Ljava/lang/String;[BLcom/jcraft/jsch/OpenSshCertificate;Lcom/jcraft/jsch/KeyPair;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    return-object v12

    .line 235
    :cond_6
    :try_start_2
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 236
    .line 237
    const-string v1, "Invalid certificate: missing public key"

    .line 238
    .line 239
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_7
    move-object v14, v15

    .line 244
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v3, "\' - Encoded Key type: \'"

    .line 257
    .line 258
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    const/4 v3, 0x3

    .line 272
    invoke-interface {v0, v3, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 276
    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    move-object/from16 v3, v19

    .line 280
    .line 281
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v3, "\' does not match encoded type \'"

    .line 288
    .line 289
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw v0

    .line 306
    :cond_8
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 307
    .line 308
    const-string v1, "Invalid certificate file: missing or empty key data"

    .line 309
    .line 310
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v0

    .line 314
    :cond_9
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 315
    .line 316
    const-string v1, "Invalid certificate file: missing or empty key type"

    .line 317
    .line 318
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v4, "Unexpected error parsing certificate: "

    .line 332
    .line 333
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    .line 345
    .line 346
    throw v1

    .line 347
    :catch_1
    move-exception v0

    .line 348
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string v4, "Invalid certificate data: "

    .line 357
    .line 358
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    .line 370
    .line 371
    throw v1

    .line 372
    :catch_2
    move-exception v0

    .line 373
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string v4, "Invalid certificate format: "

    .line 382
    .line 383
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    .line 395
    .line 396
    throw v1
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->d:Lcom/jcraft/jsch/KeyPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAlgName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->a:Lcom/jcraft/jsch/OpenSshCertificate;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPublicKeyBlob()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->c:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSignature([B)[B
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->d:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPair;->getSignature([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final getSignature([BLjava/lang/String;)[B
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->b:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-static {v0}, Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_1
    if-eqz p2, :cond_2

    .line 20
    .line 21
    move-object v0, p2

    .line 22
    :cond_2
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->d:Lcom/jcraft/jsch/KeyPair;

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->getSignature([BLjava/lang/String;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final isEncrypted()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->d:Lcom/jcraft/jsch/KeyPair;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 4
    .line 5
    return p0
.end method

.method public final setPassphrase([B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->d:Lcom/jcraft/jsch/KeyPair;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPair;->decrypt([B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
