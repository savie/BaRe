.class public final Lwm2;
.super Lvc7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final I:Lb05;

.field public static final J:Lsl4;

.field public static final K:Llk;


# instance fields
.field public final H:Lke;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb05;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwm2;->I:Lb05;

    .line 7
    .line 8
    new-instance v0, Lsl4;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lwm2;->J:Lsl4;

    .line 14
    .line 15
    new-instance v0, Llk;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lwm2;->K:Llk;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lfi7;Lab8;Lke;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvc7;-><init>(Lfi7;Lab8;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lwm2;->H:Lke;

    .line 5
    .line 6
    return-void
.end method

.method public static g(Lwm2;Lfi7;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)Lvm2;
    .locals 14

    .line 1
    new-instance v0, Lqs6;

    .line 2
    .line 3
    iget-object v1, p0, Lvc7;->e:Lus6;

    .line 4
    .line 5
    iget-wide v2, p0, Lvc7;->t:J

    .line 6
    .line 7
    iget-wide v4, p0, Lvc7;->c:J

    .line 8
    .line 9
    move-object v11, p1

    .line 10
    move-object/from16 v6, p2

    .line 11
    .line 12
    move-object/from16 v7, p3

    .line 13
    .line 14
    move-object/from16 v8, p4

    .line 15
    .line 16
    move/from16 v9, p5

    .line 17
    .line 18
    move-object/from16 v10, p6

    .line 19
    .line 20
    invoke-direct/range {v0 .. v11}, Lqs6;-><init>(Lus6;JJLjava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;Lfi7;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lwm2;->H:Lke;

    .line 24
    .line 25
    iget-object v2, v1, Lke;->b:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v9, v2

    .line 28
    check-cast v9, Lfo8;

    .line 29
    .line 30
    iget-wide v10, p0, Lvc7;->r:J

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lvc7;->b(Lrt6;)Lp21;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const-string v7, "Create"

    .line 37
    .line 38
    move-object v8, p1

    .line 39
    invoke-static/range {v6 .. v11}, Lvc7;->a(Lp21;Ljava/lang/String;Ljava/lang/Object;Lzm7;J)Lrt6;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lrs6;

    .line 44
    .line 45
    :try_start_0
    iget-object v2, p0, Lvc7;->d:Lj87;

    .line 46
    .line 47
    new-instance v6, Ltm2;

    .line 48
    .line 49
    move-object v7, p0

    .line 50
    move-object v8, p1

    .line 51
    move-object/from16 v9, p2

    .line 52
    .line 53
    move-object/from16 v10, p3

    .line 54
    .line 55
    move-object/from16 v11, p4

    .line 56
    .line 57
    move/from16 v12, p5

    .line 58
    .line 59
    move-object/from16 v13, p6

    .line 60
    .line 61
    invoke-direct/range {v6 .. v13}, Ltm2;-><init>(Lwm2;Lfi7;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2, v0, p1, v6}, Lke;->o(Lj87;Lrt6;Lfi7;Loy5;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lvm2;

    .line 69
    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_0
    new-instance v1, Lvm2;

    .line 74
    .line 75
    invoke-direct {v1, v0, p1, p0}, Lvm2;-><init>(Lrs6;Lfi7;Lwm2;)V
    :try_end_0
    .catch Lny5; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    move-object p0, v0

    .line 81
    new-instance v0, Lyu6;

    .line 82
    .line 83
    sget-object v1, Lit6;->b:Lit6;

    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v2, "Cannot resolve path "

    .line 88
    .line 89
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-wide v1, p0, Lny5;->a:J

    .line 100
    .line 101
    invoke-direct {v0, v1, v2, p1, p0}, Lyu6;-><init>(JLjava/lang/String;Ljava/lang/Exception;)V

    .line 102
    .line 103
    .line 104
    throw v0
.end method


# virtual methods
.method public final A(Lnr6;Lm93;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lzu6;

    .line 4
    .line 5
    invoke-direct {v1}, Low0;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Ln83;->a:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Ln83;->a:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Ls73;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    move-object/from16 v4, p2

    .line 25
    .line 26
    invoke-interface {v3, v4, v1}, Ls73;->b(Lm93;Lzu6;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v3}, Ls73;->a()I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    invoke-virtual {v1}, Low0;->c()[B

    .line 34
    .line 35
    .line 36
    move-result-object v12

    .line 37
    new-instance v4, Lhu6;

    .line 38
    .line 39
    iget-wide v6, v0, Lvc7;->t:J

    .line 40
    .line 41
    iget-wide v8, v0, Lvc7;->c:J

    .line 42
    .line 43
    iget-object v5, v0, Lvc7;->e:Lus6;

    .line 44
    .line 45
    move-object/from16 v10, p1

    .line 46
    .line 47
    invoke-direct/range {v4 .. v12}, Lhu6;-><init>(Lus6;JJLnr6;I[B)V

    .line 48
    .line 49
    .line 50
    iget-wide v1, v0, Lvc7;->r:J

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Lvc7;->b(Lrt6;)Lp21;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    const-string v14, "SetInfo"

    .line 57
    .line 58
    sget-object v16, Lzm7;->w:Lq34;

    .line 59
    .line 60
    move-object/from16 v15, p1

    .line 61
    .line 62
    move-wide/from16 v17, v1

    .line 63
    .line 64
    invoke-static/range {v13 .. v18}, Lvc7;->a(Lp21;Ljava/lang/String;Ljava/lang/Object;Lzm7;J)Lrt6;

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    const-string v0, "FileInformationClass not supported - "

    .line 69
    .line 70
    invoke-static {v2, v0}, Lfz5;->k(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/util/EnumSet;Lzm7;)Z
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Ls5;->d:Ls5;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    sget-object v0, Lw63;->c:Lw63;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    sget-object v5, Lju6;->e:Ljava/util/Set;

    .line 14
    .line 15
    const/4 v6, 0x2

    .line 16
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v7, p2

    .line 19
    invoke-virtual/range {v1 .. v7}, Lwm2;->q(Ljava/lang/String;Ljava/util/Set;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lmm2;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0}, Lmm2;->close()V
    :try_end_0
    .catch Lyu6; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return p1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    move-object p0, v0

    .line 30
    iget-wide p1, p0, Lyu6;->b:J

    .line 31
    .line 32
    invoke-interface {p3, p1, p2}, Lzm7;->c(J)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    :cond_0
    throw p0
.end method

.method public final j(Ljava/lang/String;)Lu63;
    .locals 10

    .line 1
    const-class v0, Lu63;

    .line 2
    .line 3
    sget-object v1, Ls5;->d:Ls5;

    .line 4
    .line 5
    sget-object v2, Ls5;->f:Ls5;

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    sget-object v7, Lju6;->e:Ljava/util/Set;

    .line 12
    .line 13
    const/4 v8, 0x2

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v3, p0

    .line 17
    move-object v4, p1

    .line 18
    invoke-virtual/range {v3 .. v9}, Lwm2;->q(Ljava/lang/String;Ljava/util/Set;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lmm2;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :try_start_0
    invoke-virtual {p0, v0}, Lmm2;->s0(Ljava/lang/Class;)Lg93;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {p0}, Lmm2;->close()V

    .line 27
    .line 28
    .line 29
    check-cast p1, Lu63;

    .line 30
    .line 31
    return-object p1

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    move-object p1, v0

    .line 34
    :try_start_1
    invoke-virtual {p0}, Lmm2;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception v0

    .line 39
    move-object p0, v0

    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    throw p1
.end method

.method public final m()Lwc7;
    .locals 12

    .line 1
    sget-object v0, Ls5;->d:Ls5;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    sget-object v5, Lju6;->e:Ljava/util/Set;

    .line 8
    .line 9
    const/4 v6, 0x2

    .line 10
    const/4 v7, 0x0

    .line 11
    const-string v2, ""

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, p0

    .line 15
    invoke-virtual/range {v1 .. v7}, Lwm2;->r(Ljava/lang/String;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lbm2;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :try_start_0
    iget-object v2, p0, Lmm2;->c:Lnr6;

    .line 20
    .line 21
    move-object v8, v2

    .line 22
    new-instance v2, Lau6;

    .line 23
    .line 24
    iget-object v3, v1, Lvc7;->e:Lus6;

    .line 25
    .line 26
    iget-wide v4, v1, Lvc7;->t:J

    .line 27
    .line 28
    iget-wide v6, v1, Lvc7;->c:J

    .line 29
    .line 30
    const/4 v9, 0x2

    .line 31
    const/4 v11, 0x7

    .line 32
    const/4 v10, 0x0

    .line 33
    invoke-direct/range {v2 .. v11}, Lau6;-><init>(Lus6;JJLnr6;III)V

    .line 34
    .line 35
    .line 36
    move-object v0, v1

    .line 37
    const-string v1, "QueryInfo"

    .line 38
    .line 39
    sget-object v3, Lzm7;->w:Lq34;

    .line 40
    .line 41
    iget-wide v4, v0, Lvc7;->r:J

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lvc7;->b(Lrt6;)Lp21;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v2, v8

    .line 48
    invoke-static/range {v0 .. v5}, Lvc7;->a(Lp21;Ljava/lang/String;Ljava/lang/Object;Lzm7;J)Lrt6;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lbu6;

    .line 53
    .line 54
    iget-object v0, v0, Lbu6;->e:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    :try_start_1
    new-instance v1, Ljw0;

    .line 57
    .line 58
    sget-object v2, Lvw2;->b:Luw2;

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-direct {v1, v0, v3, v2}, Low0;-><init>([BZLvw2;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lwc7;->a(Ljw0;)Lwc7;

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_1
    .catch Liw0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    invoke-virtual {p0}, Lmm2;->close()V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    move-object v1, v0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    :try_start_2
    new-instance v1, Lgv6;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lmm2;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    move-object p0, v0

    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    throw v1
.end method

.method public final n(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    sget-object v0, Ls5;->d:Ls5;

    .line 2
    .line 3
    sget-object v1, Ls5;->f:Ls5;

    .line 4
    .line 5
    sget-object v2, Ls5;->b:Ls5;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    sget-object v7, Lju6;->e:Ljava/util/Set;

    .line 12
    .line 13
    const/4 v8, 0x2

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v3, p0

    .line 17
    move-object v4, p1

    .line 18
    invoke-virtual/range {v3 .. v9}, Lwm2;->r(Ljava/lang/String;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lbm2;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lam2;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lam2;-><init>(Lbm2;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0}, Lam2;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lam2;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Li73;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lmm2;->g()V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    move-object p1, v0

    .line 54
    invoke-virtual {p0}, Lmm2;->g()V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public final q(Ljava/lang/String;Ljava/util/Set;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lmm2;
    .locals 8

    .line 1
    new-instance v2, Lfi7;

    .line 2
    .line 3
    iget-object v0, p0, Lvc7;->a:Lfi7;

    .line 4
    .line 5
    invoke-direct {v2, v0, p1}, Lfi7;-><init>(Lfi7;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p1, p0, Lwm2;->H:Lke;

    .line 9
    .line 10
    new-instance v0, Lum2;

    .line 11
    .line 12
    move-object v1, p0

    .line 13
    move-object v3, p2

    .line 14
    move-object v4, p3

    .line 15
    move-object v5, p4

    .line 16
    move v6, p5

    .line 17
    move-object v7, p6

    .line 18
    invoke-direct/range {v0 .. v7}, Lum2;-><init>(Lwm2;Lfi7;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lum2;->b(Lfi7;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lvm2;
    :try_end_0
    .catch Lny5; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    iget-object p1, p0, Lvm2;->a:Lrs6;

    .line 31
    .line 32
    iget-object p2, p0, Lvm2;->c:Lfi7;

    .line 33
    .line 34
    iget-object p0, p0, Lvm2;->b:Lwm2;

    .line 35
    .line 36
    iget-object p3, p1, Lrs6;->e:Ljava/util/EnumSet;

    .line 37
    .line 38
    sget-object p4, Lw63;->b:Lw63;

    .line 39
    .line 40
    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    iget-object p1, p1, Lrs6;->f:Lnr6;

    .line 45
    .line 46
    if-eqz p3, :cond_0

    .line 47
    .line 48
    new-instance p3, Lbm2;

    .line 49
    .line 50
    invoke-direct {p3, p1, p0, p2}, Lmm2;-><init>(Lnr6;Lwm2;Lfi7;)V

    .line 51
    .line 52
    .line 53
    return-object p3

    .line 54
    :cond_0
    new-instance p3, Lr63;

    .line 55
    .line 56
    invoke-direct {p3, p1, p0, p2}, Lr63;-><init>(Lnr6;Lwm2;Lfi7;)V

    .line 57
    .line 58
    .line 59
    return-object p3

    .line 60
    :catch_0
    move-exception v0

    .line 61
    move-object p0, v0

    .line 62
    new-instance p1, Lyu6;

    .line 63
    .line 64
    const-class p2, Lbp5;

    .line 65
    .line 66
    sget-object p3, Lbp5;->b:Lbp5;

    .line 67
    .line 68
    iget-wide p4, p0, Lny5;->a:J

    .line 69
    .line 70
    invoke-static {p4, p5, p2, p3}, Lsz8;->k0(JLjava/lang/Class;Lbp5;)Lsx2;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Lbp5;

    .line 75
    .line 76
    iget-wide p2, p2, Lbp5;->a:J

    .line 77
    .line 78
    sget-object p4, Lit6;->b:Lit6;

    .line 79
    .line 80
    new-instance p4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string p5, "Cannot resolve path "

    .line 83
    .line 84
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    invoke-direct {p1, p2, p3, p4, p0}, Lyu6;-><init>(JLjava/lang/String;Ljava/lang/Exception;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method public final r(Ljava/lang/String;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lbm2;
    .locals 7

    .line 1
    if-eqz p6, :cond_0

    .line 2
    .line 3
    invoke-static {p6}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object p6

    .line 7
    :goto_0
    move-object v6, p6

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const-class p6, Lps6;

    .line 10
    .line 11
    invoke-static {p6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 12
    .line 13
    .line 14
    move-result-object p6

    .line 15
    goto :goto_0

    .line 16
    :goto_1
    sget-object p6, Lps6;->b:Lps6;

    .line 17
    .line 18
    invoke-virtual {v6, p6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    sget-object p6, Lps6;->c:Lps6;

    .line 22
    .line 23
    invoke-virtual {v6, p6}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-static {p3}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    :goto_2
    move-object v3, p3

    .line 33
    goto :goto_3

    .line 34
    :cond_1
    const-class p3, Lw63;

    .line 35
    .line 36
    invoke-static {p3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    goto :goto_2

    .line 41
    :goto_3
    sget-object p3, Lw63;->b:Lw63;

    .line 42
    .line 43
    invoke-virtual {v3, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-object v0, p0

    .line 47
    move-object v1, p1

    .line 48
    move-object v2, p2

    .line 49
    move-object v4, p4

    .line 50
    move v5, p5

    .line 51
    invoke-virtual/range {v0 .. v6}, Lwm2;->q(Ljava/lang/String;Ljava/util/Set;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lmm2;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lbm2;

    .line 56
    .line 57
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lwm2;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "["

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lvc7;->a:Lfi7;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, "]"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final u(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)Lr63;
    .locals 7

    .line 1
    if-eqz p6, :cond_0

    .line 2
    .line 3
    invoke-static {p6}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object p6

    .line 7
    :goto_0
    move-object v6, p6

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const-class p6, Lps6;

    .line 10
    .line 11
    invoke-static {p6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 12
    .line 13
    .line 14
    move-result-object p6

    .line 15
    goto :goto_0

    .line 16
    :goto_1
    sget-object p6, Lps6;->c:Lps6;

    .line 17
    .line 18
    invoke-virtual {v6, p6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    sget-object p6, Lps6;->b:Lps6;

    .line 22
    .line 23
    invoke-virtual {v6, p6}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-static {p3}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    :goto_2
    move-object v3, p3

    .line 33
    goto :goto_3

    .line 34
    :cond_1
    const-class p3, Lw63;

    .line 35
    .line 36
    invoke-static {p3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    goto :goto_2

    .line 41
    :goto_3
    sget-object p3, Lw63;->b:Lw63;

    .line 42
    .line 43
    invoke-virtual {v3, p3}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-object v0, p0

    .line 47
    move-object v1, p1

    .line 48
    move-object v2, p2

    .line 49
    move-object v4, p4

    .line 50
    move v5, p5

    .line 51
    invoke-virtual/range {v0 .. v6}, Lwm2;->q(Ljava/lang/String;Ljava/util/Set;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lmm2;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lr63;

    .line 56
    .line 57
    return-object p0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Ls5;->k:Ls5;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    sget-object v0, Lw63;->c:Lw63;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    sget-object v0, Lju6;->d:Lju6;

    .line 14
    .line 15
    sget-object v1, Lju6;->c:Lju6;

    .line 16
    .line 17
    sget-object v2, Lju6;->b:Lju6;

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    sget-object v0, Lps6;->c:Lps6;

    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    const/4 v6, 0x2

    .line 30
    move-object v1, p0

    .line 31
    move-object v2, p1

    .line 32
    invoke-virtual/range {v1 .. v7}, Lwm2;->q(Ljava/lang/String;Ljava/util/Set;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lmm2;

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_0
    .catch Lyu6; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :try_start_1
    invoke-virtual {p0}, Lmm2;->u()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    :try_start_2
    invoke-virtual {p0}, Lmm2;->close()V
    :try_end_2
    .catch Lyu6; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    move-object p1, v0

    .line 45
    :try_start_3
    invoke-virtual {p0}, Lmm2;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_1
    move-exception v0

    .line 50
    move-object p0, v0

    .line 51
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    throw p1
    :try_end_4
    .catch Lyu6; {:try_start_4 .. :try_end_4} :catch_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    move-object p0, v0

    .line 57
    sget-object p1, Lwm2;->K:Llk;

    .line 58
    .line 59
    iget-wide v0, p0, Lyu6;->b:J

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Llk;->c(J)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    throw p0
.end method

.method public final z(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    sget-object v0, Lw63;->b:Lw63;

    .line 10
    .line 11
    if-eqz p2, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lwm2;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lp73;

    .line 32
    .line 33
    iget-object v2, v1, Li73;->a:Ljava/lang/String;

    .line 34
    .line 35
    const-string v3, "."

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    const-string v3, ".."

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v3, "\\"

    .line 53
    .line 54
    invoke-static {p1, v3, v2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-wide v3, v1, Lp73;->f:J

    .line 59
    .line 60
    invoke-static {v3, v4, v0}, Lsz8;->H(JLsx2;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Lwm2;->v(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v1, 0x1

    .line 71
    invoke-virtual {p0, v2, v1}, Lwm2;->z(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 p2, 0x0

    .line 76
    invoke-virtual {p0, p1, p2}, Lwm2;->z(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    :try_start_0
    sget-object p2, Ls5;->k:Ls5;

    .line 81
    .line 82
    invoke-static {p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    sget-object p2, Lju6;->d:Lju6;

    .line 91
    .line 92
    sget-object v0, Lju6;->c:Lju6;

    .line 93
    .line 94
    sget-object v1, Lju6;->b:Lju6;

    .line 95
    .line 96
    invoke-static {p2, v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    sget-object p2, Lps6;->b:Lps6;

    .line 101
    .line 102
    invoke-static {p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    const/4 v6, 0x2

    .line 107
    move-object v1, p0

    .line 108
    move-object v2, p1

    .line 109
    invoke-virtual/range {v1 .. v7}, Lwm2;->q(Ljava/lang/String;Ljava/util/Set;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lmm2;

    .line 110
    .line 111
    .line 112
    move-result-object p0
    :try_end_0
    .catch Lyu6; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    invoke-virtual {p0}, Lmm2;->u()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    .line 116
    :try_start_2
    invoke-virtual {p0}, Lmm2;->close()V
    :try_end_2
    .catch Lyu6; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    move-object p1, v0

    .line 122
    :try_start_3
    invoke-virtual {p0}, Lmm2;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :catchall_1
    move-exception v0

    .line 127
    move-object p0, v0

    .line 128
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :goto_1
    throw p1
    :try_end_4
    .catch Lyu6; {:try_start_4 .. :try_end_4} :catch_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    move-object p0, v0

    .line 134
    sget-object p1, Lwm2;->K:Llk;

    .line 135
    .line 136
    iget-wide v0, p0, Lyu6;->b:J

    .line 137
    .line 138
    invoke-virtual {p1, v0, v1}, Llk;->c(J)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    return-void

    .line 145
    :cond_5
    throw p0

    .line 146
    :cond_6
    const-string p0, "rmdir: path should be non-null and non-empty"

    .line 147
    .line 148
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method
