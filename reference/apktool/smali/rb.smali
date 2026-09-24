.class public Lrb;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lls5;
.implements Lqp;
.implements Lzi0;
.implements Lta4;
.implements Lz23;
.implements Ldh5;
.implements Lpe2;
.implements Lvl2;
.implements Lw6;
.implements Lza2;
.implements Lw23;
.implements Ldc5;
.implements Lv79;


# static fields
.field public static c:Lrb;

.field public static final d:Lw55;

.field public static final e:Loi9;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw55;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lrb;->d:Lw55;

    .line 7
    .line 8
    new-instance v0, Loi9;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lrb;->e:Loi9;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 1
    iput p1, p0, Lrb;->a:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const-string v1, "getInstance"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    sparse-switch p1, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Lov7;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-boolean v3, p1, Lov7;->a:Z

    .line 18
    .line 19
    iput-boolean v4, p1, Lov7;->b:Z

    .line 20
    .line 21
    iput-object v2, p1, Lov7;->c:Ljava/lang/UnsatisfiedLinkError;

    .line 22
    .line 23
    new-instance v0, Lkh3;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lrb;->b:Ljava/lang/Object;

    .line 32
    .line 33
    return-void

    .line 34
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance p1, Llv1;

    .line 42
    .line 43
    const/16 v0, 0xa

    .line 44
    .line 45
    invoke-direct {p1, v0}, Llv1;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lrb;->b:Ljava/lang/Object;

    .line 49
    .line 50
    return-void

    .line 51
    :sswitch_2
    new-instance p1, Lpi9;

    .line 52
    .line 53
    :try_start_0
    const-string v5, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 54
    .line 55
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lzi9;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    sget-object v1, Lrb;->e:Loi9;

    .line 71
    .line 72
    :goto_0
    new-array v0, v0, [Lzi9;

    .line 73
    .line 74
    sget-object v2, Leh9;->a:Leh9;

    .line 75
    .line 76
    aput-object v2, v0, v4

    .line 77
    .line 78
    aput-object v1, v0, v3

    .line 79
    .line 80
    invoke-direct {p1, v0}, Lpi9;-><init>([Lzi9;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lvh9;->a:Ljava/nio/charset/Charset;

    .line 87
    .line 88
    iput-object p1, p0, Lrb;->b:Ljava/lang/Object;

    .line 89
    .line 90
    return-void

    .line 91
    :sswitch_3
    new-instance p1, Lx55;

    .line 92
    .line 93
    sget-object v5, Lrb;->d:Lw55;

    .line 94
    .line 95
    sget-object v6, Ls96;->c:Ls96;

    .line 96
    .line 97
    :try_start_1
    const-string v6, "androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory"

    .line 98
    .line 99
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v6, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lod5;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .line 113
    move-object v5, v1

    .line 114
    :catch_1
    new-array v0, v0, [Lod5;

    .line 115
    .line 116
    sget-object v1, Lxu3;->a:Lxu3;

    .line 117
    .line 118
    aput-object v1, v0, v4

    .line 119
    .line 120
    aput-object v5, v0, v3

    .line 121
    .line 122
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v0, p1, Lx55;->a:[Lod5;

    .line 126
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    .line 129
    .line 130
    sget-object v0, Lyd4;->a:Ljava/nio/charset/Charset;

    .line 131
    .line 132
    iput-object p1, p0, Lrb;->b:Ljava/lang/Object;

    .line 133
    .line 134
    return-void

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0xa -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/io/InputStream;Lm35;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lrb;->a:I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Leg6;

    invoke-direct {v0, p1, p2}, Leg6;-><init>(Ljava/io/InputStream;Lm35;)V

    iput-object v0, p0, Lrb;->b:Ljava/lang/Object;

    const/high16 p0, 0x500000

    .line 141
    invoke-virtual {v0, p0}, Leg6;->mark(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 142
    iput p2, p0, Lrb;->a:I

    iput-object p1, p0, Lrb;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 4

    const/16 v0, 0x14

    iput v0, p0, Lrb;->a:I

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 136
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 137
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lt76;

    .line 138
    invoke-direct {v3, v2}, Lt76;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lrb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lrb;->a:I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lrb;->b:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized t()Lrb;
    .locals 3

    .line 1
    const-class v0, Lrb;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lrb;->c:Lrb;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lrb;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Lrb;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Lrb;->c:Lrb;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    sget-object v1, Lrb;->c:Lrb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Leg6;

    .line 4
    .line 5
    invoke-virtual {p0}, Leg6;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->j(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->f(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public e(Lfc5;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public f()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrb;->j()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0}, Lrb;->j()S

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    or-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public g(Lgy5;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lrb;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Llu7;

    .line 7
    .line 8
    check-cast p3, Ljava/lang/Void;

    .line 9
    .line 10
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lbv7;

    .line 13
    .line 14
    iget-object p3, p0, Lbv7;->f:Lav7;

    .line 15
    .line 16
    invoke-virtual {p1}, Lgy5;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Llu7;->g()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p2}, Llu7;->d()Lik8;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Lik8;->a:Lqc6;

    .line 33
    .line 34
    invoke-static {p1}, Lbv7;->k(Lqc6;)Lqc6;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p0, p1}, Lbv7;->m(Lqc6;)Lhx7;

    .line 39
    .line 40
    .line 41
    invoke-interface {p3, p2}, Lav7;->c(Lqc6;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {p2}, Llu7;->e()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Lik8;

    .line 64
    .line 65
    iget-object p2, p2, Lik8;->a:Lqc6;

    .line 66
    .line 67
    invoke-static {p2}, Lbv7;->k(Lqc6;)Lqc6;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0, p2}, Lbv7;->m(Lqc6;)Lhx7;

    .line 72
    .line 73
    .line 74
    invoke-interface {p3, v0}, Lav7;->c(Lqc6;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    :goto_1
    const/4 p0, 0x0

    .line 79
    return-object p0

    .line 80
    :pswitch_0
    check-cast p2, Lqn5;

    .line 81
    .line 82
    check-cast p3, Lnp1;

    .line 83
    .line 84
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p0, Lgy5;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lgy5;->e(Lgy5;)Lgy5;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p3, p0, p2}, Lnp1;->c(Lgy5;Lqn5;)Lnp1;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lrb;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lca6;

    .line 9
    .line 10
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lb97;

    .line 15
    .line 16
    new-instance v0, Lr87;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lr87;-><init>(Lb97;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :sswitch_0
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 23
    .line 24
    return-object p0

    .line 25
    :sswitch_1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lea6;

    .line 28
    .line 29
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p0, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    .line 44
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    :goto_0
    return-object p0

    .line 49
    :sswitch_2
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Lrb;

    .line 52
    .line 53
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Landroid/content/Context;

    .line 56
    .line 57
    new-instance v0, Lb05;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lsl4;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v2, Ll22;

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-direct {v2, v3, p0, v0, v1}, Ll22;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    nop

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xe -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public h(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public i([BI)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, -0x1

    .line 4
    if-ge v0, p2, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lrb;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/io/InputStream;

    .line 9
    .line 10
    sub-int v3, p2, v0

    .line 11
    .line 12
    invoke-virtual {v1, p1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-nez v0, :cond_2

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    new-instance p0, Loe2;

    .line 26
    .line 27
    invoke-direct {p0}, Loe2;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_2
    :goto_1
    return v0
.end method

.method public j()S
    .locals 1

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/io/InputStream;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    int-to-short p0, p0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance p0, Loe2;

    .line 15
    .line 16
    invoke-direct {p0}, Loe2;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public k(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p0, p0, p1, p2}, Lw13;->j(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public l()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Leg6;

    .line 4
    .line 5
    invoke-virtual {p0}, Leg6;->reset()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public m(Lfc5;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->L:Lo8;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lo8;->k()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b0:Lka;

    .line 19
    .line 20
    iget-object v0, v0, Lka;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lxc5;

    .line 39
    .line 40
    invoke-interface {v1, p1}, Lxc5;->d(Landroid/view/Menu;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->j0:Lnh;

    .line 45
    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lnh;->m(Lfc5;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public n(Landroid/view/View;Ltv8;)Ltv8;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lrb;->a:I

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ltv8;->d()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v0, v0, Lrb;->b:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v5, v0

    .line 18
    check-cast v5, Lfo;

    .line 19
    .line 20
    iget-object v6, v5, Lfo;->r:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1}, Ltv8;->d()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    iget-object v0, v5, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 27
    .line 28
    const/16 v8, 0x8

    .line 29
    .line 30
    if-eqz v0, :cond_12

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    .line 38
    if-eqz v0, :cond_12

    .line 39
    .line 40
    iget-object v0, v5, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v9, v0

    .line 47
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    .line 49
    iget-object v0, v5, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_10

    .line 56
    .line 57
    iget-object v0, v5, Lfo;->t0:Landroid/graphics/Rect;

    .line 58
    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    new-instance v0, Landroid/graphics/Rect;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, v5, Lfo;->t0:Landroid/graphics/Rect;

    .line 67
    .line 68
    new-instance v0, Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, v5, Lfo;->u0:Landroid/graphics/Rect;

    .line 74
    .line 75
    :cond_0
    iget-object v10, v5, Lfo;->t0:Landroid/graphics/Rect;

    .line 76
    .line 77
    iget-object v0, v5, Lfo;->u0:Landroid/graphics/Rect;

    .line 78
    .line 79
    invoke-virtual {v1}, Ltv8;->b()I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    invoke-virtual {v1}, Ltv8;->d()I

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    invoke-virtual {v1}, Ltv8;->c()I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    invoke-virtual {v1}, Ltv8;->a()I

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 96
    .line 97
    .line 98
    iget-object v11, v5, Lfo;->R:Landroid/view/ViewGroup;

    .line 99
    .line 100
    const-class v12, Landroid/graphics/Rect;

    .line 101
    .line 102
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 103
    .line 104
    const/16 v14, 0x1d

    .line 105
    .line 106
    if-lt v13, v14, :cond_1

    .line 107
    .line 108
    sget-boolean v12, Lxm8;->a:Z

    .line 109
    .line 110
    invoke-static {v11, v10, v0}, Ltm8;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 111
    .line 112
    .line 113
    const/16 v16, 0x0

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    sget-boolean v13, Lxm8;->a:Z

    .line 117
    .line 118
    const-string v14, "ViewUtils"

    .line 119
    .line 120
    if-nez v13, :cond_2

    .line 121
    .line 122
    sput-boolean v4, Lxm8;->a:Z

    .line 123
    .line 124
    :try_start_0
    const-class v13, Landroid/view/View;

    .line 125
    .line 126
    const-string v15, "computeFitSystemWindows"
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    const/16 v16, 0x0

    .line 129
    .line 130
    const/4 v3, 0x2

    .line 131
    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    .line 132
    .line 133
    aput-object v12, v3, v16

    .line 134
    .line 135
    aput-object v12, v3, v4

    .line 136
    .line 137
    invoke-virtual {v13, v15, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    sput-object v3, Lxm8;->b:Ljava/lang/reflect/Method;

    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_3

    .line 148
    .line 149
    sget-object v3, Lxm8;->b:Ljava/lang/reflect/Method;

    .line 150
    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :catch_0
    const/16 v16, 0x0

    .line 156
    .line 157
    :catch_1
    const-string v3, "Could not find method computeFitSystemWindows. Oh well."

    .line 158
    .line 159
    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_2
    const/16 v16, 0x0

    .line 164
    .line 165
    :cond_3
    :goto_0
    sget-object v3, Lxm8;->b:Ljava/lang/reflect/Method;

    .line 166
    .line 167
    if-eqz v3, :cond_4

    .line 168
    .line 169
    :try_start_2
    filled-new-array {v10, v0}, [Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v3, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :catch_2
    move-exception v0

    .line 178
    const-string v3, "Could not invoke computeFitSystemWindows"

    .line 179
    .line 180
    invoke-static {v14, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .line 182
    .line 183
    :cond_4
    :goto_1
    iget v0, v10, Landroid/graphics/Rect;->top:I

    .line 184
    .line 185
    iget v3, v10, Landroid/graphics/Rect;->left:I

    .line 186
    .line 187
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 188
    .line 189
    iget-object v11, v5, Lfo;->R:Landroid/view/ViewGroup;

    .line 190
    .line 191
    sget-object v12, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 192
    .line 193
    invoke-static {v11}, Lvk8;->a(Landroid/view/View;)Ltv8;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    if-nez v11, :cond_5

    .line 198
    .line 199
    move/from16 v12, v16

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_5
    invoke-virtual {v11}, Ltv8;->b()I

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    :goto_2
    if-nez v11, :cond_6

    .line 207
    .line 208
    move/from16 v11, v16

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_6
    invoke-virtual {v11}, Ltv8;->c()I

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    :goto_3
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 216
    .line 217
    if-ne v13, v0, :cond_8

    .line 218
    .line 219
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 220
    .line 221
    if-ne v13, v3, :cond_8

    .line 222
    .line 223
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 224
    .line 225
    if-eq v13, v10, :cond_7

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_7
    move/from16 v3, v16

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_8
    :goto_4
    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 232
    .line 233
    iput v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 234
    .line 235
    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 236
    .line 237
    move v3, v4

    .line 238
    :goto_5
    if-lez v0, :cond_9

    .line 239
    .line 240
    iget-object v0, v5, Lfo;->T:Landroid/view/View;

    .line 241
    .line 242
    if-nez v0, :cond_9

    .line 243
    .line 244
    new-instance v0, Landroid/view/View;

    .line 245
    .line 246
    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    iput-object v0, v5, Lfo;->T:Landroid/view/View;

    .line 250
    .line 251
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 255
    .line 256
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 257
    .line 258
    const/16 v13, 0x33

    .line 259
    .line 260
    const/4 v14, -0x1

    .line 261
    invoke-direct {v0, v14, v10, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 262
    .line 263
    .line 264
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 265
    .line 266
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 267
    .line 268
    iget-object v10, v5, Lfo;->R:Landroid/view/ViewGroup;

    .line 269
    .line 270
    iget-object v11, v5, Lfo;->T:Landroid/view/View;

    .line 271
    .line 272
    invoke-virtual {v10, v11, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 273
    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_9
    iget-object v0, v5, Lfo;->T:Landroid/view/View;

    .line 277
    .line 278
    if-eqz v0, :cond_b

    .line 279
    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 285
    .line 286
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 287
    .line 288
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 289
    .line 290
    if-ne v10, v13, :cond_a

    .line 291
    .line 292
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 293
    .line 294
    if-ne v10, v12, :cond_a

    .line 295
    .line 296
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 297
    .line 298
    if-eq v10, v11, :cond_b

    .line 299
    .line 300
    :cond_a
    iput v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 301
    .line 302
    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 303
    .line 304
    iput v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 305
    .line 306
    iget-object v10, v5, Lfo;->T:Landroid/view/View;

    .line 307
    .line 308
    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .line 310
    .line 311
    :cond_b
    :goto_6
    iget-object v0, v5, Lfo;->T:Landroid/view/View;

    .line 312
    .line 313
    if-eqz v0, :cond_c

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_c
    move/from16 v4, v16

    .line 317
    .line 318
    :goto_7
    if-eqz v4, :cond_e

    .line 319
    .line 320
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_e

    .line 325
    .line 326
    iget-object v0, v5, Lfo;->T:Landroid/view/View;

    .line 327
    .line 328
    invoke-virtual {v0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 329
    .line 330
    .line 331
    move-result v10

    .line 332
    and-int/lit16 v10, v10, 0x2000

    .line 333
    .line 334
    if-eqz v10, :cond_d

    .line 335
    .line 336
    const v10, 0x7f060006

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    .line 340
    .line 341
    .line 342
    move-result v6

    .line 343
    goto :goto_8

    .line 344
    :cond_d
    const v10, 0x7f060005

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    :goto_8
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 352
    .line 353
    .line 354
    :cond_e
    iget-boolean v0, v5, Lfo;->Y:Z

    .line 355
    .line 356
    if-nez v0, :cond_f

    .line 357
    .line 358
    if-eqz v4, :cond_f

    .line 359
    .line 360
    move/from16 v7, v16

    .line 361
    .line 362
    :cond_f
    move v0, v4

    .line 363
    move v4, v3

    .line 364
    move/from16 v3, v16

    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_10
    const/16 v16, 0x0

    .line 368
    .line 369
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 370
    .line 371
    move/from16 v3, v16

    .line 372
    .line 373
    if-eqz v0, :cond_11

    .line 374
    .line 375
    iput v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 376
    .line 377
    move v0, v3

    .line 378
    goto :goto_9

    .line 379
    :cond_11
    move v0, v3

    .line 380
    move v4, v0

    .line 381
    :goto_9
    if-eqz v4, :cond_13

    .line 382
    .line 383
    iget-object v4, v5, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 384
    .line 385
    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    .line 387
    .line 388
    goto :goto_a

    .line 389
    :cond_12
    const/4 v3, 0x0

    .line 390
    move v0, v3

    .line 391
    :cond_13
    :goto_a
    iget-object v4, v5, Lfo;->T:Landroid/view/View;

    .line 392
    .line 393
    if-eqz v4, :cond_15

    .line 394
    .line 395
    if-eqz v0, :cond_14

    .line 396
    .line 397
    goto :goto_b

    .line 398
    :cond_14
    move v3, v8

    .line 399
    :goto_b
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 400
    .line 401
    .line 402
    :cond_15
    if-eq v2, v7, :cond_16

    .line 403
    .line 404
    invoke-virtual {v1}, Ltv8;->b()I

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    invoke-virtual {v1}, Ltv8;->c()I

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    invoke-virtual {v1}, Ltv8;->a()I

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    invoke-virtual {v1, v0, v7, v2, v3}, Ltv8;->f(IIII)Ltv8;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    :goto_c
    move-object/from16 v1, p1

    .line 421
    .line 422
    goto :goto_d

    .line 423
    :cond_16
    move-object v0, v1

    .line 424
    goto :goto_c

    .line 425
    :goto_d
    invoke-static {v1, v0}, Ldl8;->i(Landroid/view/View;Ltv8;)Ltv8;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    return-object v0

    .line 430
    :pswitch_0
    const/4 v3, 0x0

    .line 431
    iget-object v0, v0, Lrb;->b:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 434
    .line 435
    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    if-eqz v2, :cond_17

    .line 440
    .line 441
    move-object v2, v1

    .line 442
    goto :goto_e

    .line 443
    :cond_17
    const/4 v2, 0x0

    .line 444
    :goto_e
    iget-object v5, v0, Lcom/google/android/material/appbar/AppBarLayout;->k:Ltv8;

    .line 445
    .line 446
    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    if-nez v5, :cond_19

    .line 451
    .line 452
    iput-object v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->k:Ltv8;

    .line 453
    .line 454
    iget-object v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->O:Landroid/graphics/drawable/Drawable;

    .line 455
    .line 456
    if-eqz v2, :cond_18

    .line 457
    .line 458
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    if-lez v2, :cond_18

    .line 463
    .line 464
    move v3, v4

    .line 465
    :cond_18
    xor-int/lit8 v2, v3, 0x1

    .line 466
    .line 467
    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 471
    .line 472
    .line 473
    :cond_19
    return-object v1

    .line 474
    nop

    .line 475
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public o(Lxy7;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->T:Lm01;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lgm7;->l()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Lz11;

    .line 15
    .line 16
    invoke-direct {v2, v0, p1}, Lz11;-><init>(Ljava/util/List;Lzy7;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lxy7;->e:Ljava/util/List;

    .line 20
    .line 21
    sget-object v0, Lq05;->CLOUD:Lq05;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    new-instance p1, Lqf;

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-direct {p1, v0, p0, v2}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-static {p0, v1, p1, v0}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->a0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-class p1, Lz11;

    .line 45
    .line 46
    invoke-virtual {p0, p1, v2}, Lqo0;->c(Ljava/lang/Class;Lpw6;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    const-string p0, "mAdapter"

    .line 51
    .line 52
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1
.end method

.method public p(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public q(IF)V
    .locals 0

    .line 1
    return-void
.end method

.method public r(Lw9;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget v0, p1, Lw9;->a:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Landroidx/recyclerview/widget/a;

    .line 22
    .line 23
    iget v0, p1, Lw9;->b:I

    .line 24
    .line 25
    iget p1, p1, Lw9;->d:I

    .line 26
    .line 27
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/a;->l0(II)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Landroidx/recyclerview/widget/a;

    .line 32
    .line 33
    iget v1, p1, Lw9;->b:I

    .line 34
    .line 35
    iget p1, p1, Lw9;->d:I

    .line 36
    .line 37
    invoke-virtual {v0, p0, v1, p1}, Landroidx/recyclerview/widget/a;->o0(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Landroidx/recyclerview/widget/a;

    .line 42
    .line 43
    iget v0, p1, Lw9;->b:I

    .line 44
    .line 45
    iget p1, p1, Lw9;->d:I

    .line 46
    .line 47
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/a;->m0(II)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Landroidx/recyclerview/widget/a;

    .line 52
    .line 53
    iget v0, p1, Lw9;->b:I

    .line 54
    .line 55
    iget p1, p1, Lw9;->d:I

    .line 56
    .line 57
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/a;->j0(II)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public s(I)Lfh6;
    .locals 6

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 6
    .line 7
    invoke-virtual {v0}, Lj61;->h()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    move-object v3, v1

    .line 14
    :goto_0
    if-ge v2, v0, :cond_3

    .line 15
    .line 16
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 17
    .line 18
    invoke-virtual {v4, v2}, Lj61;->g(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    invoke-virtual {v4}, Lfh6;->i()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_2

    .line 33
    .line 34
    iget v5, v4, Lfh6;->c:I

    .line 35
    .line 36
    if-eq v5, p1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 40
    .line 41
    iget-object v5, v4, Lfh6;->a:Landroid/view/View;

    .line 42
    .line 43
    iget-object v3, v3, Lj61;->c:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    move-object v3, v4

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object v3, v4

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_4
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 62
    .line 63
    iget-object p1, v3, Lfh6;->a:Landroid/view/View;

    .line 64
    .line 65
    iget-object p0, p0, Lj61;->c:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_6

    .line 72
    .line 73
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 74
    .line 75
    if-eqz p0, :cond_5

    .line 76
    .line 77
    const-string p0, "RecyclerView"

    .line 78
    .line 79
    const-string p1, "assuming view holder cannot be find because it is hidden"

    .line 80
    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_5
    :goto_3
    return-object v1

    .line 85
    :cond_6
    return-object v3
.end method

.method public skip(J)J
    .locals 7

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/io/InputStream;

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-gez v2, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    move-wide v2, p1

    .line 13
    :goto_0
    cmp-long v4, v2, v0

    .line 14
    .line 15
    if-lez v4, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    cmp-long v6, v4, v0

    .line 22
    .line 23
    if-lez v6, :cond_1

    .line 24
    .line 25
    :goto_1
    sub-long/2addr v2, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, -0x1

    .line 32
    if-ne v4, v5, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    const-wide/16 v4, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    :goto_2
    sub-long/2addr p1, v2

    .line 39
    return-wide p1
.end method

.method public u(Ljava/lang/Object;II)V
    .locals 7

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 6
    .line 7
    invoke-virtual {v0}, Lj61;->h()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/2addr p3, p2

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ge v1, v0, :cond_5

    .line 16
    .line 17
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 18
    .line 19
    invoke-virtual {v4, v1}, Lj61;->g(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_4

    .line 28
    .line 29
    invoke-virtual {v5}, Lfh6;->p()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    iget v6, v5, Lfh6;->c:I

    .line 37
    .line 38
    if-lt v6, p2, :cond_4

    .line 39
    .line 40
    if-ge v6, p3, :cond_4

    .line 41
    .line 42
    invoke-virtual {v5, v2}, Lfh6;->a(I)V

    .line 43
    .line 44
    .line 45
    const/16 v2, 0x400

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v5, v2}, Lfh6;->a(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget v6, v5, Lfh6;->j:I

    .line 54
    .line 55
    and-int/2addr v2, v6

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    iget-object v2, v5, Lfh6;->k:Ljava/util/ArrayList;

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    new-instance v2, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v2, v5, Lfh6;->k:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iput-object v2, v5, Lfh6;->l:Ljava/util/List;

    .line 74
    .line 75
    :cond_2
    iget-object v2, v5, Lfh6;->k:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lqg6;

    .line 85
    .line 86
    iput-boolean v3, v2, Lqg6;->c:Z

    .line 87
    .line 88
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lvg6;

    .line 92
    .line 93
    iget-object v0, p1, Lvg6;->e:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    sub-int/2addr v1, v3

    .line 102
    :goto_3
    if-ltz v1, :cond_8

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lfh6;

    .line 109
    .line 110
    if-nez v4, :cond_6

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_6
    iget v5, v4, Lfh6;->c:I

    .line 114
    .line 115
    if-lt v5, p2, :cond_7

    .line 116
    .line 117
    if-ge v5, p3, :cond_7

    .line 118
    .line 119
    invoke-virtual {v4, v2}, Lfh6;->a(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v1}, Lvg6;->h(I)V

    .line 123
    .line 124
    .line 125
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_8
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    .line 129
    .line 130
    return-void
.end method

.method public v(II)V
    .locals 11

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 6
    .line 7
    invoke-virtual {v0}, Lj61;->h()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    const-string v3, " now at position "

    .line 14
    .line 15
    const-string v4, " holder "

    .line 16
    .line 17
    const-string v5, "RecyclerView"

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 23
    .line 24
    invoke-virtual {v7, v2}, Lj61;->g(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    if-eqz v7, :cond_1

    .line 33
    .line 34
    invoke-virtual {v7}, Lfh6;->p()Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-nez v8, :cond_1

    .line 39
    .line 40
    iget v8, v7, Lfh6;->c:I

    .line 41
    .line 42
    if-lt v8, p1, :cond_1

    .line 43
    .line 44
    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 45
    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    new-instance v8, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v9, "offsetPositionRecordsForInsert attached child "

    .line 51
    .line 52
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget v3, v7, Lfh6;->c:I

    .line 68
    .line 69
    add-int/2addr v3, p2

    .line 70
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-virtual {v7, p2, v1}, Lfh6;->m(IZ)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->x0:Lbh6;

    .line 84
    .line 85
    iput-boolean v6, v3, Lbh6;->f:Z

    .line 86
    .line 87
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lvg6;

    .line 91
    .line 92
    iget-object v0, v0, Lvg6;->e:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    move v7, v1

    .line 101
    :goto_1
    if-ge v7, v2, :cond_5

    .line 102
    .line 103
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    check-cast v8, Lfh6;

    .line 108
    .line 109
    if-eqz v8, :cond_4

    .line 110
    .line 111
    iget v9, v8, Lfh6;->c:I

    .line 112
    .line 113
    if-lt v9, p1, :cond_4

    .line 114
    .line 115
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 116
    .line 117
    if-eqz v9, :cond_3

    .line 118
    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v10, "offsetPositionRecordsForInsert cached "

    .line 122
    .line 123
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v10, v8, Lfh6;->c:I

    .line 139
    .line 140
    add-int/2addr v10, p2

    .line 141
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :cond_3
    invoke-virtual {v8, p2, v1}, Lfh6;->m(IZ)V

    .line 152
    .line 153
    .line 154
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 158
    .line 159
    .line 160
    iput-boolean v6, p0, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    .line 161
    .line 162
    return-void
.end method

.method public w(II)V
    .locals 13

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 6
    .line 7
    invoke-virtual {v0}, Lj61;->h()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ge p1, p2, :cond_0

    .line 14
    .line 15
    move v3, p1

    .line 16
    move v4, p2

    .line 17
    move v5, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v4, p1

    .line 20
    move v3, p2

    .line 21
    move v5, v2

    .line 22
    :goto_0
    const/4 v6, 0x0

    .line 23
    move v7, v6

    .line 24
    :goto_1
    const-string v8, " holder "

    .line 25
    .line 26
    const-string v9, "RecyclerView"

    .line 27
    .line 28
    if-ge v7, v0, :cond_5

    .line 29
    .line 30
    iget-object v10, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 31
    .line 32
    invoke-virtual {v10, v7}, Lj61;->g(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    if-eqz v10, :cond_4

    .line 41
    .line 42
    iget v11, v10, Lfh6;->c:I

    .line 43
    .line 44
    if-lt v11, v3, :cond_4

    .line 45
    .line 46
    if-le v11, v4, :cond_1

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_1
    sget-boolean v11, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 50
    .line 51
    if-eqz v11, :cond_2

    .line 52
    .line 53
    new-instance v11, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v12, "offsetPositionRecordsForMove attached child "

    .line 56
    .line 57
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_2
    iget v8, v10, Lfh6;->c:I

    .line 77
    .line 78
    if-ne v8, p1, :cond_3

    .line 79
    .line 80
    sub-int v8, p2, p1

    .line 81
    .line 82
    invoke-virtual {v10, v8, v6}, Lfh6;->m(IZ)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    invoke-virtual {v10, v5, v6}, Lfh6;->m(IZ)V

    .line 87
    .line 88
    .line 89
    :goto_2
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->x0:Lbh6;

    .line 90
    .line 91
    iput-boolean v2, v8, Lbh6;->f:Z

    .line 92
    .line 93
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lvg6;

    .line 97
    .line 98
    iget-object v0, v0, Lvg6;->e:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    if-ge p1, p2, :cond_6

    .line 103
    .line 104
    move v3, p1

    .line 105
    move v4, p2

    .line 106
    goto :goto_4

    .line 107
    :cond_6
    move v4, p1

    .line 108
    move v3, p2

    .line 109
    move v1, v2

    .line 110
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    move v7, v6

    .line 115
    :goto_5
    if-ge v7, v5, :cond_a

    .line 116
    .line 117
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    check-cast v10, Lfh6;

    .line 122
    .line 123
    if-eqz v10, :cond_9

    .line 124
    .line 125
    iget v11, v10, Lfh6;->c:I

    .line 126
    .line 127
    if-lt v11, v3, :cond_9

    .line 128
    .line 129
    if-le v11, v4, :cond_7

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_7
    if-ne v11, p1, :cond_8

    .line 133
    .line 134
    sub-int v11, p2, p1

    .line 135
    .line 136
    invoke-virtual {v10, v11, v6}, Lfh6;->m(IZ)V

    .line 137
    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_8
    invoke-virtual {v10, v1, v6}, Lfh6;->m(IZ)V

    .line 141
    .line 142
    .line 143
    :goto_6
    sget-boolean v11, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 144
    .line 145
    if-eqz v11, :cond_9

    .line 146
    .line 147
    new-instance v11, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v12, "offsetPositionRecordsForMove cached child "

    .line 150
    .line 151
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 174
    .line 175
    .line 176
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    .line 177
    .line 178
    return-void
.end method

.method public x(FFF)V
    .locals 2

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Le06;

    .line 4
    .line 5
    invoke-virtual {p0}, Le06;->d()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Le06;->e:F

    .line 10
    .line 11
    cmpg-float v0, v0, v1

    .line 12
    .line 13
    if-ltz v0, :cond_1

    .line 14
    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    cmpg-float v0, p1, v0

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Le06;->x:Landroid/graphics/Matrix;

    .line 24
    .line 25
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Le06;->a()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public y(Lai5;)Lch5;
    .locals 1

    .line 1
    iget p1, p0, Lrb;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lwl2;

    .line 7
    .line 8
    iget-object v0, p0, Lrb;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {p1, v0, p0}, Lwl2;-><init>(Landroid/content/Context;Lvl2;)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_0
    new-instance p1, Ltc2;

    .line 17
    .line 18
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Llv1;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Ltc2;-><init>(Llv1;)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Ljava/lang/Class;)Ld89;
    .locals 4

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, [Lv79;

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    aget-object v2, p0, v1

    .line 10
    .line 11
    invoke-interface {v2, p1}, Lv79;->zzb(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-interface {v2, p1}, Lv79;->zza(Ljava/lang/Class;)Ld89;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "No factory is available for message type: "

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public zzb(Ljava/lang/Class;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, [Lv79;

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-interface {v3, p1}, Lv79;->zzb(Ljava/lang/Class;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v1
.end method
