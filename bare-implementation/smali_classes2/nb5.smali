.class public final Lnb5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lnb5;

.field public static final b:Lgt7;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnb5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnb5;->a:Lnb5;

    .line 7
    .line 8
    new-instance v0, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-direct {v0, v1, v1, v2, v1}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lgt7;->a:Lgt7;

    .line 16
    .line 17
    sput-object v0, Lnb5;->b:Lgt7;

    .line 18
    .line 19
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnb5;->b:Lgt7;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [C

    .line 11
    .line 12
    const/16 v2, 0x2f

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-char v2, v1, v3

    .line 16
    .line 17
    invoke-static {p0, v1}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lgt7;->a:Lgt7;

    .line 30
    .line 31
    invoke-virtual {v1}, Lgt7;->d()Lvq;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, p0}, Lvq;->m(Ljava/lang/String;)Lpa5;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :cond_1
    :try_start_1
    sget-object v2, Lgt7;->e:Lgv7;

    .line 44
    .line 45
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lsa5;

    .line 50
    .line 51
    invoke-virtual {v1}, Lgt7;->f()Lgh;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v2, v1, p0}, Lsa5;->b(Lgh;Lpa5;)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    sput-object p0, Lgt7;->i:Lvq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v0

    .line 65
    throw p0
.end method

