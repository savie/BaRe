.class public Lq34;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmo1;
.implements Lcj8;
.implements Lt91;
.implements La87;
.implements Ltt4;
.implements Lx98;
.implements Lc33;
.implements Lv36;
.implements Lzm7;
.implements Ldh5;
.implements Leb;
.implements Lcs9;
.implements Let9;
.implements Les9;
.implements Ly1a;


# static fields
.field public static final b:Lq34;

.field public static final c:Lq34;

.field public static final d:Lq34;

.field public static final e:Lq34;

.field public static final f:Lm87;

.field public static k:Lq34;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lq34;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lq34;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lq34;->b:Lq34;

    .line 8
    .line 9
    new-instance v0, Lq34;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Lq34;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lq34;->c:Lq34;

    .line 16
    .line 17
    new-instance v0, Lq34;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, v1}, Lq34;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lq34;->d:Lq34;

    .line 24
    .line 25
    new-instance v0, Lq34;

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-direct {v0, v1}, Lq34;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lq34;->e:Lq34;

    .line 32
    .line 33
    new-instance v2, Lm87;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-direct/range {v2 .. v7}, Lm87;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 41
    .line 42
    .line 43
    sput-object v2, Lq34;->f:Lm87;

    .line 44
    .line 45
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lq34;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static q(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p0, Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/tabs/TabLayout;->W:Z

    .line 10
    .line 11
    if-nez p0, :cond_2

    .line 12
    .line 13
    instance-of p0, p1, Lfw7;

    .line 14
    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    check-cast p1, Lfw7;

    .line 18
    .line 19
    invoke-virtual {p1}, Lfw7;->getContentWidth()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {p1}, Lfw7;->getContentHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/16 v2, 0x18

    .line 32
    .line 33
    invoke-static {v1, v2}, Lyc9;->m(Landroid/content/Context;I)F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    float-to-int v1, v1

    .line 38
    if-ge p0, v1, :cond_1

    .line 39
    .line 40
    move p0, v1

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/2addr v2, v1

    .line 50
    div-int/lit8 v2, v2, 0x2

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    add-int/2addr p1, v1

    .line 61
    div-int/lit8 p1, p1, 0x2

    .line 62
    .line 63
    div-int/lit8 p0, p0, 0x2

    .line 64
    .line 65
    sub-int v1, v2, p0

    .line 66
    .line 67
    div-int/lit8 v0, v0, 0x2

    .line 68
    .line 69
    sub-int v0, p1, v0

    .line 70
    .line 71
    add-int/2addr p0, v2

    .line 72
    div-int/lit8 v2, v2, 0x2

    .line 73
    .line 74
    add-int/2addr v2, p1

    .line 75
    new-instance p1, Landroid/graphics/RectF;

    .line 76
    .line 77
    int-to-float v1, v1

    .line 78
    int-to-float v0, v0

    .line 79
    int-to-float p0, p0

    .line 80
    int-to-float v2, v2

    .line 81
    invoke-direct {p1, v1, v0, p0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_2
    new-instance p0, Landroid/graphics/RectF;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    int-to-float v0, v0

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    int-to-float v1, v1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    int-to-float v2, v2

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    int-to-float p1, p1

    .line 107
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 108
    .line 109
    .line 110
    return-object p0
.end method

.method public static t()Ljavax/crypto/Cipher;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Leo9;->a:Lio9;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljavax/crypto/Cipher;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 13
    .line 14
    const-string v1, "AES GCM SIV cipher is invalid."

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 22
    .line 23
    const-string v2, "AES GCM SIV cipher is not available or is invalid."

    .line 24
    .line 25
    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v1
.end method

.method public static final u(Ljava/lang/Object;Ljava/lang/Object;)Lxk9;
    .locals 1

    .line 1
    check-cast p0, Lxk9;

    .line 2
    .line 3
    check-cast p1, Lxk9;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-boolean v0, p0, Lxk9;->a:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance p0, Lxk9;

    .line 22
    .line 23
    invoke-direct {p0}, Lxk9;-><init>()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lxk9;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    iput-boolean p0, v0, Lxk9;->a:Z

    .line 34
    .line 35
    move-object p0, v0

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lxk9;->b()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lxk9;->putAll(Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-object p0
.end method


# virtual methods
.method public a(Ldu4;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public c(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p0, p1, v0

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lq34;->f:Lm87;

    .line 2
    .line 3
    return-object p0
.end method

.method public synthetic e(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public f(Lvm4;)Lpt9;
    .locals 3

    .line 1
    check-cast p1, Loq9;

    .line 2
    .line 3
    invoke-static {}, Ldz9;->y()Lcz9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lj79;->c()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lj79;->b:Lk79;

    .line 11
    .line 12
    check-cast v0, Ldz9;

    .line 13
    .line 14
    invoke-static {v0}, Ldz9;->v(Ldz9;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Loq9;->d:Lvq9;

    .line 18
    .line 19
    invoke-static {v0}, Lrq9;->b(Lvq9;)Lgz9;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lj79;->c()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lj79;->b:Lk79;

    .line 27
    .line 28
    check-cast v1, Ldz9;

    .line 29
    .line 30
    invoke-static {v1, v0}, Ldz9;->x(Ldz9;Lgz9;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Loq9;->e:Lkm8;

    .line 34
    .line 35
    iget-object v0, v0, Lkm8;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ld2a;

    .line 38
    .line 39
    invoke-virtual {v0}, Ld2a;->b()[B

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    array-length v1, v0

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v0, v2, v1}, Lt69;->g([BII)Lx69;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lj79;->c()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lj79;->b:Lk79;

    .line 53
    .line 54
    check-cast v1, Ldz9;

    .line 55
    .line 56
    invoke-static {v1, v0}, Ldz9;->w(Ldz9;Lx69;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Ldz9;

    .line 64
    .line 65
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    sget-object v0, Lrq9;->g:Lot9;

    .line 70
    .line 71
    iget-object v1, p1, Loq9;->d:Lvq9;

    .line 72
    .line 73
    iget-object v1, v1, Lvq9;->d:Llq9;

    .line 74
    .line 75
    iget-object v1, v1, Llq9;->d:Liq9;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lr0a;

    .line 82
    .line 83
    invoke-virtual {p1}, Lbr9;->H()Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    .line 88
    .line 89
    const/4 v2, 0x3

    .line 90
    invoke-static {v1, p0, v2, v0, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

.method public g(Lot9;)Lbd9;
    .locals 2

    .line 1
    iget p0, p0, Lq34;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    :pswitch_0
    iget-object p0, p1, Lot9;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lmz9;

    .line 10
    .line 11
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Lmz9;->A()Lt69;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object v0, Lf79;->a:Lf79;

    .line 28
    .line 29
    invoke-static {p1, v0}, Lfv9;->u(Lt69;Lf79;)Lfv9;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    invoke-static {}, Leu9;->b()Ll22;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lfv9;->t()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Ll22;->r(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lfv9;->y()Liv9;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Liv9;->t()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {v0, p1}, Ll22;->s(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lqu9;->a(Lr0a;)Ldu9;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iput-object p0, v0, Ll22;->d:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {v0}, Ll22;->q()Leu9;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 72
    .line 73
    const-string v0, "Parsing AesCmacParameters failed: "

    .line 74
    .line 75
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string p1, "Wrong type URL in call to AesCmacProtoSerialization.parseParameters: "

    .line 84
    .line 85
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-object v0

    .line 93
    :pswitch_1
    iget-object p0, p1, Lot9;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p0, Lmz9;

    .line 96
    .line 97
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_1

    .line 108
    .line 109
    :try_start_1
    invoke-virtual {p0}, Lmz9;->A()Lt69;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    sget-object v0, Lf79;->a:Lf79;

    .line 114
    .line 115
    invoke-static {p1, v0}, Lhx9;->t(Lt69;Lf79;)V
    :try_end_1
    .catch Lp79; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {p0}, Lpm9;->a(Lr0a;)Lef9;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    new-instance v0, Lah9;

    .line 127
    .line 128
    invoke-direct {v0, p0}, Lah9;-><init>(Lef9;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catch_1
    move-exception p0

    .line 133
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 134
    .line 135
    const-string v0, "Parsing ChaCha20Poly1305Parameters failed: "

    .line 136
    .line 137
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :cond_1
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    const-string p1, "Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseParameters: "

    .line 146
    .line 147
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :goto_1
    return-object v0

    .line 155
    :pswitch_2
    iget-object p0, p1, Lot9;->b:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p0, Lmz9;

    .line 158
    .line 159
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 164
    .line 165
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_3

    .line 170
    .line 171
    :try_start_2
    invoke-virtual {p0}, Lmz9;->A()Lt69;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    sget-object v1, Lf79;->a:Lf79;

    .line 176
    .line 177
    invoke-static {p1, v1}, Lov9;->u(Lt69;Lf79;)Lov9;

    .line 178
    .line 179
    .line 180
    move-result-object p1
    :try_end_2
    .catch Lp79; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    invoke-virtual {p1}, Lov9;->y()Lmy9;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lmy9;->x()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_2

    .line 190
    .line 191
    invoke-static {}, Lgf9;->b()Lfm1;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lov9;->x()Lwv9;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v1}, Lwv9;->t()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-virtual {v0, v1}, Lfm1;->d(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Lov9;->y()Lmy9;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lmy9;->t()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-virtual {v0, v1}, Lfm1;->e(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Lov9;->x()Lwv9;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v1}, Lwv9;->y()Lzv9;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lzv9;->t()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-virtual {v0, v1}, Lfm1;->f(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Lov9;->y()Lmy9;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lmy9;->A()Lpy9;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lpy9;->t()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    invoke-virtual {v0, v1}, Lfm1;->g(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Lov9;->y()Lmy9;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lmy9;->A()Lpy9;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-virtual {p1}, Lpy9;->w()Ljy9;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-static {p1}, Lmk9;->b(Ljy9;)Lff9;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    iput-object p1, v0, Lfm1;->a:Ljava/lang/Object;

    .line 264
    .line 265
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-static {p0}, Lmk9;->a(Lr0a;)Lef9;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    iput-object p0, v0, Lfm1;->f:Ljava/lang/Object;

    .line 274
    .line 275
    invoke-virtual {v0}, Lfm1;->c()Lgf9;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    goto :goto_2

    .line 280
    :cond_2
    const-string p0, "Only version 0 keys are accepted"

    .line 281
    .line 282
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :catch_2
    move-exception p0

    .line 287
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 288
    .line 289
    const-string v0, "Parsing AesCtrHmacAeadParameters failed: "

    .line 290
    .line 291
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    throw p1

    .line 295
    :cond_3
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    const-string p1, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: "

    .line 300
    .line 301
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :goto_2
    return-object v0

    .line 309
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public h(Ljava/lang/Object;Lqd8;)V
    .locals 1

    .line 1
    check-cast p1, Lm87;

    .line 2
    .line 3
    sget-object p0, Lni4;->d:Lni4;

    .line 4
    .line 5
    sget-object v0, Lm87;->Companion:Ll87;

    .line 6
    .line 7
    invoke-virtual {v0}, Ll87;->serializer()Ldo4;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0, p1}, Lni4;->b(Ldo4;Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p1, p2, Lqd8;->a:Ljava/io/FileOutputStream;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public i(Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 1
    const-string p0, "client_id"

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public j(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    check-cast p1, Landroidx/preference/ListPreference;

    .line 2
    .line 3
    iget-object p0, p1, Landroidx/preference/ListPreference;->l0:[Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/preference/ListPreference;->n0:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->G(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    aget-object v0, p0, v0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object p0, p1, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 27
    .line 28
    const p1, 0x7f1303df

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    iget-object v0, p1, Landroidx/preference/ListPreference;->n0:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->G(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ltz p1, :cond_2

    .line 43
    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    aget-object p0, p0, p1

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_2
    return-object v1
.end method

.method public k(Ldu4;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ldu4;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public l(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    sget-object p0, Lni4;->d:Lni4;

    .line 2
    .line 3
    invoke-static {p1}, Lcy0;->E(Ljava/io/InputStream;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object p1, Lm87;->Companion:Ll87;

    .line 18
    .line 19
    invoke-virtual {p1}, Ll87;->serializer()Ldo4;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1, v0}, Lni4;->a(Ldo4;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lm87;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Ldy1;

    .line 32
    .line 33
    const-string v0, "Cannot parse session configs"

    .line 34
    .line 35
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public m(Lpp0;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p0, Lnc6;

    .line 2
    .line 3
    const-class v0, Lak0;

    .line 4
    .line 5
    const-class v1, Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lpp0;->g(Lnc6;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    invoke-static {p0}, Lrs9;->e(Ljava/util/concurrent/Executor;)Lrx1;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public n(Lpt9;)Lvm4;
    .locals 2

    .line 1
    const-string p0, "KmsEnvelopeAeadKeys are only accepted with version 0, got "

    .line 2
    .line 3
    iget-object v0, p1, Lpt9;->a:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p1, Lpt9;->c:Lt69;

    .line 14
    .line 15
    sget-object v1, Lf79;->a:Lf79;

    .line 16
    .line 17
    invoke-static {v0, v1}, Ll0a;->u(Lt69;Lf79;)Ll0a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ll0a;->t()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ll0a;->x()Lo0a;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object v0, p1, Lpt9;->e:Lr0a;

    .line 32
    .line 33
    invoke-static {p0, v0}, Lki9;->a(Lo0a;Lr0a;)Ldi9;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p1, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lei9;->K(Ldi9;Ljava/lang/Integer;)Lei9;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 60
    .line 61
    const-string v0, "Parsing KmsEnvelopeAeadKey failed: "

    .line 62
    .line 63
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_1
    const-string p0, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey"

    .line 68
    .line 69
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public o(Ljava/lang/Object;Lea4;)Z
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object p0, p2, Lea4;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 13
    .line 14
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    .line 18
    .line 19
    filled-new-array {p2, p1}, [Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v1, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 27
    .line 28
    .line 29
    const/16 p1, 0x12c

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public p(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string p0, "FirebaseCrashlytics"

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "Skipping logging Crashlytics event to Firebase, no Firebase Analytics"

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p0, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public r(Lul4;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lgn4;->d(Lul4;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-float/2addr p0, p2

    .line 6
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public s(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lq34;->q(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p3}, Lq34;->q(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p2, p0, Landroid/graphics/RectF;->left:F

    .line 10
    .line 11
    float-to-int p2, p2

    .line 12
    iget p3, p1, Landroid/graphics/RectF;->left:F

    .line 13
    .line 14
    float-to-int p3, p3

    .line 15
    invoke-static {p4, p2, p3}, Led;->c(FII)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    iget p0, p0, Landroid/graphics/RectF;->right:F

    .line 26
    .line 27
    float-to-int p0, p0

    .line 28
    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 29
    .line 30
    float-to-int p1, p1

    .line 31
    invoke-static {p4, p0, p1}, Led;->c(FII)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    invoke-virtual {p5, p2, p3, p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public y(Lai5;)Lch5;
    .locals 2

    .line 1
    iget p0, p0, Lq34;->a:I

    .line 2
    .line 3
    const-class v0, Ljava/io/InputStream;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Leq7;

    .line 9
    .line 10
    const-class v1, Lsy3;

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Lai5;->a(Ljava/lang/Class;Ljava/lang/Class;)Lch5;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, p1, v0}, Leq7;-><init>(Lch5;I)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_0
    new-instance p0, Leq7;

    .line 22
    .line 23
    const-class v1, Landroid/net/Uri;

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lai5;->a(Ljava/lang/Class;Ljava/lang/Class;)Lch5;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Leq7;-><init>(Lch5;I)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
