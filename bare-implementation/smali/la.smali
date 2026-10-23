.class public final Lla;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lji3;
.implements Laj8;
.implements Lyi6;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    sparse-switch p1, :sswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lla;->b:Ljava/lang/Object;

    .line 13
    .line 14
    const/16 p1, 0x40

    .line 15
    .line 16
    const/16 v0, 0x3e8

    .line 17
    .line 18
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    new-instance v0, Lwp4;

    .line 23
    .line 24
    const/16 v1, 0xfa0

    .line 25
    .line 26
    invoke-direct {v0, p1, v1}, Lwp4;-><init>(II)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lla;->a:Ljava/lang/Object;

    .line 30
    .line 31
    return-void

    .line 32
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance p1, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lla;->a:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance p1, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lla;->b:Ljava/lang/Object;

    .line 48
    .line 49
    return-void

    .line 50
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ldg7;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-direct {p1, v0}, Ldg7;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lla;->a:Ljava/lang/Object;

    .line 60
    .line 61
    new-instance p1, Lv15;

    .line 62
    .line 63
    invoke-direct {p1}, Lv15;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lla;->b:Ljava/lang/Object;

    .line 67
    .line 68
    return-void

    .line 69
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lla;->a:Ljava/lang/Object;

    .line 83
    .line 84
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lla;->b:Ljava/lang/Object;

    .line 90
    .line 91
    return-void

    .line 92
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lla;->a:Ljava/lang/Object;

    .line 101
    .line 102
    new-instance p1, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lla;->b:Ljava/lang/Object;

    .line 108
    .line 109
    return-void

    .line 110
    nop

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lla;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lla;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lla;->a:Ljava/lang/Object;

    iput-object p2, p0, Lla;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 111
    iput-object p1, p0, Lla;->b:Ljava/lang/Object;

    iput-object p2, p0, Lla;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llt9;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    .line 114
    iget-object v1, p1, Llt9;->a:Ljava/util/HashMap;

    .line 115
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lla;->a:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    .line 117
    iget-object p1, p1, Llt9;->b:Ljava/util/HashMap;

    .line 118
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lla;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lka;

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lx50;->k0([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lka;-><init>([B)V

    iput-object v0, p0, Lla;->a:Ljava/lang/Object;

    .line 125
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lx50;->k0([BII)[B

    move-result-object v0

    iput-object v0, p0, Lla;->b:Ljava/lang/Object;

    .line 126
    array-length p0, p1

    const/16 p1, 0x40

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const-string p0, "AES-SIV key must have 64 bytes"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a(Lfh6;Lmg6;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lla;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ldg7;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lrl8;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lrl8;->a()Lrl8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p1, v0}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object p2, v0, Lrl8;->c:Lmg6;

    .line 21
    .line 22
    iget p0, v0, Lrl8;->a:I

    .line 23
    .line 24
    or-int/lit8 p0, p0, 0x8

    .line 25
    .line 26
    iput p0, v0, Lrl8;->a:I

    .line 27
    .line 28
    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lla;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu29;

    .line 4
    .line 5
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    .line 7
    check-cast p1, Lv29;

    .line 8
    .line 9
    new-instance v1, Lt29;

    .line 10
    .line 11
    invoke-direct {v1, v0, p2}, Lt29;-><init>(Lu29;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Laz3;->p()Landroid/os/IInterface;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ln39;

    .line 19
    .line 20
    iget-object p0, p0, Lla;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lax3;

    .line 23
    .line 24
    new-instance p2, Lqn1;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    const/4 v2, -0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {p2, v2, v2, v3, v0}, Lqn1;-><init>(IIIZ)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lef;

    .line 33
    .line 34
    invoke-direct {v0, p2, v3}, Lef;-><init>(Lqn1;Z)V

    .line 35
    .line 36
    .line 37
    iput-boolean v3, v0, Lef;->c:Z

    .line 38
    .line 39
    invoke-virtual {p1}, Lvz8;->f()Landroid/os/Parcel;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    sget v2, Lz29;->a:I

    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2, p0}, Lz29;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p2, v0}, Lz29;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x3

    .line 55
    invoke-virtual {p1, p2, p0}, Lvz8;->g(Landroid/os/Parcel;I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public b([B[B)[B
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0, v1}, Lx50;->k0([BII)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v2, v0

    .line 12
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    aget-byte v4, v2, v3

    .line 19
    .line 20
    and-int/lit8 v4, v4, 0x7f

    .line 21
    .line 22
    int-to-byte v4, v4

    .line 23
    aput-byte v4, v2, v3

    .line 24
    .line 25
    const/16 v3, 0xc

    .line 26
    .line 27
    aget-byte v4, v2, v3

    .line 28
    .line 29
    and-int/lit8 v4, v4, 0x7f

    .line 30
    .line 31
    int-to-byte v4, v4

    .line 32
    aput-byte v4, v2, v3

    .line 33
    .line 34
    const-string v3, "AES/CTR/NoPadding"

    .line 35
    .line 36
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 41
    .line 42
    iget-object v5, p0, Lla;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, [B

    .line 45
    .line 46
    const-string v6, "AES"

    .line 47
    .line 48
    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    .line 52
    .line 53
    invoke-direct {v5, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    invoke-virtual {v3, v2, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 58
    .line 59
    .line 60
    array-length v2, p1

    .line 61
    sub-int/2addr v2, v1

    .line 62
    invoke-virtual {v3, p1, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    filled-new-array {p2, p1}, [[B

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p0, p2}, Lla;->h([[B)[B

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_0

    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_0
    new-instance p0, Ljavax/crypto/AEADBadTagException;

    .line 85
    .line 86
    const-string p1, "Integrity check failed."

    .line 87
    .line 88
    invoke-direct {p0, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_1
    const-string p0, "Ciphertext too short"

    .line 93
    .line 94
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    return-object p0
.end method

.method public c(Ljava/lang/Long;)Lj87;
    .locals 1

    .line 1
    iget-object v0, p0, Lla;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lla;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lj87;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public d(Lfh6;I)Lmg6;
    .locals 4

    .line 1
    iget-object p0, p0, Lla;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ldg7;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ldg7;->e(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Ldg7;->k(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lrl8;

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget v2, v1, Lrl8;->a:I

    .line 22
    .line 23
    and-int v3, v2, p2

    .line 24
    .line 25
    if-eqz v3, :cond_4

    .line 26
    .line 27
    not-int v3, p2

    .line 28
    and-int/2addr v2, v3

    .line 29
    iput v2, v1, Lrl8;->a:I

    .line 30
    .line 31
    const/4 v3, 0x4

    .line 32
    if-ne p2, v3, :cond_1

    .line 33
    .line 34
    iget-object p2, v1, Lrl8;->b:Lmg6;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/16 v3, 0x8

    .line 38
    .line 39
    if-ne p2, v3, :cond_3

    .line 40
    .line 41
    iget-object p2, v1, Lrl8;->c:Lmg6;

    .line 42
    .line 43
    :goto_0
    and-int/lit8 v2, v2, 0xc

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ldg7;->i(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    iput p0, v1, Lrl8;->a:I

    .line 52
    .line 53
    iput-object v0, v1, Lrl8;->b:Lmg6;

    .line 54
    .line 55
    iput-object v0, v1, Lrl8;->c:Lmg6;

    .line 56
    .line 57
    sget-object p0, Lrl8;->d:Lvc9;

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Lvc9;->c(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    return-object p2

    .line 63
    :cond_3
    const-string p0, "Must provide flag PRE or POST"

    .line 64
    .line 65
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_1
    return-object v0
.end method

.method public e(Lfh6;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lla;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ldg7;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lrl8;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget p1, p0, Lrl8;->a:I

    .line 15
    .line 16
    and-int/lit8 p1, p1, -0x2

    .line 17
    .line 18
    iput p1, p0, Lrl8;->a:I

    .line 19
    .line 20
    return-void
.end method

.method public f(Ljava/lang/Long;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lla;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lla;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lj87;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public g(Lfh6;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lla;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv15;

    .line 4
    .line 5
    invoke-virtual {v0}, Lv15;->f()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    :goto_0
    if-ltz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lv15;->h(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-ne p1, v3, :cond_0

    .line 18
    .line 19
    iget-object v3, v0, Lv15;->c:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v4, v3, v1

    .line 22
    .line 23
    sget-object v5, Lz85;->c:Ljava/lang/Object;

    .line 24
    .line 25
    if-eq v4, v5, :cond_1

    .line 26
    .line 27
    aput-object v5, v3, v1

    .line 28
    .line 29
    iput-boolean v2, v0, Lv15;->a:Z

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    iget-object p0, p0, Lla;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Ldg7;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ldg7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lrl8;

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lrl8;->a:I

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lrl8;->b:Lmg6;

    .line 52
    .line 53
    iput-object p1, p0, Lrl8;->c:Lmg6;

    .line 54
    .line 55
    sget-object p1, Lrl8;->d:Lvc9;

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Lvc9;->c(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public varargs h([[B)[B
    .locals 10

    .line 1
    iget-object p0, p0, Lla;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lka;

    .line 4
    .line 5
    sget-object v0, Lrs9;->a:[B

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lka;->c([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, p1

    .line 12
    const/4 v2, 0x1

    .line 13
    sub-int/2addr v1, v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-gez v1, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 19
    if-ltz v1, :cond_d

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    sget-object v1, Lov2;->a:Lov2;

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    array-length v5, p1

    .line 27
    if-lt v1, v5, :cond_2

    .line 28
    .line 29
    invoke-static {p1}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    if-ne v1, v2, :cond_3

    .line 35
    .line 36
    aget-object v1, p1, v3

    .line 37
    .line 38
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    array-length v6, p1

    .line 49
    move v7, v3

    .line 50
    move v8, v7

    .line 51
    :goto_0
    if-ge v7, v6, :cond_5

    .line 52
    .line 53
    aget-object v9, p1, v7

    .line 54
    .line 55
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/2addr v8, v2

    .line 59
    if-ne v8, v1, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    :goto_1
    move-object v1, v5

    .line 66
    :goto_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_6

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, [B

    .line 81
    .line 82
    invoke-static {v0}, Lrs9;->a([B)[B

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0, v5}, Lka;->c([B)[B

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-static {v0, v5}, Lrs9;->b([B[B)[B

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    goto :goto_3

    .line 95
    :cond_6
    array-length v1, p1

    .line 96
    if-nez v1, :cond_7

    .line 97
    .line 98
    move-object p1, v4

    .line 99
    goto :goto_4

    .line 100
    :cond_7
    array-length v1, p1

    .line 101
    sub-int/2addr v1, v2

    .line 102
    aget-object p1, p1, v1

    .line 103
    .line 104
    :goto_4
    if-nez p1, :cond_8

    .line 105
    .line 106
    sget-object p1, Lrs9;->b:[B

    .line 107
    .line 108
    :cond_8
    array-length v1, p1

    .line 109
    const/16 v5, 0x10

    .line 110
    .line 111
    if-lt v1, v5, :cond_a

    .line 112
    .line 113
    array-length v1, p1

    .line 114
    array-length v5, v0

    .line 115
    if-lt v1, v5, :cond_9

    .line 116
    .line 117
    array-length v1, p1

    .line 118
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    array-length v1, p1

    .line 123
    array-length v4, v0

    .line 124
    sub-int/2addr v1, v4

    .line 125
    new-instance v4, Lnd4;

    .line 126
    .line 127
    array-length v5, v0

    .line 128
    sub-int/2addr v5, v2

    .line 129
    invoke-direct {v4, v3, v5, v2}, Lld4;-><init>(III)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Lld4;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :goto_5
    move-object v3, v2

    .line 137
    check-cast v3, Lmd4;

    .line 138
    .line 139
    iget-boolean v4, v3, Lmd4;->c:Z

    .line 140
    .line 141
    if-eqz v4, :cond_b

    .line 142
    .line 143
    invoke-virtual {v3}, Lmd4;->nextInt()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    add-int v4, v1, v3

    .line 148
    .line 149
    aget-byte v5, p1, v4

    .line 150
    .line 151
    aget-byte v3, v0, v3

    .line 152
    .line 153
    xor-int/2addr v3, v5

    .line 154
    int-to-byte v3, v3

    .line 155
    aput-byte v3, p1, v4

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_9
    const-string p0, "Input must be at least XOR value size"

    .line 159
    .line 160
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object v4

    .line 164
    :cond_a
    array-length v1, p1

    .line 165
    if-ge v1, v5, :cond_c

    .line 166
    .line 167
    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    array-length p1, p1

    .line 172
    const/16 v2, -0x80

    .line 173
    .line 174
    aput-byte v2, v1, p1

    .line 175
    .line 176
    invoke-static {v0}, Lrs9;->a([B)[B

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {v1, p1}, Lrs9;->b([B[B)[B

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    :cond_b
    invoke-virtual {p0, p1}, Lka;->c([B)[B

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    return-object p0

    .line 189
    :cond_c
    const-string p0, "Value must be smaller than an AES block"

    .line 190
    .line 191
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-object v4

    .line 195
    :cond_d
    const-string p0, "Requested element count "

    .line 196
    .line 197
    const-string p1, " is less than zero."

    .line 198
    .line 199
    invoke-static {v1, p0, p1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    return-object v4
.end method

.method public i(Lgc8;)Lem4;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lla;->a:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lwp4;

    .line 5
    .line 6
    new-instance v1, Loc8;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Loc8;-><init>(Lgc8;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Lwp4;->a:Lb76;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lb76;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lem4;

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-object p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public k(Ljava/lang/Class;)Lem4;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lla;->a:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lwp4;

    .line 5
    .line 6
    new-instance v1, Loc8;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, v2}, Loc8;-><init>(Ljava/lang/Class;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v0, Lwp4;->a:Lb76;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lb76;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lem4;

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method

.method public l(Lkt9;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lla;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    new-instance v0, Lmt9;

    .line 8
    .line 9
    iget-object v1, p1, Lkt9;->a:Ljava/lang/Class;

    .line 10
    .line 11
    iget-object v2, p1, Lkt9;->b:Ljava/lang/Class;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lmt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lkt9;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    if-ne p1, p0, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "Attempt to register non-equal PrimitiveConstructor object for already existing object of type: "

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    const-string p0, "primitive constructor must be non-null"

    .line 58
    .line 59
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public m(Luz9;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lla;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    iget-object p0, p0, Lla;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Lo69;->c()[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lho6;->a0([B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string p0, "Failed to write to SharedPreferences"

    .line 29
    .line 30
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onCancelled(Lwc2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lla;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Laj8;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Laj8;->onCancelled(Lwc2;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDataChange(Leb2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lla;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lzc2;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lzc2;->g(Laj8;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lla;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Laj8;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Laj8;->onDataChange(Leb2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public t(Lli3;Lkv1;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lwi3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lwi3;

    .line 7
    .line 8
    iget v1, v0, Lwi3;->b:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lwi3;->b:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lwi3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lwi3;-><init>(Lla;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lwi3;->a:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lwi3;->b:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Lwi3;->d:Lyi3;

    .line 35
    .line 36
    :try_start_0
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Lu2; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lla;->a:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p2, Lcd;

    .line 55
    .line 56
    new-instance v1, Lyi3;

    .line 57
    .line 58
    iget-object p0, p0, Lla;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Lwm;

    .line 61
    .line 62
    invoke-direct {v1, p0, p1}, Lyi3;-><init>(Lwm;Lli3;)V

    .line 63
    .line 64
    .line 65
    :try_start_1
    iput-object v1, v0, Lwi3;->d:Lyi3;

    .line 66
    .line 67
    iput v2, v0, Lwi3;->b:I

    .line 68
    .line 69
    invoke-virtual {p2, v1, v0}, Lcd;->t(Lli3;Lkv1;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0
    :try_end_1
    .catch Lu2; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    sget-object p1, Lyx1;->a:Lyx1;

    .line 74
    .line 75
    if-ne p0, p1, :cond_3

    .line 76
    .line 77
    return-object p1

    .line 78
    :catch_1
    move-exception p1

    .line 79
    move-object p0, v1

    .line 80
    :goto_1
    iget-object p2, p1, Lu2;->a:Lli3;

    .line 81
    .line 82
    if-ne p2, p0, :cond_4

    .line 83
    .line 84
    invoke-interface {v0}, Ljv1;->getContext()Lox1;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0}, Lsz8;->p(Lox1;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_4
    throw p1
.end method
