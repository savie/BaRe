.class public abstract Lmm2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ll15;

.field public final b:Lwm2;

.field public final c:Lnr6;

.field public final d:Lfi7;


# direct methods
.method public constructor <init>(Lnr6;Lwm2;Lfi7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lmm2;->a:Ll15;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lmm2;->c:Lnr6;

    .line 25
    .line 26
    iput-object p3, p0, Lmm2;->d:Lfi7;

    .line 27
    .line 28
    iput-object p2, p0, Lmm2;->b:Lwm2;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 9

    .line 1
    new-instance v0, Lks6;

    .line 2
    .line 3
    iget-object v8, p0, Lmm2;->b:Lwm2;

    .line 4
    .line 5
    iget-object v2, v8, Lvc7;->e:Lus6;

    .line 6
    .line 7
    iget-wide v4, v8, Lvc7;->t:J

    .line 8
    .line 9
    iget-wide v6, v8, Lvc7;->c:J

    .line 10
    .line 11
    const/16 v1, 0x18

    .line 12
    .line 13
    sget-object v3, Lit6;->n:Lit6;

    .line 14
    .line 15
    invoke-direct/range {v0 .. v7}, Lrt6;-><init>(ILus6;Lit6;JJ)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lmm2;->c:Lnr6;

    .line 19
    .line 20
    iput-object v3, v0, Lks6;->e:Lnr6;

    .line 21
    .line 22
    iget-wide v5, v8, Lvc7;->r:J

    .line 23
    .line 24
    invoke-virtual {v8, v0}, Lvc7;->b(Lrt6;)Lp21;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "Close"

    .line 29
    .line 30
    sget-object v4, Lvc7;->G:Lus2;

    .line 31
    .line 32
    invoke-static/range {v1 .. v6}, Lvc7;->a(Lp21;Ljava/lang/String;Ljava/lang/Object;Lzm7;J)Lrt6;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    check-cast p1, Lmm2;

    .line 19
    .line 20
    iget-object v0, p1, Lmm2;->b:Lwm2;

    .line 21
    .line 22
    iget-object p1, p1, Lmm2;->d:Lfi7;

    .line 23
    .line 24
    iget-object v1, p0, Lmm2;->d:Lfi7;

    .line 25
    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    invoke-virtual {v1, p1}, Lfi7;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_4

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    iget-object p0, p0, Lmm2;->b:Lwm2;

    .line 39
    .line 40
    if-nez p0, :cond_5

    .line 41
    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_5
    invoke-virtual {p0, v0}, Lvc7;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_6

    .line 50
    .line 51
    :goto_0
    const/4 p0, 0x0

    .line 52
    return p0

    .line 53
    :cond_6
    :goto_1
    const/4 p0, 0x1

    .line 54
    return p0
.end method

.method public final g()V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lmm2;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lmm2;->b:Lwm2;

    .line 15
    .line 16
    iget-object v3, p0, Lmm2;->c:Lnr6;

    .line 17
    .line 18
    iget-object v4, p0, Lmm2;->d:Lfi7;

    .line 19
    .line 20
    filled-new-array {v1, v4, v2, v3, v0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object p0, p0, Lmm2;->a:Ll15;

    .line 25
    .line 26
    invoke-interface {p0, v0}, Ll15;->n([Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lmm2;->d:Lfi7;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lfi7;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    const/16 v2, 0x1f

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    mul-int/2addr v1, v2

    .line 16
    iget-object p0, p0, Lmm2;->b:Lwm2;

    .line 17
    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p0}, Lvc7;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :goto_1
    add-int/2addr v1, v0

    .line 26
    return v1
.end method

.method public final s0(Ljava/lang/Class;)Lg93;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lmm2;->b:Lwm2;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static/range {p1 .. p1}, Ln83;->a(Ljava/lang/Class;)Lr73;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Lr73;->a()I

    .line 13
    .line 14
    .line 15
    move-result v11

    .line 16
    new-instance v3, Lau6;

    .line 17
    .line 18
    iget-object v4, v1, Lvc7;->e:Lus6;

    .line 19
    .line 20
    iget-wide v5, v1, Lvc7;->t:J

    .line 21
    .line 22
    iget-wide v7, v1, Lvc7;->c:J

    .line 23
    .line 24
    iget-object v14, v0, Lmm2;->c:Lnr6;

    .line 25
    .line 26
    const/4 v10, 0x1

    .line 27
    const/4 v12, 0x0

    .line 28
    move-object v9, v14

    .line 29
    invoke-direct/range {v3 .. v12}, Lau6;-><init>(Lus6;JJLnr6;III)V

    .line 30
    .line 31
    .line 32
    iget-wide v4, v1, Lvc7;->r:J

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lvc7;->b(Lrt6;)Lp21;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    const-string v13, "QueryInfo"

    .line 39
    .line 40
    sget-object v15, Lzm7;->w:Lq34;

    .line 41
    .line 42
    move-wide/from16 v16, v4

    .line 43
    .line 44
    invoke-static/range {v12 .. v17}, Lvc7;->a(Lp21;Ljava/lang/String;Ljava/lang/Object;Lzm7;J)Lrt6;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lbu6;

    .line 49
    .line 50
    iget-object v0, v0, Lbu6;->e:[B

    .line 51
    .line 52
    :try_start_0
    new-instance v1, Ljw0;

    .line 53
    .line 54
    sget-object v3, Lvw2;->b:Luw2;

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    invoke-direct {v1, v0, v4, v3}, Low0;-><init>([BZLvw2;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v2, v1}, Lr73;->c(Low0;)Lt73;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lg93;
    :try_end_0
    .catch Liw0; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Lgv6;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw v1
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmm2;->b:Lwm2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lj73;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lmm2;->c:Lnr6;

    .line 12
    .line 13
    invoke-virtual {v0, p0, v1}, Lwm2;->A(Lnr6;Lm93;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
