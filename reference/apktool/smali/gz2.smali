.class public final enum Lgz2;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgz2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgz2;",
        ">;"
    }
.end annotation

.annotation runtime Lno6;
    name = "Event"
.end annotation

.annotation runtime Lxv1;
    value = Lgz2$a;
.end annotation


# static fields
.field public static final enum G:Lgz2;

.field public static final enum H:Lgz2;

.field public static final enum I:Lgz2;

.field public static final enum J:Lgz2;

.field public static final enum K:Lgz2;

.field public static final enum L:Lgz2;

.field public static final enum M:Lgz2;

.field private static final synthetic N:[Lgz2;

.field public static final enum b:Lgz2;

.field public static final enum c:Lgz2;

.field public static final enum d:Lgz2;

.field public static final enum e:Lgz2;

.field public static final enum f:Lgz2;

.field public static final enum k:Lgz2;

.field public static final enum n:Lgz2;

.field public static final enum p:Lgz2;

.field public static final enum q:Lgz2;

.field public static final enum r:Lgz2;

.field public static final enum t:Lgz2;

.field public static final enum x:Lgz2;

.field public static final enum y:Lgz2;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v1, Lgz2;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v2, "s3:ObjectCreated:*"

    .line 5
    .line 6
    const-string v3, "OBJECT_CREATED_ANY"

    .line 7
    .line 8
    invoke-direct {v1, v3, v0, v2}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Lgz2;->b:Lgz2;

    .line 12
    .line 13
    new-instance v2, Lgz2;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    const-string v3, "s3:ObjectCreated:Put"

    .line 17
    .line 18
    const-string v4, "OBJECT_CREATED_PUT"

    .line 19
    .line 20
    invoke-direct {v2, v4, v0, v3}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lgz2;->c:Lgz2;

    .line 24
    .line 25
    new-instance v3, Lgz2;

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    const-string v4, "s3:ObjectCreated:Post"

    .line 29
    .line 30
    const-string v5, "OBJECT_CREATED_POST"

    .line 31
    .line 32
    invoke-direct {v3, v5, v0, v4}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lgz2;->d:Lgz2;

    .line 36
    .line 37
    new-instance v4, Lgz2;

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    const-string v5, "s3:ObjectCreated:Copy"

    .line 41
    .line 42
    const-string v6, "OBJECT_CREATED_COPY"

    .line 43
    .line 44
    invoke-direct {v4, v6, v0, v5}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lgz2;->e:Lgz2;

    .line 48
    .line 49
    new-instance v5, Lgz2;

    .line 50
    .line 51
    const/4 v0, 0x4

    .line 52
    const-string v6, "s3:ObjectCreated:CompleteMultipartUpload"

    .line 53
    .line 54
    const-string v7, "OBJECT_CREATED_COMPLETE_MULTIPART_UPLOAD"

    .line 55
    .line 56
    invoke-direct {v5, v7, v0, v6}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lgz2;->f:Lgz2;

    .line 60
    .line 61
    new-instance v6, Lgz2;

    .line 62
    .line 63
    const/4 v0, 0x5

    .line 64
    const-string v7, "s3:ObjectAccessed:Get"

    .line 65
    .line 66
    const-string v8, "OBJECT_ACCESSED_GET"

    .line 67
    .line 68
    invoke-direct {v6, v8, v0, v7}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v6, Lgz2;->k:Lgz2;

    .line 72
    .line 73
    new-instance v7, Lgz2;

    .line 74
    .line 75
    const/4 v0, 0x6

    .line 76
    const-string v8, "s3:ObjectAccessed:Head"

    .line 77
    .line 78
    const-string v9, "OBJECT_ACCESSED_HEAD"

    .line 79
    .line 80
    invoke-direct {v7, v9, v0, v8}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v7, Lgz2;->n:Lgz2;

    .line 84
    .line 85
    new-instance v8, Lgz2;

    .line 86
    .line 87
    const/4 v0, 0x7

    .line 88
    const-string v9, "s3:ObjectAccessed:*"

    .line 89
    .line 90
    const-string v10, "OBJECT_ACCESSED_ANY"

    .line 91
    .line 92
    invoke-direct {v8, v10, v0, v9}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v8, Lgz2;->p:Lgz2;

    .line 96
    .line 97
    new-instance v9, Lgz2;

    .line 98
    .line 99
    const/16 v0, 0x8

    .line 100
    .line 101
    const-string v10, "s3:ObjectRemoved:*"

    .line 102
    .line 103
    const-string v11, "OBJECT_REMOVED_ANY"

    .line 104
    .line 105
    invoke-direct {v9, v11, v0, v10}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v9, Lgz2;->q:Lgz2;

    .line 109
    .line 110
    new-instance v10, Lgz2;

    .line 111
    .line 112
    const/16 v0, 0x9

    .line 113
    .line 114
    const-string v11, "s3:ObjectRemoved:Delete"

    .line 115
    .line 116
    const-string v12, "OBJECT_REMOVED_DELETE"

    .line 117
    .line 118
    invoke-direct {v10, v12, v0, v11}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v10, Lgz2;->r:Lgz2;

    .line 122
    .line 123
    new-instance v11, Lgz2;

    .line 124
    .line 125
    const/16 v0, 0xa

    .line 126
    .line 127
    const-string v12, "s3:ObjectRemoved:DeleteMarkerCreated"

    .line 128
    .line 129
    const-string v13, "OBJECT_REMOVED_DELETED_MARKER_CREATED"

    .line 130
    .line 131
    invoke-direct {v11, v13, v0, v12}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v11, Lgz2;->t:Lgz2;

    .line 135
    .line 136
    new-instance v12, Lgz2;

    .line 137
    .line 138
    const/16 v0, 0xb

    .line 139
    .line 140
    const-string v13, "s3:Replication:*"

    .line 141
    .line 142
    const-string v14, "REPLICATION_ANY"

    .line 143
    .line 144
    invoke-direct {v12, v14, v0, v13}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v12, Lgz2;->x:Lgz2;

    .line 148
    .line 149
    new-instance v13, Lgz2;

    .line 150
    .line 151
    const/16 v0, 0xc

    .line 152
    .line 153
    const-string v14, "s3:Replication:OperationFailedReplication"

    .line 154
    .line 155
    const-string v15, "REPLICATION_OPERATION_FAILED_REPLICATION"

    .line 156
    .line 157
    invoke-direct {v13, v15, v0, v14}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v13, Lgz2;->y:Lgz2;

    .line 161
    .line 162
    new-instance v14, Lgz2;

    .line 163
    .line 164
    const/16 v0, 0xd

    .line 165
    .line 166
    const-string v15, "s3:Replication:OperationCompletedReplication"

    .line 167
    .line 168
    move-object/from16 v16, v1

    .line 169
    .line 170
    const-string v1, "REPLICATION_OPERATION_COMPLETED_REPLICATION"

    .line 171
    .line 172
    invoke-direct {v14, v1, v0, v15}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sput-object v14, Lgz2;->G:Lgz2;

    .line 176
    .line 177
    new-instance v15, Lgz2;

    .line 178
    .line 179
    const/16 v0, 0xe

    .line 180
    .line 181
    const-string v1, "s3:Replication:OperationNotTracked"

    .line 182
    .line 183
    move-object/from16 v17, v2

    .line 184
    .line 185
    const-string v2, "REPLICATION_OPERATION_NOT_TRACKED"

    .line 186
    .line 187
    invoke-direct {v15, v2, v0, v1}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    sput-object v15, Lgz2;->H:Lgz2;

    .line 191
    .line 192
    new-instance v0, Lgz2;

    .line 193
    .line 194
    const/16 v1, 0xf

    .line 195
    .line 196
    const-string v2, "s3:Replication:OperationMissedThreshold"

    .line 197
    .line 198
    move-object/from16 v18, v3

    .line 199
    .line 200
    const-string v3, "REPLICATION_OPERATION_MISSED_THRESHOLD"

    .line 201
    .line 202
    invoke-direct {v0, v3, v1, v2}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    sput-object v0, Lgz2;->I:Lgz2;

    .line 206
    .line 207
    new-instance v1, Lgz2;

    .line 208
    .line 209
    const/16 v2, 0x10

    .line 210
    .line 211
    const-string v3, "s3:Replication:OperationReplicatedAfterThreshold"

    .line 212
    .line 213
    move-object/from16 v19, v0

    .line 214
    .line 215
    const-string v0, "REPLICATION_OPERATION_REPLICATED_AFTER_THRESHOLD"

    .line 216
    .line 217
    invoke-direct {v1, v0, v2, v3}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    sput-object v1, Lgz2;->J:Lgz2;

    .line 221
    .line 222
    new-instance v0, Lgz2;

    .line 223
    .line 224
    const/16 v2, 0x11

    .line 225
    .line 226
    const-string v3, "s3:ReducedRedundancyLostObject"

    .line 227
    .line 228
    move-object/from16 v20, v1

    .line 229
    .line 230
    const-string v1, "REDUCED_REDUNDANCY_LOST_OBJECT"

    .line 231
    .line 232
    invoke-direct {v0, v1, v2, v3}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sput-object v0, Lgz2;->K:Lgz2;

    .line 236
    .line 237
    new-instance v1, Lgz2;

    .line 238
    .line 239
    const/16 v2, 0x12

    .line 240
    .line 241
    const-string v3, "s3:BucketCreated"

    .line 242
    .line 243
    move-object/from16 v21, v0

    .line 244
    .line 245
    const-string v0, "BUCKET_CREATED"

    .line 246
    .line 247
    invoke-direct {v1, v0, v2, v3}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    sput-object v1, Lgz2;->L:Lgz2;

    .line 251
    .line 252
    new-instance v0, Lgz2;

    .line 253
    .line 254
    const/16 v2, 0x13

    .line 255
    .line 256
    const-string v3, "s3:BucketRemoved"

    .line 257
    .line 258
    move-object/from16 v22, v1

    .line 259
    .line 260
    const-string v1, "BUCKET_REMOVED"

    .line 261
    .line 262
    invoke-direct {v0, v1, v2, v3}, Lgz2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    sput-object v0, Lgz2;->M:Lgz2;

    .line 266
    .line 267
    move-object/from16 v1, v16

    .line 268
    .line 269
    move-object/from16 v2, v17

    .line 270
    .line 271
    move-object/from16 v3, v18

    .line 272
    .line 273
    move-object/from16 v16, v19

    .line 274
    .line 275
    move-object/from16 v17, v20

    .line 276
    .line 277
    move-object/from16 v18, v21

    .line 278
    .line 279
    move-object/from16 v19, v22

    .line 280
    .line 281
    move-object/from16 v20, v0

    .line 282
    .line 283
    filled-new-array/range {v1 .. v20}, [Lgz2;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    sput-object v0, Lgz2;->N:[Lgz2;

    .line 288
    .line 289
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lgz2;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;)Lgz2;
    .locals 6
    .annotation runtime Lfj4;
    .end annotation

    .line 1
    const-string v0, "s3:"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lgz2;->values()[Lgz2;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_2

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    iget-object v5, v4, Lgz2;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_1

    .line 24
    .line 25
    iget-object v5, v4, Lgz2;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    return-object v4

    .line 38
    :cond_2
    const-string v0, "Unknown event \'"

    .line 39
    .line 40
    const-string v1, "\'"

    .line 41
    .line 42
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgz2;
    .locals 1

    .line 1
    const-class v0, Lgz2;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lgz2;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lgz2;
    .locals 1

    .line 1
    sget-object v0, Lgz2;->N:[Lgz2;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lgz2;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lgz2;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lgz2;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
