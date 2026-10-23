.class public Lcom/jcraft/jsch/Session;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/Session$GlobalRequestReply;,
        Lcom/jcraft/jsch/Session$Forwarding;
    }
.end annotation


# static fields
.field public static A0:Lcom/jcraft/jsch/Random;

.field public static final B0:[B

.field public static final C0:[B


# instance fields
.field public volatile A:Z

.field public B:Z

.field public C:Z

.field public volatile D:Z

.field public volatile E:Z

.field public F:Z

.field public G:Z

.field public volatile H:Z

.field public I:Ljava/lang/Thread;

.field public final J:Ljava/lang/Object;

.field public K:Z

.field public L:Z

.field public M:Ljava/io/InputStream;

.field public N:Ljava/io/OutputStream;

.field public O:Lcom/jcraft/jsch/Buffer;

.field public final P:Lcom/jcraft/jsch/Packet;

.field public Q:Lcom/jcraft/jsch/SocketFactory;

.field public R:Ljava/util/Hashtable;

.field public S:Lcom/jcraft/jsch/Proxy;

.field public T:Lcom/jcraft/jsch/UserInfo;

.field public U:Ljava/lang/String;

.field public V:I

.field public W:I

.field public X:Lcom/jcraft/jsch/IdentityRepository;

.field public Y:Lcom/jcraft/jsch/HostKeyRepository;

.field public volatile Z:[Ljava/lang/String;

.field public a:[B

.field public volatile a0:Z

.field public b:[B

.field public b0:Z

.field public c:[B

.field public volatile c0:J

.field public d:[B

.field public d0:I

.field public e:[B

.field public e0:I

.field public f:[B

.field public f0:Ljava/lang/String;

.field public g:[B

.field public final g0:Ljava/lang/String;

.field public h:[B

.field public h0:I

.field public i:[B

.field public final i0:Ljava/lang/String;

.field public j:[B

.field public j0:[B

.field public k:[B

.field public final k0:Lcom/jcraft/jsch/JSch;

.field public l:I

.field public l0:Lcom/jcraft/jsch/Logger;

.field public m:I

.field public m0:Ljava/util/concurrent/ThreadFactory;

.field public n:[Ljava/lang/String;

.field public n0:Z

.field public o:Lcom/jcraft/jsch/Cipher;

.field public final o0:Ljava/util/ArrayList;

.field public p:Lcom/jcraft/jsch/Cipher;

.field public final p0:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public q:Lcom/jcraft/jsch/MAC;

.field public volatile q0:Z

.field public r:Lcom/jcraft/jsch/MAC;

.field public volatile r0:Z

.field public s:[B

.field public volatile s0:[Ljava/lang/String;

.field public t:[B

.field public final t0:[I

.field public u:Lcom/jcraft/jsch/Compression;

.field public final u0:[I

.field public v:Lcom/jcraft/jsch/Compression;

.field public v0:I

.field public w:Lcom/jcraft/jsch/IO;

.field public w0:I

.field public x:Ljava/net/Socket;

.field public x0:Lj70;

.field public y:I

.field public final y0:Lcom/jcraft/jsch/Session$GlobalRequestReply;

.field public volatile z:Z

.field public z0:Lcom/jcraft/jsch/HostKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "keepalive@jcraft.com"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lcom/jcraft/jsch/Session;->B0:[B

    .line 12
    .line 13
    const-string v1, "no-more-sessions@openssh.com"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/jcraft/jsch/Session;->C0:[B

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "SSH-2.0-JSCH_"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/jcraft/jsch/JSch;->VERSION:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/jcraft/jsch/Session;->b:[B

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/jcraft/jsch/Session;->l:I

    .line 30
    .line 31
    iput v0, p0, Lcom/jcraft/jsch/Session;->m:I

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 35
    .line 36
    iput v0, p0, Lcom/jcraft/jsch/Session;->y:I

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->z:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->A:Z

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    iput-boolean v2, p0, Lcom/jcraft/jsch/Session;->B:Z

    .line 44
    .line 45
    iput-boolean v2, p0, Lcom/jcraft/jsch/Session;->C:Z

    .line 46
    .line 47
    iput-boolean v2, p0, Lcom/jcraft/jsch/Session;->D:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->E:Z

    .line 50
    .line 51
    iput-boolean v2, p0, Lcom/jcraft/jsch/Session;->F:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->G:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->H:Z

    .line 56
    .line 57
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->I:Ljava/lang/Thread;

    .line 58
    .line 59
    new-instance v3, Ljava/lang/Object;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->J:Ljava/lang/Object;

    .line 65
    .line 66
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->K:Z

    .line 67
    .line 68
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->L:Z

    .line 69
    .line 70
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->M:Ljava/io/InputStream;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->N:Ljava/io/OutputStream;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/SocketFactory;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->R:Ljava/util/Hashtable;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->S:Lcom/jcraft/jsch/Proxy;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->U:Ljava/lang/String;

    .line 81
    .line 82
    iput v0, p0, Lcom/jcraft/jsch/Session;->V:I

    .line 83
    .line 84
    iput v2, p0, Lcom/jcraft/jsch/Session;->W:I

    .line 85
    .line 86
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->X:Lcom/jcraft/jsch/IdentityRepository;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/HostKeyRepository;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->Z:[Ljava/lang/String;

    .line 91
    .line 92
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->a0:Z

    .line 93
    .line 94
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->b0:Z

    .line 95
    .line 96
    const-wide/16 v3, 0x0

    .line 97
    .line 98
    iput-wide v3, p0, Lcom/jcraft/jsch/Session;->c0:J

    .line 99
    .line 100
    const/4 v3, 0x6

    .line 101
    iput v3, p0, Lcom/jcraft/jsch/Session;->d0:I

    .line 102
    .line 103
    iput v0, p0, Lcom/jcraft/jsch/Session;->e0:I

    .line 104
    .line 105
    const-string v3, "127.0.0.1"

    .line 106
    .line 107
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 108
    .line 109
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->g0:Ljava/lang/String;

    .line 110
    .line 111
    const/16 v3, 0x16

    .line 112
    .line 113
    iput v3, p0, Lcom/jcraft/jsch/Session;->h0:I

    .line 114
    .line 115
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->i0:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->j0:[B

    .line 118
    .line 119
    new-instance v3, Li70;

    .line 120
    .line 121
    invoke-direct {v3, v2}, Li70;-><init>(I)V

    .line 122
    .line 123
    .line 124
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->m0:Ljava/util/concurrent/ThreadFactory;

    .line 125
    .line 126
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->n0:Z

    .line 127
    .line 128
    new-instance v3, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    .line 133
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->o0:Ljava/util/ArrayList;

    .line 134
    .line 135
    new-instance v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 136
    .line 137
    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->p0:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 141
    .line 142
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->q0:Z

    .line 143
    .line 144
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->r0:Z

    .line 145
    .line 146
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->s0:[Ljava/lang/String;

    .line 147
    .line 148
    new-array v3, v2, [I

    .line 149
    .line 150
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->t0:[I

    .line 151
    .line 152
    new-array v3, v2, [I

    .line 153
    .line 154
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->u0:[I

    .line 155
    .line 156
    const/16 v3, 0x8

    .line 157
    .line 158
    iput v3, p0, Lcom/jcraft/jsch/Session;->v0:I

    .line 159
    .line 160
    iput v3, p0, Lcom/jcraft/jsch/Session;->w0:I

    .line 161
    .line 162
    new-instance v3, Lcom/jcraft/jsch/Session$GlobalRequestReply;

    .line 163
    .line 164
    invoke-direct {v3, v1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session$1;)V

    .line 165
    .line 166
    .line 167
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->y0:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    .line 168
    .line 169
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->z0:Lcom/jcraft/jsch/HostKey;

    .line 170
    .line 171
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->k0:Lcom/jcraft/jsch/JSch;

    .line 172
    .line 173
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    .line 174
    .line 175
    invoke-direct {v3}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 179
    .line 180
    new-instance v4, Lcom/jcraft/jsch/Packet;

    .line 181
    .line 182
    invoke-direct {v4, v3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 183
    .line 184
    .line 185
    iput-object v4, p0, Lcom/jcraft/jsch/Session;->P:Lcom/jcraft/jsch/Packet;

    .line 186
    .line 187
    iput-object p2, p0, Lcom/jcraft/jsch/Session;->i0:Ljava/lang/String;

    .line 188
    .line 189
    iput-object p3, p0, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 190
    .line 191
    iput-object p3, p0, Lcom/jcraft/jsch/Session;->g0:Ljava/lang/String;

    .line 192
    .line 193
    iput p4, p0, Lcom/jcraft/jsch/Session;->h0:I

    .line 194
    .line 195
    iget-object p2, p1, Lcom/jcraft/jsch/JSch;->e:Lcom/jcraft/jsch/ConfigRepository;

    .line 196
    .line 197
    if-nez p2, :cond_0

    .line 198
    .line 199
    goto/16 :goto_4

    .line 200
    .line 201
    :cond_0
    invoke-interface {p2, p3}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    .line 202
    .line 203
    .line 204
    move-result-object p3

    .line 205
    iget-object p4, p0, Lcom/jcraft/jsch/Session;->i0:Ljava/lang/String;

    .line 206
    .line 207
    if-nez p4, :cond_1

    .line 208
    .line 209
    invoke-interface {p3}, Lcom/jcraft/jsch/ConfigRepository$Config;->getUser()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p4

    .line 213
    if-eqz p4, :cond_1

    .line 214
    .line 215
    iput-object p4, p0, Lcom/jcraft/jsch/Session;->i0:Ljava/lang/String;

    .line 216
    .line 217
    :cond_1
    invoke-interface {p3}, Lcom/jcraft/jsch/ConfigRepository$Config;->getHostname()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p4

    .line 221
    if-eqz p4, :cond_2

    .line 222
    .line 223
    iput-object p4, p0, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 224
    .line 225
    :cond_2
    invoke-interface {p3}, Lcom/jcraft/jsch/ConfigRepository$Config;->getPort()I

    .line 226
    .line 227
    .line 228
    move-result p4

    .line 229
    const/4 v3, -0x1

    .line 230
    if-eq p4, v3, :cond_3

    .line 231
    .line 232
    iput p4, p0, Lcom/jcraft/jsch/Session;->h0:I

    .line 233
    .line 234
    :cond_3
    const-string p4, "kex"

    .line 235
    .line 236
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string p4, "server_host_key"

    .line 240
    .line 241
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const-string p4, "prefer_known_host_key_types"

    .line 245
    .line 246
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string p4, "enable_server_sig_algs"

    .line 250
    .line 251
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const-string p4, "enable_ext_info_in_auth"

    .line 255
    .line 256
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string p4, "enable_strict_kex"

    .line 260
    .line 261
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const-string p4, "require_strict_kex"

    .line 265
    .line 266
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const-string p4, "enable_pubkey_auth_query"

    .line 270
    .line 271
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string p4, "try_additional_pubkey_algorithms"

    .line 275
    .line 276
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    const-string p4, "enable_auth_none"

    .line 280
    .line 281
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string p4, "use_sftp_write_flush_workaround"

    .line 285
    .line 286
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const-string p4, "cipher.c2s"

    .line 290
    .line 291
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string p4, "cipher.s2c"

    .line 295
    .line 296
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string p4, "mac.c2s"

    .line 300
    .line 301
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string p4, "mac.s2c"

    .line 305
    .line 306
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const-string p4, "compression.c2s"

    .line 310
    .line 311
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const-string p4, "compression.s2c"

    .line 315
    .line 316
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-string p4, "compression_level"

    .line 320
    .line 321
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const-string p4, "StrictHostKeyChecking"

    .line 325
    .line 326
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const-string p4, "HashKnownHosts"

    .line 330
    .line 331
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string p4, "PreferredAuthentications"

    .line 335
    .line 336
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const-string p4, "PubkeyAcceptedAlgorithms"

    .line 340
    .line 341
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string p4, "FingerprintHash"

    .line 345
    .line 346
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    const-string p4, "MaxAuthTries"

    .line 350
    .line 351
    invoke-virtual {p0, p3, p4}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    const-string v3, "ClearAllForwardings"

    .line 355
    .line 356
    invoke-virtual {p0, p3, v3}, Lcom/jcraft/jsch/Session;->d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    const-string v4, "HostKeyAlias"

    .line 360
    .line 361
    invoke-interface {p3, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    if-eqz v4, :cond_4

    .line 366
    .line 367
    iput-object v4, p0, Lcom/jcraft/jsch/Session;->U:Ljava/lang/String;

    .line 368
    .line 369
    :cond_4
    const-string v4, "UserKnownHostsFile"

    .line 370
    .line 371
    invoke-interface {p3, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    if-eqz v4, :cond_5

    .line 376
    .line 377
    new-instance v5, Lcom/jcraft/jsch/KnownHosts;

    .line 378
    .line 379
    invoke-direct {v5, p1}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    .line 380
    .line 381
    .line 382
    :try_start_0
    iput-object v4, v5, Lcom/jcraft/jsch/KnownHosts;->b:Ljava/lang/String;

    .line 383
    .line 384
    new-instance v6, Ljava/io/FileInputStream;

    .line 385
    .line 386
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/KnownHosts;->d(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .line 395
    .line 396
    :catch_0
    iput-object v5, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/HostKeyRepository;

    .line 397
    .line 398
    :cond_5
    const-string v4, "IdentityFile"

    .line 399
    .line 400
    invoke-interface {p3, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    if-eqz v5, :cond_c

    .line 405
    .line 406
    const-string v6, ""

    .line 407
    .line 408
    invoke-interface {p2, v6}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    .line 409
    .line 410
    .line 411
    move-result-object p2

    .line 412
    invoke-interface {p2, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object p2

    .line 416
    if-eqz p2, :cond_6

    .line 417
    .line 418
    move v4, v0

    .line 419
    :goto_0
    array-length v6, p2

    .line 420
    if-ge v4, v6, :cond_7

    .line 421
    .line 422
    aget-object v6, p2, v4

    .line 423
    .line 424
    invoke-virtual {p1, v6, v1}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;[B)V

    .line 425
    .line 426
    .line 427
    add-int/lit8 v4, v4, 0x1

    .line 428
    .line 429
    goto :goto_0

    .line 430
    :cond_6
    new-array p2, v0, [Ljava/lang/String;

    .line 431
    .line 432
    :cond_7
    array-length v4, v5

    .line 433
    array-length v6, p2

    .line 434
    sub-int/2addr v4, v6

    .line 435
    if-lez v4, :cond_c

    .line 436
    .line 437
    new-instance v4, Lcom/jcraft/jsch/IdentityRepositoryWrapper;

    .line 438
    .line 439
    invoke-virtual {p1}, Lcom/jcraft/jsch/JSch;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    invoke-direct {v4, v6, v2}, Lcom/jcraft/jsch/IdentityRepositoryWrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;Z)V

    .line 444
    .line 445
    .line 446
    move v2, v0

    .line 447
    :goto_1
    array-length v6, v5

    .line 448
    if-ge v2, v6, :cond_b

    .line 449
    .line 450
    aget-object v6, v5, v2

    .line 451
    .line 452
    move v7, v0

    .line 453
    :goto_2
    array-length v8, p2

    .line 454
    if-ge v7, v8, :cond_9

    .line 455
    .line 456
    aget-object v8, p2, v7

    .line 457
    .line 458
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v8

    .line 462
    if-nez v8, :cond_8

    .line 463
    .line 464
    add-int/lit8 v7, v7, 0x1

    .line 465
    .line 466
    goto :goto_2

    .line 467
    :cond_8
    move-object v6, v1

    .line 468
    :cond_9
    if-nez v6, :cond_a

    .line 469
    .line 470
    goto :goto_3

    .line 471
    :cond_a
    iget-object v7, p1, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 472
    .line 473
    invoke-static {v7, v6, v1}, Lcom/jcraft/jsch/IdentityFile;->a(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/IdentityFile;

    .line 474
    .line 475
    .line 476
    move-result-object v6

    .line 477
    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->a(Lcom/jcraft/jsch/Identity;)V

    .line 478
    .line 479
    .line 480
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 481
    .line 482
    goto :goto_1

    .line 483
    :cond_b
    iput-object v4, p0, Lcom/jcraft/jsch/Session;->X:Lcom/jcraft/jsch/IdentityRepository;

    .line 484
    .line 485
    :cond_c
    const-string p1, "ServerAliveInterval"

    .line 486
    .line 487
    invoke-interface {p3, p1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    if-eqz p1, :cond_d

    .line 492
    .line 493
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    move-result p1

    .line 497
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->setServerAliveInterval(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    .line 499
    .line 500
    :catch_1
    :cond_d
    const-string p1, "ConnectTimeout"

    .line 501
    .line 502
    invoke-interface {p3, p1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    if-eqz p1, :cond_e

    .line 507
    .line 508
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 509
    .line 510
    .line 511
    move-result p1

    .line 512
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->setTimeout(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 513
    .line 514
    .line 515
    :catch_2
    :cond_e
    invoke-interface {p3, p4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    if-eqz p1, :cond_f

    .line 520
    .line 521
    invoke-virtual {p0, p4, p1}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :cond_f
    invoke-interface {p3, v3}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    if-eqz p1, :cond_10

    .line 529
    .line 530
    invoke-virtual {p0, v3, p1}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->i0:Ljava/lang/String;

    .line 534
    .line 535
    if-nez p1, :cond_11

    .line 536
    .line 537
    const-string p1, "user.name"

    .line 538
    .line 539
    :try_start_3
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 543
    goto :goto_5

    .line 544
    :catch_3
    move-object p1, v1

    .line 545
    :goto_5
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->i0:Ljava/lang/String;

    .line 546
    .line 547
    :cond_11
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->i0:Ljava/lang/String;

    .line 548
    .line 549
    if-eqz p0, :cond_12

    .line 550
    .line 551
    return-void

    .line 552
    :cond_12
    const-string p0, "username is not given."

    .line 553
    .line 554
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw v1
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-class v1, Lcom/jcraft/jsch/Cipher;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/jcraft/jsch/Cipher;

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    new-array v1, v1, [B

    .line 28
    .line 29
    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    new-array v2, v2, [B

    .line 34
    .line 35
    invoke-interface {p0, v0, v1, v2}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :catch_0
    return v0
.end method

.method public static j(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B
    .locals 5

    .line 1
    invoke-interface {p4}, Lcom/jcraft/jsch/HASH;->getBlockSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    array-length v1, p3

    .line 6
    if-ge v1, p5, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 15
    .line 16
    .line 17
    array-length v1, p3

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, p3, v2, v1}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 23
    .line 24
    iget v3, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 25
    .line 26
    invoke-interface {p4, v1, v2, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 27
    .line 28
    .line 29
    array-length v1, p3

    .line 30
    add-int/2addr v1, v0

    .line 31
    new-array v1, v1, [B

    .line 32
    .line 33
    array-length v3, p3

    .line 34
    invoke-static {p3, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p4}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    array-length v4, p3

    .line 42
    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    invoke-static {p3}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 46
    .line 47
    .line 48
    move-object p3, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-object p3
.end method

.method public static o(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;
    .locals 9

    .line 1
    const-string v0, "parseForwarding: "

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, ":"

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-le v2, v5, :cond_4

    .line 15
    .line 16
    new-instance p0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    move v2, v3

    .line 22
    :goto_0
    array-length v6, v1

    .line 23
    if-ge v2, v6, :cond_1

    .line 24
    .line 25
    aget-object v6, v1, v2

    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-nez v6, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    aget-object v6, v1, v2

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    move v2, v3

    .line 52
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-ge v2, v6, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-ge v2, v6, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :cond_4
    new-instance v1, Lcom/jcraft/jsch/Session$Forwarding;

    .line 84
    .line 85
    invoke-direct {v1}, Lcom/jcraft/jsch/Session$Forwarding;-><init>()V

    .line 86
    .line 87
    .line 88
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 92
    const/4 v6, -0x1

    .line 93
    if-eq v2, v6, :cond_a

    .line 94
    .line 95
    :try_start_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    add-int/2addr v2, v5

    .line 100
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    iput v2, v1, Lcom/jcraft/jsch/Session$Forwarding;->d:I

    .line 109
    .line 110
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eq v7, v6, :cond_5

    .line 123
    .line 124
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    add-int/2addr p0, v5

    .line 129
    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    iput-object p0, v1, Lcom/jcraft/jsch/Session$Forwarding;->c:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :catch_0
    move-object p0, v2

    .line 137
    goto :goto_3

    .line 138
    :cond_5
    new-instance v7, Lcom/jcraft/jsch/JSchException;

    .line 139
    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-direct {v7, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 159
    :catch_1
    :goto_3
    :try_start_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    add-int/2addr v2, v5

    .line 164
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-object v2, p0

    .line 168
    :goto_4
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    invoke-virtual {v2, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 180
    const-string v7, "127.0.0.1"

    .line 181
    .line 182
    if-eq v2, v6, :cond_9

    .line 183
    .line 184
    :try_start_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    add-int/2addr v2, v5

    .line 189
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    iput v2, v1, Lcom/jcraft/jsch/Session$Forwarding;->b:I

    .line 198
    .line 199
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_6

    .line 212
    .line 213
    const-string v2, "*"

    .line 214
    .line 215
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_7

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :catch_2
    move-exception p0

    .line 223
    goto :goto_8

    .line 224
    :cond_6
    :goto_5
    const-string p0, "0.0.0.0"

    .line 225
    .line 226
    :cond_7
    const-string v2, "localhost"

    .line 227
    .line 228
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_8

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_8
    move-object v7, p0

    .line 236
    :goto_6
    iput-object v7, v1, Lcom/jcraft/jsch/Session$Forwarding;->a:Ljava/lang/String;

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_9
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    iput p0, v1, Lcom/jcraft/jsch/Session$Forwarding;->b:I

    .line 244
    .line 245
    iput-object v7, v1, Lcom/jcraft/jsch/Session$Forwarding;->a:Ljava/lang/String;

    .line 246
    .line 247
    :goto_7
    return-object v1

    .line 248
    :cond_a
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 249
    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 269
    :goto_8
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 270
    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-direct {v1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    throw v1
.end method


# virtual methods
.method public final A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lcom/jcraft/jsch/Session;->y:I

    .line 8
    .line 9
    int-to-long v3, v3

    .line 10
    move/from16 v5, p3

    .line 11
    .line 12
    :catch_0
    :goto_0
    iget-boolean v6, v0, Lcom/jcraft/jsch/Session;->q0:Z

    .line 13
    .line 14
    const-wide/16 v7, 0x0

    .line 15
    .line 16
    if-eqz v6, :cond_2

    .line 17
    .line 18
    cmp-long v6, v3, v7

    .line 19
    .line 20
    if-lez v6, :cond_1

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    iget-wide v8, v0, Lcom/jcraft/jsch/Session;->c0:J

    .line 27
    .line 28
    sub-long/2addr v6, v8

    .line 29
    cmp-long v6, v6, v3

    .line 30
    .line 31
    if-gtz v6, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const-string v0, "timeout in waiting for rekeying process."

    .line 35
    .line 36
    invoke-static {v0}, Le6;->h(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :goto_1
    const-wide/16 v6, 0xa

    .line 41
    .line 42
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    monitor-enter p2

    .line 47
    :try_start_1
    iget-wide v9, v2, Lcom/jcraft/jsch/Channel;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    int-to-long v11, v5

    .line 50
    cmp-long v6, v9, v11

    .line 51
    .line 52
    const/4 v9, 0x1

    .line 53
    if-gez v6, :cond_3

    .line 54
    .line 55
    :try_start_2
    iget v6, v2, Lcom/jcraft/jsch/Channel;->t:I

    .line 56
    .line 57
    add-int/2addr v6, v9

    .line 58
    iput v6, v2, Lcom/jcraft/jsch/Channel;->t:I

    .line 59
    .line 60
    const-wide/16 v13, 0x64

    .line 61
    .line 62
    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    .line 64
    .line 65
    :catch_1
    :try_start_3
    iget v6, v2, Lcom/jcraft/jsch/Channel;->t:I

    .line 66
    .line 67
    sub-int/2addr v6, v9

    .line 68
    iput v6, v2, Lcom/jcraft/jsch/Channel;->t:I

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_a

    .line 73
    .line 74
    :catchall_1
    move-exception v0

    .line 75
    iget v1, v2, Lcom/jcraft/jsch/Channel;->t:I

    .line 76
    .line 77
    sub-int/2addr v1, v9

    .line 78
    iput v1, v2, Lcom/jcraft/jsch/Channel;->t:I

    .line 79
    .line 80
    throw v0

    .line 81
    :cond_3
    :goto_2
    iget-boolean v6, v0, Lcom/jcraft/jsch/Session;->q0:Z

    .line 82
    .line 83
    if-eqz v6, :cond_4

    .line 84
    .line 85
    monitor-exit p2

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    iget-wide v13, v2, Lcom/jcraft/jsch/Channel;->g:J

    .line 88
    .line 89
    cmp-long v6, v13, v11

    .line 90
    .line 91
    if-ltz v6, :cond_5

    .line 92
    .line 93
    iget-wide v3, v2, Lcom/jcraft/jsch/Channel;->g:J

    .line 94
    .line 95
    sub-long/2addr v3, v11

    .line 96
    iput-wide v3, v2, Lcom/jcraft/jsch/Channel;->g:J

    .line 97
    .line 98
    monitor-exit p2

    .line 99
    goto/16 :goto_7

    .line 100
    .line 101
    :cond_5
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    iget-boolean v6, v2, Lcom/jcraft/jsch/Channel;->m:Z

    .line 103
    .line 104
    if-nez v6, :cond_11

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_11

    .line 111
    .line 112
    monitor-enter p2

    .line 113
    :try_start_4
    iget-wide v13, v2, Lcom/jcraft/jsch/Channel;->g:J

    .line 114
    .line 115
    cmp-long v6, v13, v7

    .line 116
    .line 117
    const/4 v10, 0x0

    .line 118
    if-lez v6, :cond_c

    .line 119
    .line 120
    iget-wide v13, v2, Lcom/jcraft/jsch/Channel;->g:J

    .line 121
    .line 122
    cmp-long v6, v13, v11

    .line 123
    .line 124
    if-lez v6, :cond_6

    .line 125
    .line 126
    move-wide v13, v11

    .line 127
    :cond_6
    cmp-long v6, v13, v11

    .line 128
    .line 129
    if-eqz v6, :cond_b

    .line 130
    .line 131
    long-to-int v6, v13

    .line 132
    iget-object v11, v0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 133
    .line 134
    if-eqz v11, :cond_7

    .line 135
    .line 136
    iget v11, v0, Lcom/jcraft/jsch/Session;->w0:I

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catchall_2
    move-exception v0

    .line 140
    goto/16 :goto_9

    .line 141
    .line 142
    :cond_7
    const/16 v11, 0x8

    .line 143
    .line 144
    :goto_3
    iget-object v12, v0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/MAC;

    .line 145
    .line 146
    if-eqz v12, :cond_8

    .line 147
    .line 148
    invoke-interface {v12}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    goto :goto_4

    .line 153
    :cond_8
    move v12, v10

    .line 154
    :goto_4
    iget-object v15, v1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 155
    .line 156
    const/16 p3, 0x5

    .line 157
    .line 158
    add-int/lit8 v7, v6, 0xe

    .line 159
    .line 160
    neg-int v9, v7

    .line 161
    add-int/lit8 v16, v11, -0x1

    .line 162
    .line 163
    and-int v9, v9, v16

    .line 164
    .line 165
    if-ge v9, v11, :cond_9

    .line 166
    .line 167
    add-int/2addr v9, v11

    .line 168
    :cond_9
    add-int/2addr v9, v7

    .line 169
    add-int/2addr v9, v12

    .line 170
    add-int/lit8 v9, v9, 0x20

    .line 171
    .line 172
    iget-object v11, v15, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 173
    .line 174
    array-length v12, v11

    .line 175
    const/16 v16, 0xe

    .line 176
    .line 177
    iget v8, v15, Lcom/jcraft/jsch/Buffer;->c:I

    .line 178
    .line 179
    add-int/2addr v8, v9

    .line 180
    add-int/lit8 v8, v8, -0xe

    .line 181
    .line 182
    sub-int/2addr v8, v6

    .line 183
    if-ge v12, v8, :cond_a

    .line 184
    .line 185
    new-array v8, v8, [B

    .line 186
    .line 187
    array-length v12, v11

    .line 188
    invoke-static {v11, v10, v8, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    .line 190
    .line 191
    iput-object v8, v15, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 192
    .line 193
    :cond_a
    iget-object v8, v15, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 194
    .line 195
    iget v10, v15, Lcom/jcraft/jsch/Buffer;->c:I

    .line 196
    .line 197
    add-int/lit8 v10, v10, -0xe

    .line 198
    .line 199
    sub-int/2addr v10, v6

    .line 200
    invoke-static {v8, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    .line 202
    .line 203
    const/16 v8, 0xa

    .line 204
    .line 205
    iput v8, v15, Lcom/jcraft/jsch/Buffer;->c:I

    .line 206
    .line 207
    invoke-virtual {v15, v6}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 208
    .line 209
    .line 210
    iput v7, v15, Lcom/jcraft/jsch/Buffer;->c:I

    .line 211
    .line 212
    move v10, v9

    .line 213
    goto :goto_5

    .line 214
    :cond_b
    const/16 p3, 0x5

    .line 215
    .line 216
    const/16 v16, 0xe

    .line 217
    .line 218
    :goto_5
    iget-object v6, v1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 219
    .line 220
    iget-object v6, v6, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 221
    .line 222
    aget-byte v6, v6, p3

    .line 223
    .line 224
    iget v7, v2, Lcom/jcraft/jsch/Channel;->b:I

    .line 225
    .line 226
    long-to-int v8, v13

    .line 227
    sub-int/2addr v5, v8

    .line 228
    iget-wide v8, v2, Lcom/jcraft/jsch/Channel;->g:J

    .line 229
    .line 230
    sub-long/2addr v8, v13

    .line 231
    iput-wide v8, v2, Lcom/jcraft/jsch/Channel;->g:J

    .line 232
    .line 233
    move v9, v10

    .line 234
    move v10, v6

    .line 235
    move v6, v9

    .line 236
    const/4 v9, 0x1

    .line 237
    goto :goto_6

    .line 238
    :cond_c
    const/16 p3, 0x5

    .line 239
    .line 240
    const/16 v16, 0xe

    .line 241
    .line 242
    const/4 v7, -0x1

    .line 243
    move v6, v10

    .line 244
    move v9, v6

    .line 245
    :goto_6
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 246
    if-eqz v9, :cond_e

    .line 247
    .line 248
    invoke-virtual/range {p0 .. p1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    .line 249
    .line 250
    .line 251
    if-nez v5, :cond_d

    .line 252
    .line 253
    return-void

    .line 254
    :cond_d
    iget-object v8, v1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 255
    .line 256
    iget-object v9, v8, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 257
    .line 258
    move/from16 v11, v16

    .line 259
    .line 260
    invoke-static {v9, v6, v9, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    .line 262
    .line 263
    iget-object v6, v8, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 264
    .line 265
    aput-byte v10, v6, p3

    .line 266
    .line 267
    const/4 v6, 0x6

    .line 268
    iput v6, v8, Lcom/jcraft/jsch/Buffer;->c:I

    .line 269
    .line 270
    invoke-virtual {v8, v7}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v8, v5}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 274
    .line 275
    .line 276
    add-int/lit8 v6, v5, 0xe

    .line 277
    .line 278
    iput v6, v8, Lcom/jcraft/jsch/Buffer;->c:I

    .line 279
    .line 280
    :cond_e
    monitor-enter p2

    .line 281
    :try_start_5
    iget-boolean v6, v0, Lcom/jcraft/jsch/Session;->q0:Z

    .line 282
    .line 283
    if-eqz v6, :cond_f

    .line 284
    .line 285
    monitor-exit p2

    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :catchall_3
    move-exception v0

    .line 289
    goto :goto_8

    .line 290
    :cond_f
    iget-wide v6, v2, Lcom/jcraft/jsch/Channel;->g:J

    .line 291
    .line 292
    int-to-long v8, v5

    .line 293
    cmp-long v6, v6, v8

    .line 294
    .line 295
    if-ltz v6, :cond_10

    .line 296
    .line 297
    iget-wide v3, v2, Lcom/jcraft/jsch/Channel;->g:J

    .line 298
    .line 299
    sub-long/2addr v3, v8

    .line 300
    iput-wide v3, v2, Lcom/jcraft/jsch/Channel;->g:J

    .line 301
    .line 302
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 303
    :goto_7
    invoke-virtual/range {p0 .. p1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :cond_10
    :try_start_6
    monitor-exit p2

    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :goto_8
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 311
    throw v0

    .line 312
    :goto_9
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 313
    throw v0

    .line 314
    :cond_11
    const-string v0, "channel is broken"

    .line 315
    .line 316
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :goto_a
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 321
    throw v0
.end method

.method public final a(ILjava/lang/String;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->y0:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    .line 5
    .line 6
    const/16 v2, 0xc8

    .line 7
    .line 8
    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/jcraft/jsch/Packet;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->y0:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iput-object v4, v3, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a:Ljava/lang/Thread;

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    iput v4, v3, Lcom/jcraft/jsch/Session$GlobalRequestReply;->b:I

    .line 30
    .line 31
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->y0:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    .line 32
    .line 33
    iput p1, v3, Lcom/jcraft/jsch/Session$GlobalRequestReply;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    :try_start_1
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->a()V

    .line 37
    .line 38
    .line 39
    const/16 v5, 0x50

    .line 40
    .line 41
    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 42
    .line 43
    .line 44
    const-string v5, "tcpip-forward"

    .line 45
    .line 46
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 53
    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    :try_start_2
    iget-object p2, p0, Lcom/jcraft/jsch/Session;->y0:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    .line 73
    .line 74
    iget p2, p2, Lcom/jcraft/jsch/Session$GlobalRequestReply;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    :goto_0
    const/16 v2, 0xa

    .line 78
    .line 79
    if-ge v1, v2, :cond_0

    .line 80
    .line 81
    if-ne p2, v4, :cond_0

    .line 82
    .line 83
    const-wide/16 v6, 0x3e8

    .line 84
    .line 85
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_2

    .line 91
    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    :try_start_4
    iget-object p2, p0, Lcom/jcraft/jsch/Session;->y0:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    .line 94
    .line 95
    iget p2, p2, Lcom/jcraft/jsch/Session$GlobalRequestReply;->b:I

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->y0:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    .line 99
    .line 100
    iput-object v3, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a:Ljava/lang/Thread;

    .line 101
    .line 102
    iput v4, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->b:I

    .line 103
    .line 104
    if-ne p2, v5, :cond_1

    .line 105
    .line 106
    iget p0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->c:I

    .line 107
    .line 108
    monitor-exit v0

    .line 109
    return p0

    .line 110
    :cond_1
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 111
    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v1, "remote port forwarding failed for listen port "

    .line 118
    .line 119
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :catch_1
    move-exception p1

    .line 134
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->y0:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    .line 135
    .line 136
    iput-object v3, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a:Ljava/lang/Thread;

    .line 137
    .line 138
    iput v4, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->b:I

    .line 139
    .line 140
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-direct {p0, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw p0

    .line 150
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    throw p0
.end method

.method public final b(Lcom/jcraft/jsch/Packet;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->D:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->E:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->F:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/jcraft/jsch/Session;->G:Z

    .line 8
    .line 9
    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 10
    .line 11
    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 12
    .line 13
    const/4 v5, 0x5

    .line 14
    aget-byte v4, v4, v5

    .line 15
    .line 16
    const/16 v5, 0x15

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x1

    .line 20
    if-ne v4, v5, :cond_0

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    move v1, v7

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v6

    .line 27
    :goto_0
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->J:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v4

    .line 30
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->i(Lcom/jcraft/jsch/Packet;)V

    .line 31
    .line 32
    .line 33
    iget-object v5, p0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 34
    .line 35
    if-eqz v5, :cond_4

    .line 36
    .line 37
    iget-object v8, v5, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 40
    .line 41
    iget-object v9, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 42
    .line 43
    iget p1, p1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 44
    .line 45
    invoke-virtual {v8, v9, v6, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 46
    .line 47
    .line 48
    iget-object p1, v5, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 51
    .line 52
    .line 53
    iget p1, p0, Lcom/jcraft/jsch/Session;->m:I

    .line 54
    .line 55
    add-int/2addr p1, v7

    .line 56
    iput p1, p0, Lcom/jcraft/jsch/Session;->m:I

    .line 57
    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    :cond_1
    if-nez v0, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    new-instance p0, Lcom/jcraft/jsch/JSchStrictKexException;

    .line 68
    .line 69
    const-string p1, "outgoing sequence number wrapped during initial KEX"

    .line 70
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 78
    .line 79
    iput v6, p0, Lcom/jcraft/jsch/Session;->m:I

    .line 80
    .line 81
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p1, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string p1, "Reset outgoing sequence number after sending SSH_MSG_NEWKEYS for strict KEX"

    .line 103
    .line 104
    invoke-interface {p0, v7, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    return-void

    .line 108
    :goto_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw p0
.end method

.method public final connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1626
    iget v0, p0, Lcom/jcraft/jsch/Session;->y:I

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->connect(I)V

    return-void
.end method

.method public final connect(I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->z:Z

    .line 6
    .line 7
    if-nez v0, :cond_30

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->D:Z

    .line 11
    .line 12
    new-instance v0, Lcom/jcraft/jsch/IO;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, v1, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 18
    .line 19
    sget-object v0, Lcom/jcraft/jsch/Session;->A0:Lcom/jcraft/jsch/Random;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    :try_start_0
    const-string v0, "random"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-class v5, Lcom/jcraft/jsch/Random;

    .line 35
    .line 36
    invoke-virtual {v0, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/jcraft/jsch/Random;

    .line 49
    .line 50
    sput-object v0, Lcom/jcraft/jsch/Session;->A0:Lcom/jcraft/jsch/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw v1

    .line 64
    :cond_0
    :goto_0
    sget-object v0, Lcom/jcraft/jsch/Session;->A0:Lcom/jcraft/jsch/Random;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/jcraft/jsch/Packet;->b(Lcom/jcraft/jsch/Random;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v6, "Connecting to "

    .line 86
    .line 87
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v6, v1, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v6, " port "

    .line 96
    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget v6, v1, Lcom/jcraft/jsch/Session;->h0:I

    .line 101
    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-interface {v0, v3, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    const/4 v5, 0x3

    .line 113
    const/4 v6, 0x0

    .line 114
    :try_start_1
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->S:Lcom/jcraft/jsch/Proxy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    if-nez v7, :cond_3

    .line 117
    .line 118
    :try_start_2
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/SocketFactory;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .line 120
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 121
    .line 122
    if-nez v0, :cond_2

    .line 123
    .line 124
    :try_start_3
    iget v0, v1, Lcom/jcraft/jsch/Session;->h0:I

    .line 125
    .line 126
    invoke-static {v0, v2, v7}, Lcom/jcraft/jsch/Util;->g(IILjava/lang/String;)Ljava/net/Socket;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, v1, Lcom/jcraft/jsch/Session;->x:Ljava/net/Socket;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->x:Ljava/net/Socket;

    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    goto/16 :goto_19

    .line 145
    .line 146
    :catch_1
    move-exception v0

    .line 147
    move v2, v6

    .line 148
    goto/16 :goto_18

    .line 149
    .line 150
    :cond_2
    iget v8, v1, Lcom/jcraft/jsch/Session;->h0:I

    .line 151
    .line 152
    invoke-interface {v0, v7, v8}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, v1, Lcom/jcraft/jsch/Session;->x:Ljava/net/Socket;

    .line 157
    .line 158
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/SocketFactory;

    .line 159
    .line 160
    invoke-interface {v7, v0}, Lcom/jcraft/jsch/SocketFactory;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/SocketFactory;

    .line 165
    .line 166
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->x:Ljava/net/Socket;

    .line 167
    .line 168
    invoke-interface {v7, v8}, Lcom/jcraft/jsch/SocketFactory;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    :goto_1
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->x:Ljava/net/Socket;

    .line 173
    .line 174
    invoke-virtual {v8, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 175
    .line 176
    .line 177
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 178
    .line 179
    iput-object v0, v8, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 180
    .line 181
    iput-object v7, v8, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_3
    :try_start_4
    monitor-enter v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    :try_start_5
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->S:Lcom/jcraft/jsch/Proxy;

    .line 186
    .line 187
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/SocketFactory;

    .line 188
    .line 189
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 190
    .line 191
    iget v10, v1, Lcom/jcraft/jsch/Session;->h0:I

    .line 192
    .line 193
    invoke-interface {v0, v8, v9, v10, v2}, Lcom/jcraft/jsch/Proxy;->connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V

    .line 194
    .line 195
    .line 196
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 197
    .line 198
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->S:Lcom/jcraft/jsch/Proxy;

    .line 199
    .line 200
    invoke-interface {v8}, Lcom/jcraft/jsch/Proxy;->getInputStream()Ljava/io/InputStream;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    iput-object v8, v0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 205
    .line 206
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 207
    .line 208
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->S:Lcom/jcraft/jsch/Proxy;

    .line 209
    .line 210
    invoke-interface {v8}, Lcom/jcraft/jsch/Proxy;->getOutputStream()Ljava/io/OutputStream;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    iput-object v8, v0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 215
    .line 216
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->S:Lcom/jcraft/jsch/Proxy;

    .line 217
    .line 218
    invoke-interface {v0}, Lcom/jcraft/jsch/Proxy;->getSocket()Ljava/net/Socket;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iput-object v0, v1, Lcom/jcraft/jsch/Session;->x:Ljava/net/Socket;

    .line 223
    .line 224
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 225
    :goto_2
    if-lez v2, :cond_4

    .line 226
    .line 227
    :try_start_6
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->x:Ljava/net/Socket;

    .line 228
    .line 229
    if-eqz v0, :cond_4

    .line 230
    .line 231
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 232
    .line 233
    .line 234
    :cond_4
    :try_start_7
    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->z:Z

    .line 235
    .line 236
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 241
    .line 242
    .line 243
    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 244
    if-eqz v0, :cond_5

    .line 245
    .line 246
    :try_start_8
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    const-string v7, "Connection established"

    .line 251
    .line 252
    invoke-interface {v0, v3, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 253
    .line 254
    .line 255
    :cond_5
    :try_start_9
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->k0:Lcom/jcraft/jsch/JSch;

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/JSch;->a(Lcom/jcraft/jsch/Session;)V

    .line 258
    .line 259
    .line 260
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->b:[B

    .line 261
    .line 262
    array-length v7, v0

    .line 263
    add-int/lit8 v8, v7, 0x2

    .line 264
    .line 265
    new-array v9, v8, [B

    .line 266
    .line 267
    array-length v10, v0

    .line 268
    invoke-static {v0, v6, v9, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    .line 270
    .line 271
    const/16 v0, 0xd

    .line 272
    .line 273
    aput-byte v0, v9, v7

    .line 274
    .line 275
    add-int/2addr v7, v3

    .line 276
    const/16 v10, 0xa

    .line 277
    .line 278
    aput-byte v10, v9, v7

    .line 279
    .line 280
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 281
    .line 282
    iget-object v11, v7, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 283
    .line 284
    invoke-virtual {v11, v9, v6, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 285
    .line 286
    .line 287
    iget-object v7, v7, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 288
    .line 289
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 290
    .line 291
    .line 292
    :cond_6
    :goto_3
    move v7, v6

    .line 293
    move v8, v7

    .line 294
    :cond_7
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 295
    .line 296
    iget-object v9, v9, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 297
    .line 298
    array-length v9, v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 299
    if-ge v7, v9, :cond_9

    .line 300
    .line 301
    :try_start_a
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 302
    .line 303
    invoke-virtual {v8}, Lcom/jcraft/jsch/IO;->b()I

    .line 304
    .line 305
    .line 306
    move-result v8

    .line 307
    if-gez v8, :cond_8

    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_8
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 311
    .line 312
    iget-object v9, v9, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 313
    .line 314
    int-to-byte v11, v8

    .line 315
    aput-byte v11, v9, v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 316
    .line 317
    add-int/lit8 v7, v7, 0x1

    .line 318
    .line 319
    if-ne v8, v10, :cond_7

    .line 320
    .line 321
    :cond_9
    :goto_4
    if-ltz v8, :cond_2c

    .line 322
    .line 323
    :try_start_b
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 324
    .line 325
    iget-object v8, v8, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 326
    .line 327
    add-int/lit8 v9, v7, -0x1

    .line 328
    .line 329
    aget-byte v9, v8, v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 330
    .line 331
    if-ne v9, v10, :cond_b

    .line 332
    .line 333
    add-int/lit8 v9, v7, -0x1

    .line 334
    .line 335
    if-lez v9, :cond_a

    .line 336
    .line 337
    add-int/lit8 v7, v7, -0x2

    .line 338
    .line 339
    :try_start_c
    aget-byte v11, v8, v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 340
    .line 341
    if-ne v11, v0, :cond_a

    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_a
    move v7, v9

    .line 345
    :cond_b
    :goto_5
    if-le v7, v5, :cond_6

    .line 346
    .line 347
    :try_start_d
    array-length v9, v8
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 348
    const/4 v11, 0x2

    .line 349
    if-eq v7, v9, :cond_c

    .line 350
    .line 351
    :try_start_e
    aget-byte v9, v8, v6

    .line 352
    .line 353
    const/16 v12, 0x53

    .line 354
    .line 355
    if-ne v9, v12, :cond_6

    .line 356
    .line 357
    aget-byte v9, v8, v3

    .line 358
    .line 359
    if-ne v9, v12, :cond_6

    .line 360
    .line 361
    aget-byte v9, v8, v11

    .line 362
    .line 363
    const/16 v12, 0x48

    .line 364
    .line 365
    if-ne v9, v12, :cond_6

    .line 366
    .line 367
    aget-byte v9, v8, v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 368
    .line 369
    const/16 v12, 0x2d

    .line 370
    .line 371
    if-eq v9, v12, :cond_c

    .line 372
    .line 373
    goto :goto_3

    .line 374
    :cond_c
    :try_start_f
    array-length v0, v8

    .line 375
    if-eq v7, v0, :cond_2b

    .line 376
    .line 377
    const/4 v0, 0x7

    .line 378
    if-lt v7, v0, :cond_2b

    .line 379
    .line 380
    const/4 v0, 0x4

    .line 381
    aget-byte v0, v8, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 382
    .line 383
    const/16 v9, 0x31

    .line 384
    .line 385
    const/4 v10, 0x6

    .line 386
    if-ne v0, v9, :cond_d

    .line 387
    .line 388
    :try_start_10
    aget-byte v0, v8, v10
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 389
    .line 390
    const/16 v9, 0x39

    .line 391
    .line 392
    if-ne v0, v9, :cond_2b

    .line 393
    .line 394
    :cond_d
    :try_start_11
    new-array v0, v7, [B

    .line 395
    .line 396
    iput-object v0, v1, Lcom/jcraft/jsch/Session;->a:[B

    .line 397
    .line 398
    invoke-static {v8, v6, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    .line 400
    .line 401
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->a:[B

    .line 402
    .line 403
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    const-string v7, "SSH-2.0-OpenSSH_7.4"

    .line 408
    .line 409
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    iput-boolean v7, v1, Lcom/jcraft/jsch/Session;->a0:Z

    .line 414
    .line 415
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    invoke-interface {v7, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 420
    .line 421
    .line 422
    move-result v7
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 423
    if-eqz v7, :cond_e

    .line 424
    .line 425
    :try_start_12
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    new-instance v8, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    const-string v9, "Remote version string: "

    .line 435
    .line 436
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-interface {v7, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    new-instance v7, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .line 457
    .line 458
    const-string v8, "Local version string: "

    .line 459
    .line 460
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->b:[B

    .line 464
    .line 465
    invoke-static {v8}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    invoke-interface {v0, v3, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 477
    .line 478
    .line 479
    :cond_e
    :try_start_13
    const-string v0, "enable_server_sig_algs"

    .line 480
    .line 481
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    const-string v7, "yes"

    .line 486
    .line 487
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->B:Z

    .line 492
    .line 493
    const-string v0, "enable_ext_info_in_auth"

    .line 494
    .line 495
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    const-string v7, "yes"

    .line 500
    .line 501
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->C:Z

    .line 506
    .line 507
    const-string v0, "enable_strict_kex"

    .line 508
    .line 509
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    const-string v7, "yes"

    .line 514
    .line 515
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->F:Z

    .line 520
    .line 521
    const-string v0, "require_strict_kex"

    .line 522
    .line 523
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    const-string v7, "yes"

    .line 528
    .line 529
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->G:Z

    .line 534
    .line 535
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->v()V

    .line 536
    .line 537
    .line 538
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 539
    .line 540
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 541
    .line 542
    .line 543
    iput-object v0, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 544
    .line 545
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->e()B

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    const/16 v7, 0x14

    .line 550
    .line 551
    if-ne v0, v7, :cond_2a

    .line 552
    .line 553
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 558
    .line 559
    .line 560
    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 561
    if-eqz v0, :cond_f

    .line 562
    .line 563
    :try_start_14
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    const-string v7, "SSH_MSG_KEXINIT received"

    .line 568
    .line 569
    invoke-interface {v0, v3, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 570
    .line 571
    .line 572
    :cond_f
    :try_start_15
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 573
    .line 574
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->q(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    :cond_10
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 579
    .line 580
    invoke-virtual {v1, v7}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 581
    .line 582
    .line 583
    iput-object v7, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 584
    .line 585
    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    .line 586
    .line 587
    .line 588
    move-result v7

    .line 589
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 590
    .line 591
    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->e()B

    .line 592
    .line 593
    .line 594
    move-result v8

    .line 595
    if-ne v7, v8, :cond_29

    .line 596
    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 598
    .line 599
    .line 600
    move-result-wide v7

    .line 601
    iput-wide v7, v1, Lcom/jcraft/jsch/Session;->c0:J

    .line 602
    .line 603
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 604
    .line 605
    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/KeyExchange;->next(Lcom/jcraft/jsch/Buffer;)Z

    .line 606
    .line 607
    .line 608
    move-result v7

    .line 609
    if-eqz v7, :cond_28

    .line 610
    .line 611
    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    .line 612
    .line 613
    .line 614
    move-result v7
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 615
    if-nez v7, :cond_10

    .line 616
    .line 617
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 618
    .line 619
    .line 620
    move-result-wide v7

    .line 621
    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->r0:Z

    .line 622
    .line 623
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 624
    .line 625
    iget v12, v1, Lcom/jcraft/jsch/Session;->h0:I

    .line 626
    .line 627
    invoke-virtual {v1, v9, v12, v0}, Lcom/jcraft/jsch/Session;->e(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V

    .line 628
    .line 629
    .line 630
    iput-boolean v6, v1, Lcom/jcraft/jsch/Session;->r0:Z

    .line 631
    .line 632
    iget-wide v12, v1, Lcom/jcraft/jsch/Session;->c0:J

    .line 633
    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 635
    .line 636
    .line 637
    move-result-wide v14

    .line 638
    sub-long/2addr v14, v7

    .line 639
    add-long/2addr v14, v12

    .line 640
    iput-wide v14, v1, Lcom/jcraft/jsch/Session;->c0:J
    :try_end_16
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 641
    .line 642
    :try_start_17
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->w()V

    .line 643
    .line 644
    .line 645
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 646
    .line 647
    invoke-virtual {v1, v7}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 648
    .line 649
    .line 650
    iput-object v7, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 651
    .line 652
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->e()B

    .line 653
    .line 654
    .line 655
    move-result v7

    .line 656
    const/16 v8, 0x15

    .line 657
    .line 658
    if-ne v7, v8, :cond_27

    .line 659
    .line 660
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 661
    .line 662
    .line 663
    move-result-object v7

    .line 664
    invoke-interface {v7, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 665
    .line 666
    .line 667
    move-result v7
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 668
    if-eqz v7, :cond_11

    .line 669
    .line 670
    :try_start_18
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 671
    .line 672
    .line 673
    move-result-object v7

    .line 674
    const-string v8, "SSH_MSG_NEWKEYS received"

    .line 675
    .line 676
    invoke-interface {v7, v3, v8}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 677
    .line 678
    .line 679
    :cond_11
    :try_start_19
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->r(Lcom/jcraft/jsch/KeyExchange;)V

    .line 680
    .line 681
    .line 682
    iput-boolean v6, v1, Lcom/jcraft/jsch/Session;->D:Z

    .line 683
    .line 684
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->B:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 685
    .line 686
    if-eqz v0, :cond_12

    .line 687
    .line 688
    :try_start_1a
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->C:Z

    .line 689
    .line 690
    if-eqz v0, :cond_12

    .line 691
    .line 692
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->A:Z

    .line 693
    .line 694
    if-eqz v0, :cond_12

    .line 695
    .line 696
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->u()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 697
    .line 698
    .line 699
    :cond_12
    :try_start_1b
    const-string v0, "MaxAuthTries"

    .line 700
    .line 701
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_3
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 705
    if-eqz v0, :cond_13

    .line 706
    .line 707
    :try_start_1c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    iput v0, v1, Lcom/jcraft/jsch/Session;->d0:I
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 712
    .line 713
    goto :goto_6

    .line 714
    :catch_2
    move-exception v0

    .line 715
    goto/16 :goto_17

    .line 716
    .line 717
    :cond_13
    :goto_6
    :try_start_1d
    const-string v0, "userauth.none"

    .line 718
    .line 719
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    const-class v7, Lcom/jcraft/jsch/UserAuthNone;

    .line 728
    .line 729
    invoke-virtual {v0, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    check-cast v0, Lcom/jcraft/jsch/UserAuthNone;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 742
    .line 743
    :try_start_1e
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/UserAuthNone;->start(Lcom/jcraft/jsch/Session;)Z

    .line 744
    .line 745
    .line 746
    move-result v7

    .line 747
    const-string v8, "PreferredAuthentications"

    .line 748
    .line 749
    invoke-virtual {v1, v8}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v8

    .line 753
    invoke-static {v8}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v9
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_3
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 757
    if-nez v7, :cond_14

    .line 758
    .line 759
    :try_start_1f
    invoke-virtual {v0}, Lcom/jcraft/jsch/UserAuthNone;->a()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    if-eqz v0, :cond_15

    .line 764
    .line 765
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 766
    .line 767
    invoke-virtual {v0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v8
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 771
    goto :goto_7

    .line 772
    :cond_14
    move-object v8, v4

    .line 773
    :cond_15
    :goto_7
    :try_start_20
    invoke-static {v8}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    move v12, v6

    .line 778
    move v13, v12

    .line 779
    :goto_8
    if-nez v7, :cond_1f

    .line 780
    .line 781
    if-eqz v9, :cond_1f

    .line 782
    .line 783
    array-length v14, v9

    .line 784
    if-ge v12, v14, :cond_1f

    .line 785
    .line 786
    add-int/lit8 v14, v12, 0x1

    .line 787
    .line 788
    aget-object v15, v9, v12

    .line 789
    .line 790
    move v5, v6

    .line 791
    :goto_9
    array-length v6, v0

    .line 792
    if-ge v5, v6, :cond_1d

    .line 793
    .line 794
    aget-object v6, v0, v5

    .line 795
    .line 796
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 797
    .line 798
    .line 799
    move-result v6

    .line 800
    if-eqz v6, :cond_1e

    .line 801
    .line 802
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 803
    .line 804
    .line 805
    move-result-object v5

    .line 806
    invoke-interface {v5, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 807
    .line 808
    .line 809
    move-result v5

    .line 810
    if-eqz v5, :cond_18

    .line 811
    .line 812
    const-string v5, "Authentications that can continue: "

    .line 813
    .line 814
    :cond_16
    :goto_a
    array-length v6, v9

    .line 815
    if-ge v12, v6, :cond_17

    .line 816
    .line 817
    new-instance v6, Ljava/lang/StringBuilder;

    .line 818
    .line 819
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    aget-object v5, v9, v12

    .line 826
    .line 827
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v5

    .line 834
    add-int/lit8 v12, v12, 0x1

    .line 835
    .line 836
    array-length v6, v9

    .line 837
    if-ge v12, v6, :cond_16

    .line 838
    .line 839
    new-instance v6, Ljava/lang/StringBuilder;

    .line 840
    .line 841
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    const-string v5, ","

    .line 848
    .line 849
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v5

    .line 856
    goto :goto_a

    .line 857
    :catch_3
    move-exception v0

    .line 858
    const/4 v2, 0x0

    .line 859
    goto/16 :goto_18

    .line 860
    .line 861
    :cond_17
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 862
    .line 863
    .line 864
    move-result-object v6

    .line 865
    invoke-interface {v6, v3, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 869
    .line 870
    .line 871
    move-result-object v5

    .line 872
    new-instance v6, Ljava/lang/StringBuilder;

    .line 873
    .line 874
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 875
    .line 876
    .line 877
    const-string v12, "Next authentication method: "

    .line 878
    .line 879
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v6

    .line 889
    invoke-interface {v5, v3, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_3
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 890
    .line 891
    .line 892
    :cond_18
    :try_start_21
    new-instance v5, Ljava/lang/StringBuilder;

    .line 893
    .line 894
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 895
    .line 896
    .line 897
    const-string v6, "userauth."

    .line 898
    .line 899
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v5

    .line 909
    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v5

    .line 913
    if-eqz v5, :cond_19

    .line 914
    .line 915
    new-instance v5, Ljava/lang/StringBuilder;

    .line 916
    .line 917
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .line 919
    .line 920
    const-string v6, "userauth."

    .line 921
    .line 922
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v5

    .line 932
    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v5

    .line 936
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 937
    .line 938
    .line 939
    move-result-object v5

    .line 940
    const-class v6, Lcom/jcraft/jsch/UserAuth;

    .line 941
    .line 942
    invoke-virtual {v5, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 943
    .line 944
    .line 945
    move-result-object v5

    .line 946
    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 947
    .line 948
    .line 949
    move-result-object v5

    .line 950
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v5

    .line 954
    check-cast v5, Lcom/jcraft/jsch/UserAuth;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_4
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 955
    .line 956
    goto :goto_b

    .line 957
    :catch_4
    :try_start_22
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 958
    .line 959
    .line 960
    move-result-object v5

    .line 961
    invoke-interface {v5, v11}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 962
    .line 963
    .line 964
    move-result v5

    .line 965
    if-eqz v5, :cond_19

    .line 966
    .line 967
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 968
    .line 969
    .line 970
    move-result-object v5

    .line 971
    new-instance v6, Ljava/lang/StringBuilder;

    .line 972
    .line 973
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    .line 975
    .line 976
    const-string v12, "failed to load "

    .line 977
    .line 978
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    const-string v12, " method"

    .line 985
    .line 986
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v6

    .line 993
    invoke-interface {v5, v11, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 994
    .line 995
    .line 996
    :cond_19
    move-object v5, v4

    .line 997
    :goto_b
    if-eqz v5, :cond_1d

    .line 998
    .line 999
    :try_start_23
    invoke-virtual {v5, v1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 1000
    .line 1001
    .line 1002
    move-result v7

    .line 1003
    if-eqz v7, :cond_1a

    .line 1004
    .line 1005
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v5

    .line 1009
    invoke-interface {v5, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1010
    .line 1011
    .line 1012
    move-result v5

    .line 1013
    if-eqz v5, :cond_1a

    .line 1014
    .line 1015
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v5

    .line 1019
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    .line 1023
    .line 1024
    const-string v12, "Authentication succeeded ("

    .line 1025
    .line 1026
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    const-string v12, ")."

    .line 1033
    .line 1034
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v6

    .line 1041
    invoke-interface {v5, v3, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_23
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_23 .. :try_end_23} :catch_9
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_23 .. :try_end_23} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_7
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_23 .. :try_end_23} :catch_6
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_5
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 1042
    .line 1043
    .line 1044
    goto :goto_c

    .line 1045
    :catch_5
    move-exception v0

    .line 1046
    goto :goto_d

    .line 1047
    :catch_6
    move-exception v0

    .line 1048
    goto :goto_e

    .line 1049
    :catch_7
    move-exception v0

    .line 1050
    goto :goto_f

    .line 1051
    :catch_8
    move-exception v0

    .line 1052
    goto :goto_10

    .line 1053
    :cond_1a
    :goto_c
    const/4 v13, 0x0

    .line 1054
    goto :goto_12

    .line 1055
    :goto_d
    :try_start_24
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v5

    .line 1059
    invoke-interface {v5, v11}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1060
    .line 1061
    .line 1062
    move-result v5

    .line 1063
    if-eqz v5, :cond_1b

    .line 1064
    .line 1065
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v5

    .line 1069
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1072
    .line 1073
    .line 1074
    const-string v9, "an exception during authentication\n"

    .line 1075
    .line 1076
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v9

    .line 1083
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v6

    .line 1090
    invoke-interface {v5, v11, v6, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1091
    .line 1092
    .line 1093
    :cond_1b
    const/4 v13, 0x0

    .line 1094
    goto :goto_13

    .line 1095
    :goto_e
    throw v0

    .line 1096
    :goto_f
    throw v0

    .line 1097
    :goto_10
    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchPartialAuthException;->getMethods()Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v5

    .line 1105
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1106
    .line 1107
    .line 1108
    move-result v6

    .line 1109
    if-nez v6, :cond_1c

    .line 1110
    .line 1111
    const/4 v12, 0x0

    .line 1112
    goto :goto_11

    .line 1113
    :cond_1c
    move v12, v14

    .line 1114
    :goto_11
    move-object v8, v0

    .line 1115
    move-object v0, v5

    .line 1116
    const/4 v5, 0x3

    .line 1117
    const/4 v6, 0x0

    .line 1118
    const/4 v13, 0x0

    .line 1119
    goto/16 :goto_8

    .line 1120
    .line 1121
    :catch_9
    move v13, v3

    .line 1122
    :cond_1d
    :goto_12
    move v12, v14

    .line 1123
    const/4 v5, 0x3

    .line 1124
    const/4 v6, 0x0

    .line 1125
    goto/16 :goto_8

    .line 1126
    .line 1127
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    .line 1128
    .line 1129
    goto/16 :goto_9

    .line 1130
    .line 1131
    :cond_1f
    :goto_13
    if-nez v7, :cond_22

    .line 1132
    .line 1133
    iget v0, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 1134
    .line 1135
    iget v2, v1, Lcom/jcraft/jsch/Session;->d0:I

    .line 1136
    .line 1137
    if-lt v0, v2, :cond_20

    .line 1138
    .line 1139
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v0

    .line 1143
    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v0

    .line 1147
    if-eqz v0, :cond_20

    .line 1148
    .line 1149
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1156
    .line 1157
    .line 1158
    const-string v5, "Login trials exceeds "

    .line 1159
    .line 1160
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    .line 1163
    iget v5, v1, Lcom/jcraft/jsch/Session;->d0:I

    .line 1164
    .line 1165
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v2

    .line 1172
    invoke-interface {v0, v3, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    :cond_20
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1176
    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    .line 1181
    .line 1182
    if-eqz v13, :cond_21

    .line 1183
    .line 1184
    const-string v5, "Auth cancel"

    .line 1185
    .line 1186
    goto :goto_14

    .line 1187
    :cond_21
    const-string v5, "Auth fail"

    .line 1188
    .line 1189
    :goto_14
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    .line 1191
    .line 1192
    const-string v5, " for methods \'"

    .line 1193
    .line 1194
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    .line 1199
    .line 1200
    const-string v5, "\'"

    .line 1201
    .line 1202
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v2

    .line 1209
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    throw v0

    .line 1213
    :cond_22
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->x:Ljava/net/Socket;

    .line 1214
    .line 1215
    if-eqz v0, :cond_24

    .line 1216
    .line 1217
    if-gtz v2, :cond_23

    .line 1218
    .line 1219
    iget v2, v1, Lcom/jcraft/jsch/Session;->y:I

    .line 1220
    .line 1221
    if-lez v2, :cond_24

    .line 1222
    .line 1223
    :cond_23
    iget v2, v1, Lcom/jcraft/jsch/Session;->y:I

    .line 1224
    .line 1225
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1226
    .line 1227
    .line 1228
    :cond_24
    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->H:Z

    .line 1229
    .line 1230
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->J:Ljava/lang/Object;

    .line 1231
    .line 1232
    monitor-enter v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_3
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 1233
    :try_start_25
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->z:Z

    .line 1234
    .line 1235
    if-eqz v0, :cond_26

    .line 1236
    .line 1237
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    new-instance v5, Lo10;

    .line 1242
    .line 1243
    invoke-direct {v5, v1, v10}, Lo10;-><init>(Ljava/lang/Object;I)V

    .line 1244
    .line 1245
    .line 1246
    invoke-interface {v0, v5}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    iput-object v0, v1, Lcom/jcraft/jsch/Session;->I:Ljava/lang/Thread;

    .line 1251
    .line 1252
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1253
    .line 1254
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1255
    .line 1256
    .line 1257
    const-string v6, "Connect thread "

    .line 1258
    .line 1259
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    .line 1262
    iget-object v6, v1, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 1263
    .line 1264
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    const-string v6, " session"

    .line 1268
    .line 1269
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v5

    .line 1276
    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1277
    .line 1278
    .line 1279
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->b0:Z

    .line 1280
    .line 1281
    if-eqz v0, :cond_25

    .line 1282
    .line 1283
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->I:Ljava/lang/Thread;

    .line 1284
    .line 1285
    invoke-virtual {v5, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1286
    .line 1287
    .line 1288
    goto :goto_15

    .line 1289
    :catchall_1
    move-exception v0

    .line 1290
    goto :goto_16

    .line 1291
    :cond_25
    :goto_15
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->I:Ljava/lang/Thread;

    .line 1292
    .line 1293
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->s()V

    .line 1297
    .line 1298
    .line 1299
    :cond_26
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 1300
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->j0:[B

    .line 1301
    .line 1302
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 1303
    .line 1304
    .line 1305
    iput-object v4, v1, Lcom/jcraft/jsch/Session;->j0:[B

    .line 1306
    .line 1307
    return-void

    .line 1308
    :goto_16
    :try_start_26
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    .line 1309
    :try_start_27
    throw v0

    .line 1310
    :catch_a
    move-exception v0

    .line 1311
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    .line 1312
    .line 1313
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v5

    .line 1317
    invoke-direct {v2, v5, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1318
    .line 1319
    .line 1320
    throw v2

    .line 1321
    :goto_17
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    .line 1322
    .line 1323
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1324
    .line 1325
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1326
    .line 1327
    .line 1328
    const-string v6, "MaxAuthTries: "

    .line 1329
    .line 1330
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    .line 1333
    const-string v6, "MaxAuthTries"

    .line 1334
    .line 1335
    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v6

    .line 1339
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v5

    .line 1346
    invoke-direct {v2, v5, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1347
    .line 1348
    .line 1349
    throw v2

    .line 1350
    :cond_27
    move v2, v6

    .line 1351
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->q0:Z

    .line 1352
    .line 1353
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1354
    .line 1355
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1356
    .line 1357
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1358
    .line 1359
    .line 1360
    const-string v5, "invalid protocol(newkeys): "

    .line 1361
    .line 1362
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    .line 1364
    .line 1365
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 1366
    .line 1367
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->e()B

    .line 1368
    .line 1369
    .line 1370
    move-result v5

    .line 1371
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v2

    .line 1378
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1379
    .line 1380
    .line 1381
    throw v0

    .line 1382
    :catch_b
    move-exception v0

    .line 1383
    const/4 v2, 0x0

    .line 1384
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->q0:Z

    .line 1385
    .line 1386
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->r0:Z

    .line 1387
    .line 1388
    throw v0

    .line 1389
    :cond_28
    move v2, v6

    .line 1390
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->q0:Z

    .line 1391
    .line 1392
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1393
    .line 1394
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1395
    .line 1396
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1397
    .line 1398
    .line 1399
    const-string v5, "verify: "

    .line 1400
    .line 1401
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1405
    .line 1406
    .line 1407
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v2

    .line 1411
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1412
    .line 1413
    .line 1414
    throw v0

    .line 1415
    :cond_29
    move v2, v6

    .line 1416
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->q0:Z

    .line 1417
    .line 1418
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1419
    .line 1420
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1421
    .line 1422
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1423
    .line 1424
    .line 1425
    const-string v5, "invalid protocol(kex): "

    .line 1426
    .line 1427
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    .line 1429
    .line 1430
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 1431
    .line 1432
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->e()B

    .line 1433
    .line 1434
    .line 1435
    move-result v5

    .line 1436
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1437
    .line 1438
    .line 1439
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v2

    .line 1443
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1444
    .line 1445
    .line 1446
    throw v0

    .line 1447
    :cond_2a
    move v2, v6

    .line 1448
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->q0:Z

    .line 1449
    .line 1450
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1451
    .line 1452
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1453
    .line 1454
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1455
    .line 1456
    .line 1457
    const-string v5, "invalid protocol: "

    .line 1458
    .line 1459
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    .line 1461
    .line 1462
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 1463
    .line 1464
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->e()B

    .line 1465
    .line 1466
    .line 1467
    move-result v5

    .line 1468
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v2

    .line 1475
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1476
    .line 1477
    .line 1478
    throw v0

    .line 1479
    :cond_2b
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1480
    .line 1481
    const-string v2, "invalid server\'s version string"

    .line 1482
    .line 1483
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1484
    .line 1485
    .line 1486
    throw v0

    .line 1487
    :cond_2c
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1488
    .line 1489
    const-string v2, "connection is closed by foreign host"

    .line 1490
    .line 1491
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1492
    .line 1493
    .line 1494
    throw v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 1495
    :catchall_2
    move-exception v0

    .line 1496
    :try_start_28
    monitor-exit v7
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    .line 1497
    :try_start_29
    throw v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 1498
    :goto_18
    :try_start_2a
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->q0:Z
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 1499
    .line 1500
    :try_start_2b
    iget-boolean v2, v1, Lcom/jcraft/jsch/Session;->z:Z

    .line 1501
    .line 1502
    if-eqz v2, :cond_2d

    .line 1503
    .line 1504
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v2

    .line 1508
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->P:Lcom/jcraft/jsch/Packet;

    .line 1509
    .line 1510
    invoke-virtual {v5}, Lcom/jcraft/jsch/Packet;->a()V

    .line 1511
    .line 1512
    .line 1513
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 1514
    .line 1515
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1516
    .line 1517
    .line 1518
    move-result v6

    .line 1519
    add-int/lit8 v6, v6, 0xf

    .line 1520
    .line 1521
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->k()I

    .line 1522
    .line 1523
    .line 1524
    move-result v7

    .line 1525
    add-int/2addr v6, v7

    .line 1526
    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Buffer;->a(I)V

    .line 1527
    .line 1528
    .line 1529
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 1530
    .line 1531
    invoke-virtual {v5, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 1532
    .line 1533
    .line 1534
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 1535
    .line 1536
    const/4 v5, 0x3

    .line 1537
    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 1538
    .line 1539
    .line 1540
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 1541
    .line 1542
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1543
    .line 1544
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 1545
    .line 1546
    .line 1547
    move-result-object v2

    .line 1548
    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 1549
    .line 1550
    .line 1551
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 1552
    .line 1553
    const-string v3, "en"

    .line 1554
    .line 1555
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 1556
    .line 1557
    .line 1558
    move-result-object v3

    .line 1559
    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 1560
    .line 1561
    .line 1562
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->P:Lcom/jcraft/jsch/Packet;

    .line 1563
    .line 1564
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_c
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 1565
    .line 1566
    .line 1567
    :catch_c
    :cond_2d
    :try_start_2c
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_d
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 1568
    .line 1569
    .line 1570
    :catch_d
    const/4 v2, 0x0

    .line 1571
    :try_start_2d
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->z:Z

    .line 1572
    .line 1573
    instance-of v2, v0, Ljava/lang/RuntimeException;

    .line 1574
    .line 1575
    if-nez v2, :cond_2f

    .line 1576
    .line 1577
    instance-of v2, v0, Lcom/jcraft/jsch/JSchException;

    .line 1578
    .line 1579
    if-eqz v2, :cond_2e

    .line 1580
    .line 1581
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    .line 1582
    .line 1583
    throw v0

    .line 1584
    :cond_2e
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    .line 1585
    .line 1586
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1587
    .line 1588
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1589
    .line 1590
    .line 1591
    const-string v5, "Session.connect: "

    .line 1592
    .line 1593
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    .line 1595
    .line 1596
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1597
    .line 1598
    .line 1599
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v3

    .line 1603
    invoke-direct {v2, v3, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1604
    .line 1605
    .line 1606
    throw v2

    .line 1607
    :cond_2f
    check-cast v0, Ljava/lang/RuntimeException;

    .line 1608
    .line 1609
    throw v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 1610
    :goto_19
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->j0:[B

    .line 1611
    .line 1612
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 1613
    .line 1614
    .line 1615
    iput-object v4, v1, Lcom/jcraft/jsch/Session;->j0:[B

    .line 1616
    .line 1617
    throw v0

    .line 1618
    :cond_30
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1619
    .line 1620
    const-string v1, "session is already connected"

    .line 1621
    .line 1622
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1623
    .line 1624
    .line 1625
    throw v0
.end method

.method public final d(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p1, p2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v1, "PubkeyAcceptedAlgorithms"

    .line 8
    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v0, "PubkeyAcceptedKeyTypes"

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p2, v0}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final delPortForwardingL(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 45
    const-string v0, "127.0.0.1"

    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/Session;->delPortForwardingL(Ljava/lang/String;I)V

    return-void
.end method

.method public final delPortForwardingL(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/PortWatcher;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/PortWatcher;->b(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/PortWatcher;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/jcraft/jsch/PortWatcher;->f:Lcom/jcraft/jsch/l;

    .line 13
    .line 14
    :try_start_0
    iget-object p2, p0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/net/ServerSocket;->close()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object p1, p0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    :catch_0
    sget-object p1, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/util/Vector;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 30
    .line 31
    const-string v0, ":"

    .line 32
    .line 33
    const-string v1, " is not registered."

    .line 34
    .line 35
    const-string v2, "PortForwardingL: local port "

    .line 36
    .line 37
    invoke-static {v2, p1, v0, p2, v1}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final delPortForwardingR(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->n(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final delPortForwardingR(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 6
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->n(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    return-void
.end method

.method public final disconnect()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->z:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "Disconnecting from "

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " port "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v3, p0, Lcom/jcraft/jsch/Session;->h0:I

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->p0:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 57
    .line 58
    .line 59
    :try_start_0
    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->n0:Z

    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->o0:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const/4 v4, 0x0

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Lcom/jcraft/jsch/Channel;

    .line 87
    .line 88
    :try_start_1
    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v5

    .line 93
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-interface {v6, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_2

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v8, "Exception disconnecting channel of type "

    .line 110
    .line 111
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v3, v3, Lcom/jcraft/jsch/Channel;->c:[B

    .line 115
    .line 116
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v3, ": "

    .line 124
    .line 125
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-interface {v6, v4, v3, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->z:Z

    .line 144
    .line 145
    sget-object v2, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/util/Vector;

    .line 146
    .line 147
    monitor-enter v2

    .line 148
    :try_start_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    new-array v3, v3, [Lcom/jcraft/jsch/PortWatcher;

    .line 153
    .line 154
    move v5, v4

    .line 155
    move v6, v5

    .line 156
    :goto_1
    sget-object v7, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/util/Vector;

    .line 157
    .line 158
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    const/4 v9, 0x0

    .line 163
    if-ge v5, v8, :cond_6

    .line 164
    .line 165
    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    check-cast v7, Lcom/jcraft/jsch/PortWatcher;

    .line 170
    .line 171
    iget-object v8, v7, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    .line 172
    .line 173
    if-ne v8, p0, :cond_5

    .line 174
    .line 175
    iput-object v9, v7, Lcom/jcraft/jsch/PortWatcher;->f:Lcom/jcraft/jsch/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    .line 177
    :try_start_3
    iget-object v8, v7, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;

    .line 178
    .line 179
    if-eqz v8, :cond_4

    .line 180
    .line 181
    invoke-virtual {v8}, Ljava/net/ServerSocket;->close()V

    .line 182
    .line 183
    .line 184
    :cond_4
    iput-object v9, v7, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    .line 186
    :catch_1
    add-int/lit8 v8, v6, 0x1

    .line 187
    .line 188
    :try_start_4
    aput-object v7, v3, v6

    .line 189
    .line 190
    move v6, v8

    .line 191
    goto :goto_2

    .line 192
    :catchall_0
    move-exception p0

    .line 193
    goto/16 :goto_b

    .line 194
    .line 195
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_6
    move v5, v4

    .line 199
    :goto_3
    if-ge v5, v6, :cond_7

    .line 200
    .line 201
    aget-object v7, v3, v5

    .line 202
    .line 203
    sget-object v8, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/util/Vector;

    .line 204
    .line 205
    invoke-virtual {v8, v7}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    add-int/lit8 v5, v5, 0x1

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_7
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    sget-object v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/util/Vector;

    .line 213
    .line 214
    monitor-enter v3

    .line 215
    :try_start_5
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    new-array v2, v2, [I

    .line 220
    .line 221
    move v5, v4

    .line 222
    move v6, v5

    .line 223
    :goto_4
    sget-object v7, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/util/Vector;

    .line 224
    .line 225
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-ge v5, v8, :cond_9

    .line 230
    .line 231
    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    check-cast v7, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 236
    .line 237
    iget-object v8, v7, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->a:Lcom/jcraft/jsch/Session;

    .line 238
    .line 239
    if-ne v8, p0, :cond_8

    .line 240
    .line 241
    add-int/lit8 v8, v6, 0x1

    .line 242
    .line 243
    iget v7, v7, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->b:I

    .line 244
    .line 245
    aput v7, v2, v6

    .line 246
    .line 247
    move v6, v8

    .line 248
    goto :goto_5

    .line 249
    :catchall_1
    move-exception p0

    .line 250
    goto/16 :goto_a

    .line 251
    .line 252
    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_9
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 256
    move v3, v4

    .line 257
    :goto_6
    if-ge v3, v6, :cond_a

    .line 258
    .line 259
    aget v5, v2, v3

    .line 260
    .line 261
    invoke-static {p0, v9, v5}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->n(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    add-int/lit8 v3, v3, 0x1

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_a
    invoke-static {p0}, Lcom/jcraft/jsch/ChannelX11;->m(Lcom/jcraft/jsch/Session;)V

    .line 268
    .line 269
    .line 270
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->J:Ljava/lang/Object;

    .line 271
    .line 272
    monitor-enter v2

    .line 273
    :try_start_6
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->I:Ljava/lang/Thread;

    .line 274
    .line 275
    if-eqz v3, :cond_b

    .line 276
    .line 277
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 278
    .line 279
    .line 280
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->I:Ljava/lang/Thread;

    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 283
    .line 284
    .line 285
    iput-object v9, p0, Lcom/jcraft/jsch/Session;->I:Ljava/lang/Thread;

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :catchall_2
    move-exception p0

    .line 289
    goto :goto_9

    .line 290
    :cond_b
    :goto_7
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 291
    iput-object v9, p0, Lcom/jcraft/jsch/Session;->x0:Lj70;

    .line 292
    .line 293
    :try_start_7
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 294
    .line 295
    if-eqz v2, :cond_e

    .line 296
    .line 297
    iget-object v2, v2, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 298
    .line 299
    if-eqz v2, :cond_c

    .line 300
    .line 301
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 302
    .line 303
    .line 304
    :cond_c
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 305
    .line 306
    iget-object v2, v2, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 307
    .line 308
    if-eqz v2, :cond_d

    .line 309
    .line 310
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 311
    .line 312
    .line 313
    :cond_d
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 314
    .line 315
    iget-object v2, v2, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    .line 316
    .line 317
    if-eqz v2, :cond_e

    .line 318
    .line 319
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 320
    .line 321
    .line 322
    :cond_e
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->S:Lcom/jcraft/jsch/Proxy;

    .line 323
    .line 324
    if-nez v2, :cond_f

    .line 325
    .line 326
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->x:Ljava/net/Socket;

    .line 327
    .line 328
    if-eqz v2, :cond_10

    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 331
    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_f
    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 335
    :try_start_8
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->S:Lcom/jcraft/jsch/Proxy;

    .line 336
    .line 337
    invoke-interface {v3}, Lcom/jcraft/jsch/Proxy;->close()V

    .line 338
    .line 339
    .line 340
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 341
    :try_start_9
    iput-object v9, p0, Lcom/jcraft/jsch/Session;->S:Lcom/jcraft/jsch/Proxy;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 342
    .line 343
    goto :goto_8

    .line 344
    :catchall_3
    move-exception v3

    .line 345
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 346
    :try_start_b
    throw v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 347
    :catch_2
    :cond_10
    :goto_8
    iput-object v9, p0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 348
    .line 349
    iput-object v9, p0, Lcom/jcraft/jsch/Session;->x:Ljava/net/Socket;

    .line 350
    .line 351
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 352
    .line 353
    .line 354
    :try_start_c
    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->n0:Z

    .line 355
    .line 356
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->o0:Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 359
    .line 360
    .line 361
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 362
    .line 363
    .line 364
    iput v4, p0, Lcom/jcraft/jsch/Session;->l:I

    .line 365
    .line 366
    iput v4, p0, Lcom/jcraft/jsch/Session;->m:I

    .line 367
    .line 368
    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->D:Z

    .line 369
    .line 370
    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->E:Z

    .line 371
    .line 372
    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->A:Z

    .line 373
    .line 374
    iput-object v9, p0, Lcom/jcraft/jsch/Session;->Z:[Ljava/lang/String;

    .line 375
    .line 376
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->k0:Lcom/jcraft/jsch/JSch;

    .line 377
    .line 378
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->b(Lcom/jcraft/jsch/Session;)V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :catchall_4
    move-exception p0

    .line 383
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 384
    .line 385
    .line 386
    throw p0

    .line 387
    :goto_9
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 388
    throw p0

    .line 389
    :goto_a
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 390
    throw p0

    .line 391
    :goto_b
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 392
    throw p0

    .line 393
    :catchall_5
    move-exception p0

    .line 394
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 395
    .line 396
    .line 397
    throw p0
.end method

.method public final e(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    .locals 8

    .line 1
    const-string v1, "Host \'"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v3, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v0, 0x16

    .line 10
    .line 11
    if-eq p2, v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "["

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, "]:"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_1
    move-object v3, p1

    .line 36
    :goto_0
    iget-object p1, p3, Lcom/jcraft/jsch/KeyExchange;->f:Lcom/jcraft/jsch/OpenSshCertificate;

    .line 37
    .line 38
    if-eqz p1, :cond_9

    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    :try_start_0
    invoke-static {p0, p1}, Lcom/jcraft/jsch/OpenSshCertificateHostKeyVerifier;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/OpenSshCertificate;)V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchRevokedHostKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v4, "\' is known and matches the "

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyType()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v4, " host certificate"

    .line 79
    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v0, p2, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchRevokedHostKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto :goto_1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    move-object p1, v0

    .line 95
    move-object v2, p0

    .line 96
    goto :goto_4

    .line 97
    :cond_2
    return-void

    .line 98
    :goto_1
    const-string v1, "host_certificate_to_key_fallback"

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v2, "no"

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_6

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-interface {v1, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v4, "Host certificate validation failed, falling back to public key verification. This bypasses CA trust validation. Reason: "

    .line 129
    .line 130
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-interface {v1, p2, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    iget-object p2, p1, Lcom/jcraft/jsch/OpenSshCertificate;->b:[B

    .line 148
    .line 149
    if-nez p2, :cond_4

    .line 150
    .line 151
    const/4 p2, 0x0

    .line 152
    :goto_2
    move-object v7, p2

    .line 153
    goto :goto_3

    .line 154
    :cond_4
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    check-cast p2, [B

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :goto_3
    if-eqz v7, :cond_5

    .line 162
    .line 163
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyType()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getFingerPrint()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    iget-object v6, p3, Lcom/jcraft/jsch/KeyExchange;->h:Ljava/lang/String;

    .line 172
    .line 173
    move-object v2, p0

    .line 174
    invoke-virtual/range {v2 .. v7}, Lcom/jcraft/jsch/Session;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_5
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 179
    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string p3, "Invalid certificate \'"

    .line 183
    .line 184
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p1, Lcom/jcraft/jsch/OpenSshCertificate;->d:Ljava/lang/String;

    .line 188
    .line 189
    const-string p3, "\': missing public key"

    .line 190
    .line 191
    invoke-static {p2, p1, p3}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :cond_6
    throw v0

    .line 200
    :catch_2
    move-exception v0

    .line 201
    move-object v2, p0

    .line 202
    move-object p1, v0

    .line 203
    :goto_4
    iget-object p0, v2, Lcom/jcraft/jsch/Session;->T:Lcom/jcraft/jsch/UserInfo;

    .line 204
    .line 205
    if-eqz p0, :cond_7

    .line 206
    .line 207
    new-instance p3, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v0, "WARNING: REVOKED HOST KEY DETECTED!\nA key associated with the host certificate for "

    .line 210
    .line 211
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v0, " is marked as revoked.\nThis could mean that a stolen key is being used to impersonate this host."

    .line 218
    .line 219
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    invoke-interface {p0, p3}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :cond_7
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-interface {p0, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    if-eqz p0, :cond_8

    .line 238
    .line 239
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    new-instance p3, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v0, "\' has provided a certificate with a revoked key."

    .line 252
    .line 253
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p3

    .line 260
    invoke-interface {p0, p2, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :cond_8
    throw p1

    .line 264
    :cond_9
    move-object v2, p0

    .line 265
    iget-object v7, p3, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 266
    .line 267
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyType()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getFingerPrint()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    iget-object v6, p3, Lcom/jcraft/jsch/KeyExchange;->h:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual/range {v2 .. v7}, Lcom/jcraft/jsch/Session;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 278
    .line 279
    .line 280
    return-void
.end method

.method public final f(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .locals 4

    .line 1
    const-string v0, "session"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/jcraft/jsch/ChannelSession;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    const-string v2, "shell"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    new-instance v0, Lcom/jcraft/jsch/ChannelShell;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelShell;-><init>()V

    .line 28
    .line 29
    .line 30
    :cond_1
    const-string v2, "exec"

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    new-instance v0, Lcom/jcraft/jsch/ChannelExec;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelExec;-><init>()V

    .line 41
    .line 42
    .line 43
    :cond_2
    const-string v2, "x11"

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    new-instance v0, Lcom/jcraft/jsch/ChannelX11;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelX11;-><init>()V

    .line 54
    .line 55
    .line 56
    :cond_3
    const-string v2, "auth-agent@openssh.com"

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    new-instance v0, Lcom/jcraft/jsch/ChannelAgentForwarding;

    .line 65
    .line 66
    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;-><init>()V

    .line 67
    .line 68
    .line 69
    :cond_4
    const-string v2, "direct-tcpip"

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    new-instance v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    .line 78
    .line 79
    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    .line 80
    .line 81
    .line 82
    :cond_5
    const-string v2, "forwarded-tcpip"

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_6

    .line 89
    .line 90
    new-instance v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;

    .line 91
    .line 92
    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;-><init>()V

    .line 93
    .line 94
    .line 95
    :cond_6
    const-string v2, "sftp"

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_7

    .line 102
    .line 103
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp;

    .line 104
    .line 105
    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSftp;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "use_sftp_write_flush_workaround"

    .line 109
    .line 110
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    const-string v3, "yes"

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    iput-boolean v2, v0, Lcom/jcraft/jsch/ChannelSftp;->Y:Z

    .line 121
    .line 122
    :cond_7
    const-string v2, "subsystem"

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_8

    .line 129
    .line 130
    new-instance v0, Lcom/jcraft/jsch/ChannelSubsystem;

    .line 131
    .line 132
    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSubsystem;-><init>()V

    .line 133
    .line 134
    .line 135
    :cond_8
    const-string v2, "direct-streamlocal@openssh.com"

    .line 136
    .line 137
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_9

    .line 142
    .line 143
    new-instance v0, Lcom/jcraft/jsch/ChannelDirectStreamLocal;

    .line 144
    .line 145
    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelDirectStreamLocal;-><init>()V

    .line 146
    .line 147
    .line 148
    :cond_9
    if-nez v0, :cond_a

    .line 149
    .line 150
    return-object v1

    .line 151
    :cond_a
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->p0:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 158
    .line 159
    .line 160
    :try_start_0
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->n0:Z

    .line 161
    .line 162
    if-nez v2, :cond_b

    .line 163
    .line 164
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->z:Z

    .line 165
    .line 166
    if-eqz v2, :cond_b

    .line 167
    .line 168
    iput-object p0, v0, Lcom/jcraft/jsch/Channel;->s:Lcom/jcraft/jsch/Session;

    .line 169
    .line 170
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->o0:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 176
    .line 177
    .line 178
    return-object v0

    .line 179
    :catchall_0
    move-exception p0

    .line 180
    goto :goto_1

    .line 181
    :cond_b
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 182
    .line 183
    .line 184
    return-object v1

    .line 185
    :goto_1
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 186
    .line 187
    .line 188
    throw p0
.end method

.method public final g(Lcom/jcraft/jsch/Channel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->p0:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->o0:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final getClientVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->b:[B

    .line 2
    .line 3
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "PubkeyAcceptedKeyTypes"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "PubkeyAcceptedAlgorithms"

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/util/Hashtable;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    instance-of v0, p0, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    check-cast p0, Ljava/lang/String;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHostKey()Lcom/jcraft/jsch/HostKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->z0:Lcom/jcraft/jsch/HostKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHostKeyAlias()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->U:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/HostKeyRepository;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->k0:Lcom/jcraft/jsch/JSch;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    return-object v0
.end method

.method public final getLogger()Lcom/jcraft/jsch/Logger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->l0:Lcom/jcraft/jsch/Logger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->k0:Lcom/jcraft/jsch/JSch;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getPort()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/Session;->h0:I

    .line 2
    .line 3
    return p0
.end method

.method public final getPortForwardingL()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/util/Vector;

    .line 2
    .line 3
    new-instance v0, Ljava/util/Vector;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/util/Vector;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    :try_start_0
    sget-object v4, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/util/Vector;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-ge v3, v5, :cond_1

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/jcraft/jsch/PortWatcher;

    .line 26
    .line 27
    iget-object v5, v4, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    .line 28
    .line 29
    if-ne v5, p0, :cond_0

    .line 30
    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget v6, v4, Lcom/jcraft/jsch/PortWatcher;->b:I

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v6, ":"

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v6, v4, Lcom/jcraft/jsch/PortWatcher;->d:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v6, ":"

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v4, v4, Lcom/jcraft/jsch/PortWatcher;->c:I

    .line 57
    .line 58
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_3

    .line 71
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    new-array p0, p0, [Ljava/lang/String;

    .line 80
    .line 81
    :goto_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-ge v2, v1, :cond_2

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Ljava/lang/String;

    .line 92
    .line 93
    aput-object v1, p0, v2

    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    return-object p0

    .line 99
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p0
.end method

.method public final getPortForwardingR()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/util/Vector;

    .line 2
    .line 3
    new-instance v0, Ljava/util/Vector;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/util/Vector;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    :try_start_0
    sget-object v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/util/Vector;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-ge v3, v5, :cond_2

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 26
    .line 27
    iget-object v5, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->a:Lcom/jcraft/jsch/Session;

    .line 28
    .line 29
    if-ne v5, p0, :cond_1

    .line 30
    .line 31
    instance-of v5, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    iget v6, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->c:I

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v6, ":"

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v4, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->e:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, ":"

    .line 56
    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_3

    .line 70
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    iget v6, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->c:I

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v6, ":"

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v6, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->e:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v6, ":"

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    check-cast v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    .line 96
    .line 97
    iget v4, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->f:I

    .line 98
    .line 99
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    new-array p0, p0, [Ljava/lang/String;

    .line 118
    .line 119
    :goto_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-ge v2, v1, :cond_3

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/lang/String;

    .line 130
    .line 131
    aput-object v1, p0, v2

    .line 132
    .line 133
    add-int/lit8 v2, v2, 0x1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    return-object p0

    .line 137
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    throw p0
.end method

.method public final getServerAliveCountMax()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/Session;->W:I

    .line 2
    .line 3
    return p0
.end method

.method public final getServerAliveInterval()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/Session;->V:I

    .line 2
    .line 3
    return p0
.end method

.method public final getServerVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->a:[B

    .line 2
    .line 3
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getStreamForwarder(Ljava/lang/String;I)Lcom/jcraft/jsch/Channel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const-string v0, "direct-tcpip"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object p1, v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->v:Ljava/lang/String;

    .line 12
    .line 13
    iput p2, v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->w:I

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const-string v0, ":"

    .line 17
    .line 18
    const-string v1, " - session may be disconnecting"

    .line 19
    .line 20
    const-string v2, "Failed to add DirectTCPIP channel to "

    .line 21
    .line 22
    invoke-static {v2, p1, v0, p2, v1}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-interface {p2, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0, v0, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-static {p1}, Le6;->h(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public final getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->m0:Ljava/util/concurrent/ThreadFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTimeout()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/Session;->y:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUnavailableSignatures()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->s0:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUserInfo()Lcom/jcraft/jsch/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->T:Lcom/jcraft/jsch/UserInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->i0:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v6, p5

    .line 12
    .line 13
    const-string v0, "StrictHostKeyChecking"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    const-string v0, "HashKnownHosts"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v9, "yes"

    .line 30
    .line 31
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v10, 0x0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    instance-of v0, v8, Lcom/jcraft/jsch/KnownHosts;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    move-object v0, v8

    .line 43
    check-cast v0, Lcom/jcraft/jsch/KnownHosts;

    .line 44
    .line 45
    new-instance v12, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    .line 46
    .line 47
    invoke-direct {v12, v0, v2, v10, v6}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;I[B)V

    .line 48
    .line 49
    .line 50
    iget-boolean v13, v12, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->g:Z

    .line 51
    .line 52
    if-eqz v13, :cond_0

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_0
    iget-object v13, v12, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->h:[B

    .line 57
    .line 58
    if-nez v13, :cond_1

    .line 59
    .line 60
    sget-object v13, Lcom/jcraft/jsch/Session;->A0:Lcom/jcraft/jsch/Random;

    .line 61
    .line 62
    monitor-enter v13

    .line 63
    :try_start_0
    iget-object v14, v0, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 64
    .line 65
    invoke-interface {v14}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 66
    .line 67
    .line 68
    move-result v14

    .line 69
    new-array v15, v14, [B

    .line 70
    .line 71
    iput-object v15, v12, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->h:[B

    .line 72
    .line 73
    invoke-interface {v13, v15, v10, v14}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 74
    .line 75
    .line 76
    monitor-exit v13

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw v0

    .line 81
    :cond_1
    :goto_0
    :try_start_1
    iget-object v13, v0, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 82
    .line 83
    monitor-enter v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :try_start_2
    iget-object v14, v0, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 85
    .line 86
    iget-object v15, v12, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->h:[B

    .line 87
    .line 88
    invoke-interface {v14, v15}, Lcom/jcraft/jsch/MAC;->init([B)V

    .line 89
    .line 90
    .line 91
    iget-object v14, v12, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 92
    .line 93
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 94
    .line 95
    invoke-static {v14, v15}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 96
    .line 97
    .line 98
    move-result-object v14

    .line 99
    iget-object v9, v0, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 100
    .line 101
    array-length v11, v14

    .line 102
    invoke-interface {v9, v14, v10, v11}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 103
    .line 104
    .line 105
    iget-object v9, v0, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 106
    .line 107
    invoke-interface {v9}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    new-array v9, v9, [B

    .line 112
    .line 113
    iput-object v9, v12, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->i:[B

    .line 114
    .line 115
    iget-object v0, v0, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 116
    .line 117
    invoke-interface {v0, v9, v10}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 118
    .line 119
    .line 120
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v9, "|1|"

    .line 124
    .line 125
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v9, v12, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->h:[B

    .line 129
    .line 130
    array-length v11, v9

    .line 131
    const/4 v13, 0x1

    .line 132
    invoke-static {v11, v13, v9}, Lcom/jcraft/jsch/Util;->q(IZ[B)[B

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    array-length v11, v9

    .line 137
    new-instance v14, Ljava/lang/String;

    .line 138
    .line 139
    invoke-direct {v14, v9, v10, v11, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v9, "|"

    .line 146
    .line 147
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v9, v12, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->i:[B

    .line 151
    .line 152
    array-length v11, v9

    .line 153
    invoke-static {v11, v13, v9}, Lcom/jcraft/jsch/Util;->q(IZ[B)[B

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    array-length v11, v9

    .line 158
    new-instance v14, Ljava/lang/String;

    .line 159
    .line 160
    invoke-direct {v14, v9, v10, v11, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, v12, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 171
    .line 172
    iput-boolean v13, v12, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->g:Z

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :catchall_1
    move-exception v0

    .line 176
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    iget-object v9, v12, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->j:Lcom/jcraft/jsch/KnownHosts;

    .line 180
    .line 181
    iget-object v9, v9, Lcom/jcraft/jsch/KnownHosts;->a:Lcom/jcraft/jsch/JSch;

    .line 182
    .line 183
    iget-object v9, v9, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 184
    .line 185
    invoke-virtual {v9}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    new-instance v11, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v13, "an error occurred while trying to calculate the hash for host "

    .line 192
    .line 193
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v13, v12, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    const/4 v13, 0x3

    .line 206
    invoke-interface {v9, v13, v11, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    const/4 v9, 0x0

    .line 210
    iput-object v9, v12, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->h:[B

    .line 211
    .line 212
    iput-object v9, v12, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->i:[B

    .line 213
    .line 214
    :goto_1
    iput-object v12, v1, Lcom/jcraft/jsch/Session;->z0:Lcom/jcraft/jsch/HostKey;

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_2
    new-instance v0, Lcom/jcraft/jsch/HostKey;

    .line 218
    .line 219
    invoke-direct {v0, v2, v6}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;[B)V

    .line 220
    .line 221
    .line 222
    iput-object v0, v1, Lcom/jcraft/jsch/Session;->z0:Lcom/jcraft/jsch/HostKey;

    .line 223
    .line 224
    :goto_2
    monitor-enter v8

    .line 225
    :try_start_5
    invoke-interface {v8, v2, v6}, Lcom/jcraft/jsch/HostKeyRepository;->check(Ljava/lang/String;[B)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 230
    const-string v9, "ask"

    .line 231
    .line 232
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    const/4 v11, 0x2

    .line 237
    if-nez v9, :cond_3

    .line 238
    .line 239
    const-string v9, "yes"

    .line 240
    .line 241
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    if-eqz v9, :cond_8

    .line 246
    .line 247
    :cond_3
    if-ne v0, v11, :cond_8

    .line 248
    .line 249
    monitor-enter v8

    .line 250
    :try_start_6
    invoke-interface {v8}, Lcom/jcraft/jsch/HostKeyRepository;->getKnownHostsRepositoryID()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 255
    if-nez v9, :cond_4

    .line 256
    .line 257
    const-string v9, "known_hosts"

    .line 258
    .line 259
    :cond_4
    iget-object v12, v1, Lcom/jcraft/jsch/Session;->T:Lcom/jcraft/jsch/UserInfo;

    .line 260
    .line 261
    if-eqz v12, :cond_6

    .line 262
    .line 263
    const-string v12, "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the "

    .line 264
    .line 265
    const-string v13, " host key has just been changed.\nThe fingerprint for the "

    .line 266
    .line 267
    const-string v14, " key sent by the remote host "

    .line 268
    .line 269
    invoke-static {v12, v3, v13, v3, v14}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    const-string v13, " is\n"

    .line 274
    .line 275
    const-string v14, ".\nPlease contact your system administrator.\nAdd correct host key in "

    .line 276
    .line 277
    invoke-static {v12, v2, v13, v4, v14}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    const-string v13, " to get rid of this message."

    .line 281
    .line 282
    invoke-static {v12, v9, v13}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    const-string v12, "ask"

    .line 287
    .line 288
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v12

    .line 292
    iget-object v13, v1, Lcom/jcraft/jsch/Session;->T:Lcom/jcraft/jsch/UserInfo;

    .line 293
    .line 294
    if-eqz v12, :cond_5

    .line 295
    .line 296
    const-string v12, "\nDo you want to delete the old key and insert the new key?"

    .line 297
    .line 298
    invoke-virtual {v9, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    invoke-interface {v13, v9}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v9

    .line 306
    goto :goto_3

    .line 307
    :cond_5
    invoke-interface {v13, v9}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :cond_6
    move v9, v10

    .line 311
    :goto_3
    if-eqz v9, :cond_7

    .line 312
    .line 313
    monitor-enter v8

    .line 314
    const/4 v9, 0x0

    .line 315
    :try_start_7
    invoke-interface {v8, v2, v5, v9}, Lcom/jcraft/jsch/HostKeyRepository;->remove(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 316
    .line 317
    .line 318
    monitor-exit v8

    .line 319
    const/4 v9, 0x1

    .line 320
    goto :goto_4

    .line 321
    :catchall_2
    move-exception v0

    .line 322
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 323
    throw v0

    .line 324
    :cond_7
    new-instance v0, Lcom/jcraft/jsch/JSchChangedHostKeyException;

    .line 325
    .line 326
    const-string v1, "HostKey has been changed: "

    .line 327
    .line 328
    invoke-static {v1, v2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw v0

    .line 336
    :catchall_3
    move-exception v0

    .line 337
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 338
    throw v0

    .line 339
    :cond_8
    move v9, v10

    .line 340
    :goto_4
    const-string v12, "ask"

    .line 341
    .line 342
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v12

    .line 346
    if-nez v12, :cond_9

    .line 347
    .line 348
    const-string v12, "yes"

    .line 349
    .line 350
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v12

    .line 354
    if-eqz v12, :cond_e

    .line 355
    .line 356
    :cond_9
    if-eqz v0, :cond_e

    .line 357
    .line 358
    if-nez v9, :cond_e

    .line 359
    .line 360
    const-string v9, "yes"

    .line 361
    .line 362
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v9

    .line 366
    if-nez v9, :cond_d

    .line 367
    .line 368
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->T:Lcom/jcraft/jsch/UserInfo;

    .line 369
    .line 370
    if-eqz v9, :cond_b

    .line 371
    .line 372
    const-string v12, "The authenticity of host \'"

    .line 373
    .line 374
    const-string v13, "\' can\'t be established.\n"

    .line 375
    .line 376
    const-string v14, " key fingerprint is "

    .line 377
    .line 378
    invoke-static {v12, v2, v13, v3, v14}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    move-result-object v12

    .line 382
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v4, ".\nAre you sure you want to continue connecting?"

    .line 386
    .line 387
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    invoke-interface {v9, v4}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    if-eqz v4, :cond_a

    .line 399
    .line 400
    const/4 v9, 0x1

    .line 401
    goto :goto_5

    .line 402
    :cond_a
    new-instance v0, Lcom/jcraft/jsch/JSchUnknownHostKeyException;

    .line 403
    .line 404
    const-string v1, "reject HostKey: "

    .line 405
    .line 406
    invoke-static {v1, v2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    throw v0

    .line 414
    :cond_b
    const/4 v13, 0x1

    .line 415
    if-ne v0, v13, :cond_c

    .line 416
    .line 417
    new-instance v0, Lcom/jcraft/jsch/JSchUnknownHostKeyException;

    .line 418
    .line 419
    const-string v1, "UnknownHostKey: "

    .line 420
    .line 421
    const-string v5, ". "

    .line 422
    .line 423
    const-string v6, " key fingerprint is "

    .line 424
    .line 425
    invoke-static {v1, v2, v5, v3, v6}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    throw v0

    .line 440
    :cond_c
    new-instance v0, Lcom/jcraft/jsch/JSchChangedHostKeyException;

    .line 441
    .line 442
    const-string v1, "HostKey has been changed: "

    .line 443
    .line 444
    invoke-static {v1, v2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    throw v0

    .line 452
    :cond_d
    new-instance v0, Lcom/jcraft/jsch/JSchUnknownHostKeyException;

    .line 453
    .line 454
    const-string v1, "reject HostKey: "

    .line 455
    .line 456
    invoke-static {v1, v2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v0

    .line 464
    :cond_e
    :goto_5
    const-string v4, "no"

    .line 465
    .line 466
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    const/4 v13, 0x1

    .line 471
    if-eqz v4, :cond_f

    .line 472
    .line 473
    if-ne v13, v0, :cond_f

    .line 474
    .line 475
    move v9, v13

    .line 476
    :cond_f
    if-nez v0, :cond_13

    .line 477
    .line 478
    invoke-interface {v8, v2, v5}, Lcom/jcraft/jsch/HostKeyRepository;->getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    array-length v5, v6

    .line 483
    invoke-static {v5, v13, v6}, Lcom/jcraft/jsch/Util;->q(IZ[B)[B

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    array-length v6, v5

    .line 488
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 489
    .line 490
    new-instance v12, Ljava/lang/String;

    .line 491
    .line 492
    invoke-direct {v12, v5, v10, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 493
    .line 494
    .line 495
    :goto_6
    array-length v5, v4

    .line 496
    if-ge v10, v5, :cond_13

    .line 497
    .line 498
    aget-object v5, v4, v10

    .line 499
    .line 500
    invoke-virtual {v5}, Lcom/jcraft/jsch/HostKey;->getKey()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    if-eqz v5, :cond_12

    .line 509
    .line 510
    aget-object v5, v4, v10

    .line 511
    .line 512
    iget-object v5, v5, Lcom/jcraft/jsch/HostKey;->a:Ljava/lang/String;

    .line 513
    .line 514
    const-string v6, "@revoked"

    .line 515
    .line 516
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v5

    .line 520
    if-eqz v5, :cond_12

    .line 521
    .line 522
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->T:Lcom/jcraft/jsch/UserInfo;

    .line 523
    .line 524
    if-eqz v0, :cond_10

    .line 525
    .line 526
    const-string v4, "The "

    .line 527
    .line 528
    const-string v5, " host key for "

    .line 529
    .line 530
    const-string v6, " is marked as revoked.\nThis could mean that a stolen key is being used to impersonate this host."

    .line 531
    .line 532
    invoke-static {v4, v3, v5, v2, v6}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    invoke-interface {v0, v3}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    :cond_10
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    const/4 v13, 0x1

    .line 544
    invoke-interface {v0, v13}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    if-eqz v0, :cond_11

    .line 549
    .line 550
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    const-string v3, "Host \'"

    .line 557
    .line 558
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    const-string v3, "\' has provided revoked key."

    .line 565
    .line 566
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-interface {v0, v13, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 574
    .line 575
    .line 576
    :cond_11
    new-instance v0, Lcom/jcraft/jsch/JSchRevokedHostKeyException;

    .line 577
    .line 578
    const-string v1, "revoked HostKey: "

    .line 579
    .line 580
    invoke-static {v1, v2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    throw v0

    .line 588
    :cond_12
    add-int/lit8 v10, v10, 0x1

    .line 589
    .line 590
    goto :goto_6

    .line 591
    :cond_13
    if-nez v0, :cond_14

    .line 592
    .line 593
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    const/4 v13, 0x1

    .line 598
    invoke-interface {v0, v13}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    if-eqz v0, :cond_14

    .line 603
    .line 604
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    const-string v4, "Host \'"

    .line 609
    .line 610
    const-string v5, "\' is known and matches the "

    .line 611
    .line 612
    const-string v6, " host key"

    .line 613
    .line 614
    invoke-static {v4, v2, v5, v3, v6}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v4

    .line 618
    invoke-interface {v0, v13, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 619
    .line 620
    .line 621
    :cond_14
    if-eqz v9, :cond_15

    .line 622
    .line 623
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-interface {v0, v11}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    if-eqz v0, :cond_15

    .line 632
    .line 633
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    const-string v4, "Permanently added \'"

    .line 638
    .line 639
    const-string v5, "\' ("

    .line 640
    .line 641
    const-string v6, ") to the list of known hosts."

    .line 642
    .line 643
    invoke-static {v4, v2, v5, v3, v6}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    invoke-interface {v0, v11, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 648
    .line 649
    .line 650
    :cond_15
    if-eqz v9, :cond_16

    .line 651
    .line 652
    monitor-enter v8

    .line 653
    :try_start_9
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->z0:Lcom/jcraft/jsch/HostKey;

    .line 654
    .line 655
    iget-object v1, v1, Lcom/jcraft/jsch/Session;->T:Lcom/jcraft/jsch/UserInfo;

    .line 656
    .line 657
    invoke-interface {v8, v0, v1}, Lcom/jcraft/jsch/HostKeyRepository;->add(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V

    .line 658
    .line 659
    .line 660
    monitor-exit v8

    .line 661
    goto :goto_7

    .line 662
    :catchall_4
    move-exception v0

    .line 663
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 664
    throw v0

    .line 665
    :cond_16
    :goto_7
    return-void

    .line 666
    :catchall_5
    move-exception v0

    .line 667
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 668
    throw v0
.end method

.method public final i(Lcom/jcraft/jsch/Packet;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->u:Lcom/jcraft/jsch/Compression;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->u0:[I

    .line 7
    .line 8
    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 9
    .line 10
    iget v4, v3, Lcom/jcraft/jsch/Buffer;->c:I

    .line 11
    .line 12
    aput v4, v2, v1

    .line 13
    .line 14
    iget-object v4, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 15
    .line 16
    const/4 v5, 0x5

    .line 17
    invoke-interface {v0, v4, v5, v2}, Lcom/jcraft/jsch/Compression;->compress([BI[I)[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 22
    .line 23
    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->u0:[I

    .line 26
    .line 27
    aget v2, v2, v1

    .line 28
    .line 29
    iput v2, v0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget v2, p0, Lcom/jcraft/jsch/Session;->w0:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 v2, 0x8

    .line 39
    .line 40
    :goto_0
    const/4 v3, 0x1

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    move v0, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v0, v1

    .line 52
    :goto_1
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 53
    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    invoke-interface {v4}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    move v4, v3

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move v4, v1

    .line 65
    :goto_2
    if-nez v0, :cond_4

    .line 66
    .line 67
    if-nez v4, :cond_4

    .line 68
    .line 69
    iget-object v5, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 70
    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    iget-object v5, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/MAC;

    .line 74
    .line 75
    if-eqz v5, :cond_4

    .line 76
    .line 77
    invoke-interface {v5}, Lcom/jcraft/jsch/MAC;->isEtM()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_4

    .line 82
    .line 83
    move v5, v3

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    move v5, v1

    .line 86
    :goto_3
    if-nez v0, :cond_5

    .line 87
    .line 88
    if-nez v4, :cond_5

    .line 89
    .line 90
    if-nez v5, :cond_5

    .line 91
    .line 92
    move v6, v3

    .line 93
    goto :goto_4

    .line 94
    :cond_5
    move v6, v1

    .line 95
    :goto_4
    iget-object v7, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 96
    .line 97
    iget v8, v7, Lcom/jcraft/jsch/Buffer;->c:I

    .line 98
    .line 99
    if-nez v6, :cond_6

    .line 100
    .line 101
    add-int/lit8 v8, v8, -0x4

    .line 102
    .line 103
    :cond_6
    neg-int v9, v8

    .line 104
    add-int/lit8 v10, v2, -0x1

    .line 105
    .line 106
    and-int/2addr v9, v10

    .line 107
    if-ge v9, v2, :cond_7

    .line 108
    .line 109
    add-int/2addr v9, v2

    .line 110
    :cond_7
    add-int/2addr v8, v9

    .line 111
    if-eqz v6, :cond_8

    .line 112
    .line 113
    add-int/lit8 v8, v8, -0x4

    .line 114
    .line 115
    :cond_8
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->b:[B

    .line 116
    .line 117
    ushr-int/lit8 v6, v8, 0x18

    .line 118
    .line 119
    int-to-byte v6, v6

    .line 120
    aput-byte v6, v2, v1

    .line 121
    .line 122
    ushr-int/lit8 v6, v8, 0x10

    .line 123
    .line 124
    int-to-byte v6, v6

    .line 125
    aput-byte v6, v2, v3

    .line 126
    .line 127
    ushr-int/lit8 v3, v8, 0x8

    .line 128
    .line 129
    int-to-byte v3, v3

    .line 130
    const/4 v6, 0x2

    .line 131
    aput-byte v3, v2, v6

    .line 132
    .line 133
    const/4 v3, 0x3

    .line 134
    int-to-byte v6, v8

    .line 135
    aput-byte v6, v2, v3

    .line 136
    .line 137
    iget-object v3, v7, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 138
    .line 139
    const/4 v6, 0x4

    .line 140
    invoke-static {v2, v1, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    .line 142
    .line 143
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 144
    .line 145
    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 146
    .line 147
    int-to-byte v3, v9

    .line 148
    aput-byte v3, v2, v6

    .line 149
    .line 150
    sget-object v2, Lcom/jcraft/jsch/Packet;->c:Lcom/jcraft/jsch/Random;

    .line 151
    .line 152
    monitor-enter v2

    .line 153
    :try_start_0
    sget-object v3, Lcom/jcraft/jsch/Packet;->c:Lcom/jcraft/jsch/Random;

    .line 154
    .line 155
    iget-object v7, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 156
    .line 157
    iget-object v8, v7, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 158
    .line 159
    iget v7, v7, Lcom/jcraft/jsch/Buffer;->c:I

    .line 160
    .line 161
    invoke-interface {v3, v8, v7, v9}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 162
    .line 163
    .line 164
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 166
    .line 167
    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 168
    .line 169
    .line 170
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 171
    .line 172
    iget-object v8, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 173
    .line 174
    if-eqz v0, :cond_9

    .line 175
    .line 176
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 177
    .line 178
    iget v1, p0, Lcom/jcraft/jsch/Session;->m:I

    .line 179
    .line 180
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Cipher;->update(I)V

    .line 181
    .line 182
    .line 183
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 184
    .line 185
    const/4 v10, 0x4

    .line 186
    const/4 v12, 0x0

    .line 187
    const/4 v9, 0x0

    .line 188
    move-object v11, v8

    .line 189
    invoke-interface/range {v7 .. v12}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 190
    .line 191
    .line 192
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 193
    .line 194
    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 195
    .line 196
    iget v10, v0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 197
    .line 198
    invoke-interface/range {v7 .. v12}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 202
    .line 203
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 204
    .line 205
    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_9
    if-eqz v4, :cond_a

    .line 214
    .line 215
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 216
    .line 217
    invoke-interface {v0, v8, v1, v6}, Lcom/jcraft/jsch/Cipher;->updateAAD([BII)V

    .line 218
    .line 219
    .line 220
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 221
    .line 222
    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 223
    .line 224
    iget v0, v0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 225
    .line 226
    add-int/lit8 v10, v0, -0x4

    .line 227
    .line 228
    const/4 v12, 0x4

    .line 229
    const/4 v9, 0x4

    .line 230
    move-object v11, v8

    .line 231
    invoke-interface/range {v7 .. v12}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 235
    .line 236
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 237
    .line 238
    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :cond_a
    if-eqz v5, :cond_b

    .line 247
    .line 248
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 249
    .line 250
    iget v0, v2, Lcom/jcraft/jsch/Buffer;->c:I

    .line 251
    .line 252
    add-int/lit8 v10, v0, -0x4

    .line 253
    .line 254
    const/4 v12, 0x4

    .line 255
    const/4 v9, 0x4

    .line 256
    move-object v11, v8

    .line 257
    invoke-interface/range {v7 .. v12}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/MAC;

    .line 261
    .line 262
    iget v2, p0, Lcom/jcraft/jsch/Session;->m:I

    .line 263
    .line 264
    invoke-interface {v0, v2}, Lcom/jcraft/jsch/MAC;->update(I)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/MAC;

    .line 268
    .line 269
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 270
    .line 271
    iget-object v3, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 272
    .line 273
    iget v2, v2, Lcom/jcraft/jsch/Buffer;->c:I

    .line 274
    .line 275
    invoke-interface {v0, v3, v1, v2}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/MAC;

    .line 279
    .line 280
    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 281
    .line 282
    iget-object v2, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 283
    .line 284
    iget v1, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 285
    .line 286
    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 290
    .line 291
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/MAC;

    .line 292
    .line 293
    invoke-interface {p0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :cond_b
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/MAC;

    .line 302
    .line 303
    if-eqz v0, :cond_c

    .line 304
    .line 305
    iget v2, p0, Lcom/jcraft/jsch/Session;->m:I

    .line 306
    .line 307
    invoke-interface {v0, v2}, Lcom/jcraft/jsch/MAC;->update(I)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/MAC;

    .line 311
    .line 312
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 313
    .line 314
    iget-object v3, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 315
    .line 316
    iget v2, v2, Lcom/jcraft/jsch/Buffer;->c:I

    .line 317
    .line 318
    invoke-interface {v0, v3, v1, v2}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/MAC;

    .line 322
    .line 323
    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 324
    .line 325
    iget-object v2, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 326
    .line 327
    iget v1, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 328
    .line 329
    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 330
    .line 331
    .line 332
    :cond_c
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 333
    .line 334
    if-eqz v7, :cond_d

    .line 335
    .line 336
    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 337
    .line 338
    iget v10, v0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 339
    .line 340
    const/4 v12, 0x0

    .line 341
    const/4 v9, 0x0

    .line 342
    move-object v11, v8

    .line 343
    invoke-interface/range {v7 .. v12}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 344
    .line 345
    .line 346
    :cond_d
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/MAC;

    .line 347
    .line 348
    if-eqz p0, :cond_e

    .line 349
    .line 350
    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 351
    .line 352
    invoke-interface {p0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 353
    .line 354
    .line 355
    move-result p0

    .line 356
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 357
    .line 358
    .line 359
    :cond_e
    return-void

    .line 360
    :catchall_0
    move-exception v0

    .line 361
    move-object p0, v0

    .line 362
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    throw p0
.end method

.method public final isConnected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jcraft/jsch/Session;->z:Z

    .line 2
    .line 3
    return p0
.end method

.method public final k()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/MAC;

    .line 4
    .line 5
    const/16 v1, 0x14

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-le p0, v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-eqz p0, :cond_2

    .line 33
    .line 34
    invoke-interface {p0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-le v0, v1, :cond_2

    .line 39
    .line 40
    invoke-interface {p0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    :cond_2
    :goto_0
    const/16 p0, 0x40

    .line 45
    .line 46
    add-int/2addr p0, v1

    .line 47
    return p0
.end method

.method public final l(I)Lcom/jcraft/jsch/Channel;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->p0:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->o0:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/jcraft/jsch/Channel;

    .line 27
    .line 28
    iget v2, v1, Lcom/jcraft/jsch/Channel;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    if-ne v2, p1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->u:Lcom/jcraft/jsch/Compression;

    .line 2
    .line 3
    const-string v1, "none"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->u:Lcom/jcraft/jsch/Compression;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/jcraft/jsch/Compression;->end()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    const-string v3, "zlib"

    .line 27
    .line 28
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    iget-boolean v3, p0, Lcom/jcraft/jsch/Session;->H:Z

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    const-string v3, "zlib@openssh.com"

    .line 39
    .line 40
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-class v1, Lcom/jcraft/jsch/Compression;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/jcraft/jsch/Compression;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->u:Lcom/jcraft/jsch/Compression;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    :try_start_1
    const-string p1, "compression_level"

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    const/4 p1, 0x6

    .line 82
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->u:Lcom/jcraft/jsch/Compression;

    .line 83
    .line 84
    const/4 v2, 0x1

    .line 85
    invoke-interface {v1, v2, p1, p0}, Lcom/jcraft/jsch/Compression;->init(IILcom/jcraft/jsch/Session;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-interface {v0}, Lcom/jcraft/jsch/Compression;->end()V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catch_1
    move-exception p0

    .line 95
    :try_start_3
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {p1, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :goto_1
    if-eqz v0, :cond_2

    .line 106
    .line 107
    invoke-interface {v0}, Lcom/jcraft/jsch/Compression;->end()V

    .line 108
    .line 109
    .line 110
    :cond_2
    throw p0

    .line 111
    :cond_3
    :goto_2
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->v:Lcom/jcraft/jsch/Compression;

    .line 2
    .line 3
    const-string v1, "none"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->v:Lcom/jcraft/jsch/Compression;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/jcraft/jsch/Compression;->end()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    const-string v3, "zlib"

    .line 27
    .line 28
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    iget-boolean v3, p0, Lcom/jcraft/jsch/Session;->H:Z

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    const-string v3, "zlib@openssh.com"

    .line 39
    .line 40
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-class v1, Lcom/jcraft/jsch/Compression;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/jcraft/jsch/Compression;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->v:Lcom/jcraft/jsch/Compression;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-interface {p1, v1, v1, p0}, Lcom/jcraft/jsch/Compression;->init(IILcom/jcraft/jsch/Session;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-interface {v0}, Lcom/jcraft/jsch/Compression;->end()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p0

    .line 81
    :try_start_1
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-direct {p1, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_0
    if-eqz v0, :cond_2

    .line 92
    .line 93
    invoke-interface {v0}, Lcom/jcraft/jsch/Compression;->end()V

    .line 94
    .line 95
    .line 96
    :cond_2
    throw p0

    .line 97
    :cond_3
    return-void
.end method

.method public final noMoreSessionChannels()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x50

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/jcraft/jsch/Session;->C0:[B

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const-string v0, "Failed to open channel of type "

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->z:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->f(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_3

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel;->g()V

    .line 16
    .line 17
    .line 18
    instance-of v0, v3, Lcom/jcraft/jsch/ChannelSession;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    move-object v0, v3

    .line 23
    check-cast v0, Lcom/jcraft/jsch/ChannelSession;

    .line 24
    .line 25
    const-string v4, "yes"

    .line 26
    .line 27
    iget-object v5, p0, Lcom/jcraft/jsch/Session;->k0:Lcom/jcraft/jsch/JSch;

    .line 28
    .line 29
    iget-object v5, v5, Lcom/jcraft/jsch/JSch;->e:Lcom/jcraft/jsch/ConfigRepository;

    .line 30
    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->g0:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v5, v6}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v6, "ForwardAgent"

    .line 41
    .line 42
    invoke-interface {v5, v6}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/ChannelSession;->setAgentForwarding(Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    const-string v6, "RequestTTY"

    .line 56
    .line 57
    invoke-interface {v5, v6}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/ChannelSession;->setPty(Z)V

    .line 68
    .line 69
    .line 70
    return-object v3

    .line 71
    :catch_0
    move-exception v0

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    return-object v3

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v3, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, " - type unsupported or session may be disconnecting"

    .line 97
    .line 98
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v3, v1, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-interface {v3, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_4

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    const-string v3, "Exception creating channel of type "

    .line 124
    .line 125
    const-string v4, ": "

    .line 126
    .line 127
    invoke-static {v3, p1, v4}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-interface {p0, v1, p1, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    :cond_4
    :goto_2
    return-object v2

    .line 146
    :cond_5
    const-string p0, "session is down"

    .line 147
    .line 148
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-object v2
.end method

.method public final p(Lcom/jcraft/jsch/Buffer;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-interface {v2}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    move v2, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v4

    .line 20
    :goto_0
    iget-object v5, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    invoke-interface {v5}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    move v5, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v5, v4

    .line 33
    :goto_1
    if-nez v2, :cond_2

    .line 34
    .line 35
    if-nez v5, :cond_2

    .line 36
    .line 37
    iget-object v6, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 38
    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    iget-object v6, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 42
    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    invoke-interface {v6}, Lcom/jcraft/jsch/MAC;->isEtM()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_2

    .line 50
    .line 51
    move v6, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v6, v4

    .line 54
    :goto_2
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 55
    .line 56
    .line 57
    const-string v8, "Packet corrupt"

    .line 58
    .line 59
    const-string v9, "Bad packet length "

    .line 60
    .line 61
    const/4 v14, 0x3

    .line 62
    const/4 v15, 0x5

    .line 63
    const/16 v16, 0x0

    .line 64
    .line 65
    const/high16 v7, 0x40000

    .line 66
    .line 67
    const v17, 0xff00

    .line 68
    .line 69
    .line 70
    const/4 v10, 0x4

    .line 71
    if-eqz v2, :cond_7

    .line 72
    .line 73
    const/high16 v18, 0xff0000

    .line 74
    .line 75
    iget-object v11, v0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 76
    .line 77
    const/high16 v19, -0x1000000

    .line 78
    .line 79
    iget-object v12, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 80
    .line 81
    const/16 v20, 0x2

    .line 82
    .line 83
    iget v13, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 84
    .line 85
    invoke-virtual {v11, v12, v13, v10}, Lcom/jcraft/jsch/IO;->c([BII)V

    .line 86
    .line 87
    .line 88
    iget v11, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 89
    .line 90
    add-int/2addr v11, v10

    .line 91
    iput v11, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 92
    .line 93
    iget-object v11, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 94
    .line 95
    iget v12, v0, Lcom/jcraft/jsch/Session;->l:I

    .line 96
    .line 97
    invoke-interface {v11, v12}, Lcom/jcraft/jsch/Cipher;->update(I)V

    .line 98
    .line 99
    .line 100
    new-array v11, v10, [B

    .line 101
    .line 102
    iget-object v12, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 103
    .line 104
    iget-object v13, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 105
    .line 106
    const/16 v24, 0x4

    .line 107
    .line 108
    const/16 v26, 0x0

    .line 109
    .line 110
    const/16 v23, 0x0

    .line 111
    .line 112
    move-object/from16 v25, v11

    .line 113
    .line 114
    move-object/from16 v21, v12

    .line 115
    .line 116
    move-object/from16 v22, v13

    .line 117
    .line 118
    invoke-interface/range {v21 .. v26}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 119
    .line 120
    .line 121
    aget-byte v12, v11, v4

    .line 122
    .line 123
    shl-int/lit8 v12, v12, 0x18

    .line 124
    .line 125
    and-int v12, v12, v19

    .line 126
    .line 127
    aget-byte v13, v11, v3

    .line 128
    .line 129
    shl-int/lit8 v13, v13, 0x10

    .line 130
    .line 131
    and-int v13, v13, v18

    .line 132
    .line 133
    or-int/2addr v12, v13

    .line 134
    aget-byte v13, v11, v20

    .line 135
    .line 136
    shl-int/lit8 v13, v13, 0x8

    .line 137
    .line 138
    and-int v13, v13, v17

    .line 139
    .line 140
    or-int/2addr v12, v13

    .line 141
    aget-byte v13, v11, v14

    .line 142
    .line 143
    and-int/lit16 v13, v13, 0xff

    .line 144
    .line 145
    or-int/2addr v12, v13

    .line 146
    if-lt v12, v15, :cond_6

    .line 147
    .line 148
    if-gt v12, v7, :cond_6

    .line 149
    .line 150
    iget-object v13, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 151
    .line 152
    invoke-interface {v13}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    add-int/2addr v13, v12

    .line 157
    iget v12, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 158
    .line 159
    move/from16 v21, v3

    .line 160
    .line 161
    add-int v3, v12, v13

    .line 162
    .line 163
    move/from16 v22, v14

    .line 164
    .line 165
    iget-object v14, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 166
    .line 167
    move/from16 v23, v7

    .line 168
    .line 169
    array-length v7, v14

    .line 170
    if-le v3, v7, :cond_3

    .line 171
    .line 172
    new-array v3, v3, [B

    .line 173
    .line 174
    invoke-static {v14, v4, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    .line 176
    .line 177
    iput-object v3, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 178
    .line 179
    :cond_3
    iget v3, v0, Lcom/jcraft/jsch/Session;->v0:I

    .line 180
    .line 181
    rem-int v3, v13, v3

    .line 182
    .line 183
    if-eqz v3, :cond_5

    .line 184
    .line 185
    invoke-static {v13, v9}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-interface {v3, v10}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_4

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-interface {v3, v10, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_4
    iget-object v2, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 207
    .line 208
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 209
    .line 210
    iget v4, v0, Lcom/jcraft/jsch/Session;->v0:I

    .line 211
    .line 212
    sub-int v5, v23, v4

    .line 213
    .line 214
    const/4 v4, 0x0

    .line 215
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->x(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 216
    .line 217
    .line 218
    throw v16

    .line 219
    :cond_5
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 220
    .line 221
    iget-object v7, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 222
    .line 223
    iget v9, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 224
    .line 225
    invoke-virtual {v3, v7, v9, v13}, Lcom/jcraft/jsch/IO;->c([BII)V

    .line 226
    .line 227
    .line 228
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 229
    .line 230
    invoke-interface {v3}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    sub-int/2addr v13, v3

    .line 235
    iget v3, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 236
    .line 237
    add-int/2addr v3, v13

    .line 238
    iput v3, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 239
    .line 240
    :try_start_0
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 241
    .line 242
    iget-object v7, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 243
    .line 244
    add-int/lit8 v26, v13, 0x4

    .line 245
    .line 246
    const/16 v28, 0x0

    .line 247
    .line 248
    const/16 v25, 0x0

    .line 249
    .line 250
    move-object/from16 v27, v7

    .line 251
    .line 252
    move-object/from16 v23, v3

    .line 253
    .line 254
    move-object/from16 v24, v7

    .line 255
    .line 256
    invoke-interface/range {v23 .. v28}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V
    :try_end_0
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .line 258
    .line 259
    iget-object v3, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 260
    .line 261
    invoke-static {v11, v4, v3, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_5

    .line 265
    .line 266
    :catch_0
    move-exception v0

    .line 267
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 268
    .line 269
    invoke-direct {v1, v8, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    .line 271
    .line 272
    throw v1

    .line 273
    :cond_6
    iget-object v2, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 274
    .line 275
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 276
    .line 277
    const/4 v4, 0x0

    .line 278
    const/high16 v5, 0x40000

    .line 279
    .line 280
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->x(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 281
    .line 282
    .line 283
    throw v16

    .line 284
    :cond_7
    move/from16 v21, v3

    .line 285
    .line 286
    move/from16 v23, v7

    .line 287
    .line 288
    move/from16 v22, v14

    .line 289
    .line 290
    const/high16 v18, 0xff0000

    .line 291
    .line 292
    const/high16 v19, -0x1000000

    .line 293
    .line 294
    const/16 v20, 0x2

    .line 295
    .line 296
    if-nez v5, :cond_11

    .line 297
    .line 298
    if-eqz v6, :cond_8

    .line 299
    .line 300
    goto/16 :goto_4

    .line 301
    .line 302
    :cond_8
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 303
    .line 304
    iget-object v7, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 305
    .line 306
    iget v8, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 307
    .line 308
    iget v11, v0, Lcom/jcraft/jsch/Session;->v0:I

    .line 309
    .line 310
    invoke-virtual {v3, v7, v8, v11}, Lcom/jcraft/jsch/IO;->c([BII)V

    .line 311
    .line 312
    .line 313
    iget v3, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 314
    .line 315
    iget v7, v0, Lcom/jcraft/jsch/Session;->v0:I

    .line 316
    .line 317
    add-int/2addr v3, v7

    .line 318
    iput v3, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 319
    .line 320
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 321
    .line 322
    if-eqz v3, :cond_9

    .line 323
    .line 324
    iget-object v8, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 325
    .line 326
    const/16 v26, 0x0

    .line 327
    .line 328
    const/16 v29, 0x0

    .line 329
    .line 330
    move-object/from16 v28, v8

    .line 331
    .line 332
    move-object/from16 v24, v3

    .line 333
    .line 334
    move/from16 v27, v7

    .line 335
    .line 336
    move-object/from16 v25, v8

    .line 337
    .line 338
    invoke-interface/range {v24 .. v29}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 339
    .line 340
    .line 341
    :cond_9
    iget-object v3, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 342
    .line 343
    aget-byte v7, v3, v4

    .line 344
    .line 345
    shl-int/lit8 v7, v7, 0x18

    .line 346
    .line 347
    and-int v7, v7, v19

    .line 348
    .line 349
    aget-byte v8, v3, v21

    .line 350
    .line 351
    shl-int/lit8 v8, v8, 0x10

    .line 352
    .line 353
    and-int v8, v8, v18

    .line 354
    .line 355
    or-int/2addr v7, v8

    .line 356
    aget-byte v8, v3, v20

    .line 357
    .line 358
    shl-int/lit8 v8, v8, 0x8

    .line 359
    .line 360
    and-int v8, v8, v17

    .line 361
    .line 362
    or-int/2addr v7, v8

    .line 363
    aget-byte v8, v3, v22

    .line 364
    .line 365
    and-int/lit16 v8, v8, 0xff

    .line 366
    .line 367
    or-int/2addr v7, v8

    .line 368
    if-lt v7, v15, :cond_10

    .line 369
    .line 370
    move/from16 v8, v23

    .line 371
    .line 372
    if-gt v7, v8, :cond_10

    .line 373
    .line 374
    add-int/lit8 v7, v7, 0x4

    .line 375
    .line 376
    iget v8, v0, Lcom/jcraft/jsch/Session;->v0:I

    .line 377
    .line 378
    sub-int/2addr v7, v8

    .line 379
    iget v8, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 380
    .line 381
    add-int v11, v8, v7

    .line 382
    .line 383
    array-length v12, v3

    .line 384
    if-le v11, v12, :cond_a

    .line 385
    .line 386
    new-array v11, v11, [B

    .line 387
    .line 388
    invoke-static {v3, v4, v11, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    .line 390
    .line 391
    iput-object v11, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 392
    .line 393
    :cond_a
    iget v3, v0, Lcom/jcraft/jsch/Session;->v0:I

    .line 394
    .line 395
    rem-int v3, v7, v3

    .line 396
    .line 397
    if-eqz v3, :cond_c

    .line 398
    .line 399
    invoke-static {v7, v9}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-interface {v3, v10}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-eqz v3, :cond_b

    .line 412
    .line 413
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-interface {v3, v10, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 418
    .line 419
    .line 420
    :cond_b
    iget-object v2, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 421
    .line 422
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 423
    .line 424
    iget v4, v0, Lcom/jcraft/jsch/Session;->v0:I

    .line 425
    .line 426
    const/high16 v23, 0x40000

    .line 427
    .line 428
    sub-int v5, v23, v4

    .line 429
    .line 430
    const/4 v4, 0x0

    .line 431
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->x(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 432
    .line 433
    .line 434
    throw v16

    .line 435
    :cond_c
    if-lez v7, :cond_d

    .line 436
    .line 437
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 438
    .line 439
    iget-object v8, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 440
    .line 441
    iget v9, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 442
    .line 443
    invoke-virtual {v3, v8, v9, v7}, Lcom/jcraft/jsch/IO;->c([BII)V

    .line 444
    .line 445
    .line 446
    iget v3, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 447
    .line 448
    add-int/2addr v3, v7

    .line 449
    iput v3, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 450
    .line 451
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 452
    .line 453
    if-eqz v3, :cond_d

    .line 454
    .line 455
    iget-object v8, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 456
    .line 457
    iget v9, v0, Lcom/jcraft/jsch/Session;->v0:I

    .line 458
    .line 459
    move-object/from16 v28, v8

    .line 460
    .line 461
    move/from16 v29, v9

    .line 462
    .line 463
    move-object/from16 v24, v3

    .line 464
    .line 465
    move/from16 v27, v7

    .line 466
    .line 467
    move-object/from16 v25, v8

    .line 468
    .line 469
    move/from16 v26, v9

    .line 470
    .line 471
    invoke-interface/range {v24 .. v29}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 472
    .line 473
    .line 474
    goto :goto_3

    .line 475
    :cond_d
    move/from16 v27, v7

    .line 476
    .line 477
    :goto_3
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 478
    .line 479
    if-eqz v3, :cond_f

    .line 480
    .line 481
    iget v7, v0, Lcom/jcraft/jsch/Session;->l:I

    .line 482
    .line 483
    invoke-interface {v3, v7}, Lcom/jcraft/jsch/MAC;->update(I)V

    .line 484
    .line 485
    .line 486
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 487
    .line 488
    iget-object v7, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 489
    .line 490
    iget v8, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 491
    .line 492
    invoke-interface {v3, v7, v4, v8}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 493
    .line 494
    .line 495
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 496
    .line 497
    iget-object v7, v0, Lcom/jcraft/jsch/Session;->s:[B

    .line 498
    .line 499
    invoke-interface {v3, v7, v4}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 500
    .line 501
    .line 502
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 503
    .line 504
    iget-object v7, v0, Lcom/jcraft/jsch/Session;->t:[B

    .line 505
    .line 506
    array-length v8, v7

    .line 507
    invoke-virtual {v3, v7, v4, v8}, Lcom/jcraft/jsch/IO;->c([BII)V

    .line 508
    .line 509
    .line 510
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->s:[B

    .line 511
    .line 512
    iget-object v7, v0, Lcom/jcraft/jsch/Session;->t:[B

    .line 513
    .line 514
    invoke-static {v3, v7}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    if-nez v3, :cond_f

    .line 519
    .line 520
    iget v2, v0, Lcom/jcraft/jsch/Session;->v0:I

    .line 521
    .line 522
    add-int v7, v27, v2

    .line 523
    .line 524
    const/high16 v8, 0x40000

    .line 525
    .line 526
    if-le v7, v8, :cond_e

    .line 527
    .line 528
    const-string v0, "MAC Error"

    .line 529
    .line 530
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    return-void

    .line 534
    :cond_e
    move v3, v2

    .line 535
    iget-object v2, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 536
    .line 537
    move v4, v3

    .line 538
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 539
    .line 540
    move v5, v4

    .line 541
    iget v4, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 542
    .line 543
    sub-int v7, v8, v27

    .line 544
    .line 545
    sub-int v5, v7, v5

    .line 546
    .line 547
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->x(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 548
    .line 549
    .line 550
    throw v16

    .line 551
    :cond_f
    move-object/from16 v1, p1

    .line 552
    .line 553
    goto/16 :goto_5

    .line 554
    .line 555
    :cond_10
    iget-object v2, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 556
    .line 557
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 558
    .line 559
    const/4 v4, 0x0

    .line 560
    const/high16 v5, 0x40000

    .line 561
    .line 562
    move-object/from16 v1, p1

    .line 563
    .line 564
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->x(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 565
    .line 566
    .line 567
    throw v16

    .line 568
    :cond_11
    :goto_4
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 569
    .line 570
    iget-object v7, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 571
    .line 572
    iget v11, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 573
    .line 574
    invoke-virtual {v3, v7, v11, v10}, Lcom/jcraft/jsch/IO;->c([BII)V

    .line 575
    .line 576
    .line 577
    iget v3, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 578
    .line 579
    add-int/2addr v3, v10

    .line 580
    iput v3, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 581
    .line 582
    iget-object v3, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 583
    .line 584
    aget-byte v7, v3, v4

    .line 585
    .line 586
    shl-int/lit8 v7, v7, 0x18

    .line 587
    .line 588
    and-int v7, v7, v19

    .line 589
    .line 590
    aget-byte v11, v3, v21

    .line 591
    .line 592
    shl-int/lit8 v11, v11, 0x10

    .line 593
    .line 594
    and-int v11, v11, v18

    .line 595
    .line 596
    or-int/2addr v7, v11

    .line 597
    aget-byte v11, v3, v20

    .line 598
    .line 599
    shl-int/lit8 v11, v11, 0x8

    .line 600
    .line 601
    and-int v11, v11, v17

    .line 602
    .line 603
    or-int/2addr v7, v11

    .line 604
    aget-byte v3, v3, v22

    .line 605
    .line 606
    and-int/lit16 v3, v3, 0xff

    .line 607
    .line 608
    or-int/2addr v3, v7

    .line 609
    if-lt v3, v15, :cond_2f

    .line 610
    .line 611
    const/high16 v7, 0x40000

    .line 612
    .line 613
    if-gt v3, v7, :cond_2f

    .line 614
    .line 615
    if-eqz v5, :cond_12

    .line 616
    .line 617
    iget-object v7, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 618
    .line 619
    invoke-interface {v7}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    .line 620
    .line 621
    .line 622
    move-result v7

    .line 623
    add-int/2addr v3, v7

    .line 624
    :cond_12
    iget v7, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 625
    .line 626
    add-int v11, v7, v3

    .line 627
    .line 628
    iget-object v12, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 629
    .line 630
    array-length v13, v12

    .line 631
    if-le v11, v13, :cond_13

    .line 632
    .line 633
    new-array v11, v11, [B

    .line 634
    .line 635
    invoke-static {v12, v4, v11, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    .line 637
    .line 638
    iput-object v11, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 639
    .line 640
    :cond_13
    iget v7, v0, Lcom/jcraft/jsch/Session;->v0:I

    .line 641
    .line 642
    rem-int v7, v3, v7

    .line 643
    .line 644
    if-eqz v7, :cond_15

    .line 645
    .line 646
    invoke-static {v3, v9}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    invoke-interface {v3, v10}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 655
    .line 656
    .line 657
    move-result v3

    .line 658
    if-eqz v3, :cond_14

    .line 659
    .line 660
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    invoke-interface {v3, v10, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 665
    .line 666
    .line 667
    :cond_14
    iget-object v2, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 668
    .line 669
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 670
    .line 671
    iget v4, v0, Lcom/jcraft/jsch/Session;->v0:I

    .line 672
    .line 673
    const/high16 v23, 0x40000

    .line 674
    .line 675
    sub-int v5, v23, v4

    .line 676
    .line 677
    const/4 v4, 0x0

    .line 678
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->x(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 679
    .line 680
    .line 681
    throw v16

    .line 682
    :cond_15
    iget-object v7, v0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 683
    .line 684
    iget-object v9, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 685
    .line 686
    iget v11, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 687
    .line 688
    invoke-virtual {v7, v9, v11, v3}, Lcom/jcraft/jsch/IO;->c([BII)V

    .line 689
    .line 690
    .line 691
    iget v7, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 692
    .line 693
    add-int/2addr v7, v3

    .line 694
    iput v7, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 695
    .line 696
    if-eqz v5, :cond_16

    .line 697
    .line 698
    :try_start_1
    iget-object v7, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 699
    .line 700
    iget-object v9, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 701
    .line 702
    invoke-interface {v7, v9, v4, v10}, Lcom/jcraft/jsch/Cipher;->updateAAD([BII)V

    .line 703
    .line 704
    .line 705
    iget-object v7, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 706
    .line 707
    iget-object v9, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 708
    .line 709
    const/16 v26, 0x4

    .line 710
    .line 711
    const/16 v29, 0x4

    .line 712
    .line 713
    move-object/from16 v28, v9

    .line 714
    .line 715
    move/from16 v27, v3

    .line 716
    .line 717
    move-object/from16 v24, v7

    .line 718
    .line 719
    move-object/from16 v25, v9

    .line 720
    .line 721
    invoke-interface/range {v24 .. v29}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V
    :try_end_1
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_1 .. :try_end_1} :catch_1

    .line 722
    .line 723
    .line 724
    iget v3, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 725
    .line 726
    iget-object v7, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 727
    .line 728
    invoke-interface {v7}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    .line 729
    .line 730
    .line 731
    move-result v7

    .line 732
    sub-int/2addr v3, v7

    .line 733
    iput v3, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 734
    .line 735
    goto :goto_5

    .line 736
    :catch_1
    move-exception v0

    .line 737
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 738
    .line 739
    invoke-direct {v1, v8, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 740
    .line 741
    .line 742
    throw v1

    .line 743
    :cond_16
    move/from16 v27, v3

    .line 744
    .line 745
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 746
    .line 747
    iget v7, v0, Lcom/jcraft/jsch/Session;->l:I

    .line 748
    .line 749
    invoke-interface {v3, v7}, Lcom/jcraft/jsch/MAC;->update(I)V

    .line 750
    .line 751
    .line 752
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 753
    .line 754
    iget-object v7, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 755
    .line 756
    iget v9, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 757
    .line 758
    invoke-interface {v3, v7, v4, v9}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 759
    .line 760
    .line 761
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 762
    .line 763
    iget-object v7, v0, Lcom/jcraft/jsch/Session;->s:[B

    .line 764
    .line 765
    invoke-interface {v3, v7, v4}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 766
    .line 767
    .line 768
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 769
    .line 770
    iget-object v7, v0, Lcom/jcraft/jsch/Session;->t:[B

    .line 771
    .line 772
    array-length v9, v7

    .line 773
    invoke-virtual {v3, v7, v4, v9}, Lcom/jcraft/jsch/IO;->c([BII)V

    .line 774
    .line 775
    .line 776
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->s:[B

    .line 777
    .line 778
    iget-object v7, v0, Lcom/jcraft/jsch/Session;->t:[B

    .line 779
    .line 780
    invoke-static {v3, v7}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    .line 781
    .line 782
    .line 783
    move-result v3

    .line 784
    if-eqz v3, :cond_2e

    .line 785
    .line 786
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 787
    .line 788
    iget-object v7, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 789
    .line 790
    const/16 v26, 0x4

    .line 791
    .line 792
    const/16 v29, 0x4

    .line 793
    .line 794
    move-object/from16 v28, v7

    .line 795
    .line 796
    move-object/from16 v24, v3

    .line 797
    .line 798
    move-object/from16 v25, v7

    .line 799
    .line 800
    invoke-interface/range {v24 .. v29}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 801
    .line 802
    .line 803
    :goto_5
    iget v3, v0, Lcom/jcraft/jsch/Session;->l:I

    .line 804
    .line 805
    add-int/lit8 v3, v3, 0x1

    .line 806
    .line 807
    iput v3, v0, Lcom/jcraft/jsch/Session;->l:I

    .line 808
    .line 809
    if-nez v3, :cond_19

    .line 810
    .line 811
    iget-boolean v3, v0, Lcom/jcraft/jsch/Session;->F:Z

    .line 812
    .line 813
    if-nez v3, :cond_17

    .line 814
    .line 815
    iget-boolean v3, v0, Lcom/jcraft/jsch/Session;->G:Z

    .line 816
    .line 817
    if-eqz v3, :cond_19

    .line 818
    .line 819
    :cond_17
    iget-boolean v3, v0, Lcom/jcraft/jsch/Session;->D:Z

    .line 820
    .line 821
    if-nez v3, :cond_18

    .line 822
    .line 823
    goto :goto_6

    .line 824
    :cond_18
    new-instance v0, Lcom/jcraft/jsch/JSchStrictKexException;

    .line 825
    .line 826
    const-string v1, "incoming sequence number wrapped during initial KEX"

    .line 827
    .line 828
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    throw v0

    .line 832
    :cond_19
    :goto_6
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->v:Lcom/jcraft/jsch/Compression;

    .line 833
    .line 834
    if-eqz v3, :cond_1b

    .line 835
    .line 836
    :try_start_2
    iget-object v7, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 837
    .line 838
    aget-byte v8, v7, v10

    .line 839
    .line 840
    iget-object v9, v0, Lcom/jcraft/jsch/Session;->t0:[I

    .line 841
    .line 842
    iget v11, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 843
    .line 844
    sub-int/2addr v11, v15

    .line 845
    sub-int/2addr v11, v8

    .line 846
    aput v11, v9, v4

    .line 847
    .line 848
    invoke-interface {v3, v7, v15, v9}, Lcom/jcraft/jsch/Compression;->uncompress([BI[I)[B

    .line 849
    .line 850
    .line 851
    move-result-object v3

    .line 852
    if-eqz v3, :cond_1a

    .line 853
    .line 854
    iput-object v3, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 855
    .line 856
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->t0:[I

    .line 857
    .line 858
    aget v3, v3, v4

    .line 859
    .line 860
    add-int/2addr v3, v15

    .line 861
    iput v3, v1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 862
    .line 863
    goto :goto_7

    .line 864
    :cond_1a
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 865
    .line 866
    .line 867
    move-result-object v2

    .line 868
    move/from16 v3, v22

    .line 869
    .line 870
    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 871
    .line 872
    .line 873
    move-result v2

    .line 874
    if-eqz v2, :cond_2c

    .line 875
    .line 876
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    const-string v2, "fail in inflater"

    .line 881
    .line 882
    invoke-interface {v0, v3, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/jcraft/jsch/Compression$InflaterException; {:try_start_2 .. :try_end_2} :catch_2

    .line 883
    .line 884
    .line 885
    goto/16 :goto_d

    .line 886
    .line 887
    :catch_2
    move-exception v0

    .line 888
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 889
    .line 890
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v2

    .line 894
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 895
    .line 896
    .line 897
    throw v1

    .line 898
    :cond_1b
    :goto_7
    iget-object v3, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 899
    .line 900
    aget-byte v3, v3, v15

    .line 901
    .line 902
    and-int/lit16 v3, v3, 0xff

    .line 903
    .line 904
    move/from16 v7, v21

    .line 905
    .line 906
    if-eq v3, v7, :cond_2d

    .line 907
    .line 908
    iget-boolean v7, v0, Lcom/jcraft/jsch/Session;->D:Z

    .line 909
    .line 910
    if-eqz v7, :cond_1c

    .line 911
    .line 912
    iget-boolean v7, v0, Lcom/jcraft/jsch/Session;->E:Z

    .line 913
    .line 914
    if-eqz v7, :cond_1c

    .line 915
    .line 916
    goto/16 :goto_d

    .line 917
    .line 918
    :cond_1c
    move/from16 v7, v20

    .line 919
    .line 920
    if-ne v3, v7, :cond_1d

    .line 921
    .line 922
    goto/16 :goto_c

    .line 923
    .line 924
    :cond_1d
    const/4 v7, 0x3

    .line 925
    if-ne v3, v7, :cond_1e

    .line 926
    .line 927
    iput v4, v1, Lcom/jcraft/jsch/Buffer;->d:I

    .line 928
    .line 929
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 930
    .line 931
    .line 932
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 933
    .line 934
    .line 935
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 936
    .line 937
    .line 938
    move-result v3

    .line 939
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 940
    .line 941
    .line 942
    move-result-object v7

    .line 943
    const/4 v8, 0x1

    .line 944
    invoke-interface {v7, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 945
    .line 946
    .line 947
    move-result v7

    .line 948
    if-eqz v7, :cond_2a

    .line 949
    .line 950
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 951
    .line 952
    .line 953
    move-result-object v7

    .line 954
    new-instance v9, Ljava/lang/StringBuilder;

    .line 955
    .line 956
    const-string v10, "Received SSH_MSG_UNIMPLEMENTED for "

    .line 957
    .line 958
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v3

    .line 968
    invoke-interface {v7, v8, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 969
    .line 970
    .line 971
    goto/16 :goto_c

    .line 972
    .line 973
    :cond_1e
    if-ne v3, v10, :cond_1f

    .line 974
    .line 975
    iput v4, v1, Lcom/jcraft/jsch/Buffer;->d:I

    .line 976
    .line 977
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 978
    .line 979
    .line 980
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 981
    .line 982
    .line 983
    goto/16 :goto_c

    .line 984
    .line 985
    :cond_1f
    const/16 v7, 0x5d

    .line 986
    .line 987
    if-ne v3, v7, :cond_20

    .line 988
    .line 989
    iput v4, v1, Lcom/jcraft/jsch/Buffer;->d:I

    .line 990
    .line 991
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 992
    .line 993
    .line 994
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 995
    .line 996
    .line 997
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 998
    .line 999
    .line 1000
    move-result v3

    .line 1001
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Session;->l(I)Lcom/jcraft/jsch/Channel;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v3

    .line 1005
    if-eqz v3, :cond_2a

    .line 1006
    .line 1007
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    .line 1008
    .line 1009
    .line 1010
    move-result-wide v7

    .line 1011
    invoke-virtual {v3, v7, v8}, Lcom/jcraft/jsch/Channel;->a(J)V

    .line 1012
    .line 1013
    .line 1014
    goto/16 :goto_c

    .line 1015
    .line 1016
    :cond_20
    const/4 v7, 0x7

    .line 1017
    if-ne v3, v7, :cond_2b

    .line 1018
    .line 1019
    iput v4, v1, Lcom/jcraft/jsch/Buffer;->d:I

    .line 1020
    .line 1021
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 1025
    .line 1026
    .line 1027
    iget-boolean v3, v0, Lcom/jcraft/jsch/Session;->B:Z

    .line 1028
    .line 1029
    if-nez v3, :cond_21

    .line 1030
    .line 1031
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v3

    .line 1035
    const/4 v7, 0x1

    .line 1036
    invoke-interface {v3, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1037
    .line 1038
    .line 1039
    move-result v3

    .line 1040
    if-eqz v3, :cond_25

    .line 1041
    .line 1042
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v3

    .line 1046
    const-string v8, "Ignoring SSH_MSG_EXT_INFO while enable_server_sig_algs != yes"

    .line 1047
    .line 1048
    invoke-interface {v3, v7, v8}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    goto :goto_8

    .line 1052
    :cond_21
    const/4 v7, 0x1

    .line 1053
    iget-boolean v3, v0, Lcom/jcraft/jsch/Session;->H:Z

    .line 1054
    .line 1055
    if-eqz v3, :cond_22

    .line 1056
    .line 1057
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v3

    .line 1061
    invoke-interface {v3, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v3

    .line 1065
    if-eqz v3, :cond_25

    .line 1066
    .line 1067
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v3

    .line 1071
    const-string v8, "Ignoring SSH_MSG_EXT_INFO received after SSH_MSG_USERAUTH_SUCCESS"

    .line 1072
    .line 1073
    invoke-interface {v3, v7, v8}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    goto :goto_8

    .line 1077
    :cond_22
    iget-boolean v3, v0, Lcom/jcraft/jsch/Session;->q0:Z

    .line 1078
    .line 1079
    if-eqz v3, :cond_23

    .line 1080
    .line 1081
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v3

    .line 1085
    invoke-interface {v3, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v3

    .line 1089
    if-eqz v3, :cond_25

    .line 1090
    .line 1091
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v3

    .line 1095
    const-string v8, "Ignoring SSH_MSG_EXT_INFO received before SSH_MSG_NEWKEYS"

    .line 1096
    .line 1097
    invoke-interface {v3, v7, v8}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    goto :goto_8

    .line 1101
    :cond_23
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v3

    .line 1105
    invoke-interface {v3, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1106
    .line 1107
    .line 1108
    move-result v3

    .line 1109
    if-eqz v3, :cond_24

    .line 1110
    .line 1111
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v3

    .line 1115
    const-string v8, "SSH_MSG_EXT_INFO received"

    .line 1116
    .line 1117
    invoke-interface {v3, v7, v8}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    :cond_24
    move v7, v4

    .line 1121
    :cond_25
    :goto_8
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    .line 1122
    .line 1123
    .line 1124
    move-result-wide v8

    .line 1125
    const-wide/16 v10, 0x0

    .line 1126
    .line 1127
    :goto_9
    cmp-long v3, v10, v8

    .line 1128
    .line 1129
    if-gez v3, :cond_2a

    .line 1130
    .line 1131
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 1132
    .line 1133
    .line 1134
    move-result-object v3

    .line 1135
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 1136
    .line 1137
    .line 1138
    move-result-object v12

    .line 1139
    if-nez v7, :cond_29

    .line 1140
    .line 1141
    array-length v13, v3

    .line 1142
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1143
    .line 1144
    new-instance v15, Ljava/lang/String;

    .line 1145
    .line 1146
    invoke-direct {v15, v3, v4, v13, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1147
    .line 1148
    .line 1149
    const-string v3, "server-sig-algs"

    .line 1150
    .line 1151
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v3

    .line 1155
    if-eqz v3, :cond_29

    .line 1156
    .line 1157
    array-length v3, v12

    .line 1158
    new-instance v13, Ljava/lang/String;

    .line 1159
    .line 1160
    invoke-direct {v13, v12, v4, v3, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v3

    .line 1167
    const/4 v12, 0x1

    .line 1168
    invoke-interface {v3, v12}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1169
    .line 1170
    .line 1171
    move-result v3

    .line 1172
    if-eqz v3, :cond_26

    .line 1173
    .line 1174
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v3

    .line 1178
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1179
    .line 1180
    const-string v15, "server-sig-algs=<"

    .line 1181
    .line 1182
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    .line 1188
    const-string v15, ">"

    .line 1189
    .line 1190
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v14

    .line 1197
    invoke-interface {v3, v12, v14}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1198
    .line 1199
    .line 1200
    :cond_26
    iget-boolean v3, v0, Lcom/jcraft/jsch/Session;->a0:Z

    .line 1201
    .line 1202
    if-eqz v3, :cond_28

    .line 1203
    .line 1204
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 1205
    .line 1206
    .line 1207
    move-result v3

    .line 1208
    if-nez v3, :cond_27

    .line 1209
    .line 1210
    const-string v3, ",rsa-sha2-256,rsa-sha2-512"

    .line 1211
    .line 1212
    invoke-virtual {v13, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v3

    .line 1216
    :goto_a
    move-object v13, v3

    .line 1217
    goto :goto_b

    .line 1218
    :cond_27
    const-string v3, "rsa-sha2-256,rsa-sha2-512"

    .line 1219
    .line 1220
    goto :goto_a

    .line 1221
    :goto_b
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v3

    .line 1225
    const/4 v12, 0x1

    .line 1226
    invoke-interface {v3, v12}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1227
    .line 1228
    .line 1229
    move-result v3

    .line 1230
    if-eqz v3, :cond_28

    .line 1231
    .line 1232
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v3

    .line 1236
    const-string v14, "OpenSSH 7.4 detected: adding rsa-sha2-256 & rsa-sha2-512 to server-sig-algs"

    .line 1237
    .line 1238
    invoke-interface {v3, v12, v14}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1239
    .line 1240
    .line 1241
    :cond_28
    invoke-static {v13}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v3

    .line 1245
    iput-object v3, v0, Lcom/jcraft/jsch/Session;->Z:[Ljava/lang/String;

    .line 1246
    .line 1247
    :cond_29
    const-wide/16 v12, 0x1

    .line 1248
    .line 1249
    add-long/2addr v10, v12

    .line 1250
    goto :goto_9

    .line 1251
    :cond_2a
    :goto_c
    const/4 v3, 0x1

    .line 1252
    goto/16 :goto_2

    .line 1253
    .line 1254
    :cond_2b
    const/16 v2, 0x34

    .line 1255
    .line 1256
    if-ne v3, v2, :cond_2c

    .line 1257
    .line 1258
    const/4 v12, 0x1

    .line 1259
    iput-boolean v12, v0, Lcom/jcraft/jsch/Session;->H:Z

    .line 1260
    .line 1261
    iget-object v2, v0, Lcom/jcraft/jsch/Session;->v:Lcom/jcraft/jsch/Compression;

    .line 1262
    .line 1263
    if-nez v2, :cond_2c

    .line 1264
    .line 1265
    iget-object v2, v0, Lcom/jcraft/jsch/Session;->u:Lcom/jcraft/jsch/Compression;

    .line 1266
    .line 1267
    if-nez v2, :cond_2c

    .line 1268
    .line 1269
    iget-object v2, v0, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 1270
    .line 1271
    const/4 v3, 0x6

    .line 1272
    aget-object v2, v2, v3

    .line 1273
    .line 1274
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->m(Ljava/lang/String;)V

    .line 1275
    .line 1276
    .line 1277
    iget-object v2, v0, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 1278
    .line 1279
    aget-object v2, v2, v7

    .line 1280
    .line 1281
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->n(Ljava/lang/String;)V

    .line 1282
    .line 1283
    .line 1284
    :cond_2c
    :goto_d
    iput v4, v1, Lcom/jcraft/jsch/Buffer;->d:I

    .line 1285
    .line 1286
    return-void

    .line 1287
    :cond_2d
    iput v4, v1, Lcom/jcraft/jsch/Buffer;->d:I

    .line 1288
    .line 1289
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1296
    .line 1297
    .line 1298
    move-result v0

    .line 1299
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 1300
    .line 1301
    .line 1302
    move-result-object v2

    .line 1303
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 1304
    .line 1305
    .line 1306
    move-result-object v1

    .line 1307
    array-length v3, v2

    .line 1308
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1309
    .line 1310
    new-instance v6, Ljava/lang/String;

    .line 1311
    .line 1312
    invoke-direct {v6, v2, v4, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1313
    .line 1314
    .line 1315
    array-length v2, v1

    .line 1316
    new-instance v3, Ljava/lang/String;

    .line 1317
    .line 1318
    invoke-direct {v3, v1, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1319
    .line 1320
    .line 1321
    new-instance v1, Lcom/jcraft/jsch/JSchSessionDisconnectException;

    .line 1322
    .line 1323
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1324
    .line 1325
    const-string v4, "SSH_MSG_DISCONNECT: "

    .line 1326
    .line 1327
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    .line 1333
    const-string v4, " "

    .line 1334
    .line 1335
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v2

    .line 1351
    invoke-direct {v1, v2, v0, v6, v3}, Lcom/jcraft/jsch/JSchSessionDisconnectException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1352
    .line 1353
    .line 1354
    throw v1

    .line 1355
    :cond_2e
    invoke-static {v8}, Le6;->h(Ljava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    return-void

    .line 1359
    :cond_2f
    iget-object v2, v0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 1360
    .line 1361
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 1362
    .line 1363
    const/4 v4, 0x0

    .line 1364
    const/high16 v5, 0x40000

    .line 1365
    .line 1366
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->x(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 1367
    .line 1368
    .line 1369
    throw v16
.end method

.method public final q(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x5

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 18
    .line 19
    .line 20
    iget v2, v0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 21
    .line 22
    sub-int/2addr v2, v4

    .line 23
    new-array v2, v2, [B

    .line 24
    .line 25
    iput-object v2, v1, Lcom/jcraft/jsch/Session;->d:[B

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sub-int/2addr v2, v5

    .line 29
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-int/2addr v2, v3

    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    iput-object v2, v1, Lcom/jcraft/jsch/Session;->d:[B

    .line 37
    .line 38
    :goto_0
    iget-object v2, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 39
    .line 40
    iget v0, v0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 41
    .line 42
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->d:[B

    .line 43
    .line 44
    array-length v6, v3

    .line 45
    const/4 v7, 0x0

    .line 46
    invoke-static {v2, v0, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->D:Z

    .line 50
    .line 51
    const-string v2, "ext-info-s"

    .line 52
    .line 53
    const-string v3, "kex-strict-s-v00@openssh.com"

    .line 54
    .line 55
    const/16 v6, 0x2c

    .line 56
    .line 57
    const/16 v8, 0x11

    .line 58
    .line 59
    if-eqz v0, :cond_f

    .line 60
    .line 61
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->F:Z

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->G:Z

    .line 66
    .line 67
    if-eqz v0, :cond_9

    .line 68
    .line 69
    :cond_1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 70
    .line 71
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->d:[B

    .line 72
    .line 73
    invoke-direct {v0, v9}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 74
    .line 75
    .line 76
    iput v8, v0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    move v9, v7

    .line 83
    move v10, v9

    .line 84
    :goto_1
    array-length v11, v0

    .line 85
    if-ge v9, v11, :cond_5

    .line 86
    .line 87
    :goto_2
    array-length v11, v0

    .line 88
    if-ge v9, v11, :cond_2

    .line 89
    .line 90
    aget-byte v11, v0, v9

    .line 91
    .line 92
    if-eq v11, v6, :cond_2

    .line 93
    .line 94
    add-int/lit8 v9, v9, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    if-ne v10, v9, :cond_4

    .line 98
    .line 99
    :cond_3
    add-int/lit8 v10, v9, 0x1

    .line 100
    .line 101
    move v9, v10

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    sub-int v11, v9, v10

    .line 104
    .line 105
    invoke-static {v0, v10, v11}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-eqz v10, :cond_3

    .line 114
    .line 115
    move v0, v5

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    move v0, v7

    .line 118
    :goto_3
    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->E:Z

    .line 119
    .line 120
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->E:Z

    .line 121
    .line 122
    if-eqz v0, :cond_8

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v9, "Doing strict KEX"

    .line 139
    .line 140
    invoke-interface {v0, v5, v9}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    iget v0, v1, Lcom/jcraft/jsch/Session;->l:I

    .line 144
    .line 145
    if-ne v0, v5, :cond_7

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_7
    new-instance v0, Lcom/jcraft/jsch/JSchStrictKexException;

    .line 149
    .line 150
    const-string v1, "KEXINIT not first packet from server"

    .line 151
    .line 152
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :cond_8
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->G:Z

    .line 157
    .line 158
    if-nez v0, :cond_e

    .line 159
    .line 160
    :cond_9
    :goto_4
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->B:Z

    .line 161
    .line 162
    if-eqz v0, :cond_f

    .line 163
    .line 164
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 165
    .line 166
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->d:[B

    .line 167
    .line 168
    invoke-direct {v0, v9}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 169
    .line 170
    .line 171
    iput v8, v0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    move v9, v7

    .line 178
    move v10, v9

    .line 179
    :goto_5
    array-length v11, v0

    .line 180
    if-ge v9, v11, :cond_d

    .line 181
    .line 182
    :goto_6
    array-length v11, v0

    .line 183
    if-ge v9, v11, :cond_a

    .line 184
    .line 185
    aget-byte v11, v0, v9

    .line 186
    .line 187
    if-eq v11, v6, :cond_a

    .line 188
    .line 189
    add-int/lit8 v9, v9, 0x1

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_a
    if-ne v10, v9, :cond_c

    .line 193
    .line 194
    :cond_b
    add-int/lit8 v10, v9, 0x1

    .line 195
    .line 196
    move v9, v10

    .line 197
    goto :goto_5

    .line 198
    :cond_c
    sub-int v11, v9, v10

    .line 199
    .line 200
    invoke-static {v0, v10, v11}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-eqz v10, :cond_b

    .line 209
    .line 210
    move v0, v5

    .line 211
    goto :goto_7

    .line 212
    :cond_d
    move v0, v7

    .line 213
    :goto_7
    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->A:Z

    .line 214
    .line 215
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->A:Z

    .line 216
    .line 217
    if-eqz v0, :cond_f

    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-interface {v0, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_f

    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    const-string v9, "ext-info messaging supported by server"

    .line 234
    .line 235
    invoke-interface {v0, v5, v9}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto :goto_8

    .line 239
    :cond_e
    new-instance v0, Lcom/jcraft/jsch/JSchStrictKexException;

    .line 240
    .line 241
    const-string v1, "Strict KEX not supported by server"

    .line 242
    .line 243
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v0

    .line 247
    :cond_f
    :goto_8
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->q0:Z

    .line 248
    .line 249
    if-nez v0, :cond_10

    .line 250
    .line 251
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->v()V

    .line 252
    .line 253
    .line 254
    :cond_10
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->d:[B

    .line 255
    .line 256
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->c:[B

    .line 257
    .line 258
    const-class v10, Lcom/jcraft/jsch/Cipher;

    .line 259
    .line 260
    sget-object v11, Lcom/jcraft/jsch/KeyExchange;->i:[Ljava/lang/String;

    .line 261
    .line 262
    const/16 v12, 0xa

    .line 263
    .line 264
    new-array v13, v12, [Ljava/lang/String;

    .line 265
    .line 266
    new-instance v14, Lcom/jcraft/jsch/Buffer;

    .line 267
    .line 268
    invoke-direct {v14, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 269
    .line 270
    .line 271
    iput v8, v14, Lcom/jcraft/jsch/Buffer;->d:I

    .line 272
    .line 273
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 274
    .line 275
    invoke-direct {v0, v9}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 276
    .line 277
    .line 278
    iput v8, v0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 279
    .line 280
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-interface {v9, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    if-eqz v9, :cond_13

    .line 289
    .line 290
    move v9, v7

    .line 291
    :goto_9
    const-string v15, ": "

    .line 292
    .line 293
    if-ge v9, v12, :cond_11

    .line 294
    .line 295
    move/from16 v16, v4

    .line 296
    .line 297
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const-string v8, "server proposal: "

    .line 304
    .line 305
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    aget-object v8, v11, v9

    .line 309
    .line 310
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    array-length v15, v8

    .line 321
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 322
    .line 323
    new-instance v5, Ljava/lang/String;

    .line 324
    .line 325
    invoke-direct {v5, v8, v7, v15, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    const/4 v6, 0x1

    .line 336
    invoke-interface {v4, v6, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 337
    .line 338
    .line 339
    add-int/lit8 v9, v9, 0x1

    .line 340
    .line 341
    move/from16 v4, v16

    .line 342
    .line 343
    const/4 v5, 0x1

    .line 344
    const/16 v6, 0x2c

    .line 345
    .line 346
    const/16 v8, 0x11

    .line 347
    .line 348
    const/16 v12, 0xa

    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_11
    move/from16 v16, v4

    .line 352
    .line 353
    move v4, v7

    .line 354
    move v5, v12

    .line 355
    :goto_a
    if-ge v4, v5, :cond_12

    .line 356
    .line 357
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string v8, "client proposal: "

    .line 364
    .line 365
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    aget-object v8, v11, v4

    .line 369
    .line 370
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 377
    .line 378
    .line 379
    move-result-object v8

    .line 380
    array-length v9, v8

    .line 381
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 382
    .line 383
    move/from16 v18, v4

    .line 384
    .line 385
    new-instance v4, Ljava/lang/String;

    .line 386
    .line 387
    invoke-direct {v4, v8, v7, v9, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    const/4 v6, 0x1

    .line 398
    invoke-interface {v5, v6, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    add-int/lit8 v4, v18, 0x1

    .line 402
    .line 403
    const/16 v5, 0xa

    .line 404
    .line 405
    goto :goto_a

    .line 406
    :cond_12
    const/16 v4, 0x11

    .line 407
    .line 408
    iput v4, v14, Lcom/jcraft/jsch/Buffer;->d:I

    .line 409
    .line 410
    iput v4, v0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 411
    .line 412
    goto :goto_b

    .line 413
    :cond_13
    move/from16 v16, v4

    .line 414
    .line 415
    :goto_b
    move v4, v7

    .line 416
    :goto_c
    const/16 v5, 0xa

    .line 417
    .line 418
    if-ge v4, v5, :cond_1e

    .line 419
    .line 420
    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 425
    .line 426
    .line 427
    move-result-object v8

    .line 428
    move v9, v7

    .line 429
    move v11, v9

    .line 430
    :goto_d
    array-length v12, v8

    .line 431
    if-ge v9, v12, :cond_1b

    .line 432
    .line 433
    :goto_e
    array-length v12, v8

    .line 434
    if-ge v9, v12, :cond_14

    .line 435
    .line 436
    aget-byte v12, v8, v9

    .line 437
    .line 438
    const/16 v15, 0x2c

    .line 439
    .line 440
    if-eq v12, v15, :cond_14

    .line 441
    .line 442
    add-int/lit8 v9, v9, 0x1

    .line 443
    .line 444
    goto :goto_e

    .line 445
    :cond_14
    if-eq v11, v9, :cond_1a

    .line 446
    .line 447
    sub-int v12, v9, v11

    .line 448
    .line 449
    invoke-static {v8, v11, v12}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v11

    .line 453
    move v12, v7

    .line 454
    move v15, v12

    .line 455
    :goto_f
    array-length v5, v6

    .line 456
    if-ge v12, v5, :cond_19

    .line 457
    .line 458
    :goto_10
    array-length v5, v6

    .line 459
    if-ge v12, v5, :cond_15

    .line 460
    .line 461
    aget-byte v5, v6, v12

    .line 462
    .line 463
    const/16 v7, 0x2c

    .line 464
    .line 465
    if-eq v5, v7, :cond_16

    .line 466
    .line 467
    add-int/lit8 v12, v12, 0x1

    .line 468
    .line 469
    const/4 v7, 0x0

    .line 470
    goto :goto_10

    .line 471
    :cond_15
    const/16 v7, 0x2c

    .line 472
    .line 473
    :cond_16
    if-eq v15, v12, :cond_18

    .line 474
    .line 475
    sub-int v5, v12, v15

    .line 476
    .line 477
    invoke-static {v6, v15, v5}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v5

    .line 485
    if-eqz v5, :cond_17

    .line 486
    .line 487
    aput-object v11, v13, v4

    .line 488
    .line 489
    goto :goto_11

    .line 490
    :cond_17
    add-int/lit8 v15, v12, 0x1

    .line 491
    .line 492
    move v12, v15

    .line 493
    const/4 v7, 0x0

    .line 494
    goto :goto_f

    .line 495
    :cond_18
    new-instance v0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;

    .line 496
    .line 497
    array-length v1, v8

    .line 498
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 499
    .line 500
    new-instance v3, Ljava/lang/String;

    .line 501
    .line 502
    const/4 v5, 0x0

    .line 503
    invoke-direct {v3, v8, v5, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 504
    .line 505
    .line 506
    array-length v1, v6

    .line 507
    new-instance v7, Ljava/lang/String;

    .line 508
    .line 509
    invoke-direct {v7, v6, v5, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 510
    .line 511
    .line 512
    invoke-direct {v0, v4, v3, v7}, Lcom/jcraft/jsch/JSchAlgoNegoFailException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    throw v0

    .line 516
    :cond_19
    move v5, v7

    .line 517
    const/16 v7, 0x2c

    .line 518
    .line 519
    add-int/lit8 v11, v9, 0x1

    .line 520
    .line 521
    move v7, v5

    .line 522
    move v9, v11

    .line 523
    const/16 v5, 0xa

    .line 524
    .line 525
    goto :goto_d

    .line 526
    :cond_1a
    move v5, v7

    .line 527
    new-instance v0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;

    .line 528
    .line 529
    array-length v1, v8

    .line 530
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 531
    .line 532
    new-instance v3, Ljava/lang/String;

    .line 533
    .line 534
    invoke-direct {v3, v8, v5, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 535
    .line 536
    .line 537
    array-length v1, v6

    .line 538
    new-instance v7, Ljava/lang/String;

    .line 539
    .line 540
    invoke-direct {v7, v6, v5, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 541
    .line 542
    .line 543
    invoke-direct {v0, v4, v3, v7}, Lcom/jcraft/jsch/JSchAlgoNegoFailException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    throw v0

    .line 547
    :cond_1b
    const/16 v7, 0x2c

    .line 548
    .line 549
    :goto_11
    if-nez v9, :cond_1c

    .line 550
    .line 551
    const-string v5, ""

    .line 552
    .line 553
    aput-object v5, v13, v4

    .line 554
    .line 555
    goto :goto_12

    .line 556
    :cond_1c
    aget-object v5, v13, v4

    .line 557
    .line 558
    if-eqz v5, :cond_1d

    .line 559
    .line 560
    :goto_12
    add-int/lit8 v4, v4, 0x1

    .line 561
    .line 562
    const/4 v7, 0x0

    .line 563
    goto/16 :goto_c

    .line 564
    .line 565
    :cond_1d
    new-instance v0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;

    .line 566
    .line 567
    array-length v1, v8

    .line 568
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 569
    .line 570
    new-instance v3, Ljava/lang/String;

    .line 571
    .line 572
    const/4 v5, 0x0

    .line 573
    invoke-direct {v3, v8, v5, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 574
    .line 575
    .line 576
    array-length v1, v6

    .line 577
    new-instance v7, Ljava/lang/String;

    .line 578
    .line 579
    invoke-direct {v7, v6, v5, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 580
    .line 581
    .line 582
    invoke-direct {v0, v4, v3, v7}, Lcom/jcraft/jsch/JSchAlgoNegoFailException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    throw v0

    .line 586
    :cond_1e
    const/4 v0, 0x3

    .line 587
    :try_start_0
    aget-object v4, v13, v0

    .line 588
    .line 589
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v4

    .line 593
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    invoke-virtual {v4, v10}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    move-result-object v4

    .line 601
    const/4 v5, 0x0

    .line 602
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 603
    .line 604
    .line 605
    move-result-object v4

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v4

    .line 610
    check-cast v4, Lcom/jcraft/jsch/Cipher;

    .line 611
    .line 612
    invoke-interface {v4}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    .line 613
    .line 614
    .line 615
    move-result v4

    .line 616
    if-eqz v4, :cond_1f

    .line 617
    .line 618
    aput-object v5, v13, v16

    .line 619
    .line 620
    :cond_1f
    const/4 v6, 0x2

    .line 621
    aget-object v7, v13, v6

    .line 622
    .line 623
    invoke-virtual {v1, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v7

    .line 627
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    move-result-object v7

    .line 631
    invoke-virtual {v7, v10}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    move-result-object v7

    .line 635
    invoke-virtual {v7, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 636
    .line 637
    .line 638
    move-result-object v7

    .line 639
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v7

    .line 643
    check-cast v7, Lcom/jcraft/jsch/Cipher;

    .line 644
    .line 645
    invoke-interface {v7}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    .line 646
    .line 647
    .line 648
    move-result v7

    .line 649
    const/4 v8, 0x4

    .line 650
    if-eqz v7, :cond_20

    .line 651
    .line 652
    aput-object v5, v13, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1

    .line 653
    .line 654
    :cond_20
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 655
    .line 656
    .line 657
    move-result-object v9

    .line 658
    const/4 v10, 0x1

    .line 659
    invoke-interface {v9, v10}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 660
    .line 661
    .line 662
    move-result v9

    .line 663
    if-eqz v9, :cond_23

    .line 664
    .line 665
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 666
    .line 667
    .line 668
    move-result-object v9

    .line 669
    new-instance v11, Ljava/lang/StringBuilder;

    .line 670
    .line 671
    const-string v12, "kex: algorithm: "

    .line 672
    .line 673
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    const/16 v17, 0x0

    .line 677
    .line 678
    aget-object v12, v13, v17

    .line 679
    .line 680
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v11

    .line 687
    invoke-interface {v9, v10, v11}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 691
    .line 692
    .line 693
    move-result-object v9

    .line 694
    new-instance v11, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    const-string v12, "kex: host key algorithm: "

    .line 697
    .line 698
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    aget-object v12, v13, v10

    .line 702
    .line 703
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v11

    .line 710
    invoke-interface {v9, v10, v11}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 714
    .line 715
    .line 716
    move-result-object v9

    .line 717
    new-instance v10, Ljava/lang/StringBuilder;

    .line 718
    .line 719
    const-string v11, "kex: server->client cipher: "

    .line 720
    .line 721
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    aget-object v11, v13, v0

    .line 725
    .line 726
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    const-string v11, " MAC: "

    .line 730
    .line 731
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    const-string v12, "<implicit>"

    .line 735
    .line 736
    if-eqz v4, :cond_21

    .line 737
    .line 738
    move-object v4, v12

    .line 739
    goto :goto_13

    .line 740
    :cond_21
    aget-object v4, v13, v16

    .line 741
    .line 742
    :goto_13
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    const-string v4, " compression: "

    .line 746
    .line 747
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    const/4 v14, 0x7

    .line 751
    aget-object v14, v13, v14

    .line 752
    .line 753
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v10

    .line 760
    const/4 v14, 0x1

    .line 761
    invoke-interface {v9, v14, v10}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 765
    .line 766
    .line 767
    move-result-object v9

    .line 768
    new-instance v10, Ljava/lang/StringBuilder;

    .line 769
    .line 770
    const-string v14, "kex: client->server cipher: "

    .line 771
    .line 772
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    aget-object v14, v13, v6

    .line 776
    .line 777
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    if-eqz v7, :cond_22

    .line 784
    .line 785
    goto :goto_14

    .line 786
    :cond_22
    aget-object v12, v13, v8

    .line 787
    .line 788
    :goto_14
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    const/4 v4, 0x6

    .line 795
    aget-object v4, v13, v4

    .line 796
    .line 797
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v4

    .line 804
    const/4 v14, 0x1

    .line 805
    invoke-interface {v9, v14, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 806
    .line 807
    .line 808
    :cond_23
    iput-object v13, v1, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 809
    .line 810
    const/16 v17, 0x0

    .line 811
    .line 812
    aget-object v4, v13, v17

    .line 813
    .line 814
    const-string v7, "ext-info-c"

    .line 815
    .line 816
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    if-nez v4, :cond_26

    .line 821
    .line 822
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 823
    .line 824
    aget-object v4, v4, v17

    .line 825
    .line 826
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v2

    .line 830
    if-nez v2, :cond_26

    .line 831
    .line 832
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 833
    .line 834
    aget-object v2, v2, v17

    .line 835
    .line 836
    const-string v4, "kex-strict-c-v00@openssh.com"

    .line 837
    .line 838
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    move-result v2

    .line 842
    if-nez v2, :cond_26

    .line 843
    .line 844
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 845
    .line 846
    aget-object v2, v2, v17

    .line 847
    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v2

    .line 852
    if-nez v2, :cond_26

    .line 853
    .line 854
    iget-boolean v2, v1, Lcom/jcraft/jsch/Session;->H:Z

    .line 855
    .line 856
    if-nez v2, :cond_25

    .line 857
    .line 858
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 859
    .line 860
    aget-object v2, v2, v6

    .line 861
    .line 862
    const-string v3, "none"

    .line 863
    .line 864
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    move-result v2

    .line 868
    if-nez v2, :cond_24

    .line 869
    .line 870
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 871
    .line 872
    aget-object v0, v2, v0

    .line 873
    .line 874
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 875
    .line 876
    .line 877
    move-result v0

    .line 878
    if-nez v0, :cond_24

    .line 879
    .line 880
    goto :goto_15

    .line 881
    :cond_24
    const-string v0, "NONE Cipher should not be chosen before authentification is successed."

    .line 882
    .line 883
    invoke-static {v0}, Le6;->h(Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    return-object v5

    .line 887
    :cond_25
    :goto_15
    :try_start_1
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 888
    .line 889
    const/16 v17, 0x0

    .line 890
    .line 891
    aget-object v0, v0, v17

    .line 892
    .line 893
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    const-class v2, Lcom/jcraft/jsch/KeyExchange;

    .line 902
    .line 903
    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    check-cast v0, Lcom/jcraft/jsch/KeyExchange;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    .line 916
    .line 917
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->a:[B

    .line 918
    .line 919
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->b:[B

    .line 920
    .line 921
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->d:[B

    .line 922
    .line 923
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->c:[B

    .line 924
    .line 925
    iput-object v1, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 926
    .line 927
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->init(Lcom/jcraft/jsch/Session;[B[B[B[B)V

    .line 928
    .line 929
    .line 930
    return-object v0

    .line 931
    :catch_0
    move-exception v0

    .line 932
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 933
    .line 934
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v2

    .line 938
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 939
    .line 940
    .line 941
    throw v1

    .line 942
    :cond_26
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 943
    .line 944
    iget-object v1, v1, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 945
    .line 946
    const/16 v17, 0x0

    .line 947
    .line 948
    aget-object v1, v1, v17

    .line 949
    .line 950
    new-instance v2, Ljava/lang/StringBuilder;

    .line 951
    .line 952
    const-string v3, "Invalid Kex negotiated: "

    .line 953
    .line 954
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    throw v0

    .line 968
    :catch_1
    move-exception v0

    .line 969
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 970
    .line 971
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v2

    .line 975
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 976
    .line 977
    .line 978
    throw v1
.end method

.method public final r(Lcom/jcraft/jsch/KeyExchange;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->y(Lcom/jcraft/jsch/KeyExchange;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    iget-object v1, p1, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 6
    .line 7
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p1, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/jcraft/jsch/Session;->q0:Z

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->E:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput p1, p0, Lcom/jcraft/jsch/Session;->l:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-interface {p1, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "Reset incoming sequence number after receiving SSH_MSG_NEWKEYS for strict KEX"

    .line 37
    .line 38
    invoke-interface {p0, v0, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    iget-object v1, p1, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 44
    .line 45
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p1, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 49
    .line 50
    throw p0
.end method

.method public final rekey()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->v()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final s()V
    .locals 5

    .line 1
    const-string v0, "ClearAllForwardings"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "yes"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->k0:Lcom/jcraft/jsch/JSch;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/jcraft/jsch/JSch;->e:Lcom/jcraft/jsch/ConfigRepository;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g0:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "LocalForward"

    .line 30
    .line 31
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    move v3, v2

    .line 39
    :goto_0
    array-length v4, v1

    .line 40
    if-ge v3, v4, :cond_2

    .line 41
    .line 42
    aget-object v4, v1, v3

    .line 43
    .line 44
    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string v1, "RemoteForward"

    .line 51
    .line 52
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    :goto_1
    array-length v1, v0

    .line 59
    if-ge v2, v1, :cond_3

    .line 60
    .line 61
    aget-object v1, v0, v2

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    :goto_2
    return-void
.end method

.method public final sendIgnore()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final sendKeepAliveMsg()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x50

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/jcraft/jsch/Session;->B0:[B

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final setClientVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->b:[B

    .line 10
    .line 11
    return-void
.end method

.method public final setConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->J:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->R:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->R:Ljava/util/Hashtable;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 69
    :cond_0
    :goto_0
    const-string v1, "PubkeyAcceptedKeyTypes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    .line 71
    :try_start_1
    const-string p1, "PubkeyAcceptedAlgorithms"

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setConfig(Ljava/util/Hashtable;)V
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
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->J:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->R:Ljava/util/Hashtable;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/Hashtable;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->R:Ljava/util/Hashtable;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_3

    .line 18
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    const-string v3, "PubkeyAcceptedKeyTypes"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const-string v3, "PubkeyAcceptedAlgorithms"

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    move-object v3, v2

    .line 46
    :goto_2
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->R:Ljava/util/Hashtable;

    .line 53
    .line 54
    invoke-virtual {v4, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final setConfig(Ljava/util/Properties;)V
    .locals 4

    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 63
    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/util/Hashtable;)V

    return-void
.end method

.method public final setDaemonThread(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/Session;->b0:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHostKeyAlias(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->U:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHostKeyRepository(Lcom/jcraft/jsch/HostKeyRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->Y:Lcom/jcraft/jsch/HostKeyRepository;

    .line 2
    .line 3
    return-void
.end method

.method public final setIdentityRepository(Lcom/jcraft/jsch/IdentityRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->X:Lcom/jcraft/jsch/IdentityRepository;

    .line 2
    .line 3
    return-void
.end method

.method public final setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->M:Ljava/io/InputStream;

    .line 2
    .line 3
    return-void
.end method

.method public final setLogger(Lcom/jcraft/jsch/Logger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->l0:Lcom/jcraft/jsch/Logger;

    .line 2
    .line 3
    return-void
.end method

.method public final setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->N:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 4
    .line 5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->j0:[B

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setPassword([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 14
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->j0:[B

    .line 15
    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public final setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/Session;->h0:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPortForwardingL(ILjava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 86
    const-string v1, "127.0.0.1"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I

    move-result p0

    return p0
.end method

.method public final setPortForwardingL(Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 89
    invoke-static {p1}, Lcom/jcraft/jsch/Session;->o(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object p1

    .line 90
    iget-object v1, p1, Lcom/jcraft/jsch/Session$Forwarding;->a:Ljava/lang/String;

    iget v2, p1, Lcom/jcraft/jsch/Session$Forwarding;->b:I

    iget-object v3, p1, Lcom/jcraft/jsch/Session$Forwarding;->c:Ljava/lang/String;

    iget v4, p1, Lcom/jcraft/jsch/Session$Forwarding;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 91
    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I

    move-result p0

    return p0
.end method

.method public final setPortForwardingL(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 87
    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I

    move-result p0

    return p0
.end method

.method public final setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 88
    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I

    move-result p0

    return p0
.end method

.method public final setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/PortWatcher;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-static {p0, v2, p2}, Lcom/jcraft/jsch/PortWatcher;->b(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/PortWatcher;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    new-instance v0, Lcom/jcraft/jsch/PortWatcher;

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    move v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move v5, p4

    .line 17
    move-object v6, p5

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/PortWatcher;-><init>(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/util/Vector;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput p6, v0, Lcom/jcraft/jsch/PortWatcher;->h:I

    .line 27
    .line 28
    iget-object p0, v1, Lcom/jcraft/jsch/Session;->m0:Ljava/util/concurrent/ThreadFactory;

    .line 29
    .line 30
    new-instance p1, Lcom/jcraft/jsch/m;

    .line 31
    .line 32
    invoke-direct {p1, v0}, Lcom/jcraft/jsch/m;-><init>(Lcom/jcraft/jsch/PortWatcher;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p2, "PortWatcher Thread for "

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-boolean p1, v1, Lcom/jcraft/jsch/Session;->b0:Z

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 64
    .line 65
    .line 66
    iget p0, v0, Lcom/jcraft/jsch/PortWatcher;->b:I

    .line 67
    .line 68
    return p0

    .line 69
    :cond_1
    move v3, p2

    .line 70
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 71
    .line 72
    const-string p1, ":"

    .line 73
    .line 74
    const-string p2, " is already registered."

    .line 75
    .line 76
    const-string p3, "PortForwardingL: local port "

    .line 77
    .line 78
    invoke-static {p3, v2, p1, v3, p2}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final setPortForwardingR(Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 75
    invoke-static {p1}, Lcom/jcraft/jsch/Session;->o(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object p1

    .line 76
    iget-object v0, p1, Lcom/jcraft/jsch/Session$Forwarding;->a:Ljava/lang/String;

    iget v1, p1, Lcom/jcraft/jsch/Session$Forwarding;->b:I

    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/Session;->a(ILjava/lang/String;)I

    move-result v5

    .line 77
    iget-object v3, p1, Lcom/jcraft/jsch/Session$Forwarding;->a:Ljava/lang/String;

    iget v4, p1, Lcom/jcraft/jsch/Session$Forwarding;->b:I

    iget-object v6, p1, Lcom/jcraft/jsch/Session$Forwarding;->c:Ljava/lang/String;

    iget v7, p1, Lcom/jcraft/jsch/Session$Forwarding;->d:I

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->m(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return v5
.end method

.method public final setPortForwardingR(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setPortForwardingR(ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return-void
.end method

.method public final setPortForwardingR(ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 69
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return-void
.end method

.method public final setPortForwardingR(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setPortForwardingR(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return-void
.end method

.method public final setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p2, p1}, Lcom/jcraft/jsch/Session;->a(ILjava/lang/String;)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 71
    invoke-static/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->m(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return-void
.end method

.method public final setPortForwardingR(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/jcraft/jsch/Session;->a(ILjava/lang/String;)I

    .line 2
    .line 3
    .line 4
    const-string v0, "PortForwardingR: remote port "

    .line 5
    .line 6
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/util/Vector;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->o(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p0, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->a:Lcom/jcraft/jsch/Session;

    .line 25
    .line 26
    iput p2, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->b:I

    .line 27
    .line 28
    iput p2, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->c:I

    .line 29
    .line 30
    iput-object p3, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->e:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p4, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->f:[Ljava/lang/Object;

    .line 33
    .line 34
    iput-object p1, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->d:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p2, " is already registered."

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public final setProxy(Lcom/jcraft/jsch/Proxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->S:Lcom/jcraft/jsch/Proxy;

    .line 2
    .line 3
    return-void
.end method

.method public final setServerAliveCountMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/Session;->W:I

    .line 2
    .line 3
    return-void
.end method

.method public final setServerAliveInterval(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->setTimeout(I)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/jcraft/jsch/Session;->V:I

    .line 5
    .line 6
    return-void
.end method

.method public final setSocketFactory(Lcom/jcraft/jsch/SocketFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->Q:Lcom/jcraft/jsch/SocketFactory;

    .line 2
    .line 3
    return-void
.end method

.method public final setSocketForwardingL(Ljava/lang/String;ILjava/lang/String;Lcom/jcraft/jsch/ServerSocketFactory;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/jcraft/jsch/PortWatcher;->addSocket(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;Lcom/jcraft/jsch/ServerSocketFactory;)Lcom/jcraft/jsch/PortWatcher;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput p5, p1, Lcom/jcraft/jsch/PortWatcher;->h:I

    .line 6
    .line 7
    iget-object p2, p0, Lcom/jcraft/jsch/Session;->m0:Ljava/util/concurrent/ThreadFactory;

    .line 8
    .line 9
    new-instance p3, Lcom/jcraft/jsch/m;

    .line 10
    .line 11
    invoke-direct {p3, p1}, Lcom/jcraft/jsch/m;-><init>(Lcom/jcraft/jsch/PortWatcher;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p3}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p4, "PortWatcher Thread for "

    .line 21
    .line 22
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p4, p0, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-boolean p0, p0, Lcom/jcraft/jsch/Session;->b0:Z

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p2, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 45
    .line 46
    .line 47
    iget p0, p1, Lcom/jcraft/jsch/PortWatcher;->b:I

    .line 48
    .line 49
    return p0
.end method

.method public final setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    check-cast p1, Ljava/util/concurrent/ThreadFactory;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->m0:Ljava/util/concurrent/ThreadFactory;

    .line 7
    .line 8
    return-void
.end method

.method public final setTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->x:Ljava/net/Socket;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/jcraft/jsch/Session;->y:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p0, "invalid timeout value"

    .line 11
    .line 12
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 17
    .line 18
    .line 19
    iput p1, p0, Lcom/jcraft/jsch/Session;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setUserInfo(Lcom/jcraft/jsch/UserInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->T:Lcom/jcraft/jsch/UserInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setX11Cookie(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object p0, Lcom/jcraft/jsch/ChannelX11;->y:Ljava/lang/String;

    .line 2
    .line 3
    sget-object p0, Lcom/jcraft/jsch/Util;->a:[B

    .line 4
    .line 5
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-static {p1, p0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sput-object p0, Lcom/jcraft/jsch/ChannelX11;->B:[B

    .line 12
    .line 13
    const/16 p0, 0x10

    .line 14
    .line 15
    new-array p1, p0, [B

    .line 16
    .line 17
    sput-object p1, Lcom/jcraft/jsch/ChannelX11;->A:[B

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    move v0, p1

    .line 21
    :goto_0
    if-ge v0, p0, :cond_4

    .line 22
    .line 23
    sget-object v1, Lcom/jcraft/jsch/ChannelX11;->A:[B

    .line 24
    .line 25
    sget-object v2, Lcom/jcraft/jsch/ChannelX11;->B:[B

    .line 26
    .line 27
    mul-int/lit8 v3, v0, 0x2

    .line 28
    .line 29
    aget-byte v2, v2, v3

    .line 30
    .line 31
    move v4, p1

    .line 32
    :goto_1
    sget-object v5, Lcom/jcraft/jsch/ChannelX11;->E:[B

    .line 33
    .line 34
    array-length v6, v5

    .line 35
    if-ge v4, v6, :cond_1

    .line 36
    .line 37
    aget-byte v5, v5, v4

    .line 38
    .line 39
    if-ne v5, v2, :cond_0

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v4, p1

    .line 46
    :goto_2
    shl-int/lit8 v2, v4, 0x4

    .line 47
    .line 48
    and-int/lit16 v2, v2, 0xf0

    .line 49
    .line 50
    sget-object v4, Lcom/jcraft/jsch/ChannelX11;->B:[B

    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    aget-byte v3, v4, v3

    .line 55
    .line 56
    move v4, p1

    .line 57
    :goto_3
    sget-object v5, Lcom/jcraft/jsch/ChannelX11;->E:[B

    .line 58
    .line 59
    array-length v6, v5

    .line 60
    if-ge v4, v6, :cond_3

    .line 61
    .line 62
    aget-byte v5, v5, v4

    .line 63
    .line 64
    if-ne v5, v3, :cond_2

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move v4, p1

    .line 71
    :goto_4
    and-int/lit8 v3, v4, 0xf

    .line 72
    .line 73
    or-int/2addr v2, v3

    .line 74
    int-to-byte v2, v2

    .line 75
    aput-byte v2, v1, v0

    .line 76
    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    return-void
.end method

.method public final setX11Host(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/jcraft/jsch/ChannelX11;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setX11Port(I)V
    .locals 0

    .line 1
    sput p1, Lcom/jcraft/jsch/ChannelX11;->z:I

    .line 2
    .line 3
    return-void
.end method

.method public final t()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Lj70;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-direct {v0, v1, v2}, Lj70;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, v1, Lcom/jcraft/jsch/Session;->x0:Lj70;

    .line 10
    .line 11
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    .line 12
    .line 13
    invoke-direct {v3}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/jcraft/jsch/Packet;

    .line 17
    .line 18
    invoke-direct {v4, v3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    new-array v6, v5, [I

    .line 23
    .line 24
    new-array v7, v5, [I

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v9, 0x0

    .line 28
    move-object v11, v8

    .line 29
    :goto_0
    move v10, v9

    .line 30
    :goto_1
    :try_start_0
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->z:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1b

    .line 33
    .line 34
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->x0:Lj70;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    if-eqz v0, :cond_1b

    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .line 40
    .line 41
    :try_start_2
    iget-object v0, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 42
    .line 43
    aget-byte v0, v0, v2

    .line 44
    .line 45
    and-int/lit16 v0, v0, 0xff

    .line 46
    .line 47
    if-eqz v11, :cond_1

    .line 48
    .line 49
    invoke-virtual {v11}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    if-ne v10, v0, :cond_1

    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v12

    .line 59
    iput-wide v12, v1, Lcom/jcraft/jsch/Session;->c0:J

    .line 60
    .line 61
    invoke-virtual {v11, v3}, Lcom/jcraft/jsch/KeyExchange;->next(Lcom/jcraft/jsch/Buffer;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    .line 69
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v4, "verify: "

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto/16 :goto_c

    .line 93
    .line 94
    :cond_1
    const/16 v10, 0x14

    .line 95
    .line 96
    if-eq v0, v10, :cond_17

    .line 97
    .line 98
    const/16 v10, 0x15

    .line 99
    .line 100
    if-eq v0, v10, :cond_16

    .line 101
    .line 102
    packed-switch v0, :pswitch_data_0

    .line 103
    .line 104
    .line 105
    const/16 v10, 0x5d

    .line 106
    .line 107
    packed-switch v0, :pswitch_data_1

    .line 108
    .line 109
    .line 110
    new-instance v2, Ljava/io/IOException;

    .line 111
    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v4, "Unknown SSH message type "

    .line 118
    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v2

    .line 133
    :pswitch_0
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->l(I)Lcom/jcraft/jsch/Channel;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-nez v0, :cond_2

    .line 148
    .line 149
    goto/16 :goto_9

    .line 150
    .line 151
    :cond_2
    iput v9, v0, Lcom/jcraft/jsch/Channel;->q:I

    .line 152
    .line 153
    goto/16 :goto_9

    .line 154
    .line 155
    :pswitch_1
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->l(I)Lcom/jcraft/jsch/Channel;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-nez v0, :cond_3

    .line 170
    .line 171
    goto/16 :goto_9

    .line 172
    .line 173
    :cond_3
    iput v5, v0, Lcom/jcraft/jsch/Channel;->q:I

    .line 174
    .line 175
    goto/16 :goto_9

    .line 176
    .line 177
    :pswitch_2
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    if-eqz v12, :cond_4

    .line 196
    .line 197
    move v12, v5

    .line 198
    goto :goto_2

    .line 199
    :cond_4
    move v12, v9

    .line 200
    :goto_2
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->l(I)Lcom/jcraft/jsch/Channel;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-eqz v0, :cond_18

    .line 205
    .line 206
    array-length v13, v10

    .line 207
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 208
    .line 209
    new-instance v15, Ljava/lang/String;

    .line 210
    .line 211
    invoke-direct {v15, v10, v9, v13, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 212
    .line 213
    .line 214
    const-string v10, "exit-status"

    .line 215
    .line 216
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-eqz v10, :cond_5

    .line 221
    .line 222
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    iput v10, v0, Lcom/jcraft/jsch/Channel;->p:I

    .line 227
    .line 228
    const/16 v10, 0x63

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_5
    const/16 v10, 0x64

    .line 232
    .line 233
    :goto_3
    if-eqz v12, :cond_18

    .line 234
    .line 235
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v10}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 239
    .line 240
    .line 241
    iget v0, v0, Lcom/jcraft/jsch/Channel;->b:I

    .line 242
    .line 243
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_9

    .line 250
    .line 251
    :pswitch_3
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->l(I)Lcom/jcraft/jsch/Channel;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    if-eqz v0, :cond_18

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_9

    .line 271
    .line 272
    :pswitch_4
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->l(I)Lcom/jcraft/jsch/Channel;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    if-eqz v0, :cond_18

    .line 287
    .line 288
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->d()V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_9

    .line 292
    .line 293
    :pswitch_5
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->l(I)Lcom/jcraft/jsch/Channel;

    .line 304
    .line 305
    .line 306
    move-result-object v12

    .line 307
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->getByte(I)I

    .line 315
    .line 316
    .line 317
    move-result v13

    .line 318
    aput v13, v6, v9

    .line 319
    .line 320
    aput v0, v7, v9

    .line 321
    .line 322
    iget-object v13, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 323
    .line 324
    if-nez v12, :cond_6

    .line 325
    .line 326
    goto/16 :goto_9

    .line 327
    .line 328
    :cond_6
    if-nez v0, :cond_7

    .line 329
    .line 330
    goto/16 :goto_9

    .line 331
    .line 332
    :cond_7
    aget v14, v6, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 333
    .line 334
    :try_start_3
    iget-object v15, v12, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 335
    .line 336
    iget-object v2, v15, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    .line 337
    .line 338
    invoke-virtual {v2, v13, v14, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 339
    .line 340
    .line 341
    iget-object v0, v15, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 344
    .line 345
    .line 346
    :catch_1
    :try_start_4
    aget v0, v7, v9

    .line 347
    .line 348
    iget v2, v12, Lcom/jcraft/jsch/Channel;->e:I

    .line 349
    .line 350
    sub-int/2addr v2, v0

    .line 351
    iput v2, v12, Lcom/jcraft/jsch/Channel;->e:I

    .line 352
    .line 353
    iget v0, v12, Lcom/jcraft/jsch/Channel;->e:I

    .line 354
    .line 355
    iget v2, v12, Lcom/jcraft/jsch/Channel;->d:I

    .line 356
    .line 357
    div-int/lit8 v2, v2, 0x2

    .line 358
    .line 359
    if-ge v0, v2, :cond_18

    .line 360
    .line 361
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3, v10}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 365
    .line 366
    .line 367
    iget v0, v12, Lcom/jcraft/jsch/Channel;->b:I

    .line 368
    .line 369
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 370
    .line 371
    .line 372
    iget v0, v12, Lcom/jcraft/jsch/Channel;->d:I

    .line 373
    .line 374
    iget v2, v12, Lcom/jcraft/jsch/Channel;->e:I

    .line 375
    .line 376
    sub-int/2addr v0, v2

    .line 377
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 378
    .line 379
    .line 380
    monitor-enter v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 381
    :try_start_5
    iget-boolean v0, v12, Lcom/jcraft/jsch/Channel;->m:Z

    .line 382
    .line 383
    if-nez v0, :cond_8

    .line 384
    .line 385
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 386
    .line 387
    .line 388
    goto :goto_4

    .line 389
    :catchall_0
    move-exception v0

    .line 390
    goto :goto_5

    .line 391
    :cond_8
    :goto_4
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 392
    :try_start_6
    iget v0, v12, Lcom/jcraft/jsch/Channel;->d:I

    .line 393
    .line 394
    iput v0, v12, Lcom/jcraft/jsch/Channel;->e:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 395
    .line 396
    goto/16 :goto_9

    .line 397
    .line 398
    :goto_5
    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 399
    :try_start_8
    throw v0

    .line 400
    :pswitch_6
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->l(I)Lcom/jcraft/jsch/Channel;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->getByte(I)I

    .line 422
    .line 423
    .line 424
    move-result v12

    .line 425
    aput v12, v6, v9

    .line 426
    .line 427
    aput v0, v7, v9

    .line 428
    .line 429
    iget-object v12, v3, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 430
    .line 431
    if-nez v2, :cond_9

    .line 432
    .line 433
    goto/16 :goto_9

    .line 434
    .line 435
    :cond_9
    if-nez v0, :cond_a

    .line 436
    .line 437
    goto/16 :goto_9

    .line 438
    .line 439
    :cond_a
    :try_start_9
    aget v13, v6, v9

    .line 440
    .line 441
    invoke-virtual {v2, v12, v13, v0}, Lcom/jcraft/jsch/Channel;->l([BII)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 442
    .line 443
    .line 444
    :try_start_a
    aget v0, v7, v9

    .line 445
    .line 446
    iget v12, v2, Lcom/jcraft/jsch/Channel;->e:I

    .line 447
    .line 448
    sub-int/2addr v12, v0

    .line 449
    iput v12, v2, Lcom/jcraft/jsch/Channel;->e:I

    .line 450
    .line 451
    iget v0, v2, Lcom/jcraft/jsch/Channel;->e:I

    .line 452
    .line 453
    iget v12, v2, Lcom/jcraft/jsch/Channel;->d:I

    .line 454
    .line 455
    div-int/lit8 v12, v12, 0x2

    .line 456
    .line 457
    if-ge v0, v12, :cond_18

    .line 458
    .line 459
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3, v10}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 463
    .line 464
    .line 465
    iget v0, v2, Lcom/jcraft/jsch/Channel;->b:I

    .line 466
    .line 467
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 468
    .line 469
    .line 470
    iget v0, v2, Lcom/jcraft/jsch/Channel;->d:I

    .line 471
    .line 472
    iget v10, v2, Lcom/jcraft/jsch/Channel;->e:I

    .line 473
    .line 474
    sub-int/2addr v0, v10

    .line 475
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 476
    .line 477
    .line 478
    monitor-enter v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 479
    :try_start_b
    iget-boolean v0, v2, Lcom/jcraft/jsch/Channel;->m:Z

    .line 480
    .line 481
    if-nez v0, :cond_b

    .line 482
    .line 483
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 484
    .line 485
    .line 486
    goto :goto_6

    .line 487
    :catchall_1
    move-exception v0

    .line 488
    goto :goto_7

    .line 489
    :cond_b
    :goto_6
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 490
    :try_start_c
    iget v0, v2, Lcom/jcraft/jsch/Channel;->d:I

    .line 491
    .line 492
    iput v0, v2, Lcom/jcraft/jsch/Channel;->e:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 493
    .line 494
    goto/16 :goto_9

    .line 495
    .line 496
    :goto_7
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 497
    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 498
    :catch_2
    :try_start_f
    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 499
    .line 500
    .line 501
    goto/16 :goto_9

    .line 502
    .line 503
    :pswitch_7
    :try_start_10
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 507
    .line 508
    .line 509
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->l(I)Lcom/jcraft/jsch/Channel;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    if-nez v0, :cond_c

    .line 518
    .line 519
    goto/16 :goto_9

    .line 520
    .line 521
    :cond_c
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    .line 522
    .line 523
    .line 524
    move-result-wide v12

    .line 525
    invoke-virtual {v0, v12, v13}, Lcom/jcraft/jsch/Channel;->a(J)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_9

    .line 529
    .line 530
    :pswitch_8
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 531
    .line 532
    .line 533
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 534
    .line 535
    .line 536
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->l(I)Lcom/jcraft/jsch/Channel;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    if-eqz v0, :cond_18

    .line 545
    .line 546
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    iput v2, v0, Lcom/jcraft/jsch/Channel;->p:I

    .line 551
    .line 552
    iput-boolean v5, v0, Lcom/jcraft/jsch/Channel;->m:Z

    .line 553
    .line 554
    iput-boolean v5, v0, Lcom/jcraft/jsch/Channel;->l:Z

    .line 555
    .line 556
    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Channel;->k(I)V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_9

    .line 560
    .line 561
    :pswitch_9
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 562
    .line 563
    .line 564
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 565
    .line 566
    .line 567
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->l(I)Lcom/jcraft/jsch/Channel;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    .line 580
    .line 581
    .line 582
    move-result-wide v12

    .line 583
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 584
    .line 585
    .line 586
    move-result v10

    .line 587
    if-eqz v2, :cond_18

    .line 588
    .line 589
    monitor-enter v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 590
    :try_start_11
    iput-wide v12, v2, Lcom/jcraft/jsch/Channel;->g:J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 591
    .line 592
    :try_start_12
    monitor-exit v2

    .line 593
    iput v10, v2, Lcom/jcraft/jsch/Channel;->h:I

    .line 594
    .line 595
    iput-boolean v5, v2, Lcom/jcraft/jsch/Channel;->o:Z

    .line 596
    .line 597
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Channel;->k(I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 598
    .line 599
    .line 600
    goto/16 :goto_9

    .line 601
    .line 602
    :catchall_2
    move-exception v0

    .line 603
    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 604
    :try_start_14
    throw v0

    .line 605
    :pswitch_a
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 606
    .line 607
    .line 608
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 609
    .line 610
    .line 611
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    array-length v2, v0

    .line 616
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 617
    .line 618
    new-instance v12, Ljava/lang/String;

    .line 619
    .line 620
    invoke-direct {v12, v0, v9, v2, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 621
    .line 622
    .line 623
    const-string v0, "forwarded-tcpip"

    .line 624
    .line 625
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    const/16 v2, 0x5c

    .line 630
    .line 631
    if-nez v0, :cond_10

    .line 632
    .line 633
    const-string v0, "x11"

    .line 634
    .line 635
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    if-eqz v0, :cond_d

    .line 640
    .line 641
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->K:Z

    .line 642
    .line 643
    if-nez v0, :cond_10

    .line 644
    .line 645
    :cond_d
    const-string v0, "auth-agent@openssh.com"

    .line 646
    .line 647
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    if-eqz v0, :cond_e

    .line 652
    .line 653
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->L:Z

    .line 654
    .line 655
    if-nez v0, :cond_10

    .line 656
    .line 657
    :cond_e
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-interface {v0, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    if-eqz v0, :cond_f

    .line 666
    .line 667
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    new-instance v10, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    const-string v13, "Failed to add channel of type "

    .line 677
    .line 678
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    const-string v12, " - type either unsupported or prohibited"

    .line 685
    .line 686
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v10

    .line 693
    invoke-interface {v0, v9, v10}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 694
    .line 695
    .line 696
    :cond_f
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 703
    .line 704
    .line 705
    move-result v0

    .line 706
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 710
    .line 711
    .line 712
    sget-object v0, Lcom/jcraft/jsch/Util;->c:[B

    .line 713
    .line 714
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 715
    .line 716
    .line 717
    array-length v2, v0

    .line 718
    invoke-virtual {v3, v0, v9, v2}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 722
    .line 723
    .line 724
    goto/16 :goto_9

    .line 725
    .line 726
    :cond_10
    invoke-virtual {v1, v12}, Lcom/jcraft/jsch/Session;->openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    if-eqz v0, :cond_12

    .line 731
    .line 732
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Channel;->f(Lcom/jcraft/jsch/Buffer;)V

    .line 733
    .line 734
    .line 735
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->m0:Ljava/util/concurrent/ThreadFactory;

    .line 736
    .line 737
    new-instance v10, Lis;

    .line 738
    .line 739
    const/16 v13, 0x9

    .line 740
    .line 741
    invoke-direct {v10, v0, v13}, Lis;-><init>(Ljava/lang/Object;I)V

    .line 742
    .line 743
    .line 744
    invoke-interface {v2, v10}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    .line 749
    .line 750
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    .line 752
    .line 753
    const-string v10, "Channel "

    .line 754
    .line 755
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    const-string v10, " "

    .line 762
    .line 763
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 767
    .line 768
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    iget-boolean v2, v1, Lcom/jcraft/jsch/Session;->b0:Z

    .line 779
    .line 780
    if-eqz v2, :cond_11

    .line 781
    .line 782
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 783
    .line 784
    .line 785
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 786
    .line 787
    .line 788
    goto/16 :goto_9

    .line 789
    .line 790
    :cond_12
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    invoke-interface {v0, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 795
    .line 796
    .line 797
    move-result v0

    .line 798
    if-eqz v0, :cond_13

    .line 799
    .line 800
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    new-instance v10, Ljava/lang/StringBuilder;

    .line 805
    .line 806
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    .line 808
    .line 809
    const-string v13, "Failed to add channel of type "

    .line 810
    .line 811
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    const-string v12, " - session may be disconnecting"

    .line 818
    .line 819
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v10

    .line 826
    invoke-interface {v0, v9, v10}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 827
    .line 828
    .line 829
    :cond_13
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 836
    .line 837
    .line 838
    move-result v0

    .line 839
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 840
    .line 841
    .line 842
    const/4 v0, 0x4

    .line 843
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 844
    .line 845
    .line 846
    sget-object v0, Lcom/jcraft/jsch/Util;->c:[B

    .line 847
    .line 848
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 849
    .line 850
    .line 851
    array-length v2, v0

    .line 852
    invoke-virtual {v3, v0, v9, v2}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 856
    .line 857
    .line 858
    goto :goto_9

    .line 859
    :pswitch_b
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->y0:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    .line 860
    .line 861
    iget-object v10, v2, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a:Ljava/lang/Thread;

    .line 862
    .line 863
    if-eqz v10, :cond_18

    .line 864
    .line 865
    const/16 v12, 0x51

    .line 866
    .line 867
    if-ne v0, v12, :cond_14

    .line 868
    .line 869
    move v13, v5

    .line 870
    goto :goto_8

    .line 871
    :cond_14
    move v13, v9

    .line 872
    :goto_8
    iput v13, v2, Lcom/jcraft/jsch/Session$GlobalRequestReply;->b:I

    .line 873
    .line 874
    if-ne v0, v12, :cond_15

    .line 875
    .line 876
    iget v0, v2, Lcom/jcraft/jsch/Session$GlobalRequestReply;->c:I

    .line 877
    .line 878
    if-nez v0, :cond_15

    .line 879
    .line 880
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 881
    .line 882
    .line 883
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 884
    .line 885
    .line 886
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->y0:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    .line 887
    .line 888
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    iput v2, v0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->c:I

    .line 893
    .line 894
    :cond_15
    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 895
    .line 896
    .line 897
    goto :goto_9

    .line 898
    :pswitch_c
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 899
    .line 900
    .line 901
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 902
    .line 903
    .line 904
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 905
    .line 906
    .line 907
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 908
    .line 909
    .line 910
    move-result v0

    .line 911
    if-eqz v0, :cond_18

    .line 912
    .line 913
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    .line 914
    .line 915
    .line 916
    const/16 v0, 0x52

    .line 917
    .line 918
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 922
    .line 923
    .line 924
    goto :goto_9

    .line 925
    :cond_16
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->w()V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v1, v11}, Lcom/jcraft/jsch/Session;->r(Lcom/jcraft/jsch/KeyExchange;)V

    .line 929
    .line 930
    .line 931
    move-object v11, v8

    .line 932
    goto :goto_9

    .line 933
    :cond_17
    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->q(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    move-object v11, v0

    .line 938
    :catch_3
    :cond_18
    :goto_9
    move v10, v9

    .line 939
    :goto_a
    const/4 v2, 0x5

    .line 940
    goto/16 :goto_1

    .line 941
    .line 942
    :catch_4
    move-exception v0

    .line 943
    iget-boolean v2, v1, Lcom/jcraft/jsch/Session;->q0:Z

    .line 944
    .line 945
    if-nez v2, :cond_19

    .line 946
    .line 947
    iget v2, v1, Lcom/jcraft/jsch/Session;->W:I

    .line 948
    .line 949
    if-ge v10, v2, :cond_19

    .line 950
    .line 951
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->sendKeepAliveMsg()V

    .line 952
    .line 953
    .line 954
    :goto_b
    add-int/lit8 v10, v10, 0x1

    .line 955
    .line 956
    goto :goto_a

    .line 957
    :cond_19
    iget-boolean v2, v1, Lcom/jcraft/jsch/Session;->q0:Z

    .line 958
    .line 959
    if-eqz v2, :cond_1a

    .line 960
    .line 961
    iget v2, v1, Lcom/jcraft/jsch/Session;->W:I

    .line 962
    .line 963
    if-ge v10, v2, :cond_1a

    .line 964
    .line 965
    goto :goto_b

    .line 966
    :cond_1a
    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    .line 967
    :goto_c
    iput-boolean v9, v1, Lcom/jcraft/jsch/Session;->q0:Z

    .line 968
    .line 969
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    invoke-interface {v2, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 974
    .line 975
    .line 976
    move-result v2

    .line 977
    if-eqz v2, :cond_1b

    .line 978
    .line 979
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 980
    .line 981
    .line 982
    move-result-object v2

    .line 983
    new-instance v3, Ljava/lang/StringBuilder;

    .line 984
    .line 985
    const-string v4, "Caught an exception, leaving main loop due to "

    .line 986
    .line 987
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 988
    .line 989
    .line 990
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v4

    .line 994
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v3

    .line 1001
    invoke-interface {v2, v5, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1002
    .line 1003
    .line 1004
    :cond_1b
    :try_start_15
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    .line 1005
    .line 1006
    .line 1007
    :catch_5
    iput-boolean v9, v1, Lcom/jcraft/jsch/Session;->z:Z

    .line 1008
    .line 1009
    return-void

    .line 1010
    nop

    .line 1011
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->P:Lcom/jcraft/jsch/Packet;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 7
    .line 8
    const/4 v2, 0x7

    .line 9
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 19
    .line 20
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    const-string v4, "ext-info-in-auth@openssh.com"

    .line 23
    .line 24
    invoke-static {v4, v3}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 32
    .line 33
    const-string v4, "0"

    .line 34
    .line 35
    invoke-static {v4, v3}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string v0, "SSH_MSG_EXT_INFO sent"

    .line 60
    .line 61
    invoke-interface {p0, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method public final v()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->q0:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_22

    .line 8
    .line 9
    :cond_0
    const-string v0, "cipher.c2s"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "cipher.s2c"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "CheckCiphers"

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v6, -0x1

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x1

    .line 30
    const/4 v9, 0x0

    .line 31
    if-eqz v3, :cond_6

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v4, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v5, "CheckCiphers: "

    .line 55
    .line 56
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {v4, v8, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    const-string v4, "cipher.c2s"

    .line 64
    .line 65
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string v5, "cipher.s2c"

    .line 70
    .line 71
    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    new-instance v10, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    move v11, v9

    .line 85
    :goto_0
    array-length v12, v3

    .line 86
    if-ge v11, v12, :cond_5

    .line 87
    .line 88
    aget-object v12, v3, v11

    .line 89
    .line 90
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    if-ne v13, v6, :cond_3

    .line 95
    .line 96
    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-ne v13, v6, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v1, v12}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v13

    .line 107
    invoke-static {v13}, Lcom/jcraft/jsch/Session;->c(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    if-nez v13, :cond_4

    .line 112
    .line 113
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-nez v3, :cond_7

    .line 124
    .line 125
    :cond_6
    :goto_2
    move-object v3, v7

    .line 126
    goto :goto_4

    .line 127
    :cond_7
    new-array v3, v9, [Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, [Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-interface {v4, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_8

    .line 144
    .line 145
    move v4, v9

    .line 146
    :goto_3
    array-length v5, v3

    .line 147
    if-ge v4, v5, :cond_8

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    new-instance v10, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    aget-object v11, v3, v4

    .line 159
    .line 160
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v11, " is not available."

    .line 164
    .line 165
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    invoke-interface {v5, v8, v10}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    add-int/lit8 v4, v4, 0x1

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_8
    :goto_4
    if-eqz v3, :cond_a

    .line 179
    .line 180
    array-length v4, v3

    .line 181
    if-lez v4, :cond_a

    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-interface {v4, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-eqz v4, :cond_9

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v10, "cipher.c2s proposal before removing unavailable algos is: "

    .line 200
    .line 201
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-interface {v4, v9, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v10, "cipher.s2c proposal before removing unavailable algos is: "

    .line 221
    .line 222
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-interface {v4, v9, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_9
    invoke-static {v0, v3}, Lcom/jcraft/jsch/Util;->h(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->h(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    if-eqz v0, :cond_b

    .line 244
    .line 245
    if-eqz v2, :cond_b

    .line 246
    .line 247
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-interface {v3, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v3, :cond_a

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    const-string v4, "cipher.c2s proposal after removing unavailable algos is: "

    .line 262
    .line 263
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-interface {v3, v9, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    const-string v4, "cipher.s2c proposal after removing unavailable algos is: "

    .line 275
    .line 276
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-interface {v3, v9, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :cond_a
    move-object v10, v0

    .line 284
    move-object v11, v2

    .line 285
    goto :goto_5

    .line 286
    :cond_b
    const-string v0, "There are not any available ciphers."

    .line 287
    .line 288
    invoke-static {v0}, Le6;->h(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :goto_5
    const-string v0, "mac.c2s"

    .line 293
    .line 294
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    const-string v2, "mac.s2c"

    .line 299
    .line 300
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    const-string v3, "CheckMacs"

    .line 305
    .line 306
    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    if-eqz v3, :cond_10

    .line 311
    .line 312
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    if-nez v4, :cond_c

    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_c
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-interface {v4, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-eqz v4, :cond_d

    .line 328
    .line 329
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    const-string v5, "CheckMacs: "

    .line 334
    .line 335
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    invoke-interface {v4, v8, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :cond_d
    const-string v4, "mac.c2s"

    .line 343
    .line 344
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    const-string v5, "mac.s2c"

    .line 349
    .line 350
    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    new-instance v12, Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    move v13, v9

    .line 364
    :goto_6
    array-length v14, v3

    .line 365
    if-ge v13, v14, :cond_f

    .line 366
    .line 367
    aget-object v14, v3, v13

    .line 368
    .line 369
    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    move-result v15

    .line 373
    if-ne v15, v6, :cond_e

    .line 374
    .line 375
    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    move-result v15

    .line 379
    if-ne v15, v6, :cond_e

    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_e
    invoke-virtual {v1, v14}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v15

    .line 386
    :try_start_0
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    move-result-object v15

    .line 390
    const-class v6, Lcom/jcraft/jsch/MAC;

    .line 391
    .line 392
    invoke-virtual {v15, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    check-cast v6, Lcom/jcraft/jsch/MAC;

    .line 405
    .line 406
    invoke-interface {v6}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 407
    .line 408
    .line 409
    move-result v15

    .line 410
    new-array v15, v15, [B

    .line 411
    .line 412
    invoke-interface {v6, v15}, Lcom/jcraft/jsch/MAC;->init([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .line 414
    .line 415
    goto :goto_7

    .line 416
    :catch_0
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    :goto_7
    add-int/lit8 v13, v13, 0x1

    .line 420
    .line 421
    const/4 v6, -0x1

    .line 422
    goto :goto_6

    .line 423
    :cond_f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-nez v3, :cond_11

    .line 428
    .line 429
    :cond_10
    :goto_8
    move-object v3, v7

    .line 430
    goto :goto_a

    .line 431
    :cond_11
    new-array v3, v9, [Ljava/lang/String;

    .line 432
    .line 433
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    check-cast v3, [Ljava/lang/String;

    .line 438
    .line 439
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    invoke-interface {v4, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    if-eqz v4, :cond_12

    .line 448
    .line 449
    move v4, v9

    .line 450
    :goto_9
    array-length v5, v3

    .line 451
    if-ge v4, v5, :cond_12

    .line 452
    .line 453
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    new-instance v6, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    aget-object v12, v3, v4

    .line 463
    .line 464
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string v12, " is not available."

    .line 468
    .line 469
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v6

    .line 476
    invoke-interface {v5, v8, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 477
    .line 478
    .line 479
    add-int/lit8 v4, v4, 0x1

    .line 480
    .line 481
    goto :goto_9

    .line 482
    :cond_12
    :goto_a
    if-eqz v3, :cond_15

    .line 483
    .line 484
    array-length v4, v3

    .line 485
    if-lez v4, :cond_15

    .line 486
    .line 487
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    invoke-interface {v4, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    if-eqz v4, :cond_13

    .line 496
    .line 497
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    new-instance v5, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    const-string v6, "mac.c2s proposal before removing unavailable algos is: "

    .line 504
    .line 505
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v5

    .line 515
    invoke-interface {v4, v9, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    new-instance v5, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string v6, "mac.s2c proposal before removing unavailable algos is: "

    .line 525
    .line 526
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v5

    .line 536
    invoke-interface {v4, v9, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 537
    .line 538
    .line 539
    :cond_13
    invoke-static {v0, v3}, Lcom/jcraft/jsch/Util;->h(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->h(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    if-eqz v0, :cond_14

    .line 548
    .line 549
    if-eqz v2, :cond_14

    .line 550
    .line 551
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    invoke-interface {v3, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    if-eqz v3, :cond_15

    .line 560
    .line 561
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    const-string v4, "mac.c2s proposal after removing unavailable algos is: "

    .line 566
    .line 567
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-interface {v3, v9, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    const-string v3, "mac.s2c proposal after removing unavailable algos is: "

    .line 579
    .line 580
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    invoke-interface {v0, v9, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 585
    .line 586
    .line 587
    goto :goto_b

    .line 588
    :cond_14
    const-string v0, "There are not any available macs."

    .line 589
    .line 590
    invoke-static {v0}, Le6;->h(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    return-void

    .line 594
    :cond_15
    :goto_b
    const-string v0, "kex"

    .line 595
    .line 596
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v6

    .line 600
    const-string v0, "CheckKexes"

    .line 601
    .line 602
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    if-eqz v0, :cond_16

    .line 607
    .line 608
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    if-nez v2, :cond_17

    .line 613
    .line 614
    :cond_16
    const/16 v16, -0x1

    .line 615
    .line 616
    goto/16 :goto_e

    .line 617
    .line 618
    :cond_17
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    invoke-interface {v2, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    if-eqz v2, :cond_18

    .line 627
    .line 628
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    const-string v3, "CheckKexes: "

    .line 633
    .line 634
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    invoke-interface {v2, v8, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 639
    .line 640
    .line 641
    :cond_18
    const-string v2, "kex"

    .line 642
    .line 643
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v12

    .line 647
    new-instance v13, Ljava/util/ArrayList;

    .line 648
    .line 649
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .line 651
    .line 652
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v14

    .line 656
    move v15, v9

    .line 657
    :goto_c
    array-length v0, v14

    .line 658
    if-ge v15, v0, :cond_1a

    .line 659
    .line 660
    aget-object v0, v14, v15

    .line 661
    .line 662
    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 663
    .line 664
    .line 665
    move-result v2

    .line 666
    const/4 v3, -0x1

    .line 667
    if-ne v2, v3, :cond_19

    .line 668
    .line 669
    move/from16 v16, v3

    .line 670
    .line 671
    goto :goto_d

    .line 672
    :cond_19
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    const-class v4, Lcom/jcraft/jsch/KeyExchange;

    .line 681
    .line 682
    invoke-virtual {v2, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    check-cast v2, Lcom/jcraft/jsch/KeyExchange;

    .line 695
    .line 696
    iput-object v1, v2, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1

    .line 697
    .line 698
    move-object v4, v0

    .line 699
    move-object v0, v2

    .line 700
    const/4 v2, 0x0

    .line 701
    move/from16 v16, v3

    .line 702
    .line 703
    const/4 v3, 0x0

    .line 704
    move-object v5, v4

    .line 705
    const/4 v4, 0x0

    .line 706
    move-object/from16 v17, v5

    .line 707
    .line 708
    const/4 v5, 0x0

    .line 709
    move-object/from16 v7, v17

    .line 710
    .line 711
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2

    .line 712
    .line 713
    .line 714
    goto :goto_d

    .line 715
    :catch_1
    move-object v7, v0

    .line 716
    move/from16 v16, v3

    .line 717
    .line 718
    :catch_2
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    :goto_d
    add-int/lit8 v15, v15, 0x1

    .line 722
    .line 723
    const/4 v7, 0x0

    .line 724
    goto :goto_c

    .line 725
    :cond_1a
    const/16 v16, -0x1

    .line 726
    .line 727
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    if-nez v0, :cond_1b

    .line 732
    .line 733
    :goto_e
    const/4 v0, 0x0

    .line 734
    goto :goto_10

    .line 735
    :cond_1b
    new-array v0, v9, [Ljava/lang/String;

    .line 736
    .line 737
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    check-cast v0, [Ljava/lang/String;

    .line 742
    .line 743
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    invoke-interface {v2, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 748
    .line 749
    .line 750
    move-result v2

    .line 751
    if-eqz v2, :cond_1c

    .line 752
    .line 753
    move v2, v9

    .line 754
    :goto_f
    array-length v3, v0

    .line 755
    if-ge v2, v3, :cond_1c

    .line 756
    .line 757
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 758
    .line 759
    .line 760
    move-result-object v3

    .line 761
    new-instance v4, Ljava/lang/StringBuilder;

    .line 762
    .line 763
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    .line 765
    .line 766
    aget-object v5, v0, v2

    .line 767
    .line 768
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    const-string v5, " is not available."

    .line 772
    .line 773
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v4

    .line 780
    invoke-interface {v3, v8, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 781
    .line 782
    .line 783
    add-int/lit8 v2, v2, 0x1

    .line 784
    .line 785
    goto :goto_f

    .line 786
    :cond_1c
    :goto_10
    if-eqz v0, :cond_1f

    .line 787
    .line 788
    array-length v2, v0

    .line 789
    if-lez v2, :cond_1f

    .line 790
    .line 791
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 796
    .line 797
    .line 798
    move-result v2

    .line 799
    if-eqz v2, :cond_1d

    .line 800
    .line 801
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    const-string v4, "kex proposal before removing unavailable algos is: "

    .line 808
    .line 809
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v3

    .line 819
    invoke-interface {v2, v9, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 820
    .line 821
    .line 822
    :cond_1d
    invoke-static {v6, v0}, Lcom/jcraft/jsch/Util;->h(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v6

    .line 826
    if-eqz v6, :cond_1e

    .line 827
    .line 828
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    invoke-interface {v0, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 833
    .line 834
    .line 835
    move-result v0

    .line 836
    if-eqz v0, :cond_1f

    .line 837
    .line 838
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    const-string v2, "kex proposal after removing unavailable algos is: "

    .line 843
    .line 844
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v2

    .line 848
    invoke-interface {v0, v9, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 849
    .line 850
    .line 851
    goto :goto_11

    .line 852
    :cond_1e
    const-string v0, "There are not any available kexes."

    .line 853
    .line 854
    invoke-static {v0}, Le6;->h(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    return-void

    .line 858
    :cond_1f
    :goto_11
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->B:Z

    .line 859
    .line 860
    if-eqz v0, :cond_20

    .line 861
    .line 862
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->H:Z

    .line 863
    .line 864
    if-nez v0, :cond_20

    .line 865
    .line 866
    const-string v0, ",ext-info-c"

    .line 867
    .line 868
    invoke-static {v6, v0}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v6

    .line 872
    :cond_20
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->F:Z

    .line 873
    .line 874
    if-nez v0, :cond_21

    .line 875
    .line 876
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->G:Z

    .line 877
    .line 878
    if-eqz v0, :cond_22

    .line 879
    .line 880
    :cond_21
    iget-boolean v0, v1, Lcom/jcraft/jsch/Session;->D:Z

    .line 881
    .line 882
    if-eqz v0, :cond_22

    .line 883
    .line 884
    const-string v0, ",kex-strict-c-v00@openssh.com"

    .line 885
    .line 886
    invoke-static {v6, v0}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v6

    .line 890
    :cond_22
    const-string v0, "server_host_key"

    .line 891
    .line 892
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    const-string v2, "CheckSignatures"

    .line 897
    .line 898
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v2

    .line 902
    if-eqz v2, :cond_26

    .line 903
    .line 904
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 905
    .line 906
    .line 907
    move-result v3

    .line 908
    if-nez v3, :cond_23

    .line 909
    .line 910
    goto :goto_14

    .line 911
    :cond_23
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 912
    .line 913
    .line 914
    move-result-object v3

    .line 915
    invoke-interface {v3, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 916
    .line 917
    .line 918
    move-result v3

    .line 919
    if-eqz v3, :cond_24

    .line 920
    .line 921
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 922
    .line 923
    .line 924
    move-result-object v3

    .line 925
    const-string v4, "CheckSignatures: "

    .line 926
    .line 927
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v4

    .line 931
    invoke-interface {v3, v8, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 932
    .line 933
    .line 934
    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    .line 935
    .line 936
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .line 938
    .line 939
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v2

    .line 943
    move v4, v9

    .line 944
    :goto_12
    array-length v5, v2

    .line 945
    if-ge v4, v5, :cond_25

    .line 946
    .line 947
    :try_start_3
    aget-object v5, v2, v4

    .line 948
    .line 949
    invoke-static {v5}, Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v5

    .line 953
    invoke-static {v5}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v5

    .line 957
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 958
    .line 959
    .line 960
    move-result-object v5

    .line 961
    const-class v7, Lcom/jcraft/jsch/Signature;

    .line 962
    .line 963
    invoke-virtual {v5, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 964
    .line 965
    .line 966
    move-result-object v5

    .line 967
    const/4 v7, 0x0

    .line 968
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 969
    .line 970
    .line 971
    move-result-object v5

    .line 972
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    move-result-object v5

    .line 976
    check-cast v5, Lcom/jcraft/jsch/Signature;

    .line 977
    .line 978
    invoke-interface {v5}, Lcom/jcraft/jsch/Signature;->init()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_3

    .line 979
    .line 980
    .line 981
    goto :goto_13

    .line 982
    :catch_3
    aget-object v5, v2, v4

    .line 983
    .line 984
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    .line 986
    .line 987
    :goto_13
    add-int/lit8 v4, v4, 0x1

    .line 988
    .line 989
    goto :goto_12

    .line 990
    :cond_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 991
    .line 992
    .line 993
    move-result v2

    .line 994
    if-nez v2, :cond_27

    .line 995
    .line 996
    :cond_26
    :goto_14
    const/4 v7, 0x0

    .line 997
    goto :goto_16

    .line 998
    :cond_27
    new-array v2, v9, [Ljava/lang/String;

    .line 999
    .line 1000
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v2

    .line 1004
    move-object v7, v2

    .line 1005
    check-cast v7, [Ljava/lang/String;

    .line 1006
    .line 1007
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v2

    .line 1011
    invoke-interface {v2, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1012
    .line 1013
    .line 1014
    move-result v2

    .line 1015
    if-eqz v2, :cond_28

    .line 1016
    .line 1017
    move v2, v9

    .line 1018
    :goto_15
    array-length v3, v7

    .line 1019
    if-ge v2, v3, :cond_28

    .line 1020
    .line 1021
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v3

    .line 1025
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1028
    .line 1029
    .line 1030
    aget-object v5, v7, v2

    .line 1031
    .line 1032
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    const-string v5, " is not available."

    .line 1036
    .line 1037
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v4

    .line 1044
    invoke-interface {v3, v8, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    add-int/lit8 v2, v2, 0x1

    .line 1048
    .line 1049
    goto :goto_15

    .line 1050
    :cond_28
    :goto_16
    iput-object v7, v1, Lcom/jcraft/jsch/Session;->s0:[Ljava/lang/String;

    .line 1051
    .line 1052
    if-eqz v7, :cond_3d

    .line 1053
    .line 1054
    array-length v2, v7

    .line 1055
    if-lez v2, :cond_3d

    .line 1056
    .line 1057
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v2

    .line 1061
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v2

    .line 1065
    if-eqz v2, :cond_29

    .line 1066
    .line 1067
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v2

    .line 1071
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    const-string v5, "server_host_key proposal before removing unavailable algos is: "

    .line 1074
    .line 1075
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v4

    .line 1085
    invoke-interface {v2, v9, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    :cond_29
    invoke-static {v0, v7}, Lcom/jcraft/jsch/Util;->h(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v0

    .line 1092
    if-eqz v0, :cond_3c

    .line 1093
    .line 1094
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v2

    .line 1098
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1099
    .line 1100
    .line 1101
    move-result v2

    .line 1102
    if-eqz v2, :cond_2a

    .line 1103
    .line 1104
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v2

    .line 1108
    const-string v4, "server_host_key proposal after removing unavailable algos is: "

    .line 1109
    .line 1110
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v4

    .line 1114
    invoke-interface {v2, v9, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    :cond_2a
    array-length v2, v7

    .line 1118
    if-nez v2, :cond_2b

    .line 1119
    .line 1120
    goto/16 :goto_1d

    .line 1121
    .line 1122
    :cond_2b
    sget-object v2, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 1123
    .line 1124
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1125
    .line 1126
    .line 1127
    move-result v2

    .line 1128
    if-eqz v2, :cond_2c

    .line 1129
    .line 1130
    sget-object v2, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 1131
    .line 1132
    const-string v4, "server_host_key proposal before removing unavailable cert types is: "

    .line 1133
    .line 1134
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v4

    .line 1138
    invoke-interface {v2, v9, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    :cond_2c
    new-instance v2, Ljava/util/ArrayList;

    .line 1142
    .line 1143
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .line 1145
    .line 1146
    array-length v4, v7

    .line 1147
    move v5, v9

    .line 1148
    :goto_17
    if-ge v5, v4, :cond_38

    .line 1149
    .line 1150
    aget-object v12, v7, v5

    .line 1151
    .line 1152
    if-nez v12, :cond_2d

    .line 1153
    .line 1154
    :goto_18
    const/4 v12, 0x0

    .line 1155
    goto/16 :goto_1b

    .line 1156
    .line 1157
    :cond_2d
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 1158
    .line 1159
    .line 1160
    move-result v13

    .line 1161
    sparse-switch v13, :sswitch_data_0

    .line 1162
    .line 1163
    .line 1164
    :goto_19
    move/from16 v12, v16

    .line 1165
    .line 1166
    goto/16 :goto_1a

    .line 1167
    .line 1168
    :sswitch_0
    const-string v13, "ecdsa-sha2-nistp521"

    .line 1169
    .line 1170
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1171
    .line 1172
    .line 1173
    move-result v12

    .line 1174
    if-nez v12, :cond_2e

    .line 1175
    .line 1176
    goto :goto_19

    .line 1177
    :cond_2e
    const/16 v12, 0x8

    .line 1178
    .line 1179
    goto/16 :goto_1a

    .line 1180
    .line 1181
    :sswitch_1
    const-string v13, "ecdsa-sha2-nistp384"

    .line 1182
    .line 1183
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v12

    .line 1187
    if-nez v12, :cond_2f

    .line 1188
    .line 1189
    goto :goto_19

    .line 1190
    :cond_2f
    const/4 v12, 0x7

    .line 1191
    goto :goto_1a

    .line 1192
    :sswitch_2
    const-string v13, "ecdsa-sha2-nistp256"

    .line 1193
    .line 1194
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v12

    .line 1198
    if-nez v12, :cond_30

    .line 1199
    .line 1200
    goto :goto_19

    .line 1201
    :cond_30
    const/4 v12, 0x6

    .line 1202
    goto :goto_1a

    .line 1203
    :sswitch_3
    const-string v13, "ssh-ed448"

    .line 1204
    .line 1205
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v12

    .line 1209
    if-nez v12, :cond_31

    .line 1210
    .line 1211
    goto :goto_19

    .line 1212
    :cond_31
    const/4 v12, 0x5

    .line 1213
    goto :goto_1a

    .line 1214
    :sswitch_4
    const-string v13, "rsa-sha2-512"

    .line 1215
    .line 1216
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1217
    .line 1218
    .line 1219
    move-result v12

    .line 1220
    if-nez v12, :cond_32

    .line 1221
    .line 1222
    goto :goto_19

    .line 1223
    :cond_32
    const/4 v12, 0x4

    .line 1224
    goto :goto_1a

    .line 1225
    :sswitch_5
    const-string v13, "rsa-sha2-256"

    .line 1226
    .line 1227
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v12

    .line 1231
    if-nez v12, :cond_33

    .line 1232
    .line 1233
    goto :goto_19

    .line 1234
    :cond_33
    const/4 v12, 0x3

    .line 1235
    goto :goto_1a

    .line 1236
    :sswitch_6
    const-string v13, "ssh-ed25519"

    .line 1237
    .line 1238
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1239
    .line 1240
    .line 1241
    move-result v12

    .line 1242
    if-nez v12, :cond_34

    .line 1243
    .line 1244
    goto :goto_19

    .line 1245
    :cond_34
    const/4 v12, 0x2

    .line 1246
    goto :goto_1a

    .line 1247
    :sswitch_7
    const-string v13, "ssh-rsa"

    .line 1248
    .line 1249
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1250
    .line 1251
    .line 1252
    move-result v12

    .line 1253
    if-nez v12, :cond_35

    .line 1254
    .line 1255
    goto :goto_19

    .line 1256
    :cond_35
    move v12, v8

    .line 1257
    goto :goto_1a

    .line 1258
    :sswitch_8
    const-string v13, "ssh-dss"

    .line 1259
    .line 1260
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1261
    .line 1262
    .line 1263
    move-result v12

    .line 1264
    if-nez v12, :cond_36

    .line 1265
    .line 1266
    goto :goto_19

    .line 1267
    :cond_36
    move v12, v9

    .line 1268
    :goto_1a
    packed-switch v12, :pswitch_data_0

    .line 1269
    .line 1270
    .line 1271
    goto :goto_18

    .line 1272
    :pswitch_0
    const-string v12, "ecdsa-sha2-nistp521-cert-v01@openssh.com"

    .line 1273
    .line 1274
    goto :goto_1b

    .line 1275
    :pswitch_1
    const-string v12, "ecdsa-sha2-nistp384-cert-v01@openssh.com"

    .line 1276
    .line 1277
    goto :goto_1b

    .line 1278
    :pswitch_2
    const-string v12, "ecdsa-sha2-nistp256-cert-v01@openssh.com"

    .line 1279
    .line 1280
    goto :goto_1b

    .line 1281
    :pswitch_3
    const-string v12, "ssh-ed448-cert-v01@openssh.com"

    .line 1282
    .line 1283
    goto :goto_1b

    .line 1284
    :pswitch_4
    const-string v12, "rsa-sha2-512-cert-v01@openssh.com"

    .line 1285
    .line 1286
    goto :goto_1b

    .line 1287
    :pswitch_5
    const-string v12, "rsa-sha2-256-cert-v01@openssh.com"

    .line 1288
    .line 1289
    goto :goto_1b

    .line 1290
    :pswitch_6
    const-string v12, "ssh-ed25519-cert-v01@openssh.com"

    .line 1291
    .line 1292
    goto :goto_1b

    .line 1293
    :pswitch_7
    const-string v12, "ssh-rsa-cert-v01@openssh.com"

    .line 1294
    .line 1295
    goto :goto_1b

    .line 1296
    :pswitch_8
    const-string v12, "ssh-dss-cert-v01@openssh.com"

    .line 1297
    .line 1298
    :goto_1b
    if-eqz v12, :cond_37

    .line 1299
    .line 1300
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    .line 1302
    .line 1303
    :cond_37
    add-int/lit8 v5, v5, 0x1

    .line 1304
    .line 1305
    goto/16 :goto_17

    .line 1306
    .line 1307
    :cond_38
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1308
    .line 1309
    .line 1310
    move-result v4

    .line 1311
    if-nez v4, :cond_3a

    .line 1312
    .line 1313
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1314
    .line 1315
    .line 1316
    move-result v4

    .line 1317
    new-array v5, v4, [Ljava/lang/String;

    .line 1318
    .line 1319
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1320
    .line 1321
    .line 1322
    invoke-static {v0, v5}, Lcom/jcraft/jsch/Util;->h(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v0

    .line 1326
    sget-object v2, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 1327
    .line 1328
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1329
    .line 1330
    .line 1331
    move-result v2

    .line 1332
    if-eqz v2, :cond_3a

    .line 1333
    .line 1334
    move v2, v9

    .line 1335
    :goto_1c
    if-ge v2, v4, :cond_39

    .line 1336
    .line 1337
    aget-object v7, v5, v2

    .line 1338
    .line 1339
    sget-object v12, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 1340
    .line 1341
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    const-string v14, "Removing "

    .line 1344
    .line 1345
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    .line 1351
    const-string v7, " (base algorithm unavailable)"

    .line 1352
    .line 1353
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v7

    .line 1360
    invoke-interface {v12, v9, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1361
    .line 1362
    .line 1363
    add-int/lit8 v2, v2, 0x1

    .line 1364
    .line 1365
    goto :goto_1c

    .line 1366
    :cond_39
    sget-object v2, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 1367
    .line 1368
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1369
    .line 1370
    const-string v5, "server_host_key proposal after removing unavailable cert types is: "

    .line 1371
    .line 1372
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v4

    .line 1382
    invoke-interface {v2, v9, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1383
    .line 1384
    .line 1385
    :cond_3a
    :goto_1d
    if-eqz v0, :cond_3b

    .line 1386
    .line 1387
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v2

    .line 1391
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1392
    .line 1393
    .line 1394
    move-result v2

    .line 1395
    if-eqz v2, :cond_3d

    .line 1396
    .line 1397
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v2

    .line 1401
    const-string v4, "server_host_key proposal after removing unavailable cert algos is: "

    .line 1402
    .line 1403
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v4

    .line 1407
    invoke-interface {v2, v9, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1408
    .line 1409
    .line 1410
    goto :goto_1e

    .line 1411
    :cond_3b
    const-string v0, "There are not any available signature algorithms."

    .line 1412
    .line 1413
    invoke-static {v0}, Le6;->h(Ljava/lang/String;)V

    .line 1414
    .line 1415
    .line 1416
    return-void

    .line 1417
    :cond_3c
    const-string v0, "There are not any available sig algorithm."

    .line 1418
    .line 1419
    invoke-static {v0}, Le6;->h(Ljava/lang/String;)V

    .line 1420
    .line 1421
    .line 1422
    return-void

    .line 1423
    :cond_3d
    :goto_1e
    const-string v2, "prefer_known_host_key_types"

    .line 1424
    .line 1425
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v2

    .line 1429
    const-string v4, "yes"

    .line 1430
    .line 1431
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1432
    .line 1433
    .line 1434
    move-result v2

    .line 1435
    if-eqz v2, :cond_48

    .line 1436
    .line 1437
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v2

    .line 1441
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1442
    .line 1443
    .line 1444
    move-result v2

    .line 1445
    if-eqz v2, :cond_3e

    .line 1446
    .line 1447
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v2

    .line 1451
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1452
    .line 1453
    const-string v5, "server_host_key proposal before known_host reordering is: "

    .line 1454
    .line 1455
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    .line 1460
    .line 1461
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v4

    .line 1465
    invoke-interface {v2, v9, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1466
    .line 1467
    .line 1468
    :cond_3e
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v2

    .line 1472
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 1473
    .line 1474
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->U:Ljava/lang/String;

    .line 1475
    .line 1476
    if-eqz v5, :cond_3f

    .line 1477
    .line 1478
    move-object v4, v5

    .line 1479
    :cond_3f
    if-nez v5, :cond_40

    .line 1480
    .line 1481
    iget v5, v1, Lcom/jcraft/jsch/Session;->h0:I

    .line 1482
    .line 1483
    const/16 v7, 0x16

    .line 1484
    .line 1485
    if-eq v5, v7, :cond_40

    .line 1486
    .line 1487
    const-string v5, "["

    .line 1488
    .line 1489
    const-string v7, "]:"

    .line 1490
    .line 1491
    invoke-static {v5, v4, v7}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v4

    .line 1495
    iget v5, v1, Lcom/jcraft/jsch/Session;->h0:I

    .line 1496
    .line 1497
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v4

    .line 1504
    :cond_40
    const/4 v7, 0x0

    .line 1505
    invoke-interface {v2, v4, v7}, Lcom/jcraft/jsch/HostKeyRepository;->getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v2

    .line 1509
    array-length v4, v2

    .line 1510
    if-lez v4, :cond_47

    .line 1511
    .line 1512
    new-instance v4, Ljava/util/ArrayList;

    .line 1513
    .line 1514
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1515
    .line 1516
    .line 1517
    new-instance v5, Ljava/util/ArrayList;

    .line 1518
    .line 1519
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v7

    .line 1523
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v7

    .line 1527
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v7

    .line 1534
    :cond_41
    :goto_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1535
    .line 1536
    .line 1537
    move-result v12

    .line 1538
    if-eqz v12, :cond_46

    .line 1539
    .line 1540
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v12

    .line 1544
    check-cast v12, Ljava/lang/String;

    .line 1545
    .line 1546
    invoke-static {v12}, Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v13

    .line 1550
    if-eqz v13, :cond_42

    .line 1551
    .line 1552
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1553
    .line 1554
    .line 1555
    move-result v14

    .line 1556
    if-nez v14, :cond_42

    .line 1557
    .line 1558
    goto :goto_20

    .line 1559
    :cond_42
    move-object v13, v12

    .line 1560
    :goto_20
    const-string v14, "rsa-sha2-256"

    .line 1561
    .line 1562
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1563
    .line 1564
    .line 1565
    move-result v14

    .line 1566
    if-nez v14, :cond_43

    .line 1567
    .line 1568
    const-string v14, "rsa-sha2-512"

    .line 1569
    .line 1570
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1571
    .line 1572
    .line 1573
    move-result v14

    .line 1574
    if-nez v14, :cond_43

    .line 1575
    .line 1576
    const-string v14, "ssh-rsa-sha224@ssh.com"

    .line 1577
    .line 1578
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1579
    .line 1580
    .line 1581
    move-result v14

    .line 1582
    if-nez v14, :cond_43

    .line 1583
    .line 1584
    const-string v14, "ssh-rsa-sha256@ssh.com"

    .line 1585
    .line 1586
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1587
    .line 1588
    .line 1589
    move-result v14

    .line 1590
    if-nez v14, :cond_43

    .line 1591
    .line 1592
    const-string v14, "ssh-rsa-sha384@ssh.com"

    .line 1593
    .line 1594
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1595
    .line 1596
    .line 1597
    move-result v14

    .line 1598
    if-nez v14, :cond_43

    .line 1599
    .line 1600
    const-string v14, "ssh-rsa-sha512@ssh.com"

    .line 1601
    .line 1602
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1603
    .line 1604
    .line 1605
    move-result v14

    .line 1606
    if-eqz v14, :cond_44

    .line 1607
    .line 1608
    :cond_43
    const-string v13, "ssh-rsa"

    .line 1609
    .line 1610
    :cond_44
    array-length v14, v2

    .line 1611
    move v15, v9

    .line 1612
    :goto_21
    if-ge v15, v14, :cond_41

    .line 1613
    .line 1614
    aget-object v16, v2, v15

    .line 1615
    .line 1616
    invoke-virtual/range {v16 .. v16}, Lcom/jcraft/jsch/HostKey;->getType()Ljava/lang/String;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v3

    .line 1620
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1621
    .line 1622
    .line 1623
    move-result v3

    .line 1624
    if-eqz v3, :cond_45

    .line 1625
    .line 1626
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    .line 1628
    .line 1629
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 1630
    .line 1631
    .line 1632
    goto :goto_1f

    .line 1633
    :cond_45
    add-int/lit8 v15, v15, 0x1

    .line 1634
    .line 1635
    goto :goto_21

    .line 1636
    :cond_46
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1637
    .line 1638
    .line 1639
    move-result v2

    .line 1640
    if-lez v2, :cond_47

    .line 1641
    .line 1642
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1643
    .line 1644
    .line 1645
    const-string v0, ","

    .line 1646
    .line 1647
    invoke-static {v0, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v0

    .line 1651
    :cond_47
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v2

    .line 1655
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1656
    .line 1657
    .line 1658
    move-result v2

    .line 1659
    if-eqz v2, :cond_48

    .line 1660
    .line 1661
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v2

    .line 1665
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1666
    .line 1667
    const-string v4, "server_host_key proposal after known_host reordering is: "

    .line 1668
    .line 1669
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1670
    .line 1671
    .line 1672
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    .line 1674
    .line 1675
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v3

    .line 1679
    invoke-interface {v2, v9, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1680
    .line 1681
    .line 1682
    :cond_48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1683
    .line 1684
    .line 1685
    move-result-wide v2

    .line 1686
    iput-wide v2, v1, Lcom/jcraft/jsch/Session;->c0:J

    .line 1687
    .line 1688
    iput-boolean v8, v1, Lcom/jcraft/jsch/Session;->q0:Z

    .line 1689
    .line 1690
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    .line 1691
    .line 1692
    invoke-direct {v2}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 1693
    .line 1694
    .line 1695
    new-instance v3, Lcom/jcraft/jsch/Packet;

    .line 1696
    .line 1697
    invoke-direct {v3, v2}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->a()V

    .line 1701
    .line 1702
    .line 1703
    const/16 v4, 0x14

    .line 1704
    .line 1705
    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 1706
    .line 1707
    .line 1708
    sget-object v4, Lcom/jcraft/jsch/Session;->A0:Lcom/jcraft/jsch/Random;

    .line 1709
    .line 1710
    monitor-enter v4

    .line 1711
    :try_start_4
    sget-object v5, Lcom/jcraft/jsch/Session;->A0:Lcom/jcraft/jsch/Random;

    .line 1712
    .line 1713
    iget-object v7, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 1714
    .line 1715
    iget v12, v2, Lcom/jcraft/jsch/Buffer;->c:I

    .line 1716
    .line 1717
    const/16 v13, 0x10

    .line 1718
    .line 1719
    invoke-interface {v5, v7, v12, v13}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 1720
    .line 1721
    .line 1722
    invoke-virtual {v2, v13}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 1723
    .line 1724
    .line 1725
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1726
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1727
    .line 1728
    invoke-static {v6, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 1729
    .line 1730
    .line 1731
    move-result-object v5

    .line 1732
    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 1733
    .line 1734
    .line 1735
    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 1736
    .line 1737
    .line 1738
    move-result-object v0

    .line 1739
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 1740
    .line 1741
    .line 1742
    invoke-static {v10, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 1743
    .line 1744
    .line 1745
    move-result-object v0

    .line 1746
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 1747
    .line 1748
    .line 1749
    invoke-static {v11, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 1750
    .line 1751
    .line 1752
    move-result-object v0

    .line 1753
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 1754
    .line 1755
    .line 1756
    const-string v0, "mac.c2s"

    .line 1757
    .line 1758
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v0

    .line 1762
    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 1763
    .line 1764
    .line 1765
    move-result-object v0

    .line 1766
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 1767
    .line 1768
    .line 1769
    const-string v0, "mac.s2c"

    .line 1770
    .line 1771
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v0

    .line 1775
    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 1776
    .line 1777
    .line 1778
    move-result-object v0

    .line 1779
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 1780
    .line 1781
    .line 1782
    const-string v0, "compression.c2s"

    .line 1783
    .line 1784
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v0

    .line 1788
    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 1789
    .line 1790
    .line 1791
    move-result-object v0

    .line 1792
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 1793
    .line 1794
    .line 1795
    const-string v0, "compression.s2c"

    .line 1796
    .line 1797
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v0

    .line 1801
    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 1802
    .line 1803
    .line 1804
    move-result-object v0

    .line 1805
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 1806
    .line 1807
    .line 1808
    const-string v0, "lang.c2s"

    .line 1809
    .line 1810
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v0

    .line 1814
    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 1815
    .line 1816
    .line 1817
    move-result-object v0

    .line 1818
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 1819
    .line 1820
    .line 1821
    const-string v0, "lang.s2c"

    .line 1822
    .line 1823
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v0

    .line 1827
    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 1828
    .line 1829
    .line 1830
    move-result-object v0

    .line 1831
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 1832
    .line 1833
    .line 1834
    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 1835
    .line 1836
    .line 1837
    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 1838
    .line 1839
    .line 1840
    const/4 v0, 0x5

    .line 1841
    iput v0, v2, Lcom/jcraft/jsch/Buffer;->d:I

    .line 1842
    .line 1843
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 1844
    .line 1845
    .line 1846
    move-result v0

    .line 1847
    new-array v4, v0, [B

    .line 1848
    .line 1849
    iput-object v4, v1, Lcom/jcraft/jsch/Session;->c:[B

    .line 1850
    .line 1851
    invoke-virtual {v2, v4, v9, v0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 1852
    .line 1853
    .line 1854
    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 1855
    .line 1856
    .line 1857
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v0

    .line 1861
    invoke-interface {v0, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 1862
    .line 1863
    .line 1864
    move-result v0

    .line 1865
    if-eqz v0, :cond_49

    .line 1866
    .line 1867
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v0

    .line 1871
    const-string v1, "SSH_MSG_KEXINIT sent"

    .line 1872
    .line 1873
    invoke-interface {v0, v8, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1874
    .line 1875
    .line 1876
    :cond_49
    :goto_22
    return-void

    .line 1877
    :catchall_0
    move-exception v0

    .line 1878
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1879
    throw v0

    .line 1880
    nop

    .line 1881
    :sswitch_data_0
    .sparse-switch
        -0x72868b81 -> :sswitch_8
        -0x72865705 -> :sswitch_7
        -0x55906c0a -> :sswitch_6
        -0x40419207 -> :sswitch_5
        -0x40418744 -> :sswitch_4
        0x14f4b0b4 -> :sswitch_3
        0x55b5c26d -> :sswitch_2
        0x55b5c689 -> :sswitch_1
        0x55b5cd4e -> :sswitch_0
    .end sparse-switch

    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->P:Lcom/jcraft/jsch/Packet;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 7
    .line 8
    const/16 v2, 0x15

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "SSH_MSG_NEWKEYS sent"

    .line 32
    .line 33
    invoke-interface {p0, v1, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final x(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lcom/jcraft/jsch/Cipher;->isCBC()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const-string v0, "Packet corrupt"

    .line 6
    .line 7
    if-eqz p2, :cond_8

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    invoke-interface {p3}, Lcom/jcraft/jsch/MAC;->isEtM()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_8

    .line 16
    .line 17
    :cond_0
    const/4 p2, 0x0

    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    iget v1, p0, Lcom/jcraft/jsch/Session;->l:I

    .line 21
    .line 22
    invoke-interface {p3, v1}, Lcom/jcraft/jsch/MAC;->update(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 26
    .line 27
    invoke-interface {p3, v1, p2, p4}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    if-lez p5, :cond_4

    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 33
    .line 34
    .line 35
    iget-object p4, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 36
    .line 37
    array-length v1, p4

    .line 38
    if-le p5, v1, :cond_2

    .line 39
    .line 40
    array-length v1, p4

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p4

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v1, p5

    .line 45
    :goto_1
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->w:Lcom/jcraft/jsch/IO;

    .line 46
    .line 47
    invoke-virtual {v2, p4, p2, v1}, Lcom/jcraft/jsch/IO;->c([BII)V

    .line 48
    .line 49
    .line 50
    if-eqz p3, :cond_3

    .line 51
    .line 52
    iget-object p4, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 53
    .line 54
    invoke-interface {p3, p4, p2, v1}, Lcom/jcraft/jsch/MAC;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    :cond_3
    sub-int/2addr p5, v1

    .line 58
    goto :goto_0

    .line 59
    :goto_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 60
    .line 61
    .line 62
    move-result-object p5

    .line 63
    const/4 v1, 0x3

    .line 64
    invoke-interface {p5, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 65
    .line 66
    .line 67
    move-result p5

    .line 68
    if-eqz p5, :cond_5

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-instance p5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v2, "start_discard finished early due to "

    .line 77
    .line 78
    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p5

    .line 92
    invoke-interface {p0, v1, p5, p4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    const/4 p4, 0x0

    .line 97
    :cond_5
    :goto_3
    if-eqz p3, :cond_6

    .line 98
    .line 99
    iget-object p0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 100
    .line 101
    invoke-interface {p3, p0, p2}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 102
    .line 103
    .line 104
    :cond_6
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 105
    .line 106
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    if-eqz p4, :cond_7

    .line 110
    .line 111
    invoke-virtual {p0, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :cond_7
    throw p0

    .line 115
    :cond_8
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 116
    .line 117
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0
.end method

.method public final y(Lcom/jcraft/jsch/KeyExchange;)V
    .locals 10

    .line 1
    const-class v0, Lcom/jcraft/jsch/Cipher;

    .line 2
    .line 3
    iget-object v2, p1, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 4
    .line 5
    iget-object v3, p1, Lcom/jcraft/jsch/KeyExchange;->d:[B

    .line 6
    .line 7
    iget-object v5, p1, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->e:[B

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    array-length p1, v3

    .line 15
    new-array p1, p1, [B

    .line 16
    .line 17
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->e:[B

    .line 18
    .line 19
    array-length v1, v3

    .line 20
    invoke-static {v3, v7, p1, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 34
    .line 35
    invoke-virtual {p1, v3}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 39
    .line 40
    const/16 v1, 0x41

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->e:[B

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 53
    .line 54
    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 55
    .line 56
    iget p1, p1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 57
    .line 58
    invoke-interface {v5, v1, v7, p1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->f:[B

    .line 66
    .line 67
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 68
    .line 69
    iget v1, p1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 70
    .line 71
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->e:[B

    .line 72
    .line 73
    array-length v4, v4

    .line 74
    sub-int v4, v1, v4

    .line 75
    .line 76
    const/4 v6, 0x1

    .line 77
    sub-int/2addr v4, v6

    .line 78
    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 79
    .line 80
    aget-byte v8, p1, v4

    .line 81
    .line 82
    add-int/2addr v8, v6

    .line 83
    int-to-byte v8, v8

    .line 84
    aput-byte v8, p1, v4

    .line 85
    .line 86
    invoke-interface {v5, p1, v7, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->g:[B

    .line 94
    .line 95
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 96
    .line 97
    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 98
    .line 99
    aget-byte v8, v1, v4

    .line 100
    .line 101
    add-int/2addr v8, v6

    .line 102
    int-to-byte v8, v8

    .line 103
    aput-byte v8, v1, v4

    .line 104
    .line 105
    iget p1, p1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 106
    .line 107
    invoke-interface {v5, v1, v7, p1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->h:[B

    .line 115
    .line 116
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 117
    .line 118
    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 119
    .line 120
    aget-byte v8, v1, v4

    .line 121
    .line 122
    add-int/2addr v8, v6

    .line 123
    int-to-byte v8, v8

    .line 124
    aput-byte v8, v1, v4

    .line 125
    .line 126
    iget p1, p1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 127
    .line 128
    invoke-interface {v5, v1, v7, p1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->i:[B

    .line 136
    .line 137
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 138
    .line 139
    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 140
    .line 141
    aget-byte v8, v1, v4

    .line 142
    .line 143
    add-int/2addr v8, v6

    .line 144
    int-to-byte v8, v8

    .line 145
    aput-byte v8, v1, v4

    .line 146
    .line 147
    iget p1, p1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 148
    .line 149
    invoke-interface {v5, v1, v7, p1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->j:[B

    .line 157
    .line 158
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 159
    .line 160
    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 161
    .line 162
    aget-byte v8, v1, v4

    .line 163
    .line 164
    add-int/2addr v8, v6

    .line 165
    int-to-byte v8, v8

    .line 166
    aput-byte v8, v1, v4

    .line 167
    .line 168
    iget p1, p1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 169
    .line 170
    invoke-interface {v5, v1, v7, p1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->k:[B

    .line 178
    .line 179
    :try_start_0
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 180
    .line 181
    const/4 v1, 0x3

    .line 182
    aget-object p1, p1, v1

    .line 183
    .line 184
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    const/4 v8, 0x0

    .line 197
    invoke-virtual {p1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Lcom/jcraft/jsch/Cipher;

    .line 206
    .line 207
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 208
    .line 209
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 210
    .line 211
    invoke-interface {p1}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->i:[B

    .line 216
    .line 217
    array-length v4, v1

    .line 218
    if-le p1, v4, :cond_1

    .line 219
    .line 220
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    .line 227
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    array-length v1, v2

    .line 231
    invoke-virtual {p1, v2, v7, v1}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    .line 233
    .line 234
    :try_start_2
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_1

    .line 235
    .line 236
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    array-length v1, v3

    .line 240
    invoke-virtual {p1, v3, v7, v1}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_0

    .line 241
    .line 242
    .line 243
    :try_start_4
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 244
    .line 245
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->i:[B

    .line 246
    .line 247
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 251
    .line 252
    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 253
    .line 254
    iget p1, p1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 255
    .line 256
    invoke-interface {v5, v1, v7, p1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->i:[B

    .line 264
    .line 265
    array-length v4, v1

    .line 266
    array-length v9, p1

    .line 267
    add-int/2addr v4, v9

    .line 268
    new-array v4, v4, [B

    .line 269
    .line 270
    array-length v9, v1

    .line 271
    invoke-static {v1, v7, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    .line 273
    .line 274
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->i:[B

    .line 275
    .line 276
    array-length v1, v1

    .line 277
    array-length v9, p1

    .line 278
    invoke-static {p1, v7, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    .line 280
    .line 281
    iput-object v4, p0, Lcom/jcraft/jsch/Session;->i:[B

    .line 282
    .line 283
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    goto/16 :goto_2

    .line 286
    .line 287
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 288
    .line 289
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:[B

    .line 290
    .line 291
    invoke-interface {p1, v6, v1, v4}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    .line 292
    .line 293
    .line 294
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 295
    .line 296
    invoke-interface {p1}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    iput p1, p0, Lcom/jcraft/jsch/Session;->v0:I

    .line 301
    .line 302
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/Cipher;

    .line 303
    .line 304
    invoke-interface {p1}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    .line 305
    .line 306
    .line 307
    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_1

    .line 308
    const-class v9, Lcom/jcraft/jsch/MAC;

    .line 309
    .line 310
    if-nez p1, :cond_2

    .line 311
    .line 312
    :try_start_5
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 313
    .line 314
    const/4 v1, 0x5

    .line 315
    aget-object p1, p1, v1

    .line 316
    .line 317
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p1, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {p1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {p1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    check-cast p1, Lcom/jcraft/jsch/MAC;

    .line 338
    .line 339
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 340
    .line 341
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 342
    .line 343
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->k:[B

    .line 344
    .line 345
    invoke-interface {p1}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    invoke-static/range {v1 .. v6}, Lcom/jcraft/jsch/Session;->j(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->k:[B

    .line 354
    .line 355
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 356
    .line 357
    invoke-interface {v1, p1}, Lcom/jcraft/jsch/MAC;->init([B)V

    .line 358
    .line 359
    .line 360
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 361
    .line 362
    invoke-interface {p1}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    new-array p1, p1, [B

    .line 367
    .line 368
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->s:[B

    .line 369
    .line 370
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->q:Lcom/jcraft/jsch/MAC;

    .line 371
    .line 372
    invoke-interface {p1}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    new-array p1, p1, [B

    .line 377
    .line 378
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->t:[B

    .line 379
    .line 380
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 381
    .line 382
    const/4 v1, 0x2

    .line 383
    aget-object p1, p1, v1

    .line 384
    .line 385
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-virtual {p1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    check-cast p1, Lcom/jcraft/jsch/Cipher;

    .line 406
    .line 407
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 408
    .line 409
    :goto_1
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 410
    .line 411
    invoke-interface {p1}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->h:[B

    .line 416
    .line 417
    array-length v1, v0

    .line 418
    if-le p1, v1, :cond_3

    .line 419
    .line 420
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 421
    .line 422
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 423
    .line 424
    .line 425
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_1

    .line 426
    .line 427
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    array-length v0, v2

    .line 431
    invoke-virtual {p1, v2, v7, v0}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_6 .. :try_end_6} :catch_0

    .line 432
    .line 433
    .line 434
    :try_start_7
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_7 .. :try_end_7} :catch_1

    .line 435
    .line 436
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    array-length v0, v3

    .line 440
    invoke-virtual {p1, v3, v7, v0}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_8 .. :try_end_8} :catch_0

    .line 441
    .line 442
    .line 443
    :try_start_9
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 444
    .line 445
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->h:[B

    .line 446
    .line 447
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 448
    .line 449
    .line 450
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 451
    .line 452
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 453
    .line 454
    iget p1, p1, Lcom/jcraft/jsch/Buffer;->c:I

    .line 455
    .line 456
    invoke-interface {v5, v0, v7, p1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 457
    .line 458
    .line 459
    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->h:[B

    .line 464
    .line 465
    array-length v1, v0

    .line 466
    array-length v4, p1

    .line 467
    add-int/2addr v1, v4

    .line 468
    new-array v1, v1, [B

    .line 469
    .line 470
    array-length v4, v0

    .line 471
    invoke-static {v0, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    .line 473
    .line 474
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->h:[B

    .line 475
    .line 476
    array-length v0, v0

    .line 477
    array-length v4, p1

    .line 478
    invoke-static {p1, v7, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    .line 480
    .line 481
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->h:[B

    .line 482
    .line 483
    goto :goto_1

    .line 484
    :cond_3
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 485
    .line 486
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->f:[B

    .line 487
    .line 488
    invoke-interface {p1, v7, v0, v1}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    .line 489
    .line 490
    .line 491
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 492
    .line 493
    invoke-interface {p1}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    .line 494
    .line 495
    .line 496
    move-result p1

    .line 497
    iput p1, p0, Lcom/jcraft/jsch/Session;->w0:I

    .line 498
    .line 499
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->p:Lcom/jcraft/jsch/Cipher;

    .line 500
    .line 501
    invoke-interface {p1}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    .line 502
    .line 503
    .line 504
    move-result p1

    .line 505
    if-nez p1, :cond_4

    .line 506
    .line 507
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 508
    .line 509
    const/4 v0, 0x4

    .line 510
    aget-object p1, p1, v0

    .line 511
    .line 512
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-virtual {p1, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    invoke-virtual {p1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    invoke-virtual {p1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    check-cast p1, Lcom/jcraft/jsch/MAC;

    .line 533
    .line 534
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/MAC;

    .line 535
    .line 536
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->O:Lcom/jcraft/jsch/Buffer;

    .line 537
    .line 538
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->j:[B

    .line 539
    .line 540
    invoke-interface {p1}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 541
    .line 542
    .line 543
    move-result v6

    .line 544
    invoke-static/range {v1 .. v6}, Lcom/jcraft/jsch/Session;->j(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->j:[B

    .line 549
    .line 550
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->r:Lcom/jcraft/jsch/MAC;

    .line 551
    .line 552
    invoke-interface {v0, p1}, Lcom/jcraft/jsch/MAC;->init([B)V

    .line 553
    .line 554
    .line 555
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 556
    .line 557
    const/4 v0, 0x6

    .line 558
    aget-object p1, p1, v0

    .line 559
    .line 560
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->m(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->n:[Ljava/lang/String;

    .line 564
    .line 565
    const/4 v0, 0x7

    .line 566
    aget-object p1, p1, v0

    .line 567
    .line 568
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->n(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_9 .. :try_end_9} :catch_1

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    :catch_1
    move-exception v0

    .line 573
    :goto_2
    move-object p0, v0

    .line 574
    instance-of p1, p0, Lcom/jcraft/jsch/JSchException;

    .line 575
    .line 576
    if-eqz p1, :cond_5

    .line 577
    .line 578
    throw p0

    .line 579
    :cond_5
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 580
    .line 581
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 586
    .line 587
    .line 588
    throw p1
.end method

.method public final z(Lcom/jcraft/jsch/Packet;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/Session;->y:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    :catch_0
    :goto_0
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->q0:Z

    .line 5
    .line 6
    if-eqz v2, :cond_3

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-lez v2, :cond_1

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->c0:J

    .line 19
    .line 20
    sub-long/2addr v2, v4

    .line 21
    cmp-long v2, v2, v0

    .line 22
    .line 23
    if-lez v2, :cond_1

    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->r0:Z

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const-string p0, "timeout in waiting for rekeying process."

    .line 31
    .line 32
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    :goto_1
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 39
    .line 40
    const/4 v3, 0x5

    .line 41
    aget-byte v2, v2, v3

    .line 42
    .line 43
    const/16 v3, 0x14

    .line 44
    .line 45
    if-eq v2, v3, :cond_3

    .line 46
    .line 47
    const/16 v3, 0x15

    .line 48
    .line 49
    if-eq v2, v3, :cond_3

    .line 50
    .line 51
    const/16 v3, 0x1e

    .line 52
    .line 53
    if-eq v2, v3, :cond_3

    .line 54
    .line 55
    const/16 v3, 0x1f

    .line 56
    .line 57
    if-eq v2, v3, :cond_3

    .line 58
    .line 59
    if-eq v2, v3, :cond_3

    .line 60
    .line 61
    const/16 v3, 0x20

    .line 62
    .line 63
    if-eq v2, v3, :cond_3

    .line 64
    .line 65
    const/16 v3, 0x21

    .line 66
    .line 67
    if-eq v2, v3, :cond_3

    .line 68
    .line 69
    const/16 v3, 0x22

    .line 70
    .line 71
    if-eq v2, v3, :cond_3

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    if-ne v2, v3, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const-wide/16 v2, 0xa

    .line 78
    .line 79
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
