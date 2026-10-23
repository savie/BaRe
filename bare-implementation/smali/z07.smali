.class public final Lz07;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lb17;

.field public volatile c:Lv07;

.field public d:Lf44;

.field public final e:Lh07;

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 30
    new-instance v0, Lb17;

    const/4 v1, 0x0

    const/16 v2, 0x3f

    invoke-direct {v0, v1, v1, v1, v2}, Lb17;-><init>(Lf27;[CLny6;I)V

    .line 31
    invoke-direct {p0, p1, v0}, Lz07;-><init>(Ljava/io/File;Lb17;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lb17;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz07;->a:Ljava/io/File;

    .line 5
    .line 6
    iput-object p2, p0, Lz07;->b:Lb17;

    .line 7
    .line 8
    iget-object p1, p2, Lb17;->c:Lh07;

    .line 9
    .line 10
    iget-wide v0, p2, Lb17;->d:J

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long p2, v0, v2

    .line 17
    .line 18
    if-gtz p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p2, Lg27;

    .line 22
    .line 23
    invoke-direct {p2, p1, v0, v1}, Lg27;-><init>(Lh07;J)V

    .line 24
    .line 25
    .line 26
    move-object p1, p2

    .line 27
    :cond_1
    :goto_0
    iput-object p1, p0, Lz07;->e:Lh07;

    .line 28
    .line 29
    return-void
.end method

.method public static D(Ltr9;IJJLs07;I)Loz6;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v14, p1

    move-object/from16 v1, p6

    .line 1
    iget-object v2, v0, Ltr9;->b:Ljava/lang/Object;

    check-cast v2, Ljava/io/DataInput;

    move-object v4, v2

    .line 2
    invoke-interface {v4}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    move-object v6, v4

    .line 3
    invoke-interface {v6}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    move-object v8, v6

    .line 4
    invoke-interface {v8}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    move-object v10, v8

    .line 5
    invoke-interface {v10}, Ljava/io/DataInput;->readLong()J

    move-result-wide v8

    move-object v12, v10

    .line 6
    invoke-interface {v12}, Ljava/io/DataInput;->readLong()J

    move-result-wide v10

    move-object v13, v12

    .line 7
    invoke-interface {v13}, Ljava/io/DataInput;->readInt()I

    move-result v12

    .line 8
    invoke-interface {v13}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v15

    move-wide/from16 v16, v2

    .line 9
    invoke-interface {v13}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 10
    invoke-interface {v13}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    move-wide/from16 v18, v10

    const/16 v10, 0x20

    .line 11
    invoke-virtual {v0, v10}, Ltr9;->e(I)[B

    move-result-object v10

    const/4 v11, 0x2

    move-object/from16 v20, v13

    move/from16 v13, p7

    if-lt v13, v11, :cond_0

    .line 12
    invoke-interface/range {v20 .. v20}, Ljava/io/DataInput;->readLong()J

    move-result-wide v22

    .line 13
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 14
    invoke-interface/range {v20 .. v20}, Ljava/io/DataInput;->readLong()J

    move-result-wide v22

    .line 15
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 16
    invoke-interface/range {v20 .. v20}, Ljava/io/DataInput;->readLong()J

    move-result-wide v22

    .line 17
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v22, v20

    move/from16 v20, v3

    move-object/from16 v3, v22

    :goto_0
    move/from16 v22, v2

    goto :goto_1

    :cond_0
    move/from16 v20, v3

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_0

    .line 18
    :goto_1
    const-string v2, ": "

    if-lez v15, :cond_20

    move-object/from16 p7, v2

    const v2, 0xffff

    if-gt v15, v2, :cond_1f

    const-wide/16 v23, 0x0

    if-eqz v11, :cond_3

    .line 19
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    cmp-long v2, v25, v23

    if-ltz v2, :cond_2

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    cmp-long v2, v25, v23

    if-ltz v2, :cond_2

    if-eqz v3, :cond_2

    .line 20
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    cmp-long v2, v25, v23

    if-ltz v2, :cond_2

    .line 21
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    cmp-long v2, v25, v27

    if-gtz v2, :cond_1

    .line 22
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    cmp-long v2, v25, v27

    if-gtz v2, :cond_1

    .line 23
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    sub-long v27, v27, v29

    cmp-long v2, v25, v27

    if-gtz v2, :cond_1

    goto :goto_2

    .line 24
    :cond_1
    new-instance v0, Lqz6;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid tar member count totals for SBA index record "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": tarEntryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " regularFileCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " directoryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 26
    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    throw v0

    :cond_2
    const/4 v2, 0x0

    .line 28
    const-string v0, "Invalid tar member counts for SBA index record "

    .line 29
    invoke-static {v14, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0, v2}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_3
    :goto_2
    if-nez v20, :cond_1e

    if-nez v22, :cond_1d

    .line 31
    invoke-virtual {v0, v15}, Ltr9;->e(I)[B

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v15, "index record "

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " entry name"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lus2;->n(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 32
    :try_start_0
    invoke-static {v2}, Liz1;->A(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    iget-object v0, v1, Ls07;->e:Lcy0;

    iget v15, v1, Ls07;->n:I

    move-object/from16 v25, v3

    iget-object v3, v1, Ls07;->h:Ll27;

    move-object/from16 v26, v11

    .line 34
    invoke-static {v0, v3}, Lus2;->q(Lcy0;Ll27;)I

    move-result v11

    move-object/from16 v27, v13

    .line 35
    const-string v13, "\': "

    if-ne v12, v11, :cond_1c

    .line 36
    iget v1, v1, Ls07;->b:I

    move/from16 v28, v12

    int-to-long v11, v1

    cmp-long v1, v16, v11

    .line 37
    const-string v11, "\'"

    if-ltz v1, :cond_1b

    const-wide/16 v29, 0x18

    add-long v29, v16, v29

    cmp-long v1, v4, v29

    if-ltz v1, :cond_1b

    cmp-long v1, v6, v23

    if-ltz v1, :cond_1a

    cmp-long v12, v8, v23

    if-ltz v12, :cond_1a

    const-wide/16 v29, 0x400

    cmp-long v20, v18, v29

    if-ltz v20, :cond_1a

    const-wide/16 v29, 0x200

    .line 38
    rem-long v29, v18, v29

    cmp-long v20, v29, v23

    if-nez v20, :cond_19

    .line 39
    sget-object v13, Loy6;->j:Loy6;

    .line 40
    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    cmp-long v20, v18, v8

    if-nez v20, :cond_5

    :cond_4
    move/from16 p0, v1

    const/4 v1, 0x0

    goto :goto_3

    .line 41
    :cond_5
    const-string v0, "Uncompressed SBA entry \'"

    const-string v1, "\' must have matching tar and compressed sizes"

    .line 42
    invoke-static {v0, v2, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 44
    :goto_3
    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v12, :cond_6

    goto :goto_4

    .line 45
    :cond_6
    const-string v0, "Compressed SBA entry \'"

    const-string v3, "\' has an empty compressed payload"

    .line 46
    invoke-static {v0, v2, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 48
    :cond_7
    :goto_4
    sget-object v0, Ly07;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v0, v0, v13

    const-string v13, ", actual="

    move-object/from16 v21, v1

    const-string v1, "\' stored size mismatch: expected="

    move/from16 p6, v0

    const-string v0, "\' must not contain a payload HMAC"

    const/16 v20, 0x0

    packed-switch p6, :pswitch_data_0

    invoke-static {}, Lq;->j()V

    return-object v21

    .line 49
    :pswitch_0
    array-length v12, v10

    move-wide/from16 v29, v4

    move/from16 v14, v20

    :goto_5
    const-string v4, " SBA entry \'"

    if-ge v14, v12, :cond_9

    aget-byte v5, v10, v14

    if-nez v5, :cond_8

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 50
    :cond_8
    new-instance v1, Lqz6;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 51
    invoke-direct {v1, v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    throw v1

    .line 53
    :cond_9
    invoke-static {v15, v8, v9}, Lus2;->k(IJ)J

    move-result-wide v14

    cmp-long v0, v6, v14

    if-nez v0, :cond_a

    goto/16 :goto_b

    .line 54
    :cond_a
    new-instance v0, Lqz6;

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 56
    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    throw v0

    :pswitch_1
    move-wide/from16 v29, v4

    .line 58
    array-length v3, v10

    move/from16 v4, v20

    :goto_6
    const-string v5, "AES-GCM-SIV SBA entry \'"

    if-ge v4, v3, :cond_c

    aget-byte v12, v10, v4

    if-nez v12, :cond_b

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 59
    :cond_b
    invoke-static {v5, v2, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 60
    invoke-static {v0, v3}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_c
    const/4 v3, 0x0

    .line 61
    invoke-static {v15, v8, v9}, Lus2;->k(IJ)J

    move-result-wide v14

    cmp-long v0, v6, v14

    if-nez v0, :cond_d

    goto/16 :goto_b

    .line 62
    :cond_d
    invoke-static {v5, v2, v14, v15, v1}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-static {v0, v13, v6, v7}, La6;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;J)V

    return-object v3

    :pswitch_2
    move-wide/from16 v29, v4

    move-object/from16 v3, v21

    .line 64
    array-length v4, v10

    move/from16 v5, v20

    :goto_7
    const-string v12, "AES-GCM SBA entry \'"

    if-ge v5, v4, :cond_f

    aget-byte v14, v10, v5

    if-nez v14, :cond_e

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 65
    :cond_e
    invoke-static {v12, v2, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0, v3}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 67
    :cond_f
    invoke-static {v15, v8, v9}, Lus2;->k(IJ)J

    move-result-wide v4

    cmp-long v0, v6, v4

    if-nez v0, :cond_10

    goto/16 :goto_b

    .line 68
    :cond_10
    invoke-static {v12, v2, v4, v5, v1}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    invoke-static {v0, v13, v6, v7}, La6;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;J)V

    return-object v3

    :pswitch_3
    move-wide/from16 v29, v4

    .line 70
    const-string v0, "Encrypted SBA entry \'"

    if-eqz p0, :cond_14

    const-wide/16 v3, 0x10

    rem-long v14, v6, v3

    cmp-long v5, v14, v23

    if-nez v5, :cond_14

    if-nez v12, :cond_11

    :goto_8
    move-wide/from16 v3, v23

    goto :goto_9

    .line 71
    :cond_11
    rem-long v14, v8, v3

    cmp-long v5, v14, v23

    if-nez v5, :cond_12

    move-wide v3, v8

    goto :goto_9

    :cond_12
    sub-long/2addr v3, v14

    add-long v23, v3, v8

    goto :goto_8

    :goto_9
    cmp-long v5, v6, v3

    if-nez v5, :cond_13

    goto :goto_b

    .line 72
    :cond_13
    invoke-static {v0, v2, v3, v4, v1}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    invoke-static {v0, v13, v6, v7}, La6;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;J)V

    const/4 v1, 0x0

    return-object v1

    :cond_14
    const/4 v1, 0x0

    .line 74
    new-instance v3, Lqz6;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not AES-block-aligned: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-direct {v3, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    throw v3

    :pswitch_4
    move-wide/from16 v29, v4

    cmp-long v1, v6, v8

    .line 77
    const-string v3, "Unencrypted SBA entry \'"

    if-nez v1, :cond_18

    .line 78
    array-length v1, v10

    move/from16 v4, v20

    :goto_a
    if-ge v4, v1, :cond_16

    aget-byte v5, v10, v4

    if-nez v5, :cond_15

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 79
    :cond_15
    invoke-static {v3, v2, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 81
    :cond_16
    :goto_b
    const-string v0, "payload end for \'"

    .line 82
    invoke-static {v0, v2, v11}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v4, v29

    .line 83
    invoke-static {v4, v5, v6, v7, v0}, Lus2;->C(JJLjava/lang/String;)J

    move-result-wide v0

    cmp-long v3, v0, p2

    if-gtz v3, :cond_17

    cmp-long v0, v0, p4

    if-gtz v0, :cond_17

    .line 84
    new-instance v0, Loz6;

    move/from16 v14, p1

    move-object v1, v2

    move-object v13, v10

    move-wide/from16 v2, v16

    move-wide/from16 v10, v18

    move-object/from16 v17, v25

    move-object/from16 v15, v26

    move-object/from16 v16, v27

    move/from16 v12, v28

    invoke-direct/range {v0 .. v17}, Loz6;-><init>(Ljava/lang/String;JJJJJI[BILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0

    :cond_17
    move-object v1, v2

    .line 85
    new-instance v0, Lnz6;

    const-string v2, "SBA entry \'"

    const-string v3, "\' payload extends beyond file bounds"

    .line 86
    invoke-static {v2, v1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 87
    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    throw v0

    :cond_18
    move-object v1, v2

    const/4 v2, 0x0

    .line 89
    const-string v0, "\' has mismatched stored/compressed sizes"

    .line 90
    invoke-static {v3, v1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0, v2}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_19
    move-object v1, v2

    move-wide/from16 v10, v18

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lqz6;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid tar size for SBA entry \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    throw v0

    :cond_1a
    move-object v1, v2

    const/4 v2, 0x0

    .line 95
    const-string v0, "Invalid payload/tar size for SBA entry \'"

    .line 96
    invoke-static {v0, v1, v11}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0, v2}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1b
    move-object v1, v2

    const/4 v2, 0x0

    .line 98
    const-string v0, "Invalid offsets for SBA entry \'"

    .line 99
    invoke-static {v0, v1, v11}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0, v2}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1c
    move-object v1, v2

    const/4 v2, 0x0

    .line 101
    new-instance v0, Li27;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported SBA entry flags for \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    throw v0

    :catch_0
    move-exception v0

    move-object v1, v2

    const/4 v2, 0x0

    .line 104
    const-string v3, "Unsafe SBA entry name at index record "

    move-object/from16 v4, p7

    .line 105
    invoke-static {v14, v3, v4, v1}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1, v0}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1d
    move-object/from16 v4, p7

    const/4 v2, 0x0

    .line 107
    const-string v0, "SBA entry metadata is not supported in v1 index record "

    move/from16 v1, v22

    .line 108
    invoke-static {v0, v14, v1, v4}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0, v2}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1e
    move-object/from16 v4, p7

    const/4 v2, 0x0

    .line 110
    const-string v0, "Invalid non-zero SBA index record reserved field at record "

    move/from16 v1, v20

    .line 111
    invoke-static {v0, v14, v1, v4}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0, v2}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1f
    move-object/from16 v4, p7

    :goto_c
    const/4 v2, 0x0

    goto :goto_d

    :cond_20
    move-object v4, v2

    goto :goto_c

    .line 113
    :goto_d
    const-string v0, "Invalid SBA entry name length at index record "

    .line 114
    invoke-static {v0, v14, v15, v4}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0, v2}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static J(IIIII)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_1

    .line 5
    :cond_0
    const/16 p1, 0x4000

    .line 6
    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    if-ne p2, p0, :cond_2

    .line 11
    .line 12
    if-ne p3, p1, :cond_2

    .line 13
    .line 14
    if-ne p4, v0, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-gt v0, p2, :cond_2

    .line 18
    .line 19
    const/16 p0, 0x65

    .line 20
    .line 21
    if-ge p2, p0, :cond_2

    .line 22
    .line 23
    if-gt p1, p3, :cond_2

    .line 24
    .line 25
    const p0, 0x10001

    .line 26
    .line 27
    .line 28
    if-ge p3, p0, :cond_2

    .line 29
    .line 30
    if-gt v0, p4, :cond_2

    .line 31
    .line 32
    const/16 p0, 0x9

    .line 33
    .line 34
    if-ge p4, p0, :cond_2

    .line 35
    .line 36
    :goto_0
    return v0

    .line 37
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public static O(IIII)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    if-nez p3, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    const/16 p0, 0x20

    .line 14
    .line 15
    if-ne p2, p0, :cond_1

    .line 16
    .line 17
    if-ne p3, v0, :cond_1

    .line 18
    .line 19
    :goto_0
    return v0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public static S(Ljava/io/RandomAccessFile;Ljava/util/ArrayList;JLs07;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    iget v4, v3, Ls07;->b:I

    .line 8
    .line 9
    int-to-long v4, v4

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    const/4 v8, 0x0

    .line 15
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v9

    .line 19
    if-eqz v9, :cond_a

    .line 20
    .line 21
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    add-int/lit8 v11, v8, 0x1

    .line 26
    .line 27
    if-ltz v8, :cond_9

    .line 28
    .line 29
    check-cast v9, Loz6;

    .line 30
    .line 31
    iget-wide v12, v9, Loz6;->b:J

    .line 32
    .line 33
    iget-wide v14, v9, Loz6;->c:J

    .line 34
    .line 35
    iget-object v7, v9, Loz6;->a:Ljava/lang/String;

    .line 36
    .line 37
    cmp-long v16, v12, v4

    .line 38
    .line 39
    const-string v10, "SBA entry \'"

    .line 40
    .line 41
    if-ltz v16, :cond_8

    .line 42
    .line 43
    if-nez v16, :cond_7

    .line 44
    .line 45
    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 46
    .line 47
    .line 48
    new-instance v4, Ltr9;

    .line 49
    .line 50
    const/16 v5, 0x10

    .line 51
    .line 52
    invoke-direct {v4, v0, v5}, Ltr9;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    sget-object v5, Lzv1;->d:[B

    .line 56
    .line 57
    new-instance v10, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v12, "entry["

    .line 60
    .line 61
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v8, "]"

    .line 68
    .line 69
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-virtual {v4, v8, v5}, Ltr9;->a(Ljava/lang/String;[B)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    const/16 v8, 0x18

    .line 84
    .line 85
    if-ne v5, v8, :cond_6

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    const/4 v13, 0x6

    .line 104
    invoke-virtual {v4, v13}, Ltr9;->e(I)[B

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    if-lez v10, :cond_5

    .line 109
    .line 110
    const v0, 0xffff

    .line 111
    .line 112
    .line 113
    if-gt v10, v0, :cond_5

    .line 114
    .line 115
    invoke-virtual {v4, v10}, Ltr9;->e(I)[B

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v10, "entry header name for \'"

    .line 122
    .line 123
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v10, "\'"

    .line 130
    .line 131
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v4, v0}, Lus2;->n(Ljava/lang/String;[B)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-nez v5, :cond_0

    .line 143
    .line 144
    array-length v4, v13

    .line 145
    const/4 v5, 0x0

    .line 146
    :goto_1
    if-ge v5, v4, :cond_1

    .line 147
    .line 148
    aget-byte v16, v13, v5

    .line 149
    .line 150
    if-nez v16, :cond_0

    .line 151
    .line 152
    add-int/lit8 v5, v5, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_0
    const/4 v1, 0x0

    .line 156
    goto :goto_2

    .line 157
    :cond_1
    if-nez v12, :cond_4

    .line 158
    .line 159
    iget v4, v9, Loz6;->g:I

    .line 160
    .line 161
    if-ne v8, v4, :cond_3

    .line 162
    .line 163
    iget-object v4, v3, Ls07;->e:Lcy0;

    .line 164
    .line 165
    iget-object v5, v3, Ls07;->h:Ll27;

    .line 166
    .line 167
    invoke-static {v4, v5}, Lus2;->q(Lcy0;Ll27;)I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-ne v8, v4, :cond_3

    .line 172
    .line 173
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_3

    .line 178
    .line 179
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 180
    .line 181
    .line 182
    move-result-wide v4

    .line 183
    cmp-long v0, v4, v14

    .line 184
    .line 185
    if-nez v0, :cond_2

    .line 186
    .line 187
    iget-wide v4, v9, Loz6;->d:J

    .line 188
    .line 189
    const-string v0, "entry end for \'"

    .line 190
    .line 191
    invoke-static {v0, v7, v10}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v14, v15, v4, v5, v0}, Lus2;->C(JJLjava/lang/String;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v4

    .line 199
    move-object/from16 v0, p0

    .line 200
    .line 201
    move v8, v11

    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 205
    .line 206
    .line 207
    move-result-wide v0

    .line 208
    const-string v2, "Entry \'"

    .line 209
    .line 210
    const-string v3, "\' payload offset mismatch: headerEnd="

    .line 211
    .line 212
    invoke-static {v2, v7, v0, v1, v3}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string v1, ", index="

    .line 217
    .line 218
    invoke-static {v0, v1, v14, v15}, La6;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;J)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_3
    const-string v0, "Entry header/index mismatch for \'"

    .line 223
    .line 224
    invoke-static {v0, v7, v10}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const/4 v1, 0x0

    .line 229
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_4
    const-string v0, "SBA entry metadata is not supported in v1 entry header for \'"

    .line 234
    .line 235
    invoke-static {v0, v12, v7}, Lz5;->f(Ljava/lang/String;ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :goto_2
    const-string v0, "Invalid non-zero SBA entry reserved field for \'"

    .line 240
    .line 241
    invoke-static {v0, v7, v10}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_5
    const-string v0, "Invalid SBA entry header name length for \'"

    .line 250
    .line 251
    invoke-static {v0, v10, v7}, Lz5;->f(Ljava/lang/String;ILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :cond_6
    const-string v0, "Invalid entry header size for \'"

    .line 256
    .line 257
    invoke-static {v0, v5, v7}, Lz5;->f(Ljava/lang/String;ILjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_7
    const-string v0, "\' is not contiguous: expectedOffset="

    .line 262
    .line 263
    invoke-static {v10, v7, v4, v5, v0}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    const-string v1, ", actualOffset="

    .line 268
    .line 269
    invoke-static {v0, v1, v12, v13}, La6;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;J)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :cond_8
    const-string v0, "\' overlaps previous entry"

    .line 274
    .line 275
    invoke-static {v10, v7, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    const/4 v3, 0x0

    .line 280
    invoke-static {v0, v3}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :cond_9
    const/4 v3, 0x0

    .line 285
    invoke-static {}, Lfl1;->F0()V

    .line 286
    .line 287
    .line 288
    throw v3

    .line 289
    :cond_a
    const/4 v3, 0x0

    .line 290
    cmp-long v0, v4, v1

    .line 291
    .line 292
    if-nez v0, :cond_b

    .line 293
    .line 294
    return-void

    .line 295
    :cond_b
    new-instance v0, Lqz6;

    .line 296
    .line 297
    const-string v6, "SBA entries must end at index: entriesEnd="

    .line 298
    .line 299
    const-string v7, ", indexOffset="

    .line 300
    .line 301
    invoke-static {v6, v7, v4, v5}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-direct {v0, v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    throw v0
.end method

.method public static r(Ljava/io/RandomAccessFile;JI)Lu07;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    const-string v2, "SBA footer version mismatch: header="

    .line 6
    .line 7
    const-string v3, "Invalid SBA footer size: "

    .line 8
    .line 9
    const-wide/16 v4, 0x20

    .line 10
    .line 11
    sub-long v7, p1, v4

    .line 12
    .line 13
    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 14
    .line 15
    .line 16
    const/16 v4, 0x20

    .line 17
    .line 18
    new-array v5, v4, [B

    .line 19
    .line 20
    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x1c

    .line 24
    .line 25
    aget-byte v6, v5, v0

    .line 26
    .line 27
    and-int/lit16 v6, v6, 0xff

    .line 28
    .line 29
    shl-int/lit8 v6, v6, 0x18

    .line 30
    .line 31
    const/16 v9, 0x1d

    .line 32
    .line 33
    aget-byte v9, v5, v9

    .line 34
    .line 35
    and-int/lit16 v9, v9, 0xff

    .line 36
    .line 37
    const/16 v10, 0x10

    .line 38
    .line 39
    shl-int/2addr v9, v10

    .line 40
    or-int/2addr v6, v9

    .line 41
    const/16 v9, 0x1e

    .line 42
    .line 43
    aget-byte v9, v5, v9

    .line 44
    .line 45
    and-int/lit16 v9, v9, 0xff

    .line 46
    .line 47
    shl-int/lit8 v9, v9, 0x8

    .line 48
    .line 49
    or-int/2addr v6, v9

    .line 50
    const/16 v9, 0x1f

    .line 51
    .line 52
    aget-byte v9, v5, v9

    .line 53
    .line 54
    and-int/lit16 v9, v9, 0xff

    .line 55
    .line 56
    or-int v14, v6, v9

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    invoke-static {v5, v6, v0}, Lx50;->k0([BII)[B

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v6, Ljava/util/zip/CRC32;

    .line 64
    .line 65
    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v11

    .line 75
    long-to-int v0, v11

    .line 76
    const/4 v6, 0x0

    .line 77
    if-ne v14, v0, :cond_2

    .line 78
    .line 79
    new-instance v15, Ljava/io/DataInputStream;

    .line 80
    .line 81
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 82
    .line 83
    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v15, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 87
    .line 88
    .line 89
    :try_start_0
    new-instance v0, Ltr9;

    .line 90
    .line 91
    invoke-direct {v0, v15, v10}, Ltr9;-><init>(Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    sget-object v5, Lzv1;->f:[B

    .line 95
    .line 96
    const-string v9, "footer"

    .line 97
    .line 98
    invoke-virtual {v0, v9, v5}, Ltr9;->a(Ljava/lang/String;[B)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-ne v0, v4, :cond_1

    .line 106
    .line 107
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-ne v0, v1, :cond_0

    .line 112
    .line 113
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readLong()J

    .line 114
    .line 115
    .line 116
    move-result-wide v9

    .line 117
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readLong()J

    .line 118
    .line 119
    .line 120
    move-result-wide v11

    .line 121
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    new-instance v6, Lu07;

    .line 126
    .line 127
    invoke-direct/range {v6 .. v14}, Lu07;-><init>(JJJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    invoke-interface {v15}, Ljava/io/Closeable;->close()V

    .line 131
    .line 132
    .line 133
    return-object v6

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    move-object v1, v0

    .line 136
    goto :goto_0

    .line 137
    :cond_0
    :try_start_1
    new-instance v3, Lqz6;

    .line 138
    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, " footer="

    .line 148
    .line 149
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-direct {v3, v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    throw v3

    .line 163
    :cond_1
    new-instance v1, Lqz6;

    .line 164
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-direct {v1, v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :goto_0
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    :catchall_1
    move-exception v0

    .line 183
    invoke-static {v15, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :cond_2
    new-instance v1, Lpz6;

    .line 188
    .line 189
    const-string v2, "SBA footer CRC mismatch: expected="

    .line 190
    .line 191
    const-string v3, ", actual="

    .line 192
    .line 193
    invoke-static {v2, v14, v0, v3}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-direct {v1, v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    throw v1
.end method

.method public static u(Ljava/io/RandomAccessFile;)Ls07;
    .locals 49

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Loy6;->j:Loy6;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8
    .line 9
    .line 10
    new-instance v4, Ltr9;

    .line 11
    .line 12
    const/16 v5, 0x10

    .line 13
    .line 14
    invoke-direct {v4, v0, v5}, Ltr9;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    sget-object v6, Lzv1;->c:[B

    .line 18
    .line 19
    const-string v7, "file header"

    .line 20
    .line 21
    invoke-virtual {v4, v7, v6}, Ltr9;->a(Ljava/lang/String;[B)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    const/4 v6, 0x1

    .line 29
    if-gt v6, v9, :cond_29

    .line 30
    .line 31
    const/4 v7, 0x3

    .line 32
    if-ge v9, v7, :cond_29

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    const/4 v8, 0x2

    .line 39
    if-eq v9, v6, :cond_1

    .line 40
    .line 41
    if-ne v9, v8, :cond_0

    .line 42
    .line 43
    const/16 v11, 0x90

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lj27;

    .line 47
    .line 48
    invoke-direct {v0, v9}, Lj27;-><init>(I)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    const/16 v11, 0x60

    .line 53
    .line 54
    :goto_0
    if-ne v10, v11, :cond_28

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    and-int/lit8 v13, v11, -0x4

    .line 61
    .line 62
    if-nez v13, :cond_27

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    .line 65
    .line 66
    .line 67
    move-result-wide v13

    .line 68
    cmp-long v2, v13, v2

    .line 69
    .line 70
    if-ltz v2, :cond_26

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 73
    .line 74
    .line 75
    move-result v15

    .line 76
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    move/from16 v20, v10

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ltr9;->e(I)[B

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    move/from16 v21, v11

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ltr9;->e(I)[B

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    move-wide/from16 v22, v13

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ltr9;->e(I)[B

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    move-object/from16 v27, v13

    .line 131
    .line 132
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    move-object/from16 v26, v11

    .line 137
    .line 138
    const/16 v28, 0x0

    .line 139
    .line 140
    const/4 v11, 0x1

    .line 141
    if-ne v9, v11, :cond_6

    .line 142
    .line 143
    const/4 v11, 0x4

    .line 144
    invoke-virtual {v4, v11}, Ltr9;->e(I)[B

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    array-length v11, v4

    .line 149
    move-object/from16 p0, v4

    .line 150
    .line 151
    move/from16 v4, v28

    .line 152
    .line 153
    :goto_1
    if-ge v4, v11, :cond_3

    .line 154
    .line 155
    aget-byte v30, p0, v4

    .line 156
    .line 157
    if-nez v30, :cond_2

    .line 158
    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_2
    const-string v0, "Invalid non-zero SBA header reserved bytes"

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    return-object v1

    .line 169
    :cond_3
    if-nez v3, :cond_4

    .line 170
    .line 171
    move/from16 v4, v28

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_4
    const/16 v4, 0x4000

    .line 175
    .line 176
    :goto_2
    if-nez v3, :cond_5

    .line 177
    .line 178
    move/from16 p0, v28

    .line 179
    .line 180
    :goto_3
    move/from16 v29, v4

    .line 181
    .line 182
    const/16 v11, 0x20

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_5
    const/16 p0, 0x1

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :goto_4
    new-array v4, v11, [B

    .line 189
    .line 190
    move/from16 v11, p0

    .line 191
    .line 192
    move-object/from16 v30, v4

    .line 193
    .line 194
    move/from16 v32, v5

    .line 195
    .line 196
    move-object/from16 v31, v10

    .line 197
    .line 198
    move/from16 v33, v14

    .line 199
    .line 200
    move/from16 v5, v28

    .line 201
    .line 202
    move v10, v5

    .line 203
    move v14, v10

    .line 204
    move/from16 v4, v29

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_6
    const/16 v11, 0x20

    .line 208
    .line 209
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    .line 210
    .line 211
    .line 212
    move-result v30

    .line 213
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 214
    .line 215
    .line 216
    move-result v31

    .line 217
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 218
    .line 219
    .line 220
    move-result v32

    .line 221
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 222
    .line 223
    .line 224
    move-result v33

    .line 225
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 226
    .line 227
    .line 228
    move-result v34

    .line 229
    invoke-virtual {v4, v11}, Ltr9;->e(I)[B

    .line 230
    .line 231
    .line 232
    move-result-object v35

    .line 233
    const/16 v11, 0x8

    .line 234
    .line 235
    invoke-virtual {v4, v11}, Ltr9;->e(I)[B

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    array-length v11, v4

    .line 240
    move-object/from16 p0, v4

    .line 241
    .line 242
    move/from16 v4, v28

    .line 243
    .line 244
    :goto_5
    if-ge v4, v11, :cond_8

    .line 245
    .line 246
    aget-byte v36, p0, v4

    .line 247
    .line 248
    if-nez v36, :cond_7

    .line 249
    .line 250
    add-int/lit8 v4, v4, 0x1

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_7
    const-string v0, "Invalid non-zero SBA v2 header reserved bytes"

    .line 254
    .line 255
    const/4 v1, 0x0

    .line 256
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    return-object v1

    .line 260
    :cond_8
    move/from16 v4, v30

    .line 261
    .line 262
    move/from16 v11, v31

    .line 263
    .line 264
    move-object/from16 v30, v35

    .line 265
    .line 266
    move-object/from16 v31, v10

    .line 267
    .line 268
    move/from16 v10, v32

    .line 269
    .line 270
    move/from16 v32, v5

    .line 271
    .line 272
    move/from16 v5, v33

    .line 273
    .line 274
    move/from16 v33, v14

    .line 275
    .line 276
    move/from16 v14, v34

    .line 277
    .line 278
    :goto_6
    if-eqz v15, :cond_b

    .line 279
    .line 280
    move/from16 v34, v5

    .line 281
    .line 282
    const/4 v5, 0x1

    .line 283
    if-ne v15, v5, :cond_a

    .line 284
    .line 285
    if-gt v5, v2, :cond_9

    .line 286
    .line 287
    const/16 v5, 0x17

    .line 288
    .line 289
    if-ge v2, v5, :cond_9

    .line 290
    .line 291
    new-instance v5, Lpy6;

    .line 292
    .line 293
    invoke-direct {v5, v2}, Lpy6;-><init>(I)V

    .line 294
    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_9
    const-string v0, "Invalid zstd compression level: "

    .line 298
    .line 299
    invoke-static {v2, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    const/4 v1, 0x0

    .line 304
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    return-object v1

    .line 308
    :cond_a
    const/4 v1, 0x0

    .line 309
    new-instance v0, Li27;

    .line 310
    .line 311
    const-string v2, "Unsupported SBA compression method: "

    .line 312
    .line 313
    invoke-static {v15, v2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    .line 319
    .line 320
    throw v0

    .line 321
    :cond_b
    move/from16 v34, v5

    .line 322
    .line 323
    if-nez v2, :cond_25

    .line 324
    .line 325
    move-object v5, v1

    .line 326
    :goto_7
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    const/16 v19, 0x1

    .line 331
    .line 332
    xor-int/lit8 v1, v1, 0x1

    .line 333
    .line 334
    and-int/lit8 v35, v21, 0x1

    .line 335
    .line 336
    if-eqz v35, :cond_c

    .line 337
    .line 338
    move/from16 v35, v2

    .line 339
    .line 340
    const/4 v2, 0x1

    .line 341
    :goto_8
    move-object/from16 v36, v5

    .line 342
    .line 343
    goto :goto_9

    .line 344
    :cond_c
    move/from16 v35, v2

    .line 345
    .line 346
    move/from16 v2, v28

    .line 347
    .line 348
    goto :goto_8

    .line 349
    :goto_9
    const-string v5, ", method="

    .line 350
    .line 351
    if-ne v1, v2, :cond_24

    .line 352
    .line 353
    if-eqz v3, :cond_1a

    .line 354
    .line 355
    const-string v1, " macLength="

    .line 356
    .line 357
    const-string v2, " mac="

    .line 358
    .line 359
    move/from16 v37, v15

    .line 360
    .line 361
    const-string v15, " salt="

    .line 362
    .line 363
    move-object/from16 p0, v5

    .line 364
    .line 365
    const-string v5, " keyCheck="

    .line 366
    .line 367
    move-object/from16 v38, v1

    .line 368
    .line 369
    const-string v1, " iterations="

    .line 370
    .line 371
    move-object/from16 v39, v2

    .line 372
    .line 373
    const/4 v2, 0x1

    .line 374
    if-eq v3, v2, :cond_17

    .line 375
    .line 376
    const-string v2, " chunkSize="

    .line 377
    .line 378
    move-object/from16 v29, v2

    .line 379
    .line 380
    const-string v2, " nonceSeed="

    .line 381
    .line 382
    move-object/from16 v40, v2

    .line 383
    .line 384
    const/4 v2, 0x2

    .line 385
    if-eq v3, v2, :cond_15

    .line 386
    .line 387
    const/4 v2, 0x3

    .line 388
    if-eq v3, v2, :cond_13

    .line 389
    .line 390
    const/4 v2, 0x5

    .line 391
    move-object/from16 v16, v5

    .line 392
    .line 393
    const/4 v5, 0x4

    .line 394
    if-eq v3, v5, :cond_e

    .line 395
    .line 396
    if-ne v3, v2, :cond_d

    .line 397
    .line 398
    goto :goto_a

    .line 399
    :cond_d
    new-instance v0, Li27;

    .line 400
    .line 401
    const-string v1, "Unsupported SBA encryption method: "

    .line 402
    .line 403
    invoke-static {v3, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    const/4 v2, 0x0

    .line 408
    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    .line 410
    .line 411
    throw v0

    .line 412
    :cond_e
    :goto_a
    invoke-static {v9, v7, v8, v4, v11}, Lz07;->J(IIIII)Z

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    if-eqz v5, :cond_11

    .line 417
    .line 418
    const/16 v5, 0x10

    .line 419
    .line 420
    if-ne v12, v5, :cond_11

    .line 421
    .line 422
    if-ne v6, v5, :cond_11

    .line 423
    .line 424
    if-ne v0, v5, :cond_11

    .line 425
    .line 426
    if-nez v33, :cond_11

    .line 427
    .line 428
    if-nez v32, :cond_11

    .line 429
    .line 430
    const/16 v5, 0x1000

    .line 431
    .line 432
    if-gt v5, v13, :cond_11

    .line 433
    .line 434
    const v5, 0x1000001

    .line 435
    .line 436
    .line 437
    if-ge v13, v5, :cond_11

    .line 438
    .line 439
    move/from16 v5, v34

    .line 440
    .line 441
    invoke-static {v9, v10, v5, v14}, Lz07;->O(IIII)Z

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    if-nez v5, :cond_f

    .line 446
    .line 447
    goto :goto_d

    .line 448
    :cond_f
    if-ne v3, v2, :cond_10

    .line 449
    .line 450
    sget-object v0, Ll27;->Aegis128X2:Ll27;

    .line 451
    .line 452
    :goto_b
    move/from16 v16, v3

    .line 453
    .line 454
    move v15, v4

    .line 455
    move/from16 v25, v11

    .line 456
    .line 457
    move-object/from16 v1, v26

    .line 458
    .line 459
    move-object/from16 v2, v27

    .line 460
    .line 461
    move-object/from16 v4, v30

    .line 462
    .line 463
    move-object v3, v0

    .line 464
    :goto_c
    move-object/from16 v0, v31

    .line 465
    .line 466
    goto/16 :goto_15

    .line 467
    .line 468
    :cond_10
    sget-object v0, Ll27;->Aegis256:Ll27;

    .line 469
    .line 470
    goto :goto_b

    .line 471
    :cond_11
    :goto_d
    if-ne v3, v2, :cond_12

    .line 472
    .line 473
    const-string v2, "AEGIS-128X2"

    .line 474
    .line 475
    goto :goto_e

    .line 476
    :cond_12
    const-string v2, "AEGIS-256"

    .line 477
    .line 478
    :goto_e
    new-instance v3, Lqz6;

    .line 479
    .line 480
    const-string v4, "Invalid SBA "

    .line 481
    .line 482
    const-string v5, " fields: kdf="

    .line 483
    .line 484
    invoke-static {v4, v2, v5, v7, v1}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    move-object/from16 v2, v16

    .line 489
    .line 490
    invoke-static {v1, v8, v2, v12, v15}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 491
    .line 492
    .line 493
    move-object/from16 v4, v39

    .line 494
    .line 495
    move-object/from16 v2, v40

    .line 496
    .line 497
    invoke-static {v1, v6, v2, v0, v4}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 498
    .line 499
    .line 500
    move-object/from16 v4, v29

    .line 501
    .line 502
    move/from16 v2, v32

    .line 503
    .line 504
    move/from16 v0, v33

    .line 505
    .line 506
    move-object/from16 v5, v38

    .line 507
    .line 508
    invoke-static {v1, v0, v5, v2, v4}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    const/4 v1, 0x0

    .line 519
    invoke-direct {v3, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 520
    .line 521
    .line 522
    throw v3

    .line 523
    :cond_13
    move/from16 v16, v3

    .line 524
    .line 525
    move-object v2, v5

    .line 526
    move-object/from16 v41, v29

    .line 527
    .line 528
    move/from16 v5, v34

    .line 529
    .line 530
    move-object/from16 v42, v38

    .line 531
    .line 532
    move-object/from16 v43, v39

    .line 533
    .line 534
    move-object/from16 v3, v40

    .line 535
    .line 536
    invoke-static {v9, v7, v8, v4, v11}, Lz07;->J(IIIII)Z

    .line 537
    .line 538
    .line 539
    move-result v17

    .line 540
    if-eqz v17, :cond_14

    .line 541
    .line 542
    move/from16 v17, v4

    .line 543
    .line 544
    const/16 v4, 0x10

    .line 545
    .line 546
    if-ne v12, v4, :cond_14

    .line 547
    .line 548
    if-ne v6, v4, :cond_14

    .line 549
    .line 550
    if-ne v0, v4, :cond_14

    .line 551
    .line 552
    if-nez v33, :cond_14

    .line 553
    .line 554
    if-nez v32, :cond_14

    .line 555
    .line 556
    const/16 v4, 0x1000

    .line 557
    .line 558
    if-gt v4, v13, :cond_14

    .line 559
    .line 560
    const v4, 0x1000001

    .line 561
    .line 562
    .line 563
    if-ge v13, v4, :cond_14

    .line 564
    .line 565
    invoke-static {v9, v10, v5, v14}, Lz07;->O(IIII)Z

    .line 566
    .line 567
    .line 568
    move-result v4

    .line 569
    if-eqz v4, :cond_14

    .line 570
    .line 571
    sget-object v0, Ll27;->Aes256GcmSiv:Ll27;

    .line 572
    .line 573
    :goto_f
    move-object v3, v0

    .line 574
    move/from16 v25, v11

    .line 575
    .line 576
    move/from16 v15, v17

    .line 577
    .line 578
    :goto_10
    move-object/from16 v1, v26

    .line 579
    .line 580
    move-object/from16 v2, v27

    .line 581
    .line 582
    move-object/from16 v4, v30

    .line 583
    .line 584
    goto :goto_c

    .line 585
    :cond_14
    new-instance v4, Lqz6;

    .line 586
    .line 587
    const-string v5, "Invalid SBA AES-GCM-SIV fields: kdf="

    .line 588
    .line 589
    invoke-static {v5, v7, v1, v2, v8}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    invoke-static {v1, v12, v15, v6, v3}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 594
    .line 595
    .line 596
    move/from16 v2, v33

    .line 597
    .line 598
    move-object/from16 v3, v42

    .line 599
    .line 600
    move-object/from16 v5, v43

    .line 601
    .line 602
    invoke-static {v1, v0, v5, v2, v3}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 603
    .line 604
    .line 605
    move/from16 v0, v32

    .line 606
    .line 607
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    move-object/from16 v0, v41

    .line 611
    .line 612
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    const/4 v1, 0x0

    .line 623
    invoke-direct {v4, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 624
    .line 625
    .line 626
    throw v4

    .line 627
    :cond_15
    move/from16 v16, v3

    .line 628
    .line 629
    move-object v2, v5

    .line 630
    move-object/from16 v44, v29

    .line 631
    .line 632
    move/from16 v5, v34

    .line 633
    .line 634
    move-object/from16 v45, v38

    .line 635
    .line 636
    move-object/from16 v46, v39

    .line 637
    .line 638
    move-object/from16 v3, v40

    .line 639
    .line 640
    invoke-static {v9, v7, v8, v4, v11}, Lz07;->J(IIIII)Z

    .line 641
    .line 642
    .line 643
    move-result v17

    .line 644
    if-eqz v17, :cond_16

    .line 645
    .line 646
    move/from16 v17, v4

    .line 647
    .line 648
    const/16 v4, 0x10

    .line 649
    .line 650
    if-ne v12, v4, :cond_16

    .line 651
    .line 652
    if-ne v6, v4, :cond_16

    .line 653
    .line 654
    if-ne v0, v4, :cond_16

    .line 655
    .line 656
    if-nez v33, :cond_16

    .line 657
    .line 658
    if-nez v32, :cond_16

    .line 659
    .line 660
    const/16 v4, 0x1000

    .line 661
    .line 662
    if-gt v4, v13, :cond_16

    .line 663
    .line 664
    const v4, 0x1000001

    .line 665
    .line 666
    .line 667
    if-ge v13, v4, :cond_16

    .line 668
    .line 669
    invoke-static {v9, v10, v5, v14}, Lz07;->O(IIII)Z

    .line 670
    .line 671
    .line 672
    move-result v4

    .line 673
    if-eqz v4, :cond_16

    .line 674
    .line 675
    sget-object v0, Ll27;->Aes256Gcm:Ll27;

    .line 676
    .line 677
    goto :goto_f

    .line 678
    :cond_16
    new-instance v4, Lqz6;

    .line 679
    .line 680
    const-string v5, "Invalid SBA AES-GCM fields: kdf="

    .line 681
    .line 682
    invoke-static {v5, v7, v1, v2, v8}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    invoke-static {v1, v12, v15, v6, v3}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 687
    .line 688
    .line 689
    move/from16 v3, v33

    .line 690
    .line 691
    move-object/from16 v2, v45

    .line 692
    .line 693
    move-object/from16 v5, v46

    .line 694
    .line 695
    invoke-static {v1, v0, v5, v3, v2}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 696
    .line 697
    .line 698
    move/from16 v0, v32

    .line 699
    .line 700
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    move-object/from16 v0, v44

    .line 704
    .line 705
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    const/4 v1, 0x0

    .line 716
    invoke-direct {v4, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 717
    .line 718
    .line 719
    throw v4

    .line 720
    :cond_17
    move/from16 v16, v3

    .line 721
    .line 722
    move-object v2, v5

    .line 723
    move-object/from16 v17, v15

    .line 724
    .line 725
    move/from16 v3, v33

    .line 726
    .line 727
    move/from16 v5, v34

    .line 728
    .line 729
    move-object/from16 v47, v38

    .line 730
    .line 731
    move-object/from16 v48, v39

    .line 732
    .line 733
    move v15, v4

    .line 734
    move/from16 v4, v32

    .line 735
    .line 736
    invoke-static {v9, v7, v8, v15, v11}, Lz07;->J(IIIII)Z

    .line 737
    .line 738
    .line 739
    move-result v25

    .line 740
    if-eqz v25, :cond_19

    .line 741
    .line 742
    move/from16 v25, v11

    .line 743
    .line 744
    const/16 v11, 0x10

    .line 745
    .line 746
    if-ne v12, v11, :cond_19

    .line 747
    .line 748
    if-ne v6, v11, :cond_19

    .line 749
    .line 750
    if-ne v0, v11, :cond_19

    .line 751
    .line 752
    const/4 v11, 0x1

    .line 753
    if-ne v3, v11, :cond_19

    .line 754
    .line 755
    const/16 v11, 0x20

    .line 756
    .line 757
    if-ne v4, v11, :cond_19

    .line 758
    .line 759
    invoke-static {v9, v10, v5, v14}, Lz07;->O(IIII)Z

    .line 760
    .line 761
    .line 762
    move-result v5

    .line 763
    if-eqz v5, :cond_19

    .line 764
    .line 765
    if-nez v13, :cond_18

    .line 766
    .line 767
    sget-object v0, Ll27;->SevenZipAes:Ll27;

    .line 768
    .line 769
    move-object v3, v0

    .line 770
    goto/16 :goto_10

    .line 771
    .line 772
    :cond_18
    const-string v0, "SBA 7zAES payload chunk size must be zero: "

    .line 773
    .line 774
    invoke-static {v13, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    const/4 v1, 0x0

    .line 779
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 780
    .line 781
    .line 782
    return-object v1

    .line 783
    :cond_19
    new-instance v5, Lqz6;

    .line 784
    .line 785
    const-string v9, "Invalid SBA AES-CBC compatibility fields: kdf="

    .line 786
    .line 787
    invoke-static {v9, v7, v1, v2, v8}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    const-string v2, " iv="

    .line 792
    .line 793
    move-object/from16 v7, v17

    .line 794
    .line 795
    invoke-static {v1, v12, v7, v6, v2}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 796
    .line 797
    .line 798
    move-object/from16 v2, v47

    .line 799
    .line 800
    move-object/from16 v6, v48

    .line 801
    .line 802
    invoke-static {v1, v0, v6, v3, v2}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    const/4 v1, 0x0

    .line 813
    invoke-direct {v5, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 814
    .line 815
    .line 816
    throw v5

    .line 817
    :cond_1a
    move/from16 v16, v3

    .line 818
    .line 819
    move-object/from16 p0, v5

    .line 820
    .line 821
    move/from16 v25, v11

    .line 822
    .line 823
    move/from16 v37, v15

    .line 824
    .line 825
    move/from16 v3, v33

    .line 826
    .line 827
    move/from16 v5, v34

    .line 828
    .line 829
    move v15, v4

    .line 830
    move/from16 v4, v32

    .line 831
    .line 832
    if-nez v7, :cond_23

    .line 833
    .line 834
    if-nez v8, :cond_23

    .line 835
    .line 836
    if-nez v12, :cond_23

    .line 837
    .line 838
    if-nez v6, :cond_23

    .line 839
    .line 840
    if-nez v0, :cond_23

    .line 841
    .line 842
    if-nez v3, :cond_23

    .line 843
    .line 844
    if-nez v4, :cond_23

    .line 845
    .line 846
    if-nez v13, :cond_23

    .line 847
    .line 848
    if-nez v15, :cond_23

    .line 849
    .line 850
    if-nez v25, :cond_23

    .line 851
    .line 852
    if-nez v10, :cond_23

    .line 853
    .line 854
    if-nez v5, :cond_23

    .line 855
    .line 856
    if-nez v14, :cond_23

    .line 857
    .line 858
    move-object/from16 v0, v31

    .line 859
    .line 860
    array-length v1, v0

    .line 861
    move/from16 v2, v28

    .line 862
    .line 863
    :goto_11
    if-ge v2, v1, :cond_1b

    .line 864
    .line 865
    aget-byte v3, v0, v2

    .line 866
    .line 867
    if-nez v3, :cond_1e

    .line 868
    .line 869
    add-int/lit8 v2, v2, 0x1

    .line 870
    .line 871
    goto :goto_11

    .line 872
    :cond_1b
    move-object/from16 v1, v26

    .line 873
    .line 874
    array-length v2, v1

    .line 875
    move/from16 v3, v28

    .line 876
    .line 877
    :goto_12
    if-ge v3, v2, :cond_1c

    .line 878
    .line 879
    aget-byte v4, v1, v3

    .line 880
    .line 881
    if-nez v4, :cond_1e

    .line 882
    .line 883
    add-int/lit8 v3, v3, 0x1

    .line 884
    .line 885
    goto :goto_12

    .line 886
    :cond_1c
    move-object/from16 v2, v27

    .line 887
    .line 888
    array-length v3, v2

    .line 889
    move/from16 v4, v28

    .line 890
    .line 891
    :goto_13
    if-ge v4, v3, :cond_1d

    .line 892
    .line 893
    aget-byte v5, v2, v4

    .line 894
    .line 895
    if-nez v5, :cond_1e

    .line 896
    .line 897
    add-int/lit8 v4, v4, 0x1

    .line 898
    .line 899
    goto :goto_13

    .line 900
    :cond_1d
    move-object/from16 v4, v30

    .line 901
    .line 902
    array-length v3, v4

    .line 903
    move/from16 v5, v28

    .line 904
    .line 905
    :goto_14
    if-ge v5, v3, :cond_1f

    .line 906
    .line 907
    aget-byte v6, v4, v5

    .line 908
    .line 909
    if-nez v6, :cond_1e

    .line 910
    .line 911
    add-int/lit8 v5, v5, 0x1

    .line 912
    .line 913
    goto :goto_14

    .line 914
    :cond_1e
    const-string v0, "SBA encryption bytes must be zero when encryption is disabled"

    .line 915
    .line 916
    const/4 v1, 0x0

    .line 917
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 918
    .line 919
    .line 920
    return-object v1

    .line 921
    :cond_1f
    sget-object v3, Ll27;->None:Ll27;

    .line 922
    .line 923
    :goto_15
    sget-object v5, Ll27;->None:Ll27;

    .line 924
    .line 925
    if-eq v3, v5, :cond_20

    .line 926
    .line 927
    const/4 v11, 0x1

    .line 928
    goto :goto_16

    .line 929
    :cond_20
    move/from16 v11, v28

    .line 930
    .line 931
    :goto_16
    and-int/lit8 v5, v21, 0x2

    .line 932
    .line 933
    if-eqz v5, :cond_21

    .line 934
    .line 935
    const/4 v6, 0x1

    .line 936
    goto :goto_17

    .line 937
    :cond_21
    move/from16 v6, v28

    .line 938
    .line 939
    :goto_17
    if-ne v11, v6, :cond_22

    .line 940
    .line 941
    move/from16 v10, v20

    .line 942
    .line 943
    move/from16 v20, v8

    .line 944
    .line 945
    new-instance v8, Ls07;

    .line 946
    .line 947
    move-wide/from16 v17, v22

    .line 948
    .line 949
    move/from16 v23, v13

    .line 950
    .line 951
    move-wide/from16 v12, v17

    .line 952
    .line 953
    move-object/from16 v26, v1

    .line 954
    .line 955
    move-object/from16 v27, v2

    .line 956
    .line 957
    move-object/from16 v17, v3

    .line 958
    .line 959
    move-object/from16 v24, v4

    .line 960
    .line 961
    move/from16 v19, v7

    .line 962
    .line 963
    move/from16 v18, v16

    .line 964
    .line 965
    move/from16 v11, v21

    .line 966
    .line 967
    move/from16 v22, v25

    .line 968
    .line 969
    move/from16 v16, v35

    .line 970
    .line 971
    move-object/from16 v14, v36

    .line 972
    .line 973
    move-object/from16 v25, v0

    .line 974
    .line 975
    move/from16 v21, v15

    .line 976
    .line 977
    move/from16 v15, v37

    .line 978
    .line 979
    invoke-direct/range {v8 .. v27}, Ls07;-><init>(IIIJLcy0;IILl27;IIIIII[B[B[B[B)V

    .line 980
    .line 981
    .line 982
    return-object v8

    .line 983
    :cond_22
    move/from16 v0, v16

    .line 984
    .line 985
    move/from16 v11, v21

    .line 986
    .line 987
    const-string v1, "Inconsistent SBA encryption header: flags="

    .line 988
    .line 989
    move-object/from16 v2, p0

    .line 990
    .line 991
    invoke-static {v1, v11, v0, v2}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    const/4 v1, 0x0

    .line 996
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 997
    .line 998
    .line 999
    return-object v1

    .line 1000
    :cond_23
    const-string v0, "SBA encryption/KDF/MAC fields must be zero when encryption is disabled"

    .line 1001
    .line 1002
    const/4 v1, 0x0

    .line 1003
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1004
    .line 1005
    .line 1006
    return-object v1

    .line 1007
    :cond_24
    move-object v2, v5

    .line 1008
    move/from16 v11, v21

    .line 1009
    .line 1010
    const/4 v1, 0x0

    .line 1011
    const-string v0, "Inconsistent SBA compression header: flags="

    .line 1012
    .line 1013
    invoke-static {v0, v11, v15, v2}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1018
    .line 1019
    .line 1020
    return-object v1

    .line 1021
    :cond_25
    const/4 v1, 0x0

    .line 1022
    const-string v0, "Compression level must be 0 when compression is disabled"

    .line 1023
    .line 1024
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1025
    .line 1026
    .line 1027
    return-object v1

    .line 1028
    :cond_26
    move-wide v12, v13

    .line 1029
    const/4 v1, 0x0

    .line 1030
    const-string v0, "Invalid negative SBA creation time: "

    .line 1031
    .line 1032
    invoke-static {v12, v13, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1037
    .line 1038
    .line 1039
    return-object v1

    .line 1040
    :cond_27
    const/4 v1, 0x0

    .line 1041
    new-instance v0, Li27;

    .line 1042
    .line 1043
    const-string v2, "Unsupported SBA archive flags: "

    .line 1044
    .line 1045
    invoke-static {v11, v2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v2

    .line 1049
    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1050
    .line 1051
    .line 1052
    throw v0

    .line 1053
    :cond_28
    const/4 v1, 0x0

    .line 1054
    const-string v0, "Invalid SBA header size: "

    .line 1055
    .line 1056
    invoke-static {v10, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1061
    .line 1062
    .line 1063
    return-object v1

    .line 1064
    :cond_29
    new-instance v0, Lj27;

    .line 1065
    .line 1066
    invoke-direct {v0, v9}, Lj27;-><init>(I)V

    .line 1067
    .line 1068
    .line 1069
    throw v0
.end method

.method public static z([BJJLs07;)Lw07;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Invalid SBA archive metadata length: "

    .line 4
    .line 5
    const-string v2, "SBA entry count exceeds index bounds: count="

    .line 6
    .line 7
    const-string v3, "Invalid SBA entry count: "

    .line 8
    .line 9
    const-string v4, "Invalid SBA index header size: "

    .line 10
    .line 11
    new-instance v5, Ljava/io/DataInputStream;

    .line 12
    .line 13
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 14
    .line 15
    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    new-instance v7, Ltr9;

    .line 22
    .line 23
    const/16 v6, 0x10

    .line 24
    .line 25
    invoke-direct {v7, v5, v6}, Ltr9;-><init>(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    sget-object v8, Lzv1;->e:[B

    .line 29
    .line 30
    const-string v9, "index"

    .line 31
    .line 32
    invoke-virtual {v7, v9, v8}, Ltr9;->a(Ljava/lang/String;[B)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    const/4 v15, 0x0

    .line 40
    if-ne v8, v6, :cond_8

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 43
    .line 44
    .line 45
    move-result v14

    .line 46
    const/4 v4, 0x1

    .line 47
    if-gt v4, v14, :cond_7

    .line 48
    .line 49
    const/4 v6, 0x3

    .line 50
    if-ge v14, v6, :cond_7

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-ltz v6, :cond_6

    .line 57
    .line 58
    if-ne v14, v4, :cond_0

    .line 59
    .line 60
    const/16 v3, 0x54

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/16 v3, 0x6c

    .line 64
    .line 65
    :goto_0
    int-to-long v8, v6

    .line 66
    int-to-long v3, v3

    .line 67
    mul-long/2addr v8, v3

    .line 68
    const-string v3, "minimum index size"

    .line 69
    .line 70
    const-wide/16 v10, 0x10

    .line 71
    .line 72
    invoke-static {v10, v11, v8, v9, v3}, Lus2;->C(JJLjava/lang/String;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    array-length v8, v0

    .line 77
    int-to-long v8, v8

    .line 78
    cmp-long v3, v3, v8

    .line 79
    .line 80
    if-gtz v3, :cond_5

    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ltz v0, :cond_4

    .line 87
    .line 88
    const/high16 v2, 0x100000

    .line 89
    .line 90
    if-gt v0, v2, :cond_4

    .line 91
    .line 92
    invoke-virtual {v7, v0}, Ltr9;->e(I)[B

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, "archive metadata"

    .line 97
    .line 98
    invoke-static {v1, v0}, Lus2;->n(Ljava/lang/String;[B)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .line 106
    .line 107
    new-instance v2, Ljava/util/HashSet;

    .line 108
    .line 109
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 110
    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    move v8, v3

    .line 114
    :goto_1
    if-ge v8, v6, :cond_2

    .line 115
    .line 116
    move-wide/from16 v9, p1

    .line 117
    .line 118
    move-wide/from16 v11, p3

    .line 119
    .line 120
    move-object/from16 v13, p5

    .line 121
    .line 122
    invoke-static/range {v7 .. v14}, Lz07;->D(Ltr9;IJJLs07;I)Loz6;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    iget-object v4, v3, Loz6;->a:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-eqz v9, :cond_1

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    add-int/lit8 v8, v8, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    move-object v1, v0

    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :cond_1
    new-instance v0, Lqz6;

    .line 145
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v2, "Duplicate SBA entry name in index: "

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-direct {v0, v1, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_2
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-nez v2, :cond_3

    .line 172
    .line 173
    new-instance v2, Lw07;

    .line 174
    .line 175
    invoke-direct {v2, v14, v0, v1}, Lw07;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .line 177
    .line 178
    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    .line 179
    .line 180
    .line 181
    return-object v2

    .line 182
    :cond_3
    :try_start_1
    new-instance v0, Lqz6;

    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v3, "Trailing bytes after SBA index records: "

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-direct {v0, v1, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :cond_4
    new-instance v2, Lqz6;

    .line 210
    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-direct {v2, v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    throw v2

    .line 227
    :cond_5
    new-instance v1, Lqz6;

    .line 228
    .line 229
    array-length v0, v0

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v2, ", indexBytes="

    .line 239
    .line 240
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-direct {v1, v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    throw v1

    .line 254
    :cond_6
    new-instance v0, Lqz6;

    .line 255
    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-direct {v0, v1, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    .line 270
    .line 271
    throw v0

    .line 272
    :cond_7
    new-instance v0, Lj27;

    .line 273
    .line 274
    invoke-direct {v0, v14}, Lj27;-><init>(I)V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    :cond_8
    new-instance v0, Lqz6;

    .line 279
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-direct {v0, v1, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    .line 294
    .line 295
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    :goto_2
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    :catchall_1
    move-exception v0

    .line 298
    invoke-static {v5, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 299
    .line 300
    .line 301
    throw v0
.end method


# virtual methods
.method public final A()Lky6;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lz07;->f:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_4

    .line 7
    .line 8
    invoke-virtual {v0}, Lz07;->n()Lv07;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, v0, Lv07;->b:Lu07;

    .line 13
    .line 14
    iget-object v3, v0, Lv07;->a:Ls07;

    .line 15
    .line 16
    iget-object v4, v3, Ls07;->h:Ll27;

    .line 17
    .line 18
    iget-object v10, v3, Ls07;->e:Lcy0;

    .line 19
    .line 20
    iget-object v5, v0, Lv07;->f:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v6, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/16 v7, 0xa

    .line 25
    .line 26
    invoke-static {v5, v7}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/4 v7, 0x0

    .line 38
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-eqz v8, :cond_1

    .line 43
    .line 44
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    add-int/lit8 v9, v7, 0x1

    .line 49
    .line 50
    if-ltz v7, :cond_0

    .line 51
    .line 52
    check-cast v8, Loz6;

    .line 53
    .line 54
    invoke-virtual {v4}, Ll27;->toPublicMethod()Lwy6;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    invoke-virtual {v8, v7, v10, v11}, Loz6;->a(ILcy0;Lwy6;)Lxy6;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move v7, v9

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lfl1;->F0()V

    .line 68
    .line 69
    .line 70
    throw v2

    .line 71
    :cond_1
    new-instance v19, Lky6;

    .line 72
    .line 73
    iget v5, v3, Ls07;->a:I

    .line 74
    .line 75
    iget-wide v7, v0, Lv07;->c:J

    .line 76
    .line 77
    iget-object v9, v0, Lv07;->e:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v18, Lgy6;

    .line 80
    .line 81
    move-object/from16 v21, v6

    .line 82
    .line 83
    iget v6, v3, Ls07;->b:I

    .line 84
    .line 85
    move-wide v15, v7

    .line 86
    iget v7, v3, Ls07;->c:I

    .line 87
    .line 88
    move-object/from16 v17, v9

    .line 89
    .line 90
    iget-wide v8, v3, Ls07;->d:J

    .line 91
    .line 92
    iget v11, v3, Ls07;->f:I

    .line 93
    .line 94
    iget v12, v3, Ls07;->g:I

    .line 95
    .line 96
    invoke-virtual {v4}, Ll27;->toPublicMethod()Lwy6;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    iget v14, v3, Ls07;->i:I

    .line 101
    .line 102
    iget v4, v3, Ls07;->j:I

    .line 103
    .line 104
    iget v2, v3, Ls07;->k:I

    .line 105
    .line 106
    move/from16 v25, v2

    .line 107
    .line 108
    iget v2, v3, Ls07;->n:I

    .line 109
    .line 110
    move/from16 p0, v2

    .line 111
    .line 112
    const/4 v2, 0x1

    .line 113
    if-eqz v4, :cond_3

    .line 114
    .line 115
    if-ne v4, v2, :cond_2

    .line 116
    .line 117
    new-instance v22, Ltz6;

    .line 118
    .line 119
    sget-object v23, Luz6;->Argon2id:Luz6;

    .line 120
    .line 121
    iget v2, v3, Ls07;->l:I

    .line 122
    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v26

    .line 127
    iget v2, v3, Ls07;->m:I

    .line 128
    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v27

    .line 133
    move/from16 v24, v4

    .line 134
    .line 135
    invoke-direct/range {v22 .. v27}, Ltz6;-><init>(Luz6;IILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 136
    .line 137
    .line 138
    :goto_1
    move v2, v5

    .line 139
    move-wide v3, v15

    .line 140
    move-object/from16 v20, v17

    .line 141
    .line 142
    move-object/from16 v5, v18

    .line 143
    .line 144
    move-object/from16 v18, v22

    .line 145
    .line 146
    move/from16 v15, v24

    .line 147
    .line 148
    move/from16 v16, v25

    .line 149
    .line 150
    move/from16 v17, p0

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_2
    move v2, v4

    .line 154
    const-string v0, "Unsupported SBA KDF method: "

    .line 155
    .line 156
    invoke-static {v2, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const/4 v1, 0x0

    .line 161
    invoke-static {v0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    return-object v1

    .line 165
    :cond_3
    move v2, v4

    .line 166
    new-instance v22, Ltz6;

    .line 167
    .line 168
    sget-object v23, Luz6;->None:Luz6;

    .line 169
    .line 170
    const/16 v26, 0x0

    .line 171
    .line 172
    const/16 v27, 0x0

    .line 173
    .line 174
    move/from16 v24, v2

    .line 175
    .line 176
    invoke-direct/range {v22 .. v27}, Ltz6;-><init>(Luz6;IILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :goto_2
    invoke-direct/range {v5 .. v18}, Lgy6;-><init>(IIJLcy0;IILwy6;IIIILtz6;)V

    .line 181
    .line 182
    .line 183
    move-object/from16 v18, v5

    .line 184
    .line 185
    new-instance v5, Lhy6;

    .line 186
    .line 187
    iget-wide v6, v1, Lu07;->b:J

    .line 188
    .line 189
    iget-wide v8, v1, Lu07;->c:J

    .line 190
    .line 191
    iget v10, v0, Lv07;->d:I

    .line 192
    .line 193
    iget v11, v1, Lu07;->d:I

    .line 194
    .line 195
    int-to-long v12, v11

    .line 196
    const-wide v14, 0xffffffffL

    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    and-long/2addr v12, v14

    .line 202
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const/4 v12, 0x1

    .line 211
    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const-string v12, "0x%08x"

    .line 216
    .line 217
    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    move-object/from16 v28, v12

    .line 226
    .line 227
    move-object v12, v0

    .line 228
    move-object/from16 v0, v28

    .line 229
    .line 230
    invoke-direct/range {v5 .. v13}, Lhy6;-><init>(JJIILjava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    new-instance v6, Lfy6;

    .line 234
    .line 235
    iget-wide v9, v1, Lu07;->a:J

    .line 236
    .line 237
    iget v8, v1, Lu07;->e:I

    .line 238
    .line 239
    int-to-long v11, v8

    .line 240
    and-long/2addr v11, v14

    .line 241
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    const/4 v12, 0x1

    .line 250
    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v11

    .line 258
    const/16 v7, 0x20

    .line 259
    .line 260
    invoke-direct/range {v6 .. v11}, Lfy6;-><init>(IIJLjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const-string v12, "Swift Backup Archive"

    .line 264
    .line 265
    const-string v13, "SBA1"

    .line 266
    .line 267
    move v14, v2

    .line 268
    move-wide v15, v3

    .line 269
    move-object/from16 v11, v19

    .line 270
    .line 271
    move-object/from16 v17, v20

    .line 272
    .line 273
    move-object/from16 v19, v5

    .line 274
    .line 275
    move-object/from16 v20, v6

    .line 276
    .line 277
    invoke-direct/range {v11 .. v21}, Lky6;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lgy6;Lhy6;Lfy6;Ljava/util/List;)V

    .line 278
    .line 279
    .line 280
    return-object v11

    .line 281
    :cond_4
    const-string v0, "SbaReader has been closed"

    .line 282
    .line 283
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const/16 v20, 0x0

    .line 287
    .line 288
    return-object v20
.end method

.method public final G(Ls07;)Lf44;
    .locals 11

    .line 1
    iget-object v0, p1, Ls07;->h:Ll27;

    .line 2
    .line 3
    iget-object v1, p1, Ls07;->r:[B

    .line 4
    .line 5
    iget-object v3, p1, Ls07;->q:[B

    .line 6
    .line 7
    sget-object v2, Ll27;->None:Ll27;

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const-string v9, "SBA archive is not encrypted"

    .line 11
    .line 12
    if-eq v0, v2, :cond_6

    .line 13
    .line 14
    iget-object v2, p0, Lz07;->d:Lf44;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    iget-object v2, p0, Lz07;->b:Lb17;

    .line 20
    .line 21
    iget-object v4, v2, Lb17;->e:Lny6;

    .line 22
    .line 23
    const-string v5, "derive archive key"

    .line 24
    .line 25
    invoke-static {v4, v5}, Lx13;->S(Lny6;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v2, Lb17;->b:[C

    .line 29
    .line 30
    if-eqz v2, :cond_5

    .line 31
    .line 32
    sget-object v10, Ly07;->a:[I

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    aget v4, v10, v4

    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    if-eq v4, v5, :cond_4

    .line 42
    .line 43
    const/4 v5, 0x6

    .line 44
    if-eq v4, v5, :cond_1

    .line 45
    .line 46
    const/16 v4, 0x20

    .line 47
    .line 48
    :goto_0
    move v7, v4

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/16 v4, 0x10

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    sget-object v4, Lsy6;->a:[B

    .line 54
    .line 55
    iget v4, p1, Ls07;->k:I

    .line 56
    .line 57
    iget v5, p1, Ls07;->l:I

    .line 58
    .line 59
    iget v6, p1, Ls07;->m:I

    .line 60
    .line 61
    invoke-static/range {v2 .. v7}, Lsy6;->a([C[BIIII)[B

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v0, v2, v3, v1}, Lsy6;->d(Ll27;[B[B[B)[B

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    iget-object v5, p1, Ls07;->p:[B

    .line 70
    .line 71
    invoke-static {v4, v5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    const/4 v6, 0x0

    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    array-length v5, v4

    .line 79
    invoke-static {v4, v6, v5, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    aget v4, v10, v4

    .line 87
    .line 88
    packed-switch v4, :pswitch_data_0

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lq;->j()V

    .line 92
    .line 93
    .line 94
    return-object v8

    .line 95
    :pswitch_0
    sget-object v4, La07;->a:[I

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    aget v4, v4, v5

    .line 102
    .line 103
    packed-switch v4, :pswitch_data_1

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lq;->j()V

    .line 107
    .line 108
    .line 109
    return-object v8

    .line 110
    :pswitch_1
    invoke-static {v9, v8}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    return-object v8

    .line 114
    :pswitch_2
    iget p1, p1, Ls07;->a:I

    .line 115
    .line 116
    const/4 v0, 0x2

    .line 117
    if-lt p1, v0, :cond_2

    .line 118
    .line 119
    invoke-static {v2, v3, v1}, Lsy6;->c([B[B[B)[B

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    new-array p1, v6, [B

    .line 125
    .line 126
    :goto_2
    new-instance v0, Lf44;

    .line 127
    .line 128
    invoke-direct {v0, v2, p1}, Lf44;-><init>([B[B)V

    .line 129
    .line 130
    .line 131
    iput-object v0, p0, Lz07;->d:Lf44;

    .line 132
    .line 133
    return-object v0

    .line 134
    :pswitch_3
    new-instance p0, Li27;

    .line 135
    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v1, "SBA optional encryption backend is not enabled for "

    .line 139
    .line 140
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v0, ". Build with -PsbaEnableInternalEncryptionBackends=true to enable internal compatibility readers."

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-direct {p0, p1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    throw p0

    .line 159
    :pswitch_4
    invoke-static {v9, v8}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    return-object v8

    .line 163
    :cond_3
    array-length p0, v2

    .line 164
    invoke-static {v2, v6, p0, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 165
    .line 166
    .line 167
    array-length p0, v4

    .line 168
    invoke-static {v4, v6, p0, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 169
    .line 170
    .line 171
    new-instance p0, Lsz6;

    .line 172
    .line 173
    const-string p1, "Invalid SBA archive key"

    .line 174
    .line 175
    invoke-direct {p0, p1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    throw p0

    .line 179
    :cond_4
    invoke-static {v9, v8}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    return-object v8

    .line 183
    :cond_5
    new-instance p0, Lsz6;

    .line 184
    .line 185
    const-string p1, "Archive key required for encrypted SBA payload"

    .line 186
    .line 187
    invoke-direct {p0, p1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    throw p0

    .line 191
    :cond_6
    invoke-static {v9, v8}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    return-object v8

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final U(Ljava/io/RandomAccessFile;Ls07;Lu07;[B)V
    .locals 10

    .line 1
    iget-object v0, p2, Ls07;->h:Ll27;

    .line 2
    .line 3
    sget-object v1, Ll27;->None:Ll27;

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    iget v0, p2, Ls07;->a:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lz07;->b:Lb17;

    .line 14
    .line 15
    iget-object v0, v0, Lb17;->b:[C

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0, p2}, Lz07;->G(Ls07;)Lf44;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget v1, p2, Ls07;->b:I

    .line 25
    .line 26
    new-array v3, v1, [B

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    move v0, p1

    .line 38
    :goto_0
    const/16 v2, 0x20

    .line 39
    .line 40
    if-ge v0, v2, :cond_2

    .line 41
    .line 42
    const-wide/16 v4, 0x68

    .line 43
    .line 44
    int-to-long v6, v0

    .line 45
    add-long/2addr v6, v4

    .line 46
    long-to-int v2, v6

    .line 47
    aput-byte p1, v3, v2

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget-object v0, Lsy6;->a:[B

    .line 53
    .line 54
    iget-object v2, p0, Lf44;->b:[B

    .line 55
    .line 56
    iget-wide v4, p3, Lu07;->b:J

    .line 57
    .line 58
    iget-wide v6, p3, Lu07;->c:J

    .line 59
    .line 60
    iget v8, p3, Lu07;->d:I

    .line 61
    .line 62
    move-object v9, p4

    .line 63
    invoke-static/range {v2 .. v9}, Lsy6;->b([B[BJJI[B)[B

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :try_start_0
    iget-object p2, p2, Ls07;->o:[B

    .line 68
    .line 69
    invoke-static {p0, p2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 70
    .line 71
    .line 72
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    if-eqz p2, :cond_3

    .line 74
    .line 75
    array-length p2, p0

    .line 76
    invoke-static {p0, p1, p2, p1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 77
    .line 78
    .line 79
    invoke-static {v3, p1, v1, p1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    :try_start_1
    new-instance p2, Lpz6;

    .line 84
    .line 85
    const-string p3, "SBA encrypted index MAC mismatch"

    .line 86
    .line 87
    const/4 p4, 0x0

    .line 88
    invoke-direct {p2, p3, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    move-object p2, v0

    .line 94
    array-length p3, p0

    .line 95
    invoke-static {p0, p1, p3, p1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 96
    .line 97
    .line 98
    invoke-static {v3, p1, v1, p1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 99
    .line 100
    .line 101
    throw p2

    .line 102
    :cond_4
    :goto_1
    return-void
.end method

.method public final W(Li07;Ls07;Loz6;Lmt3;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v2, v0, v1

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    aget-object v6, v0, v3

    .line 10
    .line 11
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v11, Ljava/lang/Thread;

    .line 17
    .line 18
    new-instance v4, Lo07;

    .line 19
    .line 20
    move-object v8, p0

    .line 21
    move-object v9, p1

    .line 22
    move-object v5, p2

    .line 23
    move-object v10, p3

    .line 24
    invoke-direct/range {v4 .. v10}, Lo07;-><init>(Ls07;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/atomic/AtomicReference;Lz07;Li07;Loz6;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p3, Loz6;->a:Ljava/lang/String;

    .line 28
    .line 29
    const-string p3, "SBA decrypt "

    .line 30
    .line 31
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-direct {v11, v4, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 39
    .line 40
    .line 41
    const/4 p3, 0x0

    .line 42
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-object/from16 v0, p4

    .line 46
    .line 47
    invoke-interface {v0, v2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    move-object v0, p3

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    :goto_0
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move v1, v3

    .line 71
    goto :goto_0

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 74
    .line 75
    .line 76
    :catchall_2
    :goto_1
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 77
    .line 78
    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 86
    .line 87
    .line 88
    :cond_0
    move-object v4, p3

    .line 89
    :cond_1
    :goto_2
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/Throwable;

    .line 94
    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    :cond_2
    iget-object p0, p0, Lz07;->b:Lb17;

    .line 100
    .line 101
    iget-object p0, p0, Lb17;->e:Lny6;

    .line 102
    .line 103
    invoke-interface {p0}, Lny6;->isCancellationRequested()Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_4

    .line 108
    .line 109
    new-instance p0, Lzz6;

    .line 110
    .line 111
    new-instance p3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v2, "SBA operation cancelled: "

    .line 114
    .line 115
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, " \'"

    .line 122
    .line 123
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p1, "\'"

    .line 130
    .line 131
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-nez v1, :cond_3

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_3
    move-object v0, v1

    .line 142
    :goto_3
    invoke-direct {p0, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :cond_4
    const-string p0, "SBA extraction failed"

    .line 147
    .line 148
    if-eqz v0, :cond_b

    .line 149
    .line 150
    instance-of p1, v1, Lyy6;

    .line 151
    .line 152
    if-nez p1, :cond_a

    .line 153
    .line 154
    if-eqz v1, :cond_5

    .line 155
    .line 156
    invoke-static {v0, v1}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    :cond_5
    instance-of p1, v0, Lyy6;

    .line 160
    .line 161
    if-nez p1, :cond_9

    .line 162
    .line 163
    instance-of p1, v0, Ljava/io/IOException;

    .line 164
    .line 165
    if-nez p1, :cond_8

    .line 166
    .line 167
    instance-of p1, v0, Ljava/lang/RuntimeException;

    .line 168
    .line 169
    if-nez p1, :cond_7

    .line 170
    .line 171
    instance-of p1, v0, Ljava/lang/Error;

    .line 172
    .line 173
    if-nez p1, :cond_6

    .line 174
    .line 175
    invoke-static {p0, v0}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    return-object p3

    .line 179
    :cond_6
    throw v0

    .line 180
    :cond_7
    throw v0

    .line 181
    :cond_8
    throw v0

    .line 182
    :cond_9
    throw v0

    .line 183
    :cond_a
    throw v1

    .line 184
    :cond_b
    if-nez v1, :cond_c

    .line 185
    .line 186
    return-object v4

    .line 187
    :cond_c
    instance-of p1, v1, Lyy6;

    .line 188
    .line 189
    if-nez p1, :cond_10

    .line 190
    .line 191
    instance-of p1, v1, Ljava/io/IOException;

    .line 192
    .line 193
    if-nez p1, :cond_f

    .line 194
    .line 195
    instance-of p1, v1, Ljava/lang/RuntimeException;

    .line 196
    .line 197
    if-nez p1, :cond_e

    .line 198
    .line 199
    instance-of p1, v1, Ljava/lang/Error;

    .line 200
    .line 201
    if-nez p1, :cond_d

    .line 202
    .line 203
    invoke-static {p0, v1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    return-object p3

    .line 207
    :cond_d
    throw v1

    .line 208
    :cond_e
    throw v1

    .line 209
    :cond_f
    throw v1

    .line 210
    :cond_10
    throw v1

    .line 211
    :catch_1
    move v1, v3

    .line 212
    goto/16 :goto_1
.end method

.method public final Y(Ls07;Loz6;Lrt3;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p1, p1, Ls07;->h:Ll27;

    .line 2
    .line 3
    sget-object v0, Ll27;->None:Ll27;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lz07;->a:Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-wide v0, p2, Loz6;->c:J

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-wide v0, p2, Loz6;->d:J

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p3, p0, p1, p2}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    const-string p0, "Encrypted SBA payloads must be read through descriptor pipes"

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-static {p0, p1}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-object p1
.end method

.method public final a(Li07;Ls07;Loz6;Ljava/io/FileDescriptor;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move-object/from16 v11, p3

    .line 6
    .line 7
    const-string v12, "/"

    .line 8
    .line 9
    const-string v13, "Encrypted SBA payload size mismatch for \'"

    .line 10
    .line 11
    const-string v14, "SBA native FD decryption is not configured for "

    .line 12
    .line 13
    invoke-virtual {v0, v10}, Lz07;->G(Ls07;)Lf44;

    .line 14
    .line 15
    .line 16
    move-result-object v15

    .line 17
    iget-object v1, v10, Ls07;->h:Ll27;

    .line 18
    .line 19
    sget-object v3, Ll07;->Decryption:Ll07;

    .line 20
    .line 21
    sget-object v4, Lm07;->Started:Lm07;

    .line 22
    .line 23
    iget-object v5, v11, Loz6;->a:Ljava/lang/String;

    .line 24
    .line 25
    iget-wide v6, v11, Loz6;->e:J

    .line 26
    .line 27
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    const/16 v9, 0x10

    .line 32
    .line 33
    move-object v2, v1

    .line 34
    iget-object v1, v0, Lz07;->e:Lh07;

    .line 35
    .line 36
    move-wide/from16 v16, v6

    .line 37
    .line 38
    const-wide/16 v6, 0x0

    .line 39
    .line 40
    move-object/from16 v18, v2

    .line 41
    .line 42
    move-object/from16 v29, v12

    .line 43
    .line 44
    move-object/from16 v30, v13

    .line 45
    .line 46
    move-wide/from16 v12, v16

    .line 47
    .line 48
    move-object/from16 v2, p1

    .line 49
    .line 50
    invoke-static/range {v1 .. v9}, Lx13;->l(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;I)V

    .line 51
    .line 52
    .line 53
    new-instance v9, Ljava/io/RandomAccessFile;

    .line 54
    .line 55
    iget-object v1, v0, Lz07;->a:Ljava/io/File;

    .line 56
    .line 57
    const-string v4, "r"

    .line 58
    .line 59
    invoke-direct {v9, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :try_start_0
    iget-wide v6, v11, Loz6;->c:J

    .line 63
    .line 64
    invoke-virtual {v9, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 65
    .line 66
    .line 67
    sget-object v1, Ly07;->a:[I

    .line 68
    .line 69
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    aget v1, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 74
    .line 75
    const/4 v4, 0x4

    .line 76
    iget-object v6, v0, Lz07;->b:Lb17;

    .line 77
    .line 78
    iget-object v7, v0, Lz07;->e:Lh07;

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    if-eq v1, v4, :cond_4

    .line 82
    .line 83
    const/4 v4, 0x5

    .line 84
    if-eq v1, v4, :cond_1

    .line 85
    .line 86
    const/4 v4, 0x6

    .line 87
    if-ne v1, v4, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    :try_start_1
    new-instance v0, Lqz6;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    move-object/from16 v2, v18

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-direct {v0, v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    move-object v1, v0

    .line 112
    move-object v14, v9

    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, v10, Ls07;->h:Ll27;

    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 118
    .line 119
    .line 120
    move-result-object v17

    .line 121
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    .line 123
    .line 124
    move-object v14, v9

    .line 125
    :try_start_3
    iget-wide v8, v11, Loz6;->d:J

    .line 126
    .line 127
    iget-object v15, v15, Lf44;->a:[B

    .line 128
    .line 129
    iget-object v4, v10, Ls07;->r:[B

    .line 130
    .line 131
    move-object/from16 v16, v1

    .line 132
    .line 133
    iget v1, v11, Loz6;->h:I

    .line 134
    .line 135
    move-object/from16 v31, v3

    .line 136
    .line 137
    move-object/from16 v22, v4

    .line 138
    .line 139
    iget-wide v3, v11, Loz6;->e:J

    .line 140
    .line 141
    iget v10, v10, Ls07;->n:I

    .line 142
    .line 143
    iget-object v6, v6, Lb17;->e:Lny6;

    .line 144
    .line 145
    move/from16 v24, v1

    .line 146
    .line 147
    new-instance v1, Lr07;

    .line 148
    .line 149
    invoke-direct {v1, v2, v5, v3, v4}, Lr07;-><init>(Li07;Ljava/lang/String;J)V

    .line 150
    .line 151
    .line 152
    invoke-static {v7, v6, v1}, Lx13;->Q(Lh07;Lny6;Lrt3;)Lvq;

    .line 153
    .line 154
    .line 155
    move-result-object v28

    .line 156
    move-object/from16 v20, p4

    .line 157
    .line 158
    move-wide/from16 v25, v3

    .line 159
    .line 160
    move-object/from16 v23, v5

    .line 161
    .line 162
    move-wide/from16 v18, v8

    .line 163
    .line 164
    move/from16 v27, v10

    .line 165
    .line 166
    move-object/from16 v21, v15

    .line 167
    .line 168
    invoke-static/range {v16 .. v28}, Lxh8;->i(Ll27;Ljava/io/FileDescriptor;JLjava/io/FileDescriptor;[B[BLjava/lang/String;IJILvq;)Lty6;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    move-object/from16 v5, v23

    .line 173
    .line 174
    iget-wide v3, v9, Lty6;->a:J

    .line 175
    .line 176
    iget-wide v6, v11, Loz6;->d:J

    .line 177
    .line 178
    cmp-long v1, v3, v6

    .line 179
    .line 180
    if-nez v1, :cond_2

    .line 181
    .line 182
    move-wide v10, v6

    .line 183
    iget-wide v6, v9, Lty6;->b:J

    .line 184
    .line 185
    cmp-long v1, v6, v12

    .line 186
    .line 187
    if-nez v1, :cond_3

    .line 188
    .line 189
    iget-object v1, v0, Lz07;->e:Lh07;

    .line 190
    .line 191
    sget-object v4, Lm07;->Progress:Lm07;

    .line 192
    .line 193
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    move-object/from16 v3, v31

    .line 198
    .line 199
    invoke-static/range {v1 .. v8}, Lx13;->k(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, v0, Lz07;->e:Lh07;

    .line 203
    .line 204
    move-object/from16 v31, v3

    .line 205
    .line 206
    sget-object v3, Lm07;->Completed:Lm07;

    .line 207
    .line 208
    move-object v4, v5

    .line 209
    iget-wide v5, v9, Lty6;->b:J

    .line 210
    .line 211
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    move-object/from16 v1, p1

    .line 216
    .line 217
    move-object/from16 v2, v31

    .line 218
    .line 219
    invoke-static/range {v0 .. v7}, Lx13;->k(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 220
    .line 221
    .line 222
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :catchall_1
    move-exception v0

    .line 227
    :goto_1
    move-object v1, v0

    .line 228
    goto :goto_2

    .line 229
    :cond_2
    move-wide v10, v6

    .line 230
    :cond_3
    :try_start_4
    new-instance v0, Lqz6;

    .line 231
    .line 232
    iget-wide v1, v9, Lty6;->b:J

    .line 233
    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    move-object/from16 v7, v30

    .line 237
    .line 238
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v5, "\': stored="

    .line 245
    .line 246
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    move-object/from16 v3, v29

    .line 253
    .line 254
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v4, ", plain="

    .line 261
    .line 262
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    const/4 v4, 0x0

    .line 279
    invoke-direct {v0, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :catchall_2
    move-exception v0

    .line 284
    move-object v14, v9

    .line 285
    goto :goto_1

    .line 286
    :cond_4
    move-object v1, v2

    .line 287
    move-object v14, v9

    .line 288
    move-object/from16 v2, v18

    .line 289
    .line 290
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    iget-object v0, v6, Lb17;->e:Lny6;

    .line 298
    .line 299
    new-instance v3, Lr07;

    .line 300
    .line 301
    invoke-direct {v3, v1, v5, v12, v13}, Lr07;-><init>(Li07;Ljava/lang/String;J)V

    .line 302
    .line 303
    .line 304
    invoke-static {v7, v0, v3}, Lx13;->Q(Lh07;Lny6;Lrt3;)Lvq;

    .line 305
    .line 306
    .line 307
    new-instance v0, Li27;

    .line 308
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v3, "SBA optional encryption backend is not enabled for "

    .line 312
    .line 313
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v2, ". Build with -PsbaEnableInternalEncryptionBackends=true to enable internal compatibility readers."

    .line 320
    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    const/4 v4, 0x0

    .line 329
    invoke-direct {v0, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    .line 331
    .line 332
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 333
    :goto_2
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 334
    :catchall_3
    move-exception v0

    .line 335
    invoke-static {v14, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 336
    .line 337
    .line 338
    throw v0
.end method

.method public final b(Li07;Ls07;Loz6;Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 11

    .line 1
    const-string v0, "SBA "

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lz07;->G(Ls07;)Lf44;

    .line 4
    .line 5
    .line 6
    iget-object p2, p2, Ls07;->h:Ll27;

    .line 7
    .line 8
    new-instance v1, Lj07;

    .line 9
    .line 10
    sget-object v4, Ll07;->Decryption:Ll07;

    .line 11
    .line 12
    iget-object v5, p3, Loz6;->a:Ljava/lang/String;

    .line 13
    .line 14
    iget-wide v9, p3, Loz6;->e:J

    .line 15
    .line 16
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    iget-object v2, p0, Lz07;->b:Lb17;

    .line 21
    .line 22
    iget-object v8, v2, Lb17;->e:Lny6;

    .line 23
    .line 24
    iget-object v7, p0, Lz07;->e:Lh07;

    .line 25
    .line 26
    move-object v3, p1

    .line 27
    move-object v2, p4

    .line 28
    invoke-direct/range {v1 .. v8}, Lj07;-><init>(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;Li07;Ll07;Ljava/lang/String;Ljava/lang/Long;Lh07;Lny6;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lm07;->Started:Lm07;

    .line 32
    .line 33
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    const/16 v10, 0x10

    .line 38
    .line 39
    iget-object v2, p0, Lz07;->e:Lh07;

    .line 40
    .line 41
    const-wide/16 v7, 0x0

    .line 42
    .line 43
    move-object v6, v5

    .line 44
    move-object v5, p1

    .line 45
    invoke-static/range {v2 .. v10}, Lx13;->l(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;I)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Ljava/io/RandomAccessFile;

    .line 49
    .line 50
    iget-object p0, p0, Lz07;->a:Ljava/io/File;

    .line 51
    .line 52
    const-string p4, "r"

    .line 53
    .line 54
    invoke-direct {p1, p0, p4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    iget-wide v1, p3, Loz6;->c:J

    .line 58
    .line 59
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 60
    .line 61
    .line 62
    sget-object p0, Ly07;->a:[I

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    aget p0, p0, p4

    .line 69
    .line 70
    const/4 p4, 0x0

    .line 71
    packed-switch p0, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    new-instance p0, Lmn5;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    move-object p0, v0

    .line 82
    goto :goto_0

    .line 83
    :pswitch_0
    new-instance p0, Li27;

    .line 84
    .line 85
    new-instance p3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p2, " decryption requires native FD output"

    .line 94
    .line 95
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-direct {p0, p2, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :pswitch_1
    new-instance p0, Li27;

    .line 107
    .line 108
    const-string p2, "SBA AES-GCM-SIV decryption requires native FD output"

    .line 109
    .line 110
    invoke-direct {p0, p2, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :pswitch_2
    new-instance p0, Lx07;

    .line 115
    .line 116
    iget-wide v0, p3, Loz6;->d:J

    .line 117
    .line 118
    invoke-direct {p0, p1, v0, v1}, Lx07;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 119
    .line 120
    .line 121
    new-instance p0, Li27;

    .line 122
    .line 123
    new-instance p3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v0, "SBA optional encryption backend is not enabled for "

    .line 126
    .line 127
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p2, ". Build with -PsbaEnableInternalEncryptionBackends=true to enable internal compatibility readers."

    .line 134
    .line 135
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-direct {p0, p2, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :pswitch_3
    new-instance p0, Lqz6;

    .line 147
    .line 148
    const-string p2, "SBA 7zAES key cache is missing its MAC key"

    .line 149
    .line 150
    invoke-direct {p0, p2, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :pswitch_4
    new-instance p0, Lqz6;

    .line 155
    .line 156
    const-string p2, "SBA archive is not encrypted"

    .line 157
    .line 158
    invoke-direct {p0, p2, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_0
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    :catchall_1
    move-exception v0

    .line 164
    move-object p2, v0

    .line 165
    invoke-static {p1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    throw p2

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lz07;->f:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lz07;->c:Lv07;

    .line 6
    .line 7
    iget-object v1, p0, Lz07;->d:Lf44;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v2, v1, Lf44;->a:[B

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v2, v4, v3, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v1, Lf44;->b:[B

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    invoke-static {v1, v4, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-object v0, p0, Lz07;->d:Lf44;

    .line 25
    .line 26
    return-void
.end method

.method public final g(Ls07;Loz6;Ljava/lang/String;I[Ljava/lang/String;)Lzy6;
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v0, v3, Ls07;->r:[B

    .line 8
    .line 9
    iget-object v5, v2, Loz6;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, v3, Ls07;->h:Ll27;

    .line 12
    .line 13
    iget-object v13, v3, Ls07;->e:Lcy0;

    .line 14
    .line 15
    sget-object v6, Ll27;->Aegis256:Ll27;

    .line 16
    .line 17
    if-eq v4, v6, :cond_1

    .line 18
    .line 19
    sget-object v6, Ll27;->Aegis128X2:Ll27;

    .line 20
    .line 21
    if-ne v4, v6, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v14, v3

    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    :goto_0
    sget-object v4, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->a:Lcom/swiftapps/sba/SbaLibaegisCryptoNative;

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->isAvailable()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    sget-object v14, Loy6;->j:Loy6;

    .line 36
    .line 37
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    instance-of v4, v13, Lpy6;

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lz07;->G(Ls07;)Lf44;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-object v15, v4, Lf44;->a:[B

    .line 52
    .line 53
    sget-object v4, Li07;->Extract:Li07;

    .line 54
    .line 55
    sget-object v6, Ll07;->Extraction:Ll07;

    .line 56
    .line 57
    sget-object v7, Lm07;->Started:Lm07;

    .line 58
    .line 59
    iget v8, v2, Loz6;->h:I

    .line 60
    .line 61
    iget-wide v9, v2, Loz6;->f:J

    .line 62
    .line 63
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    const/16 v12, 0x10

    .line 68
    .line 69
    move/from16 v16, v8

    .line 70
    .line 71
    move-object v8, v5

    .line 72
    move-object v5, v4

    .line 73
    iget-object v4, v1, Lz07;->e:Lh07;

    .line 74
    .line 75
    move-wide/from16 v17, v9

    .line 76
    .line 77
    const-wide/16 v9, 0x0

    .line 78
    .line 79
    move-object/from16 v19, v0

    .line 80
    .line 81
    move/from16 v0, v16

    .line 82
    .line 83
    move-wide/from16 v2, v17

    .line 84
    .line 85
    invoke-static/range {v4 .. v12}, Lx13;->l(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;I)V

    .line 86
    .line 87
    .line 88
    move-object/from16 v25, v5

    .line 89
    .line 90
    move-object/from16 v26, v6

    .line 91
    .line 92
    move-object v4, v8

    .line 93
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_3

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    :goto_1
    move/from16 v16, v5

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    instance-of v5, v13, Lpy6;

    .line 104
    .line 105
    if-eqz v5, :cond_5

    .line 106
    .line 107
    const/4 v5, 0x1

    .line 108
    goto :goto_1

    .line 109
    :goto_2
    invoke-virtual {v1, v2, v3, v4}, Lz07;->q(JLjava/lang/String;)Lvq;

    .line 110
    .line 111
    .line 112
    move-result-object v24

    .line 113
    sget-object v2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 114
    .line 115
    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 116
    .line 117
    .line 118
    move-result-object v20

    .line 119
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    iget-object v2, v1, Lz07;->b:Lb17;

    .line 123
    .line 124
    iget-boolean v2, v2, Lb17;->f:Z

    .line 125
    .line 126
    iget-object v3, v1, Lz07;->a:Ljava/io/File;

    .line 127
    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    move-object v2, v3

    .line 131
    sget-object v3, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 132
    .line 133
    move-object v8, v4

    .line 134
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-object/from16 v2, p2

    .line 142
    .line 143
    iget-wide v5, v2, Loz6;->c:J

    .line 144
    .line 145
    move-object v9, v8

    .line 146
    iget-wide v7, v2, Loz6;->d:J

    .line 147
    .line 148
    move-object v11, v9

    .line 149
    iget-wide v9, v2, Loz6;->e:J

    .line 150
    .line 151
    move-object v13, v11

    .line 152
    iget-wide v11, v2, Loz6;->f:J

    .line 153
    .line 154
    move-object/from16 v14, p1

    .line 155
    .line 156
    iget v2, v14, Ls07;->i:I

    .line 157
    .line 158
    move/from16 v18, v2

    .line 159
    .line 160
    move-object/from16 v17, v3

    .line 161
    .line 162
    int-to-long v2, v0

    .line 163
    iget v0, v14, Ls07;->n:I

    .line 164
    .line 165
    move/from16 v14, p4

    .line 166
    .line 167
    move/from16 v23, v0

    .line 168
    .line 169
    move-wide/from16 v21, v2

    .line 170
    .line 171
    move-object/from16 v27, v13

    .line 172
    .line 173
    move-object/from16 v3, v17

    .line 174
    .line 175
    move/from16 v17, v18

    .line 176
    .line 177
    move-object/from16 v13, p3

    .line 178
    .line 179
    move-object/from16 v18, v15

    .line 180
    .line 181
    move-object/from16 v15, p5

    .line 182
    .line 183
    invoke-virtual/range {v3 .. v24}, Lcom/swiftapps/sba/SbaSwiftTarNative;->extractAegisArchiveEntryFused(Ljava/lang/String;JJJJLjava/lang/String;I[Ljava/lang/String;II[B[B[BJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    move-object/from16 v2, p2

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_4
    move-object/from16 v14, p1

    .line 191
    .line 192
    move-object v2, v3

    .line 193
    move-object/from16 v27, v4

    .line 194
    .line 195
    move-object/from16 v18, v15

    .line 196
    .line 197
    move-object/from16 v3, p2

    .line 198
    .line 199
    sget-object v4, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    iget-wide v5, v3, Loz6;->c:J

    .line 209
    .line 210
    iget-wide v7, v3, Loz6;->d:J

    .line 211
    .line 212
    iget-wide v9, v3, Loz6;->e:J

    .line 213
    .line 214
    iget-wide v11, v3, Loz6;->f:J

    .line 215
    .line 216
    iget v13, v14, Ls07;->i:I

    .line 217
    .line 218
    move-object v15, v2

    .line 219
    int-to-long v2, v0

    .line 220
    iget v0, v14, Ls07;->n:I

    .line 221
    .line 222
    move/from16 v14, p4

    .line 223
    .line 224
    move/from16 v23, v0

    .line 225
    .line 226
    move-wide/from16 v21, v2

    .line 227
    .line 228
    move-object v3, v4

    .line 229
    move/from16 v17, v13

    .line 230
    .line 231
    move-object v4, v15

    .line 232
    move-object/from16 v2, p2

    .line 233
    .line 234
    move-object/from16 v13, p3

    .line 235
    .line 236
    move-object/from16 v15, p5

    .line 237
    .line 238
    invoke-virtual/range {v3 .. v24}, Lcom/swiftapps/sba/SbaSwiftTarNative;->extractAegisArchiveEntry(Ljava/lang/String;JJJJLjava/lang/String;I[Ljava/lang/String;II[B[B[BJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    :goto_3
    sget-object v6, Lm07;->Progress:Lm07;

    .line 243
    .line 244
    iget-wide v8, v2, Loz6;->f:J

    .line 245
    .line 246
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    iget-object v3, v1, Lz07;->e:Lh07;

    .line 251
    .line 252
    move-object/from16 v4, v25

    .line 253
    .line 254
    move-object/from16 v5, v26

    .line 255
    .line 256
    move-object/from16 v7, v27

    .line 257
    .line 258
    invoke-static/range {v3 .. v10}, Lx13;->k(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V

    .line 259
    .line 260
    .line 261
    move-object v8, v7

    .line 262
    move-object v5, v4

    .line 263
    sget-object v4, Lm07;->Completed:Lm07;

    .line 264
    .line 265
    iget-wide v6, v2, Loz6;->f:J

    .line 266
    .line 267
    move-object v11, v8

    .line 268
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    iget-object v1, v1, Lz07;->e:Lh07;

    .line 273
    .line 274
    move-object v2, v5

    .line 275
    move-object v5, v11

    .line 276
    move-object/from16 v3, v26

    .line 277
    .line 278
    invoke-static/range {v1 .. v8}, Lx13;->k(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V

    .line 279
    .line 280
    .line 281
    new-instance v1, Lzy6;

    .line 282
    .line 283
    invoke-static {v0}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-direct {v1, v0}, Lzy6;-><init>(Ljava/util/List;)V

    .line 288
    .line 289
    .line 290
    return-object v1

    .line 291
    :cond_5
    invoke-static {}, Lq;->j()V

    .line 292
    .line 293
    .line 294
    const/4 v0, 0x0

    .line 295
    return-object v0

    .line 296
    :goto_4
    sget-object v7, Li07;->Extract:Li07;

    .line 297
    .line 298
    new-instance v0, Lq07;

    .line 299
    .line 300
    move-object/from16 v4, p3

    .line 301
    .line 302
    move/from16 v5, p4

    .line 303
    .line 304
    move-object/from16 v6, p5

    .line 305
    .line 306
    move-object v3, v14

    .line 307
    invoke-direct/range {v0 .. v6}, Lq07;-><init>(Lz07;Loz6;Ls07;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v7, v3, v2, v0}, Lz07;->W(Li07;Ls07;Loz6;Lmt3;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, [Ljava/lang/String;

    .line 315
    .line 316
    new-instance v1, Lzy6;

    .line 317
    .line 318
    invoke-static {v0}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-direct {v1, v0}, Lzy6;-><init>(Ljava/util/List;)V

    .line 323
    .line 324
    .line 325
    return-object v1
.end method

.method public final h(Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lzy6;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-boolean v2, v0, Lz07;->f:Z

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v2, :cond_9

    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "Failed to create SBA extraction target directory: "

    .line 33
    .line 34
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0, v3}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    return-object v3

    .line 42
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isDirectory()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_8

    .line 47
    .line 48
    invoke-virtual {v0}, Lz07;->n()Lv07;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    iget-object v2, v9, Lv07;->a:Ls07;

    .line 53
    .line 54
    iget-object v4, v9, Lv07;->g:Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Loz6;

    .line 61
    .line 62
    const-string v10, "\'"

    .line 63
    .line 64
    if-eqz v4, :cond_7

    .line 65
    .line 66
    move-object v5, v3

    .line 67
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget-object v7, v0, Lz07;->b:Lb17;

    .line 72
    .line 73
    iget-object v8, v7, Lb17;->a:Lf27;

    .line 74
    .line 75
    sget-object v11, La17;->a:[I

    .line 76
    .line 77
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    aget v8, v11, v8

    .line 82
    .line 83
    const/4 v11, 0x1

    .line 84
    if-eq v8, v11, :cond_4

    .line 85
    .line 86
    const/4 v11, 0x2

    .line 87
    if-eq v8, v11, :cond_3

    .line 88
    .line 89
    const/4 v11, 0x3

    .line 90
    if-ne v8, v11, :cond_2

    .line 91
    .line 92
    new-instance v8, Laz6;

    .line 93
    .line 94
    const/16 v11, 0x180

    .line 95
    .line 96
    invoke-direct {v8, v11}, Laz6;-><init>(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 101
    .line 102
    .line 103
    move-object v8, v5

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    new-instance v8, Laz6;

    .line 106
    .line 107
    const/16 v11, 0x1d4

    .line 108
    .line 109
    invoke-direct {v8, v11}, Laz6;-><init>(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    new-instance v8, Laz6;

    .line 114
    .line 115
    const/16 v11, 0x1ff

    .line 116
    .line 117
    invoke-direct {v8, v11}, Laz6;-><init>(I)V

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-static {v8}, Lw13;->s(Laz6;)I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    const/4 v5, 0x0

    .line 127
    new-array v5, v5, [Ljava/lang/String;

    .line 128
    .line 129
    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, [Ljava/lang/String;

    .line 134
    .line 135
    move-object v5, v1

    .line 136
    :cond_5
    iget-object v1, v7, Lb17;->e:Lny6;

    .line 137
    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v11, "extract entry \'"

    .line 141
    .line 142
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-static {v1, v7}, Lx13;->S(Lny6;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :try_start_0
    iget-object v1, v2, Ls07;->h:Ll27;

    .line 159
    .line 160
    sget-object v7, Ll27;->None:Ll27;

    .line 161
    .line 162
    if-eq v1, v7, :cond_6

    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    move-object v1, v2

    .line 168
    move-object v2, v4

    .line 169
    move v4, v8

    .line 170
    invoke-virtual/range {v0 .. v5}, Lz07;->g(Ls07;Loz6;Ljava/lang/String;I[Ljava/lang/String;)Lzy6;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    move-object v4, v6

    .line 177
    goto/16 :goto_2

    .line 178
    .line 179
    :cond_6
    move-object v11, v0

    .line 180
    move-object v12, v2

    .line 181
    move-object v14, v3

    .line 182
    move-object v13, v4

    .line 183
    move-object/from16 v16, v5

    .line 184
    .line 185
    move v15, v8

    .line 186
    iget-object v0, v11, Lz07;->e:Lh07;

    .line 187
    .line 188
    sget-object v1, Li07;->Extract:Li07;

    .line 189
    .line 190
    sget-object v2, Ll07;->Extraction:Ll07;

    .line 191
    .line 192
    sget-object v3, Lm07;->Started:Lm07;

    .line 193
    .line 194
    iget-wide v4, v13, Loz6;->f:J

    .line 195
    .line 196
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 197
    .line 198
    .line 199
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    const/16 v8, 0x10

    .line 201
    .line 202
    const-wide/16 v5, 0x0

    .line 203
    .line 204
    move-object/from16 v4, p1

    .line 205
    .line 206
    :try_start_1
    invoke-static/range {v0 .. v8}, Lx13;->l(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    .line 208
    .line 209
    move-object v7, v1

    .line 210
    move-object v8, v2

    .line 211
    :try_start_2
    new-instance v0, Ln07;

    .line 212
    .line 213
    move-object v1, v9

    .line 214
    move-object v2, v11

    .line 215
    move-object v3, v13

    .line 216
    move-object v4, v14

    .line 217
    move v5, v15

    .line 218
    move-object/from16 v6, v16

    .line 219
    .line 220
    invoke-direct/range {v0 .. v6}, Ln07;-><init>(Lv07;Lz07;Loz6;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    move-object v11, v2

    .line 224
    move-object v13, v3

    .line 225
    invoke-virtual {v11, v12, v13, v0}, Lz07;->Y(Ls07;Loz6;Lrt3;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    move-object v9, v0

    .line 230
    check-cast v9, [Ljava/lang/String;

    .line 231
    .line 232
    iget-object v0, v11, Lz07;->e:Lh07;

    .line 233
    .line 234
    sget-object v3, Lm07;->Progress:Lm07;

    .line 235
    .line 236
    iget-wide v5, v13, Loz6;->f:J

    .line 237
    .line 238
    move-object v1, v7

    .line 239
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 243
    move-object/from16 v4, p1

    .line 244
    .line 245
    move-object v2, v8

    .line 246
    :try_start_3
    invoke-static/range {v0 .. v7}, Lx13;->k(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 247
    .line 248
    .line 249
    :try_start_4
    iget-object v0, v11, Lz07;->e:Lh07;

    .line 250
    .line 251
    sget-object v3, Lm07;->Completed:Lm07;

    .line 252
    .line 253
    iget-wide v5, v13, Loz6;->f:J

    .line 254
    .line 255
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 256
    .line 257
    .line 258
    move-result-object v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 259
    move-object/from16 v4, p1

    .line 260
    .line 261
    :try_start_5
    invoke-static/range {v0 .. v7}, Lx13;->k(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V

    .line 262
    .line 263
    .line 264
    new-instance v0, Lzy6;

    .line 265
    .line 266
    invoke-static {v9}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-direct {v0, v1}, Lzy6;-><init>(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 271
    .line 272
    .line 273
    return-object v0

    .line 274
    :catch_1
    move-exception v0

    .line 275
    goto :goto_2

    .line 276
    :catch_2
    move-exception v0

    .line 277
    move-object/from16 v4, p1

    .line 278
    .line 279
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    const-string v2, "Failed to extract SBA entry \'"

    .line 282
    .line 283
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-static {v0, v1}, Lw13;->t(Ljava/io/IOException;Ljava/lang/String;)Lyy6;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    throw v0

    .line 301
    :cond_7
    move-object v4, v6

    .line 302
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 303
    .line 304
    const-string v1, "No SBA entry named \'"

    .line 305
    .line 306
    invoke-static {v1, v4, v10}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v0

    .line 314
    :cond_8
    move-object v5, v3

    .line 315
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    const-string v1, "SBA extraction target is not a directory: "

    .line 320
    .line 321
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v0, v5}, Ly5;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    .line 327
    .line 328
    return-object v5

    .line 329
    :cond_9
    move-object v5, v3

    .line 330
    const-string v0, "SbaReader has been closed"

    .line 331
    .line 332
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    return-object v5
.end method

.method public final j()Ljava/util/ArrayList;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lz07;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Lz07;->n()Lv07;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object v0, p0, Lv07;->f:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v3, 0xa

    .line 15
    .line 16
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    add-int/lit8 v5, v3, 0x1

    .line 39
    .line 40
    if-ltz v3, :cond_0

    .line 41
    .line 42
    check-cast v4, Loz6;

    .line 43
    .line 44
    iget-object v6, p0, Lv07;->a:Ls07;

    .line 45
    .line 46
    iget-object v7, v6, Ls07;->e:Lcy0;

    .line 47
    .line 48
    iget-object v6, v6, Ls07;->h:Ll27;

    .line 49
    .line 50
    invoke-virtual {v6}, Ll27;->toPublicMethod()Lwy6;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v4, v3, v7, v6}, Loz6;->a(ILcy0;Lwy6;)Lxy6;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move v3, v5

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lfl1;->F0()V

    .line 64
    .line 65
    .line 66
    throw v1

    .line 67
    :cond_1
    return-object v2

    .line 68
    :cond_2
    const-string p0, "SbaReader has been closed"

    .line 69
    .line 70
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v1
.end method

.method public final m(Ljava/lang/String;)Ljava/util/List;
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lz07;->f:Z

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lz07;->n()Lv07;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, v0, Lv07;->g:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Loz6;

    .line 19
    .line 20
    const-string v2, "\'"

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Lz07;->b:Lb17;

    .line 25
    .line 26
    iget-object v3, v3, Lb17;->e:Lny6;

    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v5, "list tar entries for \'"

    .line 31
    .line 32
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v3, v4}, Lx13;->S(Lny6;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object v6, Li07;->ListTarEntries:Li07;

    .line 49
    .line 50
    sget-object v7, Ll07;->Listing:Ll07;

    .line 51
    .line 52
    sget-object v8, Lm07;->Started:Lm07;

    .line 53
    .line 54
    iget-wide v3, v1, Loz6;->f:J

    .line 55
    .line 56
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    const/16 v13, 0x10

    .line 61
    .line 62
    iget-object v5, p0, Lz07;->e:Lh07;

    .line 63
    .line 64
    const-wide/16 v10, 0x0

    .line 65
    .line 66
    move-object v9, p1

    .line 67
    invoke-static/range {v5 .. v13}, Lx13;->l(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;I)V

    .line 68
    .line 69
    .line 70
    :try_start_0
    iget-object p1, v0, Lv07;->a:Ls07;

    .line 71
    .line 72
    iget-object v3, p1, Ls07;->h:Ll27;

    .line 73
    .line 74
    sget-object v4, Ll27;->None:Ll27;

    .line 75
    .line 76
    if-eq v3, v4, :cond_0

    .line 77
    .line 78
    new-instance v0, Ljj2;

    .line 79
    .line 80
    const/4 v3, 0x6

    .line 81
    invoke-direct {v0, v3, p1, v1}, Ljj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v6, p1, v1, v0}, Lz07;->W(Li07;Ls07;Loz6;Lmt3;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Ljava/util/List;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    new-instance v3, Lbw;

    .line 92
    .line 93
    invoke-direct {v3, v0, p0, v1}, Lbw;-><init>(Lv07;Lz07;Loz6;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1, v1, v3}, Lz07;->Y(Ls07;Loz6;Lrt3;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Ljava/util/List;

    .line 101
    .line 102
    :goto_0
    iget-object v5, p0, Lz07;->e:Lh07;

    .line 103
    .line 104
    sget-object v8, Lm07;->Completed:Lm07;

    .line 105
    .line 106
    iget-wide v10, v1, Loz6;->f:J

    .line 107
    .line 108
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    invoke-static/range {v5 .. v12}, Lx13;->k(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    return-object p1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    move-object p0, v0

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v0, "Failed to list tar entries for SBA entry \'"

    .line 121
    .line 122
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p0, p1}, Lw13;->t(Ljava/io/IOException;Ljava/lang/String;)Lyy6;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    throw p0

    .line 140
    :cond_1
    move-object v9, p1

    .line 141
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 142
    .line 143
    const-string p1, "No SBA entry named \'"

    .line 144
    .line 145
    invoke-static {p1, v9, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :cond_2
    const-string p0, "SbaReader has been closed"

    .line 154
    .line 155
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const/4 p0, 0x0

    .line 159
    return-object p0
.end method

.method public final n()Lv07;
    .locals 1

    .line 1
    iget-object v0, p0, Lz07;->c:Lv07;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lz07;->c:Lv07;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-object v0

    .line 13
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lz07;->v()Lv07;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lz07;->c:Lv07;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method

.method public final q(JLjava/lang/String;)Lvq;
    .locals 2

    .line 1
    iget-object v0, p0, Lz07;->b:Lb17;

    .line 2
    .line 3
    iget-object v0, v0, Lb17;->e:Lny6;

    .line 4
    .line 5
    new-instance v1, Lp07;

    .line 6
    .line 7
    invoke-direct {v1, p3, p1, p2}, Lp07;-><init>(Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lz07;->e:Lh07;

    .line 11
    .line 12
    invoke-static {p0, v0, v1}, Lx13;->Q(Lh07;Lny6;Lrt3;)Lvq;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final v()Lv07;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Invalid SBA index location: offset="

    .line 4
    .line 5
    const-string v2, "SBA index CRC mismatch: expected="

    .line 6
    .line 7
    const-string v3, "SBA index must end at footer: indexEnd="

    .line 8
    .line 9
    const-string v4, "SBA index extends beyond file bounds: offset="

    .line 10
    .line 11
    const-string v5, "SBA index too large: "

    .line 12
    .line 13
    iget-object v6, v0, Lz07;->a:Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-eqz v7, :cond_8

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 22
    .line 23
    .line 24
    move-result-wide v12

    .line 25
    const-wide/16 v9, 0x80

    .line 26
    .line 27
    cmp-long v7, v12, v9

    .line 28
    .line 29
    if-ltz v7, :cond_7

    .line 30
    .line 31
    new-instance v7, Ljava/io/RandomAccessFile;

    .line 32
    .line 33
    const-string v9, "r"

    .line 34
    .line 35
    invoke-direct {v7, v6, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-static {v7}, Lz07;->u(Ljava/io/RandomAccessFile;)Ls07;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    iget v6, v10, Ls07;->a:I

    .line 43
    .line 44
    invoke-static {v7, v12, v13, v6}, Lz07;->r(Ljava/io/RandomAccessFile;JI)Lu07;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget-wide v14, v6, Lu07;->b:J

    .line 49
    .line 50
    iget-wide v8, v6, Lu07;->c:J

    .line 51
    .line 52
    iget v11, v10, Ls07;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    move-wide/from16 v17, v12

    .line 55
    .line 56
    int-to-long v11, v11

    .line 57
    cmp-long v11, v14, v11

    .line 58
    .line 59
    const-string v12, ", size="

    .line 60
    .line 61
    if-ltz v11, :cond_6

    .line 62
    .line 63
    const-wide/16 v19, 0x0

    .line 64
    .line 65
    cmp-long v11, v8, v19

    .line 66
    .line 67
    if-lez v11, :cond_6

    .line 68
    .line 69
    const-wide/32 v19, 0x4000000

    .line 70
    .line 71
    .line 72
    cmp-long v1, v8, v19

    .line 73
    .line 74
    if-gtz v1, :cond_5

    .line 75
    .line 76
    :try_start_1
    const-string v1, "index bounds"

    .line 77
    .line 78
    move-object v13, v12

    .line 79
    invoke-static {v14, v15, v8, v9, v1}, Lus2;->C(JJLjava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v11

    .line 83
    const-wide/16 v19, 0x20

    .line 84
    .line 85
    move-object/from16 v21, v4

    .line 86
    .line 87
    sub-long v4, v17, v19

    .line 88
    .line 89
    cmp-long v1, v11, v4

    .line 90
    .line 91
    if-gtz v1, :cond_4

    .line 92
    .line 93
    if-nez v1, :cond_3

    .line 94
    .line 95
    invoke-virtual {v7, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 96
    .line 97
    .line 98
    long-to-int v1, v8

    .line 99
    new-array v9, v1, [B

    .line 100
    .line 101
    invoke-virtual {v7, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Ljava/util/zip/CRC32;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v9}, Ljava/util/zip/CRC32;->update([B)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    long-to-int v1, v3

    .line 117
    iget v3, v6, Lu07;->d:I

    .line 118
    .line 119
    if-ne v1, v3, :cond_2

    .line 120
    .line 121
    invoke-virtual {v0, v7, v10, v6, v9}, Lz07;->U(Ljava/io/RandomAccessFile;Ls07;Lu07;[B)V

    .line 122
    .line 123
    .line 124
    move-wide v0, v14

    .line 125
    move-object v14, v10

    .line 126
    iget-wide v10, v6, Lu07;->b:J

    .line 127
    .line 128
    move-wide v2, v0

    .line 129
    move-wide/from16 v12, v17

    .line 130
    .line 131
    invoke-static/range {v9 .. v14}, Lz07;->z([BJJLs07;)Lw07;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v15, v0, Lw07;->b:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v1, v0, Lw07;->c:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-static {v7, v1, v2, v3, v14}, Lz07;->S(Ljava/io/RandomAccessFile;Ljava/util/ArrayList;JLs07;)V

    .line 140
    .line 141
    .line 142
    iget v0, v0, Lw07;->a:I

    .line 143
    .line 144
    const/16 v2, 0xa

    .line 145
    .line 146
    invoke-static {v1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-static {v2}, Lx65;->q0(I)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    const/16 v3, 0x10

    .line 155
    .line 156
    if-ge v2, v3, :cond_0

    .line 157
    .line 158
    move v2, v3

    .line 159
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 160
    .line 161
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_1

    .line 173
    .line 174
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    move-object v5, v4

    .line 179
    check-cast v5, Loz6;

    .line 180
    .line 181
    iget-object v5, v5, Loz6;->a:Ljava/lang/String;

    .line 182
    .line 183
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    move-object v1, v0

    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :cond_1
    new-instance v9, Lv07;

    .line 192
    .line 193
    move-object/from16 v16, v1

    .line 194
    .line 195
    move-object/from16 v17, v3

    .line 196
    .line 197
    move-object v11, v6

    .line 198
    move-object v10, v14

    .line 199
    move v14, v0

    .line 200
    invoke-direct/range {v9 .. v17}, Lv07;-><init>(Ls07;Lu07;JILjava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 204
    .line 205
    .line 206
    return-object v9

    .line 207
    :cond_2
    :try_start_2
    new-instance v0, Lpz6;

    .line 208
    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v2, ", actual="

    .line 218
    .line 219
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    const/4 v11, 0x0

    .line 230
    invoke-direct {v0, v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    throw v0

    .line 234
    :cond_3
    new-instance v0, Lqz6;

    .line 235
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v2, ", footerStart="

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    const/4 v11, 0x0

    .line 257
    invoke-direct {v0, v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    throw v0

    .line 261
    :cond_4
    move-wide v2, v14

    .line 262
    new-instance v0, Lnz6;

    .line 263
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    move-object/from16 v4, v21

    .line 267
    .line 268
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    const/4 v11, 0x0

    .line 285
    invoke-direct {v0, v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    .line 287
    .line 288
    throw v0

    .line 289
    :cond_5
    new-instance v0, Lqz6;

    .line 290
    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    const/4 v11, 0x0

    .line 304
    invoke-direct {v0, v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    throw v0

    .line 308
    :cond_6
    move-object v13, v12

    .line 309
    move-wide v2, v14

    .line 310
    new-instance v0, Lqz6;

    .line 311
    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    const/4 v11, 0x0

    .line 331
    invoke-direct {v0, v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .line 333
    .line 334
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 336
    :catchall_1
    move-exception v0

    .line 337
    invoke-static {v7, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 338
    .line 339
    .line 340
    throw v0

    .line 341
    :cond_7
    new-instance v0, Lnz6;

    .line 342
    .line 343
    const-string v1, "SBA file is too small: "

    .line 344
    .line 345
    const-string v2, " bytes"

    .line 346
    .line 347
    invoke-static {v1, v2, v12, v13}, Lfz5;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    const/4 v11, 0x0

    .line 352
    invoke-direct {v0, v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    .line 354
    .line 355
    throw v0

    .line 356
    :cond_8
    const/4 v11, 0x0

    .line 357
    new-instance v0, Lnz6;

    .line 358
    .line 359
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    const-string v2, "SBA file does not exist: "

    .line 364
    .line 365
    invoke-static {v2, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-direct {v0, v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    .line 371
    .line 372
    throw v0
.end method