.method public static b(Lq63;Lz95;Lft7;Ljava/lang/String;)V
    .locals 29

    move-object/from16 v0, p3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v2, Lnb5;->b:Lgt7;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {v2}, Lgt7;->d()Lvq;

    move-result-object v3

    .line 3
    invoke-virtual {v3, v0}, Lvq;->m(Ljava/lang/String;)Lpa5;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 4
    sget-object v0, Lgt7;->g:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljb5;

    .line 5
    invoke-virtual {v2}, Lgt7;->f()Lgh;

    move-result-object v2

    .line 6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v3, Lpa5;->h:[I

    iget-object v14, v3, Lpa5;->g:[I

    iget-object v4, v3, Lpa5;->c:Ljava/lang/String;

    .line 7
    iget v6, v3, Lpa5;->f:I

    if-nez v6, :cond_d

    .line 8
    array-length v6, v14

    const/4 v15, 0x4

    if-ne v6, v15, :cond_c

    .line 9
    array-length v6, v0

    const/16 v7, 0x8

    if-ne v6, v7, :cond_b

    .line 10
    array-length v4, v14

    mul-int/2addr v4, v15

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    array-length v6, v14

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_0

    aget v9, v14, v8

    .line 13
    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    aget v4, v0, v15

    const/4 v6, 0x5

    aget v0, v0, v6

    filled-new-array {v4, v0, v7, v7}, [I

    move-result-object v11

    .line 16
    filled-new-array {v4, v0, v4, v0}, [I

    move-result-object v13

    move v4, v7

    .line 17
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    invoke-virtual {v5, v2, v3}, Ljb5;->m(Lgh;Lpa5;)Lgb5;

    move-result-object v6

    .line 19
    sget-object v0, Lqa5;->a:[B

    .line 20
    iget-object v0, v6, Lgb5;->c:Ljava/lang/String;

    .line 21
    invoke-static {v14, v0}, Lqa5;->a([ILjava/lang/String;)Ljava/lang/String;

    .line 22
    iget-wide v7, v6, Lgb5;->b:J

    .line 23
    invoke-static {v7, v8}, Ljb5;->d(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 24
    invoke-static {v0}, Ljb5;->h(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v16

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_1

    move/from16 p3, v15

    const/4 v12, 0x0

    new-array v15, v12, [B

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move/from16 v15, p3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :catch_0
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v18, v2

    move/from16 v28, v4

    move-object/from16 v19, v14

    move-object v4, v3

    goto/16 :goto_12

    :cond_1
    move/from16 p3, v15

    const/4 v12, 0x0

    .line 26
    invoke-static/range {p3 .. p3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v15

    .line 27
    new-instance v0, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v0, v15}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    move v8, v12

    .line 28
    new-instance v12, Ljava/util/concurrent/Semaphore;

    move/from16 v8, p3

    invoke-direct {v12, v8}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 29
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lq63;->h()Z

    .line 31
    invoke-virtual/range {p0 .. p0}, Lq63;->t()Lq63;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-static/range {v18 .. v18}, Lq63;->E(Lq63;)Z
    :try_end_1
    .catch Leb5; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move-object/from16 v18, v2

    const/4 v2, 0x1

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object/from16 v14, p0

    .line 32
    :try_start_2
    invoke-virtual {v14, v2}, Lq63;->F(Z)Ljava/io/OutputStream;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    .line 33
    :try_start_3
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    const-wide/16 v22, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/16 v24, 0x0

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    move-object/from16 v26, v3

    const/4 v3, 0x2

    if-eqz v25, :cond_6

    :try_start_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lya5;

    .line 34
    invoke-static/range {p2 .. p2}, Ljb5;->t(Lft7;)V

    .line 35
    invoke-virtual {v12}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move/from16 v27, v4

    .line 36
    :try_start_5
    new-instance v4, Lva5;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move/from16 v17, v2

    move-object v2, v7

    move-object v1, v8

    move-object/from16 v7, v25

    move/from16 v28, v27

    move-object/from16 v8, p2

    :try_start_6
    invoke-direct/range {v4 .. v13}, Lva5;-><init>(Ljb5;Lgb5;Lya5;Lft7;Ljava/util/concurrent/ConcurrentHashMap$KeySetView;[B[ILjava/util/concurrent/Semaphore;[I)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    add-int/lit8 v4, v17, 0x1

    .line 37
    :try_start_7
    new-instance v7, Lnj2;

    invoke-direct {v7, v3, v1, v2}, Lnj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    invoke-static {v0, v14, v4, v8, v7}, Ljb5;->i(Ljava/util/concurrent/ExecutorCompletionService;IIZLmt3;)I

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 38
    :goto_4
    :try_start_8
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v14, :cond_5

    move v14, v7

    .line 39
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_4

    .line 40
    new-instance v7, Ljj2;

    invoke-direct {v7, v3, v1, v2}, Ljj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x1

    invoke-static {v0, v14, v4, v8, v7}, Ljb5;->i(Ljava/util/concurrent/ExecutorCompletionService;IIZLmt3;)I

    move-result v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 41
    :goto_6
    :try_start_a
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-nez v7, :cond_3

    const/4 v8, 0x0

    goto :goto_5

    .line 42
    :cond_3
    :try_start_b
    invoke-virtual {v15, v7}, Ljava/io/OutputStream;->write([B)V

    .line 43
    array-length v8, v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move/from16 v17, v4

    int-to-long v3, v8

    add-long v3, v22, v3

    move-object/from16 v8, p1

    .line 44
    :try_start_c
    invoke-virtual {v8, v3, v4}, Lz95;->a(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-wide/from16 v22, v3

    const/4 v3, 0x0

    .line 45
    :try_start_d
    invoke-static {v7, v3}, Ljava/util/Arrays;->fill([BB)V

    add-int/lit8 v24, v24, 0x1

    move/from16 v4, v17

    const/4 v3, 0x2

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_7
    const/4 v12, 0x0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_7

    :goto_8
    invoke-static {v7, v12}, Ljava/util/Arrays;->fill([BB)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_3
    move-exception v0

    goto :goto_a

    :goto_9
    move-object v2, v0

    move-object/from16 v4, v26

    goto/16 :goto_f

    :catchall_4
    move-exception v0

    :goto_a
    move-object/from16 v8, p1

    goto :goto_9

    :cond_4
    move-object/from16 v8, p1

    move/from16 v17, v4

    move-object v8, v1

    move-object v7, v2

    move/from16 v2, v17

    move-object/from16 v3, v26

    move/from16 v4, v28

    goto/16 :goto_3

    :cond_5
    move-object/from16 v8, p1

    move/from16 v17, v4

    .line 46
    :try_start_e
    invoke-virtual {v15, v14}, Ljava/io/OutputStream;->write([B)V

    .line 47
    array-length v3, v14

    int-to-long v3, v3

    add-long v3, v22, v3

    .line 48
    invoke-virtual {v8, v3, v4}, Lz95;->a(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-wide/from16 v22, v3

    const/4 v3, 0x0

    .line 49
    :try_start_f
    invoke-static {v14, v3}, Ljava/util/Arrays;->fill([BB)V

    add-int/lit8 v24, v24, 0x1

    move/from16 v4, v17

    const/4 v3, 0x2

    const/4 v8, 0x0

    goto/16 :goto_4

    :catchall_5
    move-exception v0

    const/4 v12, 0x0

    invoke-static {v14, v12}, Ljava/util/Arrays;->fill([BB)V

    throw v0

    :catchall_6
    move-exception v0

    :goto_b
    move-object/from16 v8, p1

    goto :goto_c

    :catchall_7
    move-exception v0

    move-object v1, v8

    move/from16 v28, v27

    goto :goto_b

    .line 50
    :goto_c
    invoke-virtual {v12}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_9

    :catchall_9
    move-exception v0

    move/from16 v28, v4

    move-object v1, v8

    goto :goto_a

    :cond_6
    move/from16 v17, v2

    move/from16 v28, v4

    move-object v2, v7

    move-object v1, v8

    move-object/from16 v8, p1

    .line 51
    :try_start_10
    new-instance v3, Lhq0;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1, v2}, Lhq0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move/from16 v4, v17

    const/4 v6, 0x1

    invoke-static {v0, v14, v4, v6, v3}, Ljb5;->i(Ljava/util/concurrent/ExecutorCompletionService;IIZLmt3;)I

    move/from16 v0, v24

    .line 52
    :goto_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-nez v3, :cond_8

    .line 53
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    if-ne v0, v3, :cond_7

    .line 54
    :try_start_11
    invoke-interface {v15}, Ljava/io/Closeable;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 55
    :try_start_12
    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_12
    .catch Leb5; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object/from16 v4, v26

    .line 56
    :try_start_13
    invoke-static {v4, v10, v2}, Ljb5;->w(Lpa5;[BLjava/util/ArrayList;)V
    :try_end_13
    .catch Leb5; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    const/4 v12, 0x0

    .line 57
    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 58
    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([II)V

    .line 59
    invoke-static {v13, v12}, Ljava/util/Arrays;->fill([II)V

    return-void

    :catch_1
    move-exception v0

    goto/16 :goto_12

    :catch_2
    move-exception v0

    move-object/from16 v4, v26

    goto/16 :goto_12

    :catchall_a
    move-exception v0

    move-object/from16 v4, v26

    goto/16 :goto_10

    :cond_7
    move-object/from16 v4, v26

    .line 60
    :try_start_14
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MEGA download did not write all requests: written="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " total="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :catchall_b
    move-exception v0

    :goto_e
    move-object v2, v0

    goto :goto_f

    :catchall_c
    move-exception v0

    move-object/from16 v4, v26

    goto :goto_e

    :cond_8
    move-object/from16 v4, v26

    .line 62
    :try_start_15
    invoke-virtual {v15, v3}, Ljava/io/OutputStream;->write([B)V

    .line 63
    array-length v6, v3

    int-to-long v6, v6

    add-long v6, v22, v6

    .line 64
    invoke-virtual {v8, v6, v7}, Lz95;->a(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    const/4 v12, 0x0

    .line 65
    :try_start_16
    invoke-static {v3, v12}, Ljava/util/Arrays;->fill([BB)V

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v26, v4

    move-wide/from16 v22, v6

    goto :goto_d

    :catchall_d
    move-exception v0

    const/4 v12, 0x0

    invoke-static {v3, v12}, Ljava/util/Arrays;->fill([BB)V

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :catchall_e
    move-exception v0

    move/from16 v28, v4

    move-object v1, v8

    move-object/from16 v8, p1

    move-object v4, v3

    goto :goto_e

    .line 66
    :goto_f
    :try_start_17
    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    :catchall_f
    move-exception v0

    :try_start_18
    invoke-static {v15, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    :catchall_10
    move-exception v0

    goto :goto_10

    :catchall_11
    move-exception v0

    move/from16 v28, v4

    move-object v1, v8

    move-object/from16 v8, p1

    move-object v4, v3

    .line 67
    :goto_10
    :try_start_19
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Ljb5;->b(Ljava/util/concurrent/ConcurrentHashMap$KeySetView;)V

    .line 68
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v12, 0x0

    .line 70
    invoke-static {v3, v12}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_11

    .line 71
    :cond_9
    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 72
    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    throw v0
    :try_end_19
    .catch Leb5; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :goto_12
    const/16 v1, 0x10

    move/from16 v7, v28

    if-ge v7, v1, :cond_a

    move-object/from16 v1, p2

    .line 73
    :try_start_1a
    iget-object v2, v1, Lft7;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_a

    add-int/lit8 v0, v7, 0x1

    move-object v3, v4

    move-object/from16 v2, v18

    move-object/from16 v14, v19

    const/4 v7, 0x0

    const/4 v15, 0x4

    move v4, v0

    goto/16 :goto_1

    .line 74
    :cond_a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 75
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lq63;->h()Z

    const/4 v12, 0x0

    .line 76
    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 77
    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([II)V

    .line 78
    invoke-static {v13, v12}, Ljava/util/Arrays;->fill([II)V

    throw v0

    .line 79
    :cond_b
    const-string v0, "MEGA composite file key has invalid size for "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    return-void

    .line 81
    :cond_c
    const-string v0, "MEGA file key has invalid size for "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    return-void

    .line 82
    :cond_d
    const-string v0, "MEGA download path is a folder: "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    return-void

    .line 83
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 84
    const-string v2, "MEGA download path does not exist: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lnb5;->b:Lgt7;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lgt7;->d()Lvq;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lvq;->m(Ljava/lang/String;)Lpa5;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/16 v3, 0xa

    .line 20
    .line 21
    sget-object v4, Lov2;->a:Lov2;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_0
    iget-object v1, v1, Lvq;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    iget-object v2, v2, Lpa5;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/List;

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v4, v1

    .line 43
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-static {v4, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_5

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lpa5;

    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    new-array v6, v5, [C

    .line 70
    .line 71
    const/16 v7, 0x2f

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    aput-char v7, v6, v8

    .line 75
    .line 76
    invoke-static {v0, v6}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    iget-object v10, v4, Lpa5;->a:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v11, v4, Lpa5;->b:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v12, v4, Lpa5;->c:Ljava/lang/String;

    .line 85
    .line 86
    filled-new-array {v6, v12}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-static {v6}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    new-instance v13, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_3

    .line 108
    .line 109
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    move-object v9, v7

    .line 114
    check-cast v9, Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v9}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-nez v9, :cond_2

    .line 121
    .line 122
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    const/16 v17, 0x0

    .line 127
    .line 128
    const/16 v18, 0x3e

    .line 129
    .line 130
    const-string v14, "/"

    .line 131
    .line 132
    const/4 v15, 0x0

    .line 133
    const/16 v16, 0x0

    .line 134
    .line 135
    invoke-static/range {v13 .. v18}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    iget-wide v14, v4, Lpa5;->d:J

    .line 140
    .line 141
    iget-wide v6, v4, Lpa5;->e:J

    .line 142
    .line 143
    iget v4, v4, Lpa5;->f:I

    .line 144
    .line 145
    if-eqz v4, :cond_4

    .line 146
    .line 147
    move/from16 v20, v5

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_4
    move/from16 v20, v8

    .line 151
    .line 152
    :goto_3
    new-instance v9, Lmb5;

    .line 153
    .line 154
    move-wide/from16 v18, v6

    .line 155
    .line 156
    move-wide/from16 v16, v6

    .line 157
    .line 158
    invoke-direct/range {v9 .. v20}, Lmb5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZ)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    move-object v4, v1

    .line 166
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-static {v4, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_6

    .line 184
    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Lmb5;

    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    new-instance v3, Lpg1;

    .line 195
    .line 196
    iget-object v4, v2, Lmb5;->c:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v5, v2, Lmb5;->d:Ljava/lang/String;

    .line 199
    .line 200
    invoke-direct {v3, v4, v5}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-wide v6, v2, Lmb5;->e:J

    .line 204
    .line 205
    iput-wide v6, v3, Lpg1;->c:J

    .line 206
    .line 207
    iget-wide v6, v2, Lmb5;->f:J

    .line 208
    .line 209
    iput-wide v6, v3, Lpg1;->d:J

    .line 210
    .line 211
    iget-wide v6, v2, Lmb5;->g:J

    .line 212
    .line 213
    iput-wide v6, v3, Lpg1;->e:J

    .line 214
    .line 215
    iput-object v5, v3, Lpg1;->f:Ljava/lang/String;

    .line 216
    .line 217
    iget-boolean v2, v2, Lmb5;->h:Z

    .line 218
    .line 219
    iput-boolean v2, v3, Lpg1;->g:Z

    .line 220
    .line 221
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_6
    return-object v0
.end method
