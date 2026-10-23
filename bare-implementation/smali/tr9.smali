.class public final Ltr9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lam6;
.implements Lls5;
.implements Lz98;
.implements Ljk8;
.implements Lzv5;
.implements Lfa6;
.implements Lji3;
.implements Lz23;
.implements Lhu5;
.implements Ln59;


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ltr9;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Ltr9;->a:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Ltr9;->b:Ljava/lang/Object;

    .line 16
    .line 17
    return-void

    .line 18
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    const/16 p1, 0x8

    .line 22
    .line 23
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Ltr9;->b:Ljava/lang/Object;

    .line 28
    .line 29
    return-void

    .line 30
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Ltr9;->b:Ljava/lang/Object;

    .line 39
    .line 40
    return-void

    .line 41
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Ltr9;->b:Ljava/lang/Object;

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    invoke-virtual {p1, p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lkm7;

    .line 59
    .line 60
    sget-object v0, Lod8;->b:Lod8;

    .line 61
    .line 62
    invoke-direct {p1, v0}, Lkm7;-><init>(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Ltr9;->b:Ljava/lang/Object;

    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0xd -> :sswitch_2
        0xe -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 83
    iput p1, p0, Ltr9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V
    .locals 0

    const/16 p2, 0x11

    iput p2, p0, Ltr9;->a:I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Ltr9;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    const/16 p2, 0xb

    iput p2, p0, Ltr9;->a:I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Ltr9;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 69
    iput p2, p0, Ltr9;->a:I

    iput-object p1, p0, Ltr9;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lke;Ln59;)V
    .locals 0

    const/16 p1, 0x15

    iput p1, p0, Ltr9;->a:I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ltr9;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lso8;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Ltr9;->a:I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iget-object v1, p1, Lso8;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 73
    iget-object v2, p1, Lso8;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 74
    iget-object v3, p1, Lso8;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v3, :cond_0

    .line 76
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 78
    :goto_0
    iget-object p1, p1, Lso8;->n:Ljava/lang/Object;

    check-cast p1, Lln5;

    .line 79
    iput-object p1, p0, Ltr9;->b:Ljava/lang/Object;

    return-void

    .line 80
    :cond_1
    const-string p0, "keysetName cannot be null"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    invoke-virtual {p0, v0}, Ltr9;->e(I)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Lrz6;

    .line 14
    .line 15
    new-instance v1, Lnu;

    .line 16
    .line 17
    const/16 v2, 0x9

    .line 18
    .line 19
    invoke-direct {v1, v2}, Lnu;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v3, ""

    .line 23
    .line 24
    const/16 v4, 0x1e

    .line 25
    .line 26
    invoke-static {p2, v3, v1, v4}, Lx50;->t0([BLjava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    new-instance v1, Lnu;

    .line 31
    .line 32
    invoke-direct {v1, v2}, Lnu;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v3, v1, v4}, Lx50;->t0([BLjava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v1, " magic: expected="

    .line 40
    .line 41
    const-string v2, ", actual="

    .line 42
    .line 43
    const-string v3, "Bad "

    .line 44
    .line 45
    invoke-static {v3, p1, v1, p2, v2}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public b([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ltr9;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iget-object v0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p3, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 36
    .line 37
    .line 38
    monitor-exit p1

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public c()Lem7;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkm7;

    .line 4
    .line 5
    invoke-virtual {p0}, Lkm7;->d()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lem7;

    .line 10
    .line 11
    return-object p0
.end method

.method public d(I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lvz7;

    .line 4
    .line 5
    invoke-interface {p0}, Luq4;->m()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    array-length v1, p0

    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    array-length v1, p0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_0

    .line 23
    .line 24
    aget-object v3, p0, v2

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v3, 0x3e

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    new-instance v0, Lko4;

    .line 45
    .line 46
    invoke-direct {v0, p1, p0}, Lko4;-><init>(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public e(I)[B
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    new-array p1, p1, [B

    .line 4
    .line 5
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/io/DataInput;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Ljava/io/DataInput;->readFully([B)V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    const-string p0, "Negative byte count: "

    .line 14
    .line 15
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public f(Lem7;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Lkm7;

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lkm7;->d()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Lem7;

    .line 14
    .line 15
    instance-of v2, v1, Ljf6;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v2, Lod8;->b:Lod8;

    .line 22
    .line 23
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_0
    if-eqz v2, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    instance-of v2, v1, Lga2;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    iget v2, p1, Lem7;->a:I

    .line 35
    .line 36
    iget v3, v1, Lem7;->a:I

    .line 37
    .line 38
    if-le v2, v3, :cond_4

    .line 39
    .line 40
    :goto_1
    move-object v1, p1

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    instance-of v2, v1, Lne3;

    .line 43
    .line 44
    if-eqz v2, :cond_7

    .line 45
    .line 46
    :cond_4
    :goto_2
    sget-object v2, Lly8;->c:Ldu9;

    .line 47
    .line 48
    if-nez v0, :cond_5

    .line 49
    .line 50
    move-object v0, v2

    .line 51
    :cond_5
    if-nez v1, :cond_6

    .line 52
    .line 53
    move-object v1, v2

    .line 54
    :cond_6
    invoke-virtual {p0, v0, v1}, Lkm7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    return-void

    .line 61
    :cond_7
    invoke-static {}, Lq;->j()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public declared-synchronized g()Lix0;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lln5;

    .line 5
    .line 6
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v1, v0, Lln5;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ltz9;

    .line 10
    .line 11
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Luz9;

    .line 16
    .line 17
    invoke-static {v1}, Lix0;->j(Luz9;)Lix0;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    monitor-exit p0

    .line 23
    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :try_start_4
    throw v1

    .line 27
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 28
    throw v0

    .line 29
    :catchall_1
    move-exception v0

    .line 30
    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lea6;

    .line 4
    .line 5
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/content/Context;

    .line 10
    .line 11
    sget v0, Lt57;->d:I

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    new-instance v1, Lt57;

    .line 22
    .line 23
    const-string v2, "com.google.android.datatransport.events"

    .line 24
    .line 25
    invoke-direct {v1, v0, p0, v2}, Lt57;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Ltr9;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic h(Lf59;)V
    .locals 0

    .line 1
    check-cast p1, Lb69;

    .line 2
    .line 3
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Ln59;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Ln59;->h(Lf59;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public i(Ljava/io/Reader;)Lcz2;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lot9;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p0, p1, Lot9;->a:Ljava/lang/Object;

    .line 18
    .line 19
    return-object p1
.end method

.method public k(Lod;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Law5;

    .line 4
    .line 5
    iget-object p0, p0, Law5;->d:Las5;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Las5;->c0(Lod;)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public m(Lll6;Lou5;)Lll6;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/content/res/Resources;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance p2, Lqs4;

    .line 10
    .line 11
    invoke-direct {p2, p0, p1}, Lqs4;-><init>(Landroid/content/res/Resources;Lll6;)V

    .line 12
    .line 13
    .line 14
    return-object p2
.end method

.method public n(Landroid/view/View;Ltv8;)Ltv8;
    .locals 1

    .line 1
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lu35;

    .line 4
    .line 5
    iget-object p1, p0, Lu35;->y:Lnu0;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lu35;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a0:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance p1, Lnu0;

    .line 17
    .line 18
    iget-object v0, p0, Lu35;->q:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-direct {p1, v0, p2}, Lnu0;-><init>(Landroid/view/View;Ltv8;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lu35;->y:Lnu0;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lnu0;->e(Landroid/view/Window;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lu35;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 33
    .line 34
    iget-object p0, p0, Lu35;->y:Lnu0;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a0:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    return-object p2
.end method

.method public o(I)Lx98;
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget-object p0, Llk;->b:Llk;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object p1, p0, Ltr9;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lq34;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    new-instance p1, Lq34;

    .line 14
    .line 15
    const/4 v0, 0x7

    .line 16
    invoke-direct {p1, v0}, Lq34;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Ltr9;->b:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_1
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lq34;

    .line 24
    .line 25
    return-object p0
.end method

.method public t(Lli3;Lkv1;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lr3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lr3;

    .line 7
    .line 8
    iget v1, v0, Lr3;->d:I

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
    iput v1, v0, Lr3;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lr3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lr3;-><init>(Ltr9;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lr3;->b:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lr3;->d:I

    .line 28
    .line 29
    sget-object v2, Lbe8;->a:Lbe8;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-ne v1, v3, :cond_1

    .line 35
    .line 36
    iget-object p0, v0, Lr3;->a:Lsw6;

    .line 37
    .line 38
    :try_start_0
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_4

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_2
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Lsw6;

    .line 55
    .line 56
    invoke-interface {v0}, Ljv1;->getContext()Lox1;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {p2, p1, v1}, Lsw6;-><init>(Lli3;Lox1;)V

    .line 61
    .line 62
    .line 63
    :try_start_1
    iput-object p2, v0, Lr3;->a:Lsw6;

    .line 64
    .line 65
    iput v3, v0, Lr3;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 66
    .line 67
    :try_start_2
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lqt3;

    .line 70
    .line 71
    invoke-interface {p0, p2, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    sget-object p1, Lyx1;->a:Lyx1;

    .line 76
    .line 77
    if-ne p0, p1, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move-object p0, v2

    .line 81
    :goto_1
    if-ne p0, p1, :cond_4

    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_4
    move-object p0, p2

    .line 85
    :goto_2
    invoke-virtual {p0}, Lkv1;->releaseIntercepted()V

    .line 86
    .line 87
    .line 88
    return-object v2

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    move-object p1, p0

    .line 91
    :goto_3
    move-object p0, p2

    .line 92
    goto :goto_4

    .line 93
    :catchall_2
    move-exception p1

    .line 94
    goto :goto_3

    .line 95
    :goto_4
    invoke-virtual {p0}, Lkv1;->releaseIntercepted()V

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Ltr9;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

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
    :pswitch_0
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lbz2;

    .line 14
    .line 15
    invoke-interface {p0}, Lbz2;->G()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const-string v0, "line "

    .line 20
    .line 21
    invoke-static {p0, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ln59;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ln59;->zza(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
