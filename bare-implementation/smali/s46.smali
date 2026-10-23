.class public final Ls46;
.super Lav3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final DEFAULT_INSTANCE:Ls46;

.field private static volatile PARSER:Lcx5; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcx5;"
        }
    .end annotation
.end field

.field public static final STRINGS_FIELD_NUMBER:I = 0x1


# instance fields
.field private strings_:Lxd4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxd4;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls46;

    .line 2
    .line 3
    invoke-direct {v0}, Ls46;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls46;->DEFAULT_INSTANCE:Ls46;

    .line 7
    .line 8
    const-class v1, Ls46;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lav3;->j(Ljava/lang/Class;Lav3;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lav3;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lt96;->d:Lt96;

    .line 5
    .line 6
    iput-object v0, p0, Ls46;->strings_:Lxd4;

    .line 7
    .line 8
    return-void
.end method

.method public static l(Ls46;Ljava/util/Set;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls46;->strings_:Lxd4;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lt96;

    .line 5
    .line 6
    iget-boolean v1, v1, Lt96;->a:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    check-cast v0, Lt96;

    .line 11
    .line 12
    iget v1, v0, Lt96;->c:I

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Lt96;->e(I)Lt96;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Ls46;->strings_:Lxd4;

    .line 26
    .line 27
    :cond_1
    iget-object p0, p0, Ls46;->strings_:Lxd4;

    .line 28
    .line 29
    sget-object v0, Lyd4;->a:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    instance-of v0, p0, Ljava/util/ArrayList;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    move-object v0, p0

    .line 36
    check-cast v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    move-object v1, p0

    .line 39
    check-cast v1, Lt96;

    .line 40
    .line 41
    iget v1, v1, Lt96;->c:I

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-int/2addr v2, v1

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    check-cast p0, Lt96;

    .line 52
    .line 53
    iget v0, p0, Lt96;->c:I

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "Element at index "

    .line 74
    .line 75
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lt96;->c:I

    .line 79
    .line 80
    sub-int/2addr v1, v0

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, " is null."

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget v1, p0, Lt96;->c:I

    .line 94
    .line 95
    add-int/lit8 v1, v1, -0x1

    .line 96
    .line 97
    :goto_2
    if-lt v1, v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Lt96;->remove(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    add-int/lit8 v1, v1, -0x1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    invoke-static {p1}, Lf6;->n(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_4
    invoke-virtual {p0, v1}, Lt96;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    return-void
.end method

.method public static m()Ls46;
    .locals 1

    .line 1
    sget-object v0, Ls46;->DEFAULT_INSTANCE:Ls46;

    .line 2
    .line 3
    return-object v0
.end method

.method public static o()Lr46;
    .locals 2

    .line 1
    sget-object v0, Ls46;->DEFAULT_INSTANCE:Ls46;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Ls46;->c(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lyu3;

    .line 9
    .line 10
    check-cast v0, Lr46;

    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final c(I)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Ldj7;->A(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lx5;->e()V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :pswitch_0
    sget-object p0, Ls46;->PARSER:Lcx5;

    .line 14
    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    const-class p1, Ls46;

    .line 18
    .line 19
    monitor-enter p1

    .line 20
    :try_start_0
    sget-object p0, Ls46;->PARSER:Lcx5;

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    new-instance p0, Lzu3;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object p0, Ls46;->PARSER:Lcx5;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit p1

    .line 35
    return-object p0

    .line 36
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_1
    return-object p0

    .line 39
    :pswitch_1
    sget-object p0, Ls46;->DEFAULT_INSTANCE:Ls46;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_2
    new-instance p0, Lr46;

    .line 43
    .line 44
    sget-object p1, Ls46;->DEFAULT_INSTANCE:Ls46;

    .line 45
    .line 46
    invoke-direct {p0, p1}, Lyu3;-><init>(Lav3;)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_3
    new-instance p0, Ls46;

    .line 51
    .line 52
    invoke-direct {p0}, Ls46;-><init>()V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_4
    const-string p0, "strings_"

    .line 57
    .line 58
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 63
    .line 64
    sget-object v0, Ls46;->DEFAULT_INSTANCE:Ls46;

    .line 65
    .line 66
    new-instance v1, Lhf6;

    .line 67
    .line 68
    invoke-direct {v1, v0, p1, p0}, Lhf6;-><init>(Lav3;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-object v1

    .line 72
    :pswitch_5
    return-object p1

    .line 73
    :pswitch_6
    const/4 p0, 0x1

    .line 74
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n()Lxd4;
    .locals 0

    .line 1
    iget-object p0, p0, Ls46;->strings_:Lxd4;

    .line 2
    .line 3
    return-object p0
.end method
