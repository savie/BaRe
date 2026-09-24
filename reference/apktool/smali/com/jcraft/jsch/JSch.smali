.class public Lcom/jcraft/jsch/JSch;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/JSch$InstanceLogger;
    }
.end annotation


# static fields
.field public static final VERSION:Ljava/lang/String; = "2.28.2"

.field public static final g:Ljava/util/Hashtable;

.field public static final h:Lcom/jcraft/jsch/Logger;

.field public static i:Lcom/jcraft/jsch/Logger;


# instance fields
.field public final a:Lcom/jcraft/jsch/JSch$InstanceLogger;

.field public final b:Ljava/util/Vector;

.field public final c:Lcom/jcraft/jsch/IdentityRepository;

.field public d:Lcom/jcraft/jsch/IdentityRepository;

.field public e:Lcom/jcraft/jsch/ConfigRepository;

.field public f:Lcom/jcraft/jsch/HostKeyRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const-string v0, "6"

    .line 2
    .line 3
    const-string v1, "jsch.lang"

    .line 4
    .line 5
    const-string v2, "jsch.compression"

    .line 6
    .line 7
    const-string v3, "hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1"

    .line 8
    .line 9
    const-string v4, "jsch.mac"

    .line 10
    .line 11
    const-string v5, "aes128-gcm@openssh.com,aes256-gcm@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr"

    .line 12
    .line 13
    const-string v6, "jsch.cipher"

    .line 14
    .line 15
    const-string v7, "ssh-ed25519-cert-v01@openssh.com,ecdsa-sha2-nistp256-cert-v01@openssh.com,ecdsa-sha2-nistp384-cert-v01@openssh.com,ecdsa-sha2-nistp521-cert-v01@openssh.com,rsa-sha2-512-cert-v01@openssh.com,rsa-sha2-256-cert-v01@openssh.com,ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256"

    .line 16
    .line 17
    const-string v8, ""

    .line 18
    .line 19
    const-string v9, "none"

    .line 20
    .line 21
    const-string v10, "no"

    .line 22
    .line 23
    const-string v11, "yes"

    .line 24
    .line 25
    new-instance v12, Ljava/util/Hashtable;

    .line 26
    .line 27
    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v12, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 31
    .line 32
    const-string v13, "jsch.kex"

    .line 33
    .line 34
    const-string v14, "mlkem768x25519-sha256,curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14-sha256"

    .line 35
    .line 36
    sget-object v15, Lcom/jcraft/jsch/Util;->a:[B

    .line 37
    .line 38
    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v14
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    const-string v13, "kex"

    .line 43
    .line 44
    invoke-virtual {v12, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    sget-object v12, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 48
    .line 49
    const-string v13, "jsch.server_host_key"

    .line 50
    .line 51
    :try_start_1
    invoke-static {v13, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v13
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-object v13, v7

    .line 57
    :goto_0
    const-string v14, "server_host_key"

    .line 58
    .line 59
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    sget-object v12, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 63
    .line 64
    const-string v13, "jsch.ca_signature_algorithms"

    .line 65
    .line 66
    const-string v14, "ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256"

    .line 67
    .line 68
    :try_start_2
    invoke-static {v13, v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v14
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 72
    :catch_2
    const-string v13, "ca_signature_algorithms"

    .line 73
    .line 74
    invoke-virtual {v12, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    sget-object v12, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 78
    .line 79
    const-string v13, "jsch.prefer_known_host_key_types"

    .line 80
    .line 81
    :try_start_3
    invoke-static {v13, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v13
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 85
    goto :goto_1

    .line 86
    :catch_3
    move-object v13, v11

    .line 87
    :goto_1
    const-string v14, "prefer_known_host_key_types"

    .line 88
    .line 89
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    sget-object v12, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 93
    .line 94
    const-string v13, "jsch.enable_strict_kex"

    .line 95
    .line 96
    :try_start_4
    invoke-static {v13, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v13
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4

    .line 100
    goto :goto_2

    .line 101
    :catch_4
    move-object v13, v11

    .line 102
    :goto_2
    const-string v14, "enable_strict_kex"

    .line 103
    .line 104
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    sget-object v12, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 108
    .line 109
    const-string v13, "jsch.require_strict_kex"

    .line 110
    .line 111
    :try_start_5
    invoke-static {v13, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v13
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5

    .line 115
    goto :goto_3

    .line 116
    :catch_5
    move-object v13, v10

    .line 117
    :goto_3
    const-string v14, "require_strict_kex"

    .line 118
    .line 119
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    sget-object v12, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 123
    .line 124
    const-string v13, "jsch.enable_server_sig_algs"

    .line 125
    .line 126
    :try_start_6
    invoke-static {v13, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v13
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_6

    .line 130
    goto :goto_4

    .line 131
    :catch_6
    move-object v13, v11

    .line 132
    :goto_4
    const-string v14, "enable_server_sig_algs"

    .line 133
    .line 134
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    sget-object v12, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 138
    .line 139
    const-string v13, "jsch.enable_ext_info_in_auth"

    .line 140
    .line 141
    :try_start_7
    invoke-static {v13, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v13
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_7

    .line 145
    goto :goto_5

    .line 146
    :catch_7
    move-object v13, v11

    .line 147
    :goto_5
    const-string v14, "enable_ext_info_in_auth"

    .line 148
    .line 149
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    sget-object v12, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 153
    .line 154
    :try_start_8
    invoke-static {v6, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v13
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_8

    .line 158
    goto :goto_6

    .line 159
    :catch_8
    move-object v13, v5

    .line 160
    :goto_6
    const-string v14, "cipher.s2c"

    .line 161
    .line 162
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    sget-object v12, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 166
    .line 167
    :try_start_9
    invoke-static {v6, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_9

    .line 171
    :catch_9
    const-string v6, "cipher.c2s"

    .line 172
    .line 173
    invoke-virtual {v12, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    sget-object v5, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 177
    .line 178
    :try_start_a
    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_a

    .line 182
    goto :goto_7

    .line 183
    :catch_a
    move-object v6, v3

    .line 184
    :goto_7
    const-string v12, "mac.s2c"

    .line 185
    .line 186
    invoke-virtual {v5, v12, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    sget-object v5, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 190
    .line 191
    :try_start_b
    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_b

    .line 195
    :catch_b
    const-string v4, "mac.c2s"

    .line 196
    .line 197
    invoke-virtual {v5, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    sget-object v3, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 201
    .line 202
    :try_start_c
    invoke-static {v2, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_c

    .line 206
    goto :goto_8

    .line 207
    :catch_c
    move-object v4, v9

    .line 208
    :goto_8
    const-string v5, "compression.s2c"

    .line 209
    .line 210
    invoke-virtual {v3, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    sget-object v3, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 214
    .line 215
    :try_start_d
    invoke-static {v2, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_d

    .line 219
    goto :goto_9

    .line 220
    :catch_d
    move-object v2, v9

    .line 221
    :goto_9
    const-string v4, "compression.c2s"

    .line 222
    .line 223
    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    sget-object v2, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 227
    .line 228
    :try_start_e
    invoke-static {v1, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_e

    .line 232
    goto :goto_a

    .line 233
    :catch_e
    move-object v3, v8

    .line 234
    :goto_a
    const-string v4, "lang.s2c"

    .line 235
    .line 236
    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    sget-object v2, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 240
    .line 241
    :try_start_f
    invoke-static {v1, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_f

    .line 245
    goto :goto_b

    .line 246
    :catch_f
    move-object v1, v8

    .line 247
    :goto_b
    const-string v3, "lang.c2s"

    .line 248
    .line 249
    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 253
    .line 254
    const-string v2, "jsch.dhgex_min"

    .line 255
    .line 256
    const-string v3, "2048"

    .line 257
    .line 258
    :try_start_10
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_10

    .line 262
    :catch_10
    const-string v2, "dhgex_min"

    .line 263
    .line 264
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 268
    .line 269
    const-string v2, "jsch.dhgex_max"

    .line 270
    .line 271
    const-string v3, "8192"

    .line 272
    .line 273
    :try_start_11
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_11

    .line 277
    :catch_11
    const-string v2, "dhgex_max"

    .line 278
    .line 279
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 283
    .line 284
    const-string v2, "jsch.dhgex_preferred"

    .line 285
    .line 286
    const-string v3, "3072"

    .line 287
    .line 288
    :try_start_12
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_12} :catch_12

    .line 292
    :catch_12
    const-string v2, "dhgex_preferred"

    .line 293
    .line 294
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 298
    .line 299
    const-string v2, "jsch.compression_level"

    .line 300
    .line 301
    :try_start_13
    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_13

    .line 305
    goto :goto_c

    .line 306
    :catch_13
    move-object v2, v0

    .line 307
    :goto_c
    const-string v3, "compression_level"

    .line 308
    .line 309
    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 313
    .line 314
    const-string v2, "diffie-hellman-group-exchange-sha1"

    .line 315
    .line 316
    const-string v3, "com.jcraft.jsch.DHGEX1"

    .line 317
    .line 318
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    const-string v2, "diffie-hellman-group1-sha1"

    .line 322
    .line 323
    const-string v3, "com.jcraft.jsch.DHG1"

    .line 324
    .line 325
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    const-string v2, "diffie-hellman-group14-sha1"

    .line 329
    .line 330
    const-string v3, "com.jcraft.jsch.DHG14"

    .line 331
    .line 332
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    const-string v2, "diffie-hellman-group-exchange-sha256"

    .line 336
    .line 337
    const-string v3, "com.jcraft.jsch.DHGEX256"

    .line 338
    .line 339
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    const-string v2, "diffie-hellman-group-exchange-sha224@ssh.com"

    .line 343
    .line 344
    const-string v3, "com.jcraft.jsch.DHGEX224"

    .line 345
    .line 346
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    const-string v2, "diffie-hellman-group-exchange-sha384@ssh.com"

    .line 350
    .line 351
    const-string v3, "com.jcraft.jsch.DHGEX384"

    .line 352
    .line 353
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    const-string v2, "diffie-hellman-group-exchange-sha512@ssh.com"

    .line 357
    .line 358
    const-string v3, "com.jcraft.jsch.DHGEX512"

    .line 359
    .line 360
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    const-string v2, "diffie-hellman-group14-sha256"

    .line 364
    .line 365
    const-string v3, "com.jcraft.jsch.DHG14256"

    .line 366
    .line 367
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    const-string v2, "diffie-hellman-group15-sha512"

    .line 371
    .line 372
    const-string v4, "com.jcraft.jsch.DHG15"

    .line 373
    .line 374
    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    const-string v2, "diffie-hellman-group16-sha512"

    .line 378
    .line 379
    const-string v4, "com.jcraft.jsch.DHG16"

    .line 380
    .line 381
    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    const-string v2, "diffie-hellman-group17-sha512"

    .line 385
    .line 386
    const-string v5, "com.jcraft.jsch.DHG17"

    .line 387
    .line 388
    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    const-string v2, "diffie-hellman-group18-sha512"

    .line 392
    .line 393
    const-string v5, "com.jcraft.jsch.DHG18"

    .line 394
    .line 395
    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    const-string v2, "diffie-hellman-group14-sha256@ssh.com"

    .line 399
    .line 400
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    const-string v2, "diffie-hellman-group14-sha224@ssh.com"

    .line 404
    .line 405
    const-string v3, "com.jcraft.jsch.DHG14224"

    .line 406
    .line 407
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    const-string v2, "diffie-hellman-group15-sha256@ssh.com"

    .line 411
    .line 412
    const-string v3, "com.jcraft.jsch.DHG15256"

    .line 413
    .line 414
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    const-string v2, "diffie-hellman-group15-sha384@ssh.com"

    .line 418
    .line 419
    const-string v3, "com.jcraft.jsch.DHG15384"

    .line 420
    .line 421
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    const-string v2, "diffie-hellman-group16-sha512@ssh.com"

    .line 425
    .line 426
    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    const-string v2, "diffie-hellman-group16-sha384@ssh.com"

    .line 430
    .line 431
    const-string v3, "com.jcraft.jsch.DHG16384"

    .line 432
    .line 433
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    const-string v2, "diffie-hellman-group18-sha512@ssh.com"

    .line 437
    .line 438
    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    const-string v2, "ecdsa-sha2-nistp256"

    .line 442
    .line 443
    const-string v3, "com.jcraft.jsch.jce.SignatureECDSA256"

    .line 444
    .line 445
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    const-string v2, "ecdsa-sha2-nistp384"

    .line 449
    .line 450
    const-string v3, "com.jcraft.jsch.jce.SignatureECDSA384"

    .line 451
    .line 452
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    const-string v2, "ecdsa-sha2-nistp521"

    .line 456
    .line 457
    const-string v3, "com.jcraft.jsch.jce.SignatureECDSA521"

    .line 458
    .line 459
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    const-string v2, "ecdh-sha2-nistp256"

    .line 463
    .line 464
    const-string v3, "com.jcraft.jsch.DHEC256"

    .line 465
    .line 466
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    const-string v2, "ecdh-sha2-nistp384"

    .line 470
    .line 471
    const-string v3, "com.jcraft.jsch.DHEC384"

    .line 472
    .line 473
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    const-string v2, "ecdh-sha2-nistp521"

    .line 477
    .line 478
    const-string v3, "com.jcraft.jsch.DHEC521"

    .line 479
    .line 480
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    const-string v2, "ecdh-sha2-nistp"

    .line 484
    .line 485
    const-string v3, "com.jcraft.jsch.jce.ECDHN"

    .line 486
    .line 487
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    const-string v2, "curve25519-sha256"

    .line 491
    .line 492
    const-string v3, "com.jcraft.jsch.DH25519"

    .line 493
    .line 494
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    const-string v2, "curve25519-sha256@libssh.org"

    .line 498
    .line 499
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    const-string v2, "curve448-sha512"

    .line 503
    .line 504
    const-string v3, "com.jcraft.jsch.DH448"

    .line 505
    .line 506
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    const-string v2, "mlkem768x25519-sha256"

    .line 510
    .line 511
    const-string v3, "com.jcraft.jsch.DH25519MLKEM768"

    .line 512
    .line 513
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    const-string v2, "mlkem768nistp256-sha256"

    .line 517
    .line 518
    const-string v3, "com.jcraft.jsch.DHEC256MLKEM768"

    .line 519
    .line 520
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    const-string v2, "mlkem1024nistp384-sha384"

    .line 524
    .line 525
    const-string v3, "com.jcraft.jsch.DHEC384MLKEM1024"

    .line 526
    .line 527
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    const-string v2, "sntrup761x25519-sha512"

    .line 531
    .line 532
    const-string v3, "com.jcraft.jsch.DH25519SNTRUP761"

    .line 533
    .line 534
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    const-string v2, "sntrup761x25519-sha512@openssh.com"

    .line 538
    .line 539
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    const-string v2, "mlkem768"

    .line 543
    .line 544
    const-string v3, "com.jcraft.jsch.bc.MLKEM768"

    .line 545
    .line 546
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    const-string v2, "mlkem1024"

    .line 550
    .line 551
    const-string v3, "com.jcraft.jsch.bc.MLKEM1024"

    .line 552
    .line 553
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    const-string v2, "sntrup761"

    .line 557
    .line 558
    const-string v3, "com.jcraft.jsch.bc.SNTRUP761"

    .line 559
    .line 560
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    const-string v2, "dh"

    .line 564
    .line 565
    const-string v3, "com.jcraft.jsch.jce.DH"

    .line 566
    .line 567
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    const-string v2, "3des-cbc"

    .line 571
    .line 572
    const-string v3, "com.jcraft.jsch.jce.TripleDESCBC"

    .line 573
    .line 574
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    const-string v2, "blowfish-cbc"

    .line 578
    .line 579
    const-string v3, "com.jcraft.jsch.jce.BlowfishCBC"

    .line 580
    .line 581
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    const-string v2, "hmac-sha1"

    .line 585
    .line 586
    const-string v3, "com.jcraft.jsch.jce.HMACSHA1"

    .line 587
    .line 588
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    const-string v2, "hmac-sha1-96"

    .line 592
    .line 593
    const-string v3, "com.jcraft.jsch.jce.HMACSHA196"

    .line 594
    .line 595
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    const-string v2, "hmac-sha2-256"

    .line 599
    .line 600
    const-string v3, "com.jcraft.jsch.jce.HMACSHA256"

    .line 601
    .line 602
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    const-string v2, "hmac-sha2-512"

    .line 606
    .line 607
    const-string v3, "com.jcraft.jsch.jce.HMACSHA512"

    .line 608
    .line 609
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    const-string v2, "hmac-md5"

    .line 613
    .line 614
    const-string v3, "com.jcraft.jsch.jce.HMACMD5"

    .line 615
    .line 616
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    const-string v2, "hmac-md5-96"

    .line 620
    .line 621
    const-string v3, "com.jcraft.jsch.jce.HMACMD596"

    .line 622
    .line 623
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    const-string v2, "hmac-sha1-etm@openssh.com"

    .line 627
    .line 628
    const-string v3, "com.jcraft.jsch.jce.HMACSHA1ETM"

    .line 629
    .line 630
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    const-string v2, "hmac-sha1-96-etm@openssh.com"

    .line 634
    .line 635
    const-string v3, "com.jcraft.jsch.jce.HMACSHA196ETM"

    .line 636
    .line 637
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    const-string v2, "hmac-sha2-256-etm@openssh.com"

    .line 641
    .line 642
    const-string v3, "com.jcraft.jsch.jce.HMACSHA256ETM"

    .line 643
    .line 644
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    const-string v2, "hmac-sha2-512-etm@openssh.com"

    .line 648
    .line 649
    const-string v3, "com.jcraft.jsch.jce.HMACSHA512ETM"

    .line 650
    .line 651
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    const-string v2, "hmac-md5-etm@openssh.com"

    .line 655
    .line 656
    const-string v3, "com.jcraft.jsch.jce.HMACMD5ETM"

    .line 657
    .line 658
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    const-string v2, "hmac-md5-96-etm@openssh.com"

    .line 662
    .line 663
    const-string v3, "com.jcraft.jsch.jce.HMACMD596ETM"

    .line 664
    .line 665
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    const-string v2, "hmac-sha256-2@ssh.com"

    .line 669
    .line 670
    const-string v3, "com.jcraft.jsch.jce.HMACSHA2562SSHCOM"

    .line 671
    .line 672
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    const-string v2, "hmac-sha224@ssh.com"

    .line 676
    .line 677
    const-string v3, "com.jcraft.jsch.jce.HMACSHA224SSHCOM"

    .line 678
    .line 679
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    const-string v2, "hmac-sha256@ssh.com"

    .line 683
    .line 684
    const-string v3, "com.jcraft.jsch.jce.HMACSHA256SSHCOM"

    .line 685
    .line 686
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    const-string v2, "hmac-sha384@ssh.com"

    .line 690
    .line 691
    const-string v3, "com.jcraft.jsch.jce.HMACSHA384SSHCOM"

    .line 692
    .line 693
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    const-string v2, "hmac-sha512@ssh.com"

    .line 697
    .line 698
    const-string v3, "com.jcraft.jsch.jce.HMACSHA512SSHCOM"

    .line 699
    .line 700
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    const-string v2, "sha-1"

    .line 704
    .line 705
    const-string v3, "com.jcraft.jsch.jce.SHA1"

    .line 706
    .line 707
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    const-string v2, "sha-224"

    .line 711
    .line 712
    const-string v4, "com.jcraft.jsch.jce.SHA224"

    .line 713
    .line 714
    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    const-string v2, "sha-256"

    .line 718
    .line 719
    const-string v5, "com.jcraft.jsch.jce.SHA256"

    .line 720
    .line 721
    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    const-string v2, "sha-384"

    .line 725
    .line 726
    const-string v6, "com.jcraft.jsch.jce.SHA384"

    .line 727
    .line 728
    invoke-virtual {v1, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    const-string v2, "sha-512"

    .line 732
    .line 733
    const-string v12, "com.jcraft.jsch.jce.SHA512"

    .line 734
    .line 735
    invoke-virtual {v1, v2, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    const-string v2, "md5"

    .line 739
    .line 740
    const-string v13, "com.jcraft.jsch.jce.MD5"

    .line 741
    .line 742
    invoke-virtual {v1, v2, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    const-string v2, "sha1"

    .line 746
    .line 747
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    const-string v2, "sha224"

    .line 751
    .line 752
    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    const-string v2, "sha256"

    .line 756
    .line 757
    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    const-string v3, "sha384"

    .line 761
    .line 762
    invoke-virtual {v1, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    const-string v3, "sha512"

    .line 766
    .line 767
    invoke-virtual {v1, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    const-string v3, "signature.dss"

    .line 771
    .line 772
    const-string v4, "com.jcraft.jsch.jce.SignatureDSA"

    .line 773
    .line 774
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    const-string v3, "ssh-rsa"

    .line 778
    .line 779
    const-string v4, "com.jcraft.jsch.jce.SignatureRSA"

    .line 780
    .line 781
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    const-string v3, "rsa-sha2-256"

    .line 785
    .line 786
    const-string v4, "com.jcraft.jsch.jce.SignatureRSASHA256"

    .line 787
    .line 788
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    const-string v3, "rsa-sha2-512"

    .line 792
    .line 793
    const-string v4, "com.jcraft.jsch.jce.SignatureRSASHA512"

    .line 794
    .line 795
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    const-string v3, "ssh-rsa-sha224@ssh.com"

    .line 799
    .line 800
    const-string v4, "com.jcraft.jsch.jce.SignatureRSASHA224SSHCOM"

    .line 801
    .line 802
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    const-string v3, "ssh-rsa-sha256@ssh.com"

    .line 806
    .line 807
    const-string v4, "com.jcraft.jsch.jce.SignatureRSASHA256SSHCOM"

    .line 808
    .line 809
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    const-string v3, "ssh-rsa-sha384@ssh.com"

    .line 813
    .line 814
    const-string v4, "com.jcraft.jsch.jce.SignatureRSASHA384SSHCOM"

    .line 815
    .line 816
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    const-string v3, "ssh-rsa-sha512@ssh.com"

    .line 820
    .line 821
    const-string v4, "com.jcraft.jsch.jce.SignatureRSASHA512SSHCOM"

    .line 822
    .line 823
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    const-string v3, "keypairgen.dsa"

    .line 827
    .line 828
    const-string v4, "com.jcraft.jsch.jce.KeyPairGenDSA"

    .line 829
    .line 830
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    const-string v3, "keypairgen.rsa"

    .line 834
    .line 835
    const-string v4, "com.jcraft.jsch.jce.KeyPairGenRSA"

    .line 836
    .line 837
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    const-string v3, "keypairgen.ecdsa"

    .line 841
    .line 842
    const-string v4, "com.jcraft.jsch.jce.KeyPairGenECDSA"

    .line 843
    .line 844
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    const-string v3, "random"

    .line 848
    .line 849
    const-string v4, "com.jcraft.jsch.jce.Random"

    .line 850
    .line 851
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    const-string v3, "hmac-ripemd160"

    .line 855
    .line 856
    const-string v4, "com.jcraft.jsch.bc.HMACRIPEMD160"

    .line 857
    .line 858
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    const-string v3, "hmac-ripemd160@openssh.com"

    .line 862
    .line 863
    const-string v4, "com.jcraft.jsch.bc.HMACRIPEMD160OpenSSH"

    .line 864
    .line 865
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    const-string v3, "hmac-ripemd160-etm@openssh.com"

    .line 869
    .line 870
    const-string v4, "com.jcraft.jsch.bc.HMACRIPEMD160ETM"

    .line 871
    .line 872
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    const-string v3, "com.jcraft.jsch.CipherNone"

    .line 876
    .line 877
    invoke-virtual {v1, v9, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    const-string v3, "aes128-gcm@openssh.com"

    .line 881
    .line 882
    const-string v4, "com.jcraft.jsch.jce.AES128GCM"

    .line 883
    .line 884
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    const-string v3, "aes256-gcm@openssh.com"

    .line 888
    .line 889
    const-string v4, "com.jcraft.jsch.jce.AES256GCM"

    .line 890
    .line 891
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    const-string v3, "aes128-cbc"

    .line 895
    .line 896
    const-string v4, "com.jcraft.jsch.jce.AES128CBC"

    .line 897
    .line 898
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    const-string v3, "aes192-cbc"

    .line 902
    .line 903
    const-string v4, "com.jcraft.jsch.jce.AES192CBC"

    .line 904
    .line 905
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    const-string v3, "aes256-cbc"

    .line 909
    .line 910
    const-string v4, "com.jcraft.jsch.jce.AES256CBC"

    .line 911
    .line 912
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    const-string v3, "rijndael-cbc@lysator.liu.se"

    .line 916
    .line 917
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    const-string v3, "com.jcraft.jsch.bc.ChaCha20Poly1305"

    .line 921
    .line 922
    const-string v4, "chacha20-poly1305@openssh.com"

    .line 923
    .line 924
    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    const-string v3, "cast128-cbc"

    .line 928
    .line 929
    const-string v5, "com.jcraft.jsch.bc.CAST128CBC"

    .line 930
    .line 931
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    const-string v3, "cast128-ctr"

    .line 935
    .line 936
    const-string v5, "com.jcraft.jsch.bc.CAST128CTR"

    .line 937
    .line 938
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    const-string v3, "twofish128-cbc"

    .line 942
    .line 943
    const-string v5, "com.jcraft.jsch.bc.Twofish128CBC"

    .line 944
    .line 945
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    const-string v3, "twofish192-cbc"

    .line 949
    .line 950
    const-string v5, "com.jcraft.jsch.bc.Twofish192CBC"

    .line 951
    .line 952
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    const-string v3, "twofish256-cbc"

    .line 956
    .line 957
    const-string v5, "com.jcraft.jsch.bc.Twofish256CBC"

    .line 958
    .line 959
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    const-string v3, "twofish-cbc"

    .line 963
    .line 964
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    const-string v3, "twofish128-ctr"

    .line 968
    .line 969
    const-string v5, "com.jcraft.jsch.bc.Twofish128CTR"

    .line 970
    .line 971
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    const-string v3, "twofish192-ctr"

    .line 975
    .line 976
    const-string v5, "com.jcraft.jsch.bc.Twofish192CTR"

    .line 977
    .line 978
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    const-string v3, "twofish256-ctr"

    .line 982
    .line 983
    const-string v5, "com.jcraft.jsch.bc.Twofish256CTR"

    .line 984
    .line 985
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    const-string v3, "seed-cbc@ssh.com"

    .line 989
    .line 990
    const-string v5, "com.jcraft.jsch.bc.SEEDCBC"

    .line 991
    .line 992
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    const-string v3, "aes128-ctr"

    .line 996
    .line 997
    const-string v5, "com.jcraft.jsch.jce.AES128CTR"

    .line 998
    .line 999
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    const-string v3, "aes192-ctr"

    .line 1003
    .line 1004
    const-string v5, "com.jcraft.jsch.jce.AES192CTR"

    .line 1005
    .line 1006
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    const-string v3, "aes256-ctr"

    .line 1010
    .line 1011
    const-string v5, "com.jcraft.jsch.jce.AES256CTR"

    .line 1012
    .line 1013
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    const-string v3, "3des-ctr"

    .line 1017
    .line 1018
    const-string v5, "com.jcraft.jsch.jce.TripleDESCTR"

    .line 1019
    .line 1020
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    const-string v3, "blowfish-ctr"

    .line 1024
    .line 1025
    const-string v5, "com.jcraft.jsch.jce.BlowfishCTR"

    .line 1026
    .line 1027
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    const-string v3, "arcfour"

    .line 1031
    .line 1032
    const-string v5, "com.jcraft.jsch.jce.ARCFOUR"

    .line 1033
    .line 1034
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    const-string v3, "arcfour128"

    .line 1038
    .line 1039
    const-string v5, "com.jcraft.jsch.jce.ARCFOUR128"

    .line 1040
    .line 1041
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    const-string v3, "arcfour256"

    .line 1045
    .line 1046
    const-string v5, "com.jcraft.jsch.jce.ARCFOUR256"

    .line 1047
    .line 1048
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    const-string v3, "userauth.none"

    .line 1052
    .line 1053
    const-string v5, "com.jcraft.jsch.UserAuthNone"

    .line 1054
    .line 1055
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    const-string v3, "userauth.password"

    .line 1059
    .line 1060
    const-string v5, "com.jcraft.jsch.UserAuthPassword"

    .line 1061
    .line 1062
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    const-string v3, "userauth.keyboard-interactive"

    .line 1066
    .line 1067
    const-string v5, "com.jcraft.jsch.UserAuthKeyboardInteractive"

    .line 1068
    .line 1069
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    const-string v3, "userauth.publickey"

    .line 1073
    .line 1074
    const-string v5, "com.jcraft.jsch.UserAuthPublicKey"

    .line 1075
    .line 1076
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    const-string v3, "userauth.gssapi-with-mic"

    .line 1080
    .line 1081
    const-string v5, "com.jcraft.jsch.UserAuthGSSAPIWithMIC"

    .line 1082
    .line 1083
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    const-string v3, "gssapi-with-mic.krb5"

    .line 1087
    .line 1088
    const-string v5, "com.jcraft.jsch.jgss.GSSContextKrb5"

    .line 1089
    .line 1090
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    const-string v3, "zlib"

    .line 1094
    .line 1095
    const-string v5, "com.jcraft.jsch.jzlib.Compression"

    .line 1096
    .line 1097
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    const-string v3, "zlib@openssh.com"

    .line 1101
    .line 1102
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    const-string v3, "pbkdf2"

    .line 1106
    .line 1107
    const-string v5, "com.jcraft.jsch.jce.PBKDF2"

    .line 1108
    .line 1109
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    const-string v3, "bcrypt"

    .line 1113
    .line 1114
    const-string v5, "com.jcraft.jsch.jbcrypt.JBCrypt"

    .line 1115
    .line 1116
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    const-string v3, "Argon2d"

    .line 1120
    .line 1121
    const-string v5, "com.jcraft.jsch.bc.Argon2"

    .line 1122
    .line 1123
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    .line 1125
    .line 1126
    const-string v3, "Argon2i"

    .line 1127
    .line 1128
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    .line 1130
    .line 1131
    const-string v3, "Argon2id"

    .line 1132
    .line 1133
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    const-string v3, "scrypt"

    .line 1137
    .line 1138
    const-string v5, "com.jcraft.jsch.bc.SCrypt"

    .line 1139
    .line 1140
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    const-string v3, "xdh"

    .line 1144
    .line 1145
    const-string v5, "com.jcraft.jsch.bc.XDH"

    .line 1146
    .line 1147
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    const-string v3, "keypairgen.eddsa"

    .line 1151
    .line 1152
    const-string v5, "com.jcraft.jsch.bc.KeyPairGenEdDSA"

    .line 1153
    .line 1154
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    const-string v3, "ssh-ed25519"

    .line 1158
    .line 1159
    const-string v6, "com.jcraft.jsch.bc.SignatureEd25519"

    .line 1160
    .line 1161
    invoke-virtual {v1, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    const-string v3, "ssh-ed448"

    .line 1165
    .line 1166
    const-string v6, "com.jcraft.jsch.bc.SignatureEd448"

    .line 1167
    .line 1168
    invoke-virtual {v1, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    .line 1170
    .line 1171
    const-string v3, "keypairgen_fromprivate.eddsa"

    .line 1172
    .line 1173
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    const-string v3, "StrictHostKeyChecking"

    .line 1177
    .line 1178
    const-string v5, "ask"

    .line 1179
    .line 1180
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    const-string v3, "HashKnownHosts"

    .line 1184
    .line 1185
    invoke-virtual {v1, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    const-string v3, "jsch.preferred_authentications"

    .line 1189
    .line 1190
    const-string v5, "gssapi-with-mic,publickey,keyboard-interactive,password"

    .line 1191
    .line 1192
    :try_start_14
    invoke-static {v3, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v5
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_14} :catch_14

    .line 1196
    :catch_14
    const-string v3, "PreferredAuthentications"

    .line 1197
    .line 1198
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 1202
    .line 1203
    const-string v3, "jsch.client_pubkey"

    .line 1204
    .line 1205
    :try_start_15
    invoke-static {v3, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v7
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_15} :catch_15

    .line 1209
    :catch_15
    const-string v3, "PubkeyAcceptedAlgorithms"

    .line 1210
    .line 1211
    invoke-virtual {v1, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 1215
    .line 1216
    const-string v3, "jsch.enable_pubkey_auth_query"

    .line 1217
    .line 1218
    :try_start_16
    invoke-static {v3, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v3
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_16} :catch_16

    .line 1222
    goto :goto_d

    .line 1223
    :catch_16
    move-object v3, v11

    .line 1224
    :goto_d
    const-string v5, "enable_pubkey_auth_query"

    .line 1225
    .line 1226
    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 1230
    .line 1231
    const-string v3, "jsch.try_additional_pubkey_algorithms"

    .line 1232
    .line 1233
    :try_start_17
    invoke-static {v3, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v3
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_17} :catch_17

    .line 1237
    goto :goto_e

    .line 1238
    :catch_17
    move-object v3, v11

    .line 1239
    :goto_e
    const-string v5, "try_additional_pubkey_algorithms"

    .line 1240
    .line 1241
    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 1245
    .line 1246
    const-string v3, "jsch.enable_auth_none"

    .line 1247
    .line 1248
    :try_start_18
    invoke-static {v3, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v3
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_18} :catch_18

    .line 1252
    goto :goto_f

    .line 1253
    :catch_18
    move-object v3, v11

    .line 1254
    :goto_f
    const-string v5, "enable_auth_none"

    .line 1255
    .line 1256
    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 1260
    .line 1261
    const-string v3, "jsch.use_sftp_write_flush_workaround"

    .line 1262
    .line 1263
    :try_start_19
    invoke-static {v3, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v3
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_19} :catch_19

    .line 1267
    goto :goto_10

    .line 1268
    :catch_19
    move-object v3, v11

    .line 1269
    :goto_10
    const-string v5, "use_sftp_write_flush_workaround"

    .line 1270
    .line 1271
    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    .line 1273
    .line 1274
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 1275
    .line 1276
    const-string v3, "jsch.check_ciphers"

    .line 1277
    .line 1278
    :try_start_1a
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v4
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 1282
    :catch_1a
    const-string v3, "CheckCiphers"

    .line 1283
    .line 1284
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    .line 1286
    .line 1287
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 1288
    .line 1289
    const-string v3, "jsch.check_macs"

    .line 1290
    .line 1291
    :try_start_1b
    invoke-static {v3, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v8
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 1295
    :catch_1b
    const-string v3, "CheckMacs"

    .line 1296
    .line 1297
    invoke-virtual {v1, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 1301
    .line 1302
    const-string v3, "jsch.check_kexes"

    .line 1303
    .line 1304
    const-string v4, "mlkem768x25519-sha256,mlkem768nistp256-sha256,mlkem1024nistp384-sha384,sntrup761x25519-sha512,sntrup761x25519-sha512@openssh.com,curve25519-sha256,curve25519-sha256@libssh.org,curve448-sha512"

    .line 1305
    .line 1306
    :try_start_1c
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v4
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 1310
    :catch_1c
    const-string v3, "CheckKexes"

    .line 1311
    .line 1312
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    .line 1314
    .line 1315
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 1316
    .line 1317
    const-string v3, "jsch.check_signatures"

    .line 1318
    .line 1319
    const-string v4, "ssh-ed25519,ssh-ed448"

    .line 1320
    .line 1321
    :try_start_1d
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v4
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 1325
    :catch_1d
    const-string v3, "CheckSignatures"

    .line 1326
    .line 1327
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 1331
    .line 1332
    const-string v3, "jsch.fingerprint_hash"

    .line 1333
    .line 1334
    :try_start_1e
    invoke-static {v3, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 1338
    :catch_1e
    const-string v3, "FingerprintHash"

    .line 1339
    .line 1340
    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    .line 1342
    .line 1343
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 1344
    .line 1345
    const-string v2, "jsch.max_auth_tries"

    .line 1346
    .line 1347
    :try_start_1f
    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 1351
    :catch_1f
    const-string v2, "MaxAuthTries"

    .line 1352
    .line 1353
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    .line 1355
    .line 1356
    sget-object v0, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 1357
    .line 1358
    const-string v1, "ClearAllForwardings"

    .line 1359
    .line 1360
    invoke-virtual {v0, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    const-string v1, "jsch.host_certificate_to_key_fallback"

    .line 1364
    .line 1365
    :try_start_20
    invoke-static {v1, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v11
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_20} :catch_20

    .line 1369
    :catch_20
    const-string v1, "host_certificate_to_key_fallback"

    .line 1370
    .line 1371
    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    .line 1373
    .line 1374
    new-instance v0, Lcom/jcraft/jsch/JSch$1;

    .line 1375
    .line 1376
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1377
    .line 1378
    .line 1379
    sput-object v0, Lcom/jcraft/jsch/JSch;->h:Lcom/jcraft/jsch/Logger;

    .line 1380
    .line 1381
    sput-object v0, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 1382
    .line 1383
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 10
    .line 11
    new-instance v1, Ljava/util/Vector;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/jcraft/jsch/JSch;->b:Ljava/util/Vector;

    .line 17
    .line 18
    new-instance v1, Lcom/jcraft/jsch/LocalIdentityRepository;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/LocalIdentityRepository;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/jcraft/jsch/JSch;->c:Lcom/jcraft/jsch/IdentityRepository;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/jcraft/jsch/JSch;->d:Lcom/jcraft/jsch/IdentityRepository;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->e:Lcom/jcraft/jsch/ConfigRepository;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->f:Lcom/jcraft/jsch/HostKeyRepository;

    .line 31
    .line 32
    return-void
.end method

.method public static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 66
    sget-object v0, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    monitor-enter v0

    .line 67
    :try_start_0
    const-string v1, "PubkeyAcceptedKeyTypes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string p0, "PubkeyAcceptedAlgorithms"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 70
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getConfig()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/String;

    .line 34
    .line 35
    const-string v5, "PubkeyAcceptedKeyTypes"

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    const-string v4, "PubkeyAcceptedAlgorithms"

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw v0
.end method

.method public static getLogger()Lcom/jcraft/jsch/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 50
    const-string v0, "PubkeyAcceptedKeyTypes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 51
    const-string p0, "PubkeyAcceptedAlgorithms"

    invoke-virtual {v1, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 52
    :cond_0
    invoke-virtual {v1, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setConfig(Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, "PubkeyAcceptedKeyTypes"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const-string v3, "PubkeyAcceptedAlgorithms"

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    move-object v3, v2

    .line 34
    :goto_1
    sget-object v4, Lcom/jcraft/jsch/JSch;->g:Ljava/util/Hashtable;

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v4, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public static setLogger(Lcom/jcraft/jsch/Logger;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/jcraft/jsch/JSch;->h:Lcom/jcraft/jsch/Logger;

    .line 4
    .line 5
    :cond_0
    sput-object p0, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Lcom/jcraft/jsch/Session;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->b:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->b:Ljava/util/Vector;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final addIdentity(Lcom/jcraft/jsch/Identity;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    :try_start_0
    array-length v1, p2

    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    array-length v2, p2

    .line 8
    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-interface {p1, v1}, Lcom/jcraft/jsch/Identity;->setPassphrase([B)Z

    .line 12
    .line 13
    .line 14
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :try_start_2
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 22
    .line 23
    const-string p1, "Incorrect passphrase provided."

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    move-object p2, v1

    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p0

    .line 33
    :goto_0
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/jcraft/jsch/JSch;->d:Lcom/jcraft/jsch/IdentityRepository;

    .line 38
    .line 39
    instance-of v1, p2, Lcom/jcraft/jsch/LocalIdentityRepository;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    check-cast p2, Lcom/jcraft/jsch/LocalIdentityRepository;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/LocalIdentityRepository;->add(Lcom/jcraft/jsch/Identity;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    instance-of p2, p1, Lcom/jcraft/jsch/IdentityFile;

    .line 50
    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_3

    .line 58
    .line 59
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->d:Lcom/jcraft/jsch/IdentityRepository;

    .line 60
    .line 61
    check-cast p1, Lcom/jcraft/jsch/IdentityFile;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/jcraft/jsch/IdentityFile;->a:Lcom/jcraft/jsch/KeyPair;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyPair;->forSSHAgent()[B

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p0, p1}, Lcom/jcraft/jsch/IdentityRepository;->add([B)Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    monitor-enter p0

    .line 74
    :try_start_3
    iget-object p2, p0, Lcom/jcraft/jsch/JSch;->d:Lcom/jcraft/jsch/IdentityRepository;

    .line 75
    .line 76
    instance-of v1, p2, Lcom/jcraft/jsch/IdentityRepositoryWrapper;

    .line 77
    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    new-instance v1, Lcom/jcraft/jsch/IdentityRepositoryWrapper;

    .line 81
    .line 82
    invoke-direct {v1, p2, v0}, Lcom/jcraft/jsch/IdentityRepositoryWrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/JSch;->setIdentityRepository(Lcom/jcraft/jsch/IdentityRepository;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catchall_2
    move-exception p1

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 92
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->d:Lcom/jcraft/jsch/IdentityRepository;

    .line 93
    .line 94
    check-cast p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->a(Lcom/jcraft/jsch/Identity;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 101
    throw p1
.end method

.method public final addIdentity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;[B)V

    return-void
.end method

.method public final addIdentity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 102
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 103
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p2, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 104
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;[B)V

    if-eqz p2, :cond_1

    .line 105
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->e([B)V

    :cond_1
    return-void
.end method

.method public final addIdentity(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 108
    const-string v0, "-cert.pub"

    .line 109
    invoke-static {p1, v0}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_2

    .line 111
    :try_start_0
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    if-nez p2, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    invoke-static {v1}, La6;->f(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 113
    :goto_2
    iget-object v2, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    if-eqz v1, :cond_3

    .line 114
    invoke-static {v1}, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->a([B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    :try_start_1
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->j(Ljava/lang/String;)[B

    move-result-object p2

    .line 116
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    invoke-static {p1, p2, v0, v2}, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->b(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/Identity;

    move-result-object p1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 118
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    return-void

    .line 119
    :cond_3
    invoke-static {v2, p1, p2}, Lcom/jcraft/jsch/IdentityFile;->a(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object p1

    .line 120
    :goto_3
    invoke-virtual {p0, p1, p3}, Lcom/jcraft/jsch/JSch;->addIdentity(Lcom/jcraft/jsch/Identity;[B)V

    return-void
.end method

.method public final addIdentity(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-static {v1, p1, v0}, Lcom/jcraft/jsch/IdentityFile;->a(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/JSch;->addIdentity(Lcom/jcraft/jsch/Identity;[B)V

    return-void
.end method

.method public final addIdentity(Ljava/lang/String;[B[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 121
    invoke-static {p3}, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->a([B)Z

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p1, p2, p3, v1}, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->b(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/Identity;

    move-result-object p1

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {p1, p2, p3, v1}, Lcom/jcraft/jsch/IdentityFile;->b(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object p1

    .line 124
    :goto_0
    invoke-virtual {p0, p1, p4}, Lcom/jcraft/jsch/JSch;->addIdentity(Lcom/jcraft/jsch/Identity;[B)V

    return-void
.end method

.method public final b(Lcom/jcraft/jsch/Session;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->b:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->b:Ljava/util/Vector;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->e:Lcom/jcraft/jsch/ConfigRepository;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->f:Lcom/jcraft/jsch/HostKeyRepository;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/jcraft/jsch/KnownHosts;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->f:Lcom/jcraft/jsch/HostKeyRepository;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->f:Lcom/jcraft/jsch/HostKeyRepository;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getIdentityNames()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->d:Lcom/jcraft/jsch/IdentityRepository;

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/jcraft/jsch/Identity;

    .line 24
    .line 25
    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-object v0
.end method

.method public final declared-synchronized getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->d:Lcom/jcraft/jsch/IdentityRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final getInstanceLogger()Lcom/jcraft/jsch/Logger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSession(Ljava/lang/String;)Lcom/jcraft/jsch/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x16

    .line 17
    invoke-virtual {p0, v0, p1, v1}, Lcom/jcraft/jsch/JSch;->getSession(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object p0

    return-object p0
.end method

.method public final getSession(Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/16 v0, 0x16

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jsch/JSch;->getSession(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object p0

    return-object p0
.end method

.method public final getSession(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/jcraft/jsch/Session;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jcraft/jsch/Session;-><init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string p0, "host must not be null."

    .line 10
    .line 11
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final removeAllIdentity()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->d:Lcom/jcraft/jsch/IdentityRepository;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jcraft/jsch/IdentityRepository;->removeAll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeIdentity(Lcom/jcraft/jsch/Identity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->d:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/jcraft/jsch/IdentityRepository;->remove([B)Z

    return-void
.end method

.method public final removeIdentity(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->d:Lcom/jcraft/jsch/IdentityRepository;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_3

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/jcraft/jsch/Identity;

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/JSch;->d:Lcom/jcraft/jsch/IdentityRepository;

    .line 32
    .line 33
    instance-of v4, v3, Lcom/jcraft/jsch/LocalIdentityRepository;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    move-object v4, v3

    .line 38
    check-cast v4, Lcom/jcraft/jsch/LocalIdentityRepository;

    .line 39
    .line 40
    monitor-enter v4

    .line 41
    :try_start_0
    iget-object v3, v4, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    iget-object v3, v4, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->clear()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/LocalIdentityRepository;->remove([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    :goto_1
    monitor-exit v4

    .line 68
    goto :goto_3

    .line 69
    :goto_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p0

    .line 71
    :cond_2
    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v3, v2}, Lcom/jcraft/jsch/IdentityRepository;->remove([B)Z

    .line 76
    .line 77
    .line 78
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    return-void
.end method

.method public final setConfigRepository(Lcom/jcraft/jsch/ConfigRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/JSch;->e:Lcom/jcraft/jsch/ConfigRepository;

    .line 2
    .line 3
    return-void
.end method

.method public final setHostKeyRepository(Lcom/jcraft/jsch/HostKeyRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/JSch;->f:Lcom/jcraft/jsch/HostKeyRepository;

    .line 2
    .line 3
    return-void
.end method

.method public final declared-synchronized setIdentityRepository(Lcom/jcraft/jsch/IdentityRepository;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/jcraft/jsch/JSch;->c:Lcom/jcraft/jsch/IdentityRepository;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/jcraft/jsch/JSch;->d:Lcom/jcraft/jsch/IdentityRepository;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/jcraft/jsch/JSch;->d:Lcom/jcraft/jsch/IdentityRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    :goto_0
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p1
.end method

.method public final setInstanceLogger(Lcom/jcraft/jsch/Logger;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/jcraft/jsch/JSch$InstanceLogger;->a:Lcom/jcraft/jsch/Logger;

    .line 4
    .line 5
    return-void
.end method

.method public final setKnownHosts(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->f:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/jcraft/jsch/KnownHosts;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->f:Lcom/jcraft/jsch/HostKeyRepository;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->f:Lcom/jcraft/jsch/HostKeyRepository;

    instance-of v1, v0, Lcom/jcraft/jsch/KnownHosts;

    if-eqz v1, :cond_1

    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->f:Lcom/jcraft/jsch/HostKeyRepository;

    check-cast p0, Lcom/jcraft/jsch/KnownHosts;

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KnownHosts;->d(Ljava/io/InputStream;)V

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final setKnownHosts(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->f:Lcom/jcraft/jsch/HostKeyRepository;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/jcraft/jsch/KnownHosts;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->f:Lcom/jcraft/jsch/HostKeyRepository;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->f:Lcom/jcraft/jsch/HostKeyRepository;

    .line 13
    .line 14
    instance-of v1, v0, Lcom/jcraft/jsch/KnownHosts;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->f:Lcom/jcraft/jsch/HostKeyRepository;

    .line 20
    .line 21
    check-cast p0, Lcom/jcraft/jsch/KnownHosts;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :try_start_1
    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->b:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v1, Ljava/io/FileInputStream;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KnownHosts;->d(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    :catch_0
    :try_start_2
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw p0

    .line 45
    :cond_1
    return-void
.end method
