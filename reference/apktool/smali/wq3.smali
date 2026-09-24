.class public final Lwq3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final e:[C

.field public static final f:[C

.field public static final g:[C

.field public static final h:[C

.field public static final i:[C

.field public static final j:[C


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lwq3;->e:[C

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    new-array v2, v1, [C

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v2, Lwq3;->f:[C

    .line 16
    .line 17
    new-array v1, v1, [C

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v1, Lwq3;->g:[C

    .line 23
    .line 24
    const/4 v1, 0x6

    .line 25
    new-array v2, v1, [C

    .line 26
    .line 27
    fill-array-data v2, :array_3

    .line 28
    .line 29
    .line 30
    sput-object v2, Lwq3;->h:[C

    .line 31
    .line 32
    new-array v1, v1, [C

    .line 33
    .line 34
    fill-array-data v1, :array_4

    .line 35
    .line 36
    .line 37
    sput-object v1, Lwq3;->i:[C

    .line 38
    .line 39
    new-array v0, v0, [C

    .line 40
    .line 41
    fill-array-data v0, :array_5

    .line 42
    .line 43
    .line 44
    sput-object v0, Lwq3;->j:[C

    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 2
        0x78s
        0x6ds
        0x6cs
        0x6es
        0x73s
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    nop

    .line 57
    :array_1
    .array-data 2
        0x26s
        0x6cs
        0x74s
        0x3bs
    .end array-data

    .line 58
    :array_2
    .array-data 2
        0x26s
        0x67s
        0x74s
        0x3bs
    .end array-data

    :array_3
    .array-data 2
        0x26s
        0x71s
        0x75s
        0x6fs
        0x74s
        0x3bs
    .end array-data

    :array_4
    .array-data 2
        0x26s
        0x61s
        0x70s
        0x6fs
        0x73s
        0x3bs
    .end array-data

    :array_5
    .array-data 2
        0x26s
        0x61s
        0x6ds
        0x70s
        0x3bs
    .end array-data
.end method

.method public static b(Ljava/lang/Throwable;)Lxv0;
    .locals 2

    .line 1
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    instance-of v0, p0, Lif8;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object v0, Lds8;->SHIZUKU_UID_UNSUPPORTED:Lds8;

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    instance-of v0, p0, Ljava/lang/SecurityException;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object v0, Lds8;->SECURITY_REJECTED:Lds8;

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    instance-of v0, p0, Landroid/os/DeadObjectException;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    sget-object v0, Lds8;->BINDER_DEAD:Lds8;

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    instance-of v0, p0, Landroid/os/RemoteException;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    sget-object v0, Lds8;->REMOTE_FAILURE:Lds8;

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    instance-of v0, p0, Ljava/lang/ReflectiveOperationException;

    .line 51
    .line 52
    if-nez v0, :cond_6

    .line 53
    .line 54
    instance-of v0, p0, Ljava/lang/LinkageError;

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    sget-object v0, Lds8;->REMOTE_FAILURE:Lds8;

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_6
    :goto_1
    sget-object v0, Lds8;->API_INCOMPATIBLE:Lds8;

    .line 63
    .line 64
    :goto_2
    new-instance v1, Lxv0;

    .line 65
    .line 66
    invoke-direct {v1, v0, p0}, Lxv0;-><init>(Lds8;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_6

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x22

    .line 14
    .line 15
    if-eq v3, v4, :cond_4

    .line 16
    .line 17
    const/16 v4, 0x3c

    .line 18
    .line 19
    if-eq v3, v4, :cond_3

    .line 20
    .line 21
    const/16 v4, 0x3e

    .line 22
    .line 23
    if-eq v3, v4, :cond_2

    .line 24
    .line 25
    const/16 v4, 0x26

    .line 26
    .line 27
    if-eq v3, v4, :cond_1

    .line 28
    .line 29
    const/16 v4, 0x27

    .line 30
    .line 31
    if-eq v3, v4, :cond_0

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    sget-object v4, Lwq3;->i:[C

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget-object v4, Lwq3;->j:[C

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    sget-object v4, Lwq3;->g:[C

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    sget-object v4, Lwq3;->f:[C

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    sget-object v4, Lwq3;->h:[C

    .line 48
    .line 49
    :goto_1
    if-eqz v4, :cond_5

    .line 50
    .line 51
    iget-object v3, p0, Lwq3;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lln5;

    .line 54
    .line 55
    iget-object v5, p0, Lwq3;->d:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v5, Ljava/io/BufferedWriter;

    .line 58
    .line 59
    iget-object v6, v3, Lln5;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v6, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 64
    .line 65
    .line 66
    iget-object v3, v3, Lln5;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v4}, Ljava/io/Writer;->write([C)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    invoke-virtual {p0, v3}, Lwq3;->d(C)V

    .line 78
    .line 79
    .line 80
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, p0, Lwq3;->a:I

    .line 7
    .line 8
    iget-object v2, p0, Lwq3;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lqt3;

    .line 11
    .line 12
    const/16 v3, 0x21

    .line 13
    .line 14
    if-lt v1, v3, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lwq3;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lbt3;

    .line 19
    .line 20
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lxr8;

    .line 25
    .line 26
    invoke-static {p0}, Lf76;->d(Lxr8;)Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {v2, v0, p0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_0
    const/4 p0, 0x2

    .line 36
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-interface {v2, p0, v1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-object p0

    .line 46
    :catch_0
    new-instance p0, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, v0, p0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public d(C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwq3;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lln5;

    .line 4
    .line 5
    iget-object p0, p0, Lwq3;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/io/BufferedWriter;

    .line 8
    .line 9
    iget-object v1, v0, Lln5;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lln5;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwq3;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lln5;

    .line 4
    .line 5
    iget-object p0, p0, Lwq3;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/io/BufferedWriter;

    .line 8
    .line 9
    iget-object v1, v0, Lln5;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lln5;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    .line 2
    .line 3
    iget-object v1, p0, Lwq3;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lud9;

    .line 6
    .line 7
    const/16 v2, 0x1c

    .line 8
    .line 9
    const-string v3, "BillingClientTesting"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x66

    .line 14
    .line 15
    sget-object v4, Lle9;->r:Lyq0;

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2, v4}, Lud9;->G(IILyq0;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "Asynchronous call to Billing Override Service timed out."

    .line 21
    .line 22
    invoke-static {v3, v0, p1}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v0, 0x5f

    .line 27
    .line 28
    sget-object v4, Lle9;->r:Lyq0;

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2, v4}, Lud9;->G(IILyq0;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "An error occurred while retrieving billing override."

    .line 34
    .line 35
    invoke-static {v3, v0, p1}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object p0, p0, Lwq3;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/lang/Runnable;

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 43
    .line 44
    .line 45
    return-void
.end method
