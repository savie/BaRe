.class public Lzq8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebMessageListenerBoundaryInterface;
.implements Loc;
.implements Lhu1;
.implements Ljk8;
.implements Lhc5;
.implements Lcom/google/android/gms/tasks/SuccessContinuation;
.implements Ldh5;
.implements Lvl2;
.implements Lw23;
.implements Lvn5;
.implements Lum8;
.implements Ldc5;
.implements Ln59;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lyi6;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    iput p1, p0, Lzq8;->a:I

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
    new-instance p1, Ln6;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ln6;-><init>(Lzq8;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lzq8;->b:Ljava/lang/Object;

    .line 15
    .line 16
    return-void

    .line 17
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    const/high16 v2, 0x3f400000    # 0.75f

    .line 25
    .line 26
    invoke-direct {p1, v1, v2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lzq8;->b:Ljava/lang/Object;

    .line 30
    .line 31
    return-void

    .line 32
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance p1, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lzq8;->b:Ljava/lang/Object;

    .line 45
    .line 46
    return-void

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 57
    iput p1, p0, Lzq8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Lvq;Lvq;)V
    .locals 0

    const/16 p2, 0x9

    iput p2, p0, Lzq8;->a:I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lzq8;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    const/4 p2, 0x5

    iput p2, p0, Lzq8;->a:I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lzq8;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg45;)V
    .locals 4

    const/16 v0, 0xf

    iput v0, p0, Lzq8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget v0, p1, Lg45;->c:I

    .line 48
    new-array v1, v0, [Ll22;

    iput-object v1, p0, Lzq8;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lzq8;->b:Ljava/lang/Object;

    check-cast v2, [Ll22;

    new-instance v3, Ll22;

    invoke-direct {v3, p1}, Ll22;-><init>(Lg45;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 49
    iput p2, p0, Lzq8;->a:I

    iput-object p1, p0, Lzq8;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lke;Lyf1;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lzq8;->a:I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lzq8;->b:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lri2;Lx44;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lzq8;->a:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lbe;

    invoke-direct {v0, p1, p2}, Lbe;-><init>(Lri2;Lx44;)V

    iput-object v0, p0, Lzq8;->b:Ljava/lang/Object;

    return-void
.end method

.method public static u(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Luf5;
    .locals 5

    .line 1
    invoke-static {p0}, Lzq8;->v(Ljava/lang/reflect/Method;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    invoke-static {p0, v0}, Lzq8;->w(Ljava/lang/reflect/Method;I)Ly40;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x2

    .line 15
    if-ne v0, v3, :cond_1

    .line 16
    .line 17
    invoke-static {p0, v0}, Lzq8;->w(Ljava/lang/reflect/Method;I)Ly40;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-ne v0, v1, :cond_5

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    array-length v3, v3

    .line 33
    if-ne v3, v2, :cond_4

    .line 34
    .line 35
    invoke-static {v0}, Leq3;->c(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-le v3, v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    :cond_2
    invoke-static {v4}, Lz85;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v3, Ly40;

    .line 54
    .line 55
    invoke-direct {v3, p0, v0, v2}, Ly40;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move-object p0, v3

    .line 59
    :goto_0
    iget v0, p0, Ly40;->b:I

    .line 60
    .line 61
    if-ne v0, v1, :cond_3

    .line 62
    .line 63
    new-instance v0, Laa7;

    .line 64
    .line 65
    invoke-direct {v0, p0, p1, p2}, Laa7;-><init>(Ly40;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_3
    new-instance v0, Lsw3;

    .line 70
    .line 71
    invoke-direct {v0, p0, p1, p2}, Lsw3;-><init>(Ly40;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 72
    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_4
    new-instance p1, Lsf5;

    .line 76
    .line 77
    const-string p2, "Set method %s is not a valid property"

    .line 78
    .line 79
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {p1, p2, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_5
    new-instance p0, Lsf5;

    .line 88
    .line 89
    const-string p2, "Annotation %s must mark a set or get method"

    .line 90
    .line 91
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p0, p2, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public static v(Ljava/lang/reflect/Method;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "get"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const-string v0, "is"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x2

    .line 24
    return p0

    .line 25
    :cond_1
    const-string v0, "set"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x3

    .line 34
    return p0

    .line 35
    :cond_2
    const/4 p0, 0x4

    .line 36
    return p0
.end method

.method public static w(Ljava/lang/reflect/Method;I)Ly40;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v0, v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {p1}, Leq3;->c(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-le v2, v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    invoke-static {v1}, Lz85;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ly40;

    .line 31
    .line 32
    invoke-direct {v1, p0, p1, v0}, Ly40;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_1
    new-instance p1, Lsf5;

    .line 37
    .line 38
    const-string v0, "Get method %s is not a valid property"

    .line 39
    .line 40
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {p1, v0, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public static x(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 4

    .line 1
    invoke-static {p0}, Lzq8;->v(Ljava/lang/reflect/Method;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v0, v0

    .line 15
    if-ne v0, v2, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x0

    .line 22
    aget-object p0, p0, v0

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    if-ne v0, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    array-length v0, v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    return-object v3

    .line 40
    :cond_2
    const/4 v1, 0x2

    .line 41
    if-ne v0, v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    array-length v0, v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_3
    return-object v3
.end method


# virtual methods
.method public A(IILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public B(Lzq8;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lzq8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, [Ll22;

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    if-ge v1, v3, :cond_1

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    iget-object v3, p1, Lzq8;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, [Ll22;

    .line 15
    .line 16
    aget-object v3, v3, v1

    .line 17
    .line 18
    move v4, v0

    .line 19
    :goto_1
    const/16 v5, 0x100

    .line 20
    .line 21
    if-ge v4, v5, :cond_0

    .line 22
    .line 23
    iget-object v5, v2, Ll22;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v5, [I

    .line 26
    .line 27
    aget v6, v5, v4

    .line 28
    .line 29
    add-int/lit16 v7, v6, 0xfff

    .line 30
    .line 31
    shr-int/lit8 v7, v7, 0xd

    .line 32
    .line 33
    shl-int/lit8 v8, v7, 0xd

    .line 34
    .line 35
    sub-int/2addr v6, v8

    .line 36
    filled-new-array {v7, v6}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    aget v7, v6, v0

    .line 41
    .line 42
    aput v7, v5, v4

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    aget v5, v6, v5

    .line 46
    .line 47
    iget-object v6, v3, Ll22;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v6, [I

    .line 50
    .line 51
    aput v5, v6, v4

    .line 52
    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public C()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lzq8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, [Ll22;

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    if-ge v1, v3, :cond_1

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    move v3, v0

    .line 13
    :goto_1
    const/16 v4, 0x100

    .line 14
    .line 15
    if-ge v3, v4, :cond_0

    .line 16
    .line 17
    iget-object v4, v2, Ll22;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, [I

    .line 20
    .line 21
    aget v5, v4, v3

    .line 22
    .line 23
    const/high16 v6, 0x400000

    .line 24
    .line 25
    add-int/2addr v6, v5

    .line 26
    shr-int/lit8 v6, v6, 0x17

    .line 27
    .line 28
    const v7, 0x7fe001

    .line 29
    .line 30
    .line 31
    mul-int/2addr v6, v7

    .line 32
    sub-int/2addr v5, v6

    .line 33
    aput v5, v4, v3

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method public a()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lzq8;->a:I

    .line 2
    .line 3
    const-string v1, "com.google.android.gms.identitycredentials.internal.IIdentityCredentialService"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, -0x1

    .line 8
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lcom/google/android/gms/identitycredentials/GetCredentialRequest;

    .line 16
    .line 17
    check-cast p1, Lo94;

    .line 18
    .line 19
    new-instance v0, Lge4;

    .line 20
    .line 21
    invoke-direct {v0, p2}, Lge4;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Laz3;->p()Landroid/os/IInterface;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lv74;

    .line 29
    .line 30
    new-instance p2, Lqn1;

    .line 31
    .line 32
    invoke-direct {p2, v4, v4, v3, v2}, Lqn1;-><init>(IIIZ)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lef;

    .line 36
    .line 37
    invoke-direct {v4, p2, v3}, Lef;-><init>(Lqn1;Z)V

    .line 38
    .line 39
    .line 40
    iput-boolean v3, v4, Lef;->c:Z

    .line 41
    .line 42
    check-cast p1, Lt74;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget v1, Lsa9;->a:I

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p0}, Lsa9;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p2, v4}, Lsa9;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2, v2}, Lt74;->a(Landroid/os/Parcel;I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_0
    check-cast p0, Le91;

    .line 67
    .line 68
    check-cast p1, Lo94;

    .line 69
    .line 70
    new-instance v0, Lee4;

    .line 71
    .line 72
    invoke-direct {v0, p2}, Lee4;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Laz3;->p()Landroid/os/IInterface;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lv74;

    .line 80
    .line 81
    new-instance p2, Lqn1;

    .line 82
    .line 83
    invoke-direct {p2, v4, v4, v3, v2}, Lqn1;-><init>(IIIZ)V

    .line 84
    .line 85
    .line 86
    new-instance v2, Lef;

    .line 87
    .line 88
    invoke-direct {v2, p2, v3}, Lef;-><init>(Lqn1;Z)V

    .line 89
    .line 90
    .line 91
    iput-boolean v3, v2, Lef;->c:Z

    .line 92
    .line 93
    check-cast p1, Lt74;

    .line 94
    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget v1, Lsa9;->a:I

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p2, p0}, Lsa9;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 108
    .line 109
    .line 110
    invoke-static {p2, v2}, Lsa9;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 111
    .line 112
    .line 113
    const/16 p0, 0x9

    .line 114
    .line 115
    invoke-virtual {p1, p2, p0}, Lt74;->a(Landroid/os/Parcel;I)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lsb4;Lqn5;)Lsb4;
    .locals 1

    .line 1
    iget-object p0, p1, Lsb4;->a:Lqn5;

    .line 2
    .line 3
    invoke-interface {p0}, Lqn5;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance p0, Lsb4;

    .line 11
    .line 12
    iget-object v0, p1, Lsb4;->a:Lqn5;

    .line 13
    .line 14
    invoke-interface {v0, p2}, Lqn5;->q(Lqn5;)Lqn5;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v0, p1, Lsb4;->c:Lnb4;

    .line 19
    .line 20
    iget-object p1, p1, Lsb4;->b:Lra4;

    .line 21
    .line 22
    invoke-direct {p0, p2, v0, p1}, Lsb4;-><init>(Lqn5;Lnb4;Lra4;)V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public d(Lfc5;Landroid/view/MenuItem;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lb31;

    .line 4
    .line 5
    iget-object p0, p0, Lb31;->k:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(Lfc5;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ll90;

    .line 4
    .line 5
    iget-object p0, p0, Ll90;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lg36;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p2}, Lg36;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public f()Lzq8;
    .locals 0

    .line 1
    return-object p0
.end method

.method public g()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lzq8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

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
    check-cast p0, Lkd7;

    .line 15
    .line 16
    new-instance v0, Lj97;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lj97;-><init>(Lkd7;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_0
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lid4;

    .line 25
    .line 26
    iget-object p0, p0, Lid4;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lcom/google/firebase/FirebaseApp;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object v0, Lx87;->a:Lx87;

    .line 34
    .line 35
    invoke-static {p0}, Lx87;->a(Lcom/google/firebase/FirebaseApp;)Lf10;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public getIndex()Lnb4;
    .locals 0

    .line 1
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lnb4;

    .line 4
    .line 5
    return-object p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lzq8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

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
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, "WEB_MESSAGE_LISTENER"

    .line 2
    .line 3
    const-string v0, "WEB_MESSAGE_ARRAY_BUFFER"

    .line 4
    .line 5
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public synthetic h(Lf59;)V
    .locals 0

    .line 1
    check-cast p1, Lb69;

    .line 2
    .line 3
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lyf1;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lyf1;->e(Lb69;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public i(Lsb4;Lm61;Lqn5;Lgy5;Lun5;Lvk9;)Lsb4;
    .locals 8

    .line 1
    iget-object v1, p0, Lzq8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v1, Lnb4;

    .line 4
    .line 5
    iget-object v2, p1, Lsb4;->c:Lnb4;

    .line 6
    .line 7
    if-ne v2, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    const-string v2, "The index must match the filter"

    .line 13
    .line 14
    invoke-static {v2, v1}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v7, p1, Lsb4;->a:Lqn5;

    .line 18
    .line 19
    invoke-interface {v7, p2}, Lqn5;->m(Lm61;)Lqn5;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1, p4}, Lqn5;->U(Lgy5;)Lqn5;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface/range {p3 .. p4}, Lqn5;->U(Lgy5;)Lqn5;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v1}, Lqn5;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-interface {p3}, Lqn5;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ne v2, v3, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    if-eqz p6, :cond_5

    .line 49
    .line 50
    invoke-interface {p3}, Lqn5;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    invoke-interface {v7, p2}, Lqn5;->c0(Lm61;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-static {v1}, Lsb4;->d(Lqn5;)Lsb4;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    new-instance v1, Lk31;

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v2, 0x1

    .line 71
    move-object v4, p2

    .line 72
    invoke-direct/range {v1 .. v6}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p6, v1}, Lvk9;->p(Lk31;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-interface {v7}, Lqn5;->Z()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const-string v2, "A child remove without an old child only makes sense on a leaf node"

    .line 84
    .line 85
    invoke-static {v2, v1}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-interface {v1}, Lqn5;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    invoke-static {p3}, Lsb4;->d(Lqn5;)Lsb4;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    new-instance v1, Lk31;

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    const/4 v6, 0x0

    .line 103
    const/4 v2, 0x2

    .line 104
    move-object v4, p2

    .line 105
    invoke-direct/range {v1 .. v6}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p6, v1}, Lvk9;->p(Lk31;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-static {p3}, Lsb4;->d(Lqn5;)Lsb4;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v1}, Lsb4;->d(Lqn5;)Lsb4;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    new-instance v1, Lk31;

    .line 121
    .line 122
    const/4 v2, 0x4

    .line 123
    const/4 v5, 0x0

    .line 124
    move-object v4, p2

    .line 125
    invoke-direct/range {v1 .. v6}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p6, v1}, Lvk9;->p(Lk31;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_1
    invoke-interface {v7}, Lqn5;->Z()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_6

    .line 136
    .line 137
    invoke-interface {p3}, Lqn5;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_6

    .line 142
    .line 143
    :goto_2
    return-object p1

    .line 144
    :cond_6
    invoke-virtual/range {p1 .. p3}, Lsb4;->e(Lm61;Lqn5;)Lsb4;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    return-object v0
.end method

.method public j(Lfc5;Lic5;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb31;

    .line 4
    .line 5
    iget-object v1, v0, Lb31;->k:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lb31;->p:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    const/4 v5, -0x1

    .line 19
    if-ge v4, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    check-cast v6, La31;

    .line 26
    .line 27
    iget-object v6, v6, La31;->b:Lfc5;

    .line 28
    .line 29
    if-ne p1, v6, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v4, v5

    .line 36
    :goto_1
    if-ne v4, v5, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v4, v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v2, v0

    .line 52
    check-cast v2, La31;

    .line 53
    .line 54
    :cond_3
    new-instance v0, Lz21;

    .line 55
    .line 56
    invoke-direct {v0, p0, v2, p2, p1}, Lz21;-><init>(Lzq8;La31;Lic5;Lfc5;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    const-wide/16 v4, 0xc8

    .line 64
    .line 65
    add-long/2addr v2, v4

    .line 66
    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public k(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public l(Lsb4;Lsb4;Lvk9;)Lsb4;
    .locals 9

    .line 1
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lnb4;

    .line 4
    .line 5
    iget-object v0, p2, Lsb4;->c:Lnb4;

    .line 6
    .line 7
    if-ne v0, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    iget-object v0, p2, Lsb4;->a:Lqn5;

    .line 13
    .line 14
    const-string v1, "Can\'t use IndexedNode that doesn\'t have filter\'s index"

    .line 15
    .line 16
    invoke-static {v1, p0}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    if-eqz p3, :cond_5

    .line 20
    .line 21
    iget-object p0, p1, Lsb4;->a:Lqn5;

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lhk5;

    .line 38
    .line 39
    iget-object v2, v1, Lhk5;->a:Lm61;

    .line 40
    .line 41
    invoke-interface {v0, v2}, Lqn5;->c0(Lm61;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    iget-object v6, v1, Lhk5;->a:Lm61;

    .line 48
    .line 49
    iget-object v1, v1, Lhk5;->b:Lqn5;

    .line 50
    .line 51
    invoke-static {v1}, Lsb4;->d(Lqn5;)Lsb4;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    new-instance v3, Lk31;

    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v4, 0x1

    .line 60
    invoke-direct/range {v3 .. v8}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v3}, Lvk9;->p(Lk31;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-interface {v0}, Lqn5;->Z()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_5

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lhk5;

    .line 88
    .line 89
    iget-object v4, v0, Lhk5;->a:Lm61;

    .line 90
    .line 91
    iget-object v0, v0, Lhk5;->b:Lqn5;

    .line 92
    .line 93
    invoke-interface {p0, v4}, Lqn5;->c0(Lm61;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    invoke-interface {p0, v4}, Lqn5;->m(Lm61;)Lqn5;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_3

    .line 108
    .line 109
    invoke-static {v0}, Lsb4;->d(Lqn5;)Lsb4;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {v1}, Lsb4;->d(Lqn5;)Lsb4;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    new-instance v1, Lk31;

    .line 118
    .line 119
    const/4 v2, 0x4

    .line 120
    const/4 v5, 0x0

    .line 121
    invoke-direct/range {v1 .. v6}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, v1}, Lvk9;->p(Lk31;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    invoke-static {v0}, Lsb4;->d(Lqn5;)Lsb4;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    new-instance v1, Lk31;

    .line 133
    .line 134
    const/4 v5, 0x0

    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v2, 0x2

    .line 137
    invoke-direct/range {v1 .. v6}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, v1}, Lvk9;->p(Lk31;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    return-object p2
.end method

.method public m(Lfc5;)V
    .locals 0

    .line 1
    return-void
.end method

.method public n()Lyl0;
    .locals 1

    .line 1
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lwo4;

    .line 11
    .line 12
    invoke-virtual {v0}, Lwo4;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Le26;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Le26;-><init>(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljy5;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Ljy5;-><init>(Ljava/util/ArrayList;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public o(Landroid/view/View;Ltv8;Lvm8;)Ltv8;
    .locals 4

    .line 1
    iget-object v0, p2, Ltv8;->a:Lqv8;

    .line 2
    .line 3
    const/16 v1, 0x207

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lqv8;->h(I)Lvc4;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x80

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lqv8;->h(I)Lvc4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->r:Ljava/lang/Boolean;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :goto_0
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget v2, p3, Lvm8;->b:I

    .line 35
    .line 36
    iget v3, v1, Lvc4;->b:I

    .line 37
    .line 38
    add-int/2addr v2, v3

    .line 39
    iput v2, p3, Lvm8;->b:I

    .line 40
    .line 41
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->t:Ljava/lang/Boolean;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    :goto_1
    if-eqz v2, :cond_3

    .line 55
    .line 56
    iget v2, p3, Lvm8;->d:I

    .line 57
    .line 58
    iget v3, v1, Lvc4;->d:I

    .line 59
    .line 60
    add-int/2addr v2, v3

    .line 61
    iput v2, p3, Lvm8;->d:I

    .line 62
    .line 63
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->x:Ljava/lang/Boolean;

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    :goto_2
    if-eqz p0, :cond_6

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    iget v2, p3, Lvm8;->a:I

    .line 83
    .line 84
    const/4 v3, 0x1

    .line 85
    if-ne p0, v3, :cond_5

    .line 86
    .line 87
    iget p0, v1, Lvc4;->c:I

    .line 88
    .line 89
    iget v0, v0, Lvc4;->c:I

    .line 90
    .line 91
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    add-int/2addr p0, v2

    .line 96
    iput p0, p3, Lvm8;->a:I

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    iget p0, v1, Lvc4;->a:I

    .line 100
    .line 101
    iget v0, v0, Lvc4;->a:I

    .line 102
    .line 103
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    add-int/2addr p0, v2

    .line 108
    iput p0, p3, Lvm8;->a:I

    .line 109
    .line 110
    :cond_6
    :goto_3
    iget p0, p3, Lvm8;->a:I

    .line 111
    .line 112
    iget v0, p3, Lvm8;->b:I

    .line 113
    .line 114
    iget v1, p3, Lvm8;->c:I

    .line 115
    .line 116
    iget p3, p3, Lvm8;->d:I

    .line 117
    .line 118
    invoke-virtual {p1, p0, v0, v1, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 119
    .line 120
    .line 121
    return-object p2
.end method

.method public onPostMessage(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;Landroid/net/Uri;ZLjava/lang/reflect/InvocationHandler;)V
    .locals 7

    .line 1
    const-class v0, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 2
    .line 3
    invoke-static {v0, p2}, Ltu0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 8
    .line 9
    invoke-interface {p2}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getPorts()[Ljava/lang/reflect/InvocationHandler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    array-length v1, v0

    .line 14
    new-array v1, v1, [Lke;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    array-length v3, v0

    .line 18
    if-ge v2, v3, :cond_0

    .line 19
    .line 20
    new-instance v3, Lke;

    .line 21
    .line 22
    aget-object v4, v0, v2

    .line 23
    .line 24
    const/16 v5, 0xf

    .line 25
    .line 26
    invoke-direct {v3, v5}, Lke;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const-class v5, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 30
    .line 31
    invoke-static {v5, v4}, Ltu0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 36
    .line 37
    iput-object v4, v3, Lke;->b:Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v3, v1, v2

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Ljr8;->a:Lve;

    .line 45
    .line 46
    invoke-virtual {v0}, Lbf;->b()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const-class v0, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;

    .line 53
    .line 54
    invoke-interface {p2}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getMessagePayload()Ljava/lang/reflect/InvocationHandler;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {v0, p2}, Ltu0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;

    .line 63
    .line 64
    invoke-interface {p2}, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;->getType()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    if-eq v0, v1, :cond_1

    .line 72
    .line 73
    const/4 p2, 0x0

    .line 74
    move-object v3, p2

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    new-instance v0, Lhb5;

    .line 77
    .line 78
    invoke-interface {p2}, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;->getAsArrayBuffer()[B

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {v0, p2}, Lhb5;-><init>([B)V

    .line 83
    .line 84
    .line 85
    :goto_1
    move-object v3, v0

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    new-instance v0, Lhb5;

    .line 88
    .line 89
    invoke-interface {p2}, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;->getAsString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-direct {v0, p2}, Lhb5;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    new-instance v0, Lhb5;

    .line 98
    .line 99
    invoke-interface {p2}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getData()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-direct {v0, p2}, Lhb5;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :goto_2
    if-eqz v3, :cond_4

    .line 108
    .line 109
    const-class p2, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 110
    .line 111
    invoke-static {p2, p5}, Ltu0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 116
    .line 117
    new-instance p5, Ljh4;

    .line 118
    .line 119
    invoke-direct {p5, p2}, Ljh4;-><init>(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p2, p5}, Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    move-object v6, p2

    .line 127
    check-cast v6, Lkh4;

    .line 128
    .line 129
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 130
    .line 131
    move-object v1, p0

    .line 132
    check-cast v1, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;

    .line 133
    .line 134
    move-object v2, p1

    .line 135
    move-object v4, p3

    .line 136
    move v5, p4

    .line 137
    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;->onPostMessage(Landroid/webkit/WebView;Lhb5;Landroid/net/Uri;ZLkh4;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    return-void
.end method

.method public p()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    return-object p0
.end method

.method public q()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lwo4;

    .line 18
    .line 19
    invoke-virtual {p0}, Lwo4;->c()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    return v1
.end method

.method public r()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lzq8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, [Ll22;

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    if-ge v1, v3, :cond_1

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    move v3, v0

    .line 13
    :goto_1
    const/16 v4, 0x100

    .line 14
    .line 15
    if-ge v3, v4, :cond_0

    .line 16
    .line 17
    iget-object v4, v2, Ll22;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, [I

    .line 20
    .line 21
    aget v5, v4, v3

    .line 22
    .line 23
    shr-int/lit8 v6, v5, 0x1f

    .line 24
    .line 25
    const v7, 0x7fe001

    .line 26
    .line 27
    .line 28
    and-int/2addr v6, v7

    .line 29
    add-int/2addr v5, v6

    .line 30
    aput v5, v4, v3

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public s(I)Lm6;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public t(I)Lm6;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 64
    check-cast p1, Lfa7;

    .line 65
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    check-cast p0, Lyf1;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 66
    const-string p0, "Received null app settings at app startup. Cannot send cached reports"

    .line 67
    const-string p1, "FirebaseCrashlytics"

    invoke-static {p1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    check-cast p0, Lsy1;

    invoke-static {p0}, Lsy1;->a(Lsy1;)Lcom/google/android/gms/tasks/Task;

    .line 70
    iget-object p1, p0, Lsy1;->m:Lca3;

    .line 71
    iget-object v1, p0, Lsy1;->e:Ls02;

    .line 72
    iget-object v1, v1, Ls02;->a:Ljava/lang/Object;

    check-cast v1, Lo02;

    .line 73
    invoke-virtual {p1, v0, v1}, Lca3;->m(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    .line 74
    iget-object p0, p0, Lsy1;->q:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 75
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljd4;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Failed to get Recaptcha token, error - "

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, "\n\n Failing open with a fake token."

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "RecaptchaCallWrapper"

    .line 42
    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const-string p1, "NO_RECAPTCHA"

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljd4;->P(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljd4;->P(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lzq8;->a:I

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
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, [Ll22;

    .line 14
    .line 15
    const-string v0, "["

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    array-length v2, p0

    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " "

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    aget-object v0, p0, v1

    .line 38
    .line 39
    invoke-virtual {v0}, Ll22;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    array-length v2, p0

    .line 51
    add-int/lit8 v2, v2, -0x1

    .line 52
    .line 53
    if-ne v1, v2, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const-string v2, ",\n"

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-string p0, "]"

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public y(Lai5;)Lch5;
    .locals 1

    .line 1
    new-instance p1, Lwl2;

    .line 2
    .line 3
    iget-object v0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0}, Lwl2;-><init>(Landroid/content/Context;Lvl2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public z()V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    move v2, v0

    .line 3
    :goto_0
    iget-object v3, p0, Lzq8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v3, [Ll22;

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    if-ge v2, v4, :cond_4

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    iget-object v4, v3, Ll22;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v4, [I

    .line 15
    .line 16
    array-length v5, v4

    .line 17
    invoke-static {v0, v5}, Lms8;->w(II)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    new-array v6, v5, [I

    .line 22
    .line 23
    array-length v7, v4

    .line 24
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-static {v4, v0, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    const/16 v5, 0x100

    .line 33
    .line 34
    move v7, v5

    .line 35
    :goto_1
    if-ge v4, v5, :cond_2

    .line 36
    .line 37
    move v8, v0

    .line 38
    :goto_2
    if-ge v8, v5, :cond_1

    .line 39
    .line 40
    sget-object v9, Lms8;->b:[I

    .line 41
    .line 42
    add-int/lit8 v7, v7, -0x1

    .line 43
    .line 44
    aget v9, v9, v7

    .line 45
    .line 46
    mul-int/lit8 v9, v9, -0x1

    .line 47
    .line 48
    move v10, v8

    .line 49
    :goto_3
    add-int v11, v8, v4

    .line 50
    .line 51
    if-ge v10, v11, :cond_0

    .line 52
    .line 53
    aget v11, v6, v10

    .line 54
    .line 55
    add-int v12, v10, v4

    .line 56
    .line 57
    aget v13, v6, v12

    .line 58
    .line 59
    add-int/2addr v13, v11

    .line 60
    aput v13, v6, v10

    .line 61
    .line 62
    aget v13, v6, v12

    .line 63
    .line 64
    sub-int/2addr v11, v13

    .line 65
    aput v11, v6, v12

    .line 66
    .line 67
    int-to-long v13, v9

    .line 68
    int-to-long v0, v11

    .line 69
    mul-long/2addr v13, v0

    .line 70
    invoke-static {v13, v14}, Lxx3;->w(J)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    aput v0, v6, v12

    .line 75
    .line 76
    add-int/lit8 v10, v10, 0x1

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    goto :goto_3

    .line 80
    :cond_0
    add-int v8, v10, v4

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    goto :goto_2

    .line 84
    :cond_1
    shl-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/4 v0, 0x0

    .line 89
    :goto_4
    if-ge v0, v5, :cond_3

    .line 90
    .line 91
    aget v1, v6, v0

    .line 92
    .line 93
    int-to-long v7, v1

    .line 94
    const-wide/32 v9, 0xa3fa

    .line 95
    .line 96
    .line 97
    mul-long/2addr v7, v9

    .line 98
    invoke-static {v7, v8}, Lxx3;->w(J)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    aput v1, v6, v0

    .line 103
    .line 104
    add-int/lit8 v0, v0, 0x1

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_3
    iput-object v6, v3, Ll22;->b:Ljava/lang/Object;

    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    return-void
.end method

.method public zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lzv1;->t(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lyf1;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lyf1;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
