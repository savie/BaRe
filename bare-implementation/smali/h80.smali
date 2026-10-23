.class public Lh80;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lji3;
.implements Ljk8;
.implements Lz23;
.implements Lw23;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Lmr9;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lh80;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lh80;->b:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance p1, Lvk9;

    .line 17
    .line 18
    const/4 v0, 0x6

    .line 19
    invoke-direct {p1, v0}, Lvk9;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lh80;->c:Ljava/lang/Object;

    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    sget-object p1, Llz3;->d:Llz3;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroid/util/SparseIntArray;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lh80;->b:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object p1, p0, Lh80;->c:Ljava/lang/Object;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 49
    iput p1, p0, Lh80;->a:I

    iput-object p2, p0, Lh80;->c:Ljava/lang/Object;

    iput-object p3, p0, Lh80;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 41
    iput p1, p0, Lh80;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lia9;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lh80;->a:I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lh80;->b:Ljava/lang/Object;

    .line 45
    :try_start_0
    invoke-static {}, Ljq6;->B()Ljq6;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    new-instance p1, Lcz4;

    const/16 v0, 0x1d

    .line 47
    invoke-direct {p1, v0}, Lcz4;-><init>(I)V

    .line 48
    :goto_0
    iput-object p1, p0, Lh80;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Liu;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lh80;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lh80;->b:Ljava/lang/Object;

    .line 68
    iput-object p2, p0, Lh80;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 42
    iput p3, p0, Lh80;->a:I

    iput-object p1, p0, Lh80;->b:Ljava/lang/Object;

    iput-object p2, p0, Lh80;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lh80;->a:I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lh80;->b:Ljava/lang/Object;

    .line 52
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lh80;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lh80;->a:I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh80;->b:Ljava/lang/Object;

    .line 54
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lh80;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp02;)V
    .locals 1

    const/4 p1, 0x2

    iput p1, p0, Lh80;->a:I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lh80;->b:Ljava/lang/Object;

    .line 65
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lh80;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lqc6;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lh80;->a:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lh80;->b:Ljava/lang/Object;

    .line 57
    iget-object p1, p1, Lqc6;->b:Loc6;

    .line 58
    iget-object p1, p1, Loc6;->e:Lnb4;

    .line 59
    iput-object p1, p0, Lh80;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lvo4;Lk06;Lw88;[B)V
    .locals 0

    const/16 p2, 0xf

    iput p2, p0, Lh80;->a:I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lh80;->b:Ljava/lang/Object;

    .line 62
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lh80;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .line 1
    iget-object p0, p0, Lh80;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Llv1;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lip5;->a:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    new-array p1, v0, [B

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lip5;->a:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    :try_start_0
    const-string v1, "MD4"

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v2, Lqg0;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Lqg0;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Lqg0;->b([B)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lqg0;->a()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catch Lh67; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    new-array p2, v0, [B

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    sget-object v1, Lip5;->a:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    :goto_1
    new-array v0, v0, [B

    .line 52
    .line 53
    filled-new-array {p2, v0}, [[B

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p0, p1, p2}, Lip5;->a(Llv1;[B[[B)[B

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    new-instance p1, Lhp5;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public b([BLla;)[B
    .locals 6

    .line 1
    iget-object v0, p0, Lh80;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lsr9;

    .line 4
    .line 5
    iget-object v1, p2, Lla;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ld2a;

    .line 8
    .line 9
    invoke-virtual {v1}, Ld2a;->b()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1, p1}, Lsr9;->a([B[B)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p2, p2, Lla;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p2, Ld2a;

    .line 20
    .line 21
    invoke-virtual {p2}, Ld2a;->b()[B

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    filled-new-array {p1, p2}, [[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lz85;->N([[B)[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object p2, Lor9;->b:[B

    .line 34
    .line 35
    sget-object v1, Lor9;->m:[B

    .line 36
    .line 37
    filled-new-array {v1, p2}, [[B

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2}, Lz85;->N([[B)[B

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iget-object p0, p0, Lh80;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lia9;

    .line 48
    .line 49
    iget-object v1, p0, Lia9;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    sget-object v2, Lor9;->o:[B

    .line 60
    .line 61
    sget-object v3, Lau9;->a:Ljava/nio/charset/Charset;

    .line 62
    .line 63
    const-string v4, "eae_prk"

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    filled-new-array {v2, p2, v4, v0}, [[B

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lz85;->N([[B)[B

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p0, v0, v4}, Lia9;->b([B[B)[B

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/4 v4, 0x2

    .line 83
    invoke-static {v4, v1}, Lor9;->b(II)[B

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const-string v5, "shared_secret"

    .line 88
    .line 89
    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    filled-new-array {v4, v2, p2, v3, p1}, [[B

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Lz85;->N([[B)[B

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, v1, v0, p1}, Lia9;->a(I[B[B)[B

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method

.method public c()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lh80;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    :try_start_1
    iget-object v0, p0, Lh80;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method

.method public d(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/List;Lsb4;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lk31;

    .line 21
    .line 22
    iget v2, v1, Lk31;->a:I

    .line 23
    .line 24
    invoke-static {v2, p2}, Ldj7;->a(II)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p3, Lty2;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {p3, p0, v1}, Lty2;-><init>(Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_a

    .line 52
    .line 53
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lk31;

    .line 58
    .line 59
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lez2;

    .line 74
    .line 75
    invoke-virtual {v2, p2}, Lez2;->g(I)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    iget v3, v0, Lk31;->a:I

    .line 82
    .line 83
    const/4 v4, 0x5

    .line 84
    invoke-static {v3, v4}, Ldj7;->a(II)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_9

    .line 89
    .line 90
    iget v3, v0, Lk31;->a:I

    .line 91
    .line 92
    const/4 v4, 0x1

    .line 93
    invoke-static {v3, v4}, Ldj7;->a(II)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_4
    iget-object v3, v0, Lk31;->d:Lm61;

    .line 101
    .line 102
    iget-object v4, v0, Lk31;->b:Lsb4;

    .line 103
    .line 104
    iget-object v4, v4, Lsb4;->a:Lqn5;

    .line 105
    .line 106
    iget-object v5, p0, Lh80;->c:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v5, Lnb4;

    .line 109
    .line 110
    iget-object v6, p5, Lsb4;->c:Lnb4;

    .line 111
    .line 112
    sget-object v7, Lno4;->a:Lno4;

    .line 113
    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-nez v7, :cond_6

    .line 119
    .line 120
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_5

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    const-string p0, "Index not available in IndexedNode!"

    .line 128
    .line 129
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_6
    :goto_2
    invoke-virtual {p5}, Lsb4;->c()V

    .line 134
    .line 135
    .line 136
    iget-object v5, p5, Lsb4;->b:Lra4;

    .line 137
    .line 138
    sget-object v6, Lsb4;->d:Lra4;

    .line 139
    .line 140
    invoke-static {v5, v6}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-eqz v5, :cond_7

    .line 145
    .line 146
    iget-object v4, p5, Lsb4;->a:Lqn5;

    .line 147
    .line 148
    invoke-interface {v4, v3}, Lqn5;->D(Lm61;)Lm61;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    :goto_3
    move-object v8, v3

    .line 153
    goto :goto_4

    .line 154
    :cond_7
    iget-object v5, p5, Lsb4;->b:Lra4;

    .line 155
    .line 156
    new-instance v6, Lhk5;

    .line 157
    .line 158
    invoke-direct {v6, v3, v4}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 159
    .line 160
    .line 161
    iget-object v3, v5, Lra4;->a:Loa4;

    .line 162
    .line 163
    invoke-virtual {v3, v6}, Loa4;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Lhk5;

    .line 168
    .line 169
    if-eqz v3, :cond_8

    .line 170
    .line 171
    iget-object v3, v3, Lhk5;->a:Lm61;

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_8
    const/4 v3, 0x0

    .line 175
    goto :goto_3

    .line 176
    :goto_4
    new-instance v4, Lk31;

    .line 177
    .line 178
    iget v5, v0, Lk31;->a:I

    .line 179
    .line 180
    iget-object v6, v0, Lk31;->b:Lsb4;

    .line 181
    .line 182
    iget-object v7, v0, Lk31;->d:Lm61;

    .line 183
    .line 184
    iget-object v9, v0, Lk31;->c:Lsb4;

    .line 185
    .line 186
    invoke-direct/range {v4 .. v9}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 187
    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_9
    :goto_5
    move-object v4, v0

    .line 191
    :goto_6
    iget-object v3, p0, Lh80;->b:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v3, Lqc6;

    .line 194
    .line 195
    invoke-virtual {v2, v4, v3}, Lez2;->b(Lk31;Lqc6;)Lpa2;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_a
    return-void
.end method

.method public e()Ljava/security/PublicKey;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lh80;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvo4;

    .line 4
    .line 5
    iget-object p0, p0, Lh80;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, [B

    .line 8
    .line 9
    invoke-static {v0, p0}, Lw16;->h(Lvo4;[B)Lqb6;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    invoke-virtual {p0}, Lqb6;->h()Ljava/security/PublicKey;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception p0

    .line 21
    :goto_0
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lh80;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lh80;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, [C

    .line 14
    .line 15
    array-length p0, p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public g(Ls8;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh80;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lx91;

    .line 4
    .line 5
    iget-object v1, v0, Lx91;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/view/ActionMode$Callback;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lx91;->e(Ls8;)Lgs7;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v1, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lh80;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lfo;

    .line 19
    .line 20
    iget-object v0, p1, Lfo;->N:Landroid/widget/PopupWindow;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p1, Lfo;->t:Landroid/view/Window;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p1, Lfo;->O:Lqn;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p1, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p1, Lfo;->P:Llm8;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Llm8;->b()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p1, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 47
    .line 48
    invoke-static {v0}, Ldl8;->a(Landroid/view/View;)Llm8;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Llm8;->a(F)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p1, Lfo;->P:Llm8;

    .line 57
    .line 58
    new-instance v1, Lsn;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lsn;-><init>(Lh80;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Llm8;->d(Lom8;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    const/4 p0, 0x0

    .line 67
    iput-object p0, p1, Lfo;->L:Ls8;

    .line 68
    .line 69
    iget-object p0, p1, Lfo;->R:Landroid/view/ViewGroup;

    .line 70
    .line 71
    sget-object v0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lfo;->I()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lh80;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh80;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lca6;

    .line 9
    .line 10
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, La48;

    .line 15
    .line 16
    iget-object p0, p0, Lh80;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lca6;

    .line 19
    .line 20
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lni8;

    .line 25
    .line 26
    new-instance v1, Lb97;

    .line 27
    .line 28
    invoke-direct {v1, v0, p0}, Lb97;-><init>(La48;Lni8;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_0
    iget-object v0, p0, Lh80;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lrb;

    .line 35
    .line 36
    iget-object v0, v0, Lrb;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroid/content/Context;

    .line 39
    .line 40
    iget-object p0, p0, Lh80;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lrb;

    .line 43
    .line 44
    invoke-virtual {p0}, Lrb;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v1, Lmf5;

    .line 49
    .line 50
    check-cast p0, Ll22;

    .line 51
    .line 52
    invoke-direct {v1, v0, p0}, Lmf5;-><init>(Landroid/content/Context;Ll22;)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lh80;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 4
    .line 5
    return-object p0
.end method

.method public h(Ls8;Landroid/view/Menu;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lh80;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lfo;

    .line 4
    .line 5
    iget-object v0, v0, Lfo;->R:Landroid/view/ViewGroup;

    .line 6
    .line 7
    sget-object v1, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lh80;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lx91;

    .line 15
    .line 16
    iget-object v0, p0, Lx91;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lx91;->e(Ls8;)Lgs7;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v1, p0, Lx91;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ldg7;

    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/view/Menu;

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    new-instance v2, Lad5;

    .line 37
    .line 38
    iget-object p0, p0, Lx91;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Landroid/content/Context;

    .line 41
    .line 42
    move-object v3, p2

    .line 43
    check-cast v3, Lfc5;

    .line 44
    .line 45
    invoke-direct {v2, p0, v3}, Lad5;-><init>(Landroid/content/Context;Lfc5;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p2, v2}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-interface {v0, p1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Removed the wrong lock, expected to remove: "

    .line 2
    .line 3
    const-string v1, "Cannot release a lock that is not held, safeKey: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lh80;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "Argument must not be null"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast v2, Llm2;

    .line 20
    .line 21
    iget v3, v2, Llm2;->b:I

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-lt v3, v4, :cond_3

    .line 25
    .line 26
    sub-int/2addr v3, v4

    .line 27
    iput v3, v2, Llm2;->b:I

    .line 28
    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lh80;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Llm2;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lh80;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lvk9;

    .line 50
    .line 51
    iget-object v0, p1, Lvk9;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Ljava/util/ArrayDeque;

    .line 54
    .line 55
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    iget-object v3, p1, Lvk9;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, Ljava/util/ArrayDeque;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/16 v4, 0xa

    .line 65
    .line 66
    if-ge v3, v4, :cond_0

    .line 67
    .line 68
    iget-object p1, p1, Lvk9;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Ljava/util/ArrayDeque;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit v0

    .line 79
    goto :goto_2

    .line 80
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    throw p1

    .line 82
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", but actually removed: "

    .line 93
    .line 94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", safeKey: "

    .line 101
    .line 102
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v3

    .line 116
    :catchall_1
    move-exception p1

    .line 117
    goto :goto_3

    .line 118
    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    iget-object p0, v2, Llm2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p1, ", interestedThreads: "

    .line 136
    .line 137
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget p1, v2, Llm2;->b:I

    .line 141
    .line 142
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    throw p1
.end method

.method public k()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lh80;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lh80;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_1
    const-string v0, "Unbalanced call to unblock() detected."

    .line 22
    .line 23
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lh80;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lzz8;

    .line 4
    .line 5
    iget-object p0, p0, Lh80;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    .line 9
    iget-object v0, p1, Lzz8;->f:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p1, p1, Lzz8;->e:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public t(Lli3;Lkv1;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lh80;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lmb2;

    .line 4
    .line 5
    instance-of v1, p2, Loi3;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, p2

    .line 10
    check-cast v1, Loi3;

    .line 11
    .line 12
    iget v2, v1, Loi3;->b:I

    .line 13
    .line 14
    const/high16 v3, -0x80000000

    .line 15
    .line 16
    and-int v4, v2, v3

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    iput v2, v1, Loi3;->b:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Loi3;

    .line 25
    .line 26
    invoke-direct {v1, p0, p2}, Loi3;-><init>(Lh80;Lkv1;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p2, v1, Loi3;->a:Ljava/lang/Object;

    .line 30
    .line 31
    iget v2, v1, Loi3;->b:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    sget-object v7, Lyx1;->a:Lyx1;

    .line 38
    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    if-eq v2, v5, :cond_3

    .line 42
    .line 43
    if-eq v2, v4, :cond_2

    .line 44
    .line 45
    if-ne v2, v3, :cond_1

    .line 46
    .line 47
    iget-object p0, v1, Loi3;->e:Ljava/io/Serializable;

    .line 48
    .line 49
    check-cast p0, Lsw6;

    .line 50
    .line 51
    :try_start_0
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_3

    .line 57
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v6

    .line 63
    :cond_2
    iget-object p0, v1, Loi3;->e:Ljava/io/Serializable;

    .line 64
    .line 65
    check-cast p0, Ljava/lang/Throwable;

    .line 66
    .line 67
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_6

    .line 71
    :cond_3
    iget p0, v1, Loi3;->f:I

    .line 72
    .line 73
    iget-object p1, v1, Loi3;->d:Lli3;

    .line 74
    .line 75
    :try_start_1
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_1
    move-exception p1

    .line 80
    move p2, p0

    .line 81
    move-object p0, p1

    .line 82
    goto :goto_4

    .line 83
    :cond_4
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const/4 p2, 0x0

    .line 87
    :try_start_2
    iget-object p0, p0, Lh80;->b:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p0, Ljq6;

    .line 90
    .line 91
    iput-object p1, v1, Loi3;->d:Lli3;

    .line 92
    .line 93
    iput p2, v1, Loi3;->f:I

    .line 94
    .line 95
    iput v5, v1, Loi3;->b:I

    .line 96
    .line 97
    invoke-virtual {p0, p1, v1}, Ljq6;->t(Lli3;Lkv1;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 101
    if-ne p0, v7, :cond_5

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_5
    move p0, p2

    .line 105
    :goto_1
    new-instance p2, Lsw6;

    .line 106
    .line 107
    invoke-interface {v1}, Ljv1;->getContext()Lox1;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-direct {p2, p1, v2}, Lsw6;-><init>(Lli3;Lox1;)V

    .line 112
    .line 113
    .line 114
    :try_start_3
    iput-object v6, v1, Loi3;->d:Lli3;

    .line 115
    .line 116
    iput-object p2, v1, Loi3;->e:Ljava/io/Serializable;

    .line 117
    .line 118
    iput p0, v1, Loi3;->f:I

    .line 119
    .line 120
    iput v3, v1, Loi3;->b:I

    .line 121
    .line 122
    invoke-virtual {v0, p2, v6, v1}, Lmb2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 126
    if-ne p0, v7, :cond_6

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_6
    move-object p0, p2

    .line 130
    :goto_2
    invoke-virtual {p0}, Lkv1;->releaseIntercepted()V

    .line 131
    .line 132
    .line 133
    sget-object p0, Lbe8;->a:Lbe8;

    .line 134
    .line 135
    return-object p0

    .line 136
    :catchall_2
    move-exception p1

    .line 137
    move-object p0, p2

    .line 138
    :goto_3
    invoke-virtual {p0}, Lkv1;->releaseIntercepted()V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :catchall_3
    move-exception p0

    .line 143
    :goto_4
    new-instance p1, Ly28;

    .line 144
    .line 145
    invoke-direct {p1, p0}, Ly28;-><init>(Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    iput-object v6, v1, Loi3;->d:Lli3;

    .line 149
    .line 150
    iput-object p0, v1, Loi3;->e:Ljava/io/Serializable;

    .line 151
    .line 152
    iput p2, v1, Loi3;->f:I

    .line 153
    .line 154
    iput v4, v1, Loi3;->b:I

    .line 155
    .line 156
    invoke-static {p1, v0, p0, v1}, Lpe4;->a(Ly28;Lmb2;Ljava/lang/Throwable;Lkv1;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-ne p1, v7, :cond_7

    .line 161
    .line 162
    :goto_5
    return-object v7

    .line 163
    :cond_7
    :goto_6
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lh80;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "CssProperty{key=\'"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lh80;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "\', value=\'"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lh80;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "\'}"

    .line 35
    .line 36
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "AuthenticationContext["

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lh80;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Ljava/lang/String;

    .line 51
    .line 52
    const-string v1, "@null]"

    .line 53
    .line 54
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public zza()[B
    .locals 2

    .line 1
    iget-object p0, p0, Lh80;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lia9;

    .line 4
    .line 5
    iget-object p0, p0, Lia9;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    sparse-switch v0, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :sswitch_0
    const-string v0, "HmacSha512"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x2

    .line 26
    goto :goto_0

    .line 27
    :sswitch_1
    const-string v0, "HmacSha384"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :sswitch_2
    const-string v0, "HmacSha256"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v1, 0x0

    .line 48
    :goto_0
    const/4 p0, 0x0

    .line 49
    packed-switch v1, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    const-string v0, "Could not determine HPKE KDF ID"

    .line 53
    .line 54
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_0
    sget-object v0, Lor9;->h:[B

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_1
    sget-object v0, Lor9;->g:[B

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_2
    sget-object v0, Lor9;->f:[B

    .line 65
    .line 66
    :goto_1
    sget-object v1, Lor9;->f:[B

    .line 67
    .line 68
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    sget-object p0, Lor9;->b:[B

    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_3
    const-string v0, "Could not determine HPKE KEM ID"

    .line 78
    .line 79
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object p0

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x3aaea10e -> :sswitch_2
        0x3aaea52a -> :sswitch_1
        0x3aaeabd1 -> :sswitch_0
    .end sparse-switch

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
