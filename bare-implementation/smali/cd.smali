.class public Lcd;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgw6;
.implements Ltl6;
.implements Ljk8;
.implements Lji3;
.implements Lwi8;
.implements Lw23;
.implements Loy5;
.implements Lyu9;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcd;->a:I

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
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcd;->b:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcd;->c:Ljava/lang/Object;

    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance p1, Loe;

    .line 26
    .line 27
    const/4 v0, 0x6

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {p1, v0, v1}, Loe;-><init>(IZ)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcd;->b:Ljava/lang/Object;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcd;->c:Ljava/lang/Object;

    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance p1, Ls14;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-direct {p1, v0}, Ls14;-><init>(Ls26;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcd;->b:Ljava/lang/Object;

    .line 48
    .line 49
    new-instance p1, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcd;->c:Ljava/lang/Object;

    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance p1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcd;->b:Ljava/lang/Object;

    .line 66
    .line 67
    new-instance p1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcd;->c:Ljava/lang/Object;

    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 97
    iput p1, p0, Lcd;->a:I

    iput-object p2, p0, Lcd;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcd;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 75
    iput p1, p0, Lcd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfg7;)V
    .locals 3

    const/16 v0, 0x9

    iput v0, p0, Lcd;->a:I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Loe;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 87
    invoke-direct {v0, v1, v2}, Loe;-><init>(IZ)V

    .line 88
    iput-object v0, p0, Lcd;->b:Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Lcd;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Liu;Lhk;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcd;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcd;->b:Ljava/lang/Object;

    .line 96
    iput-object p2, p0, Lcd;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj87;Lfi7;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcd;->a:I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcd;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcd;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll22;)V
    .locals 2

    const/16 v0, 0xa

    iput v0, p0, Lcd;->a:I

    .line 81
    new-instance v0, Lai5;

    invoke-direct {v0, p1}, Lai5;-><init>(Ll22;)V

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance p1, Lbb2;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lbb2;-><init>(I)V

    iput-object p1, p0, Lcd;->c:Ljava/lang/Object;

    .line 84
    iput-object v0, p0, Lcd;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmi2;Lgw6;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcd;->a:I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    iput-object p1, p0, Lcd;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcd;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([BLjava/security/Provider;)V
    .locals 2

    const/16 v0, 0x10

    iput v0, p0, Lcd;->a:I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 77
    invoke-static {v0}, Lu48;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcd;->b:Ljava/lang/Object;

    .line 79
    iput-object p2, p0, Lcd;->c:Ljava/lang/Object;

    return-void

    .line 80
    :cond_0
    const-string p0, "Cannot use AES-CMAC in FIPS-mode, as BoringCrypto module is not available"

    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a([BI)[B
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-gt p2, v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcd;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/security/Provider;

    .line 8
    .line 9
    const-string v1, "AESCMAC"

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lcd;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Ljavax/crypto/spec/SecretKeySpec;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    array-length p1, p0

    .line 27
    if-ne p2, p1, :cond_0

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 36
    .line 37
    const-string p1, "outputLength must not be larger than 16"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public b(Lfi7;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p1, Lfi7;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcd;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lj87;

    .line 6
    .line 7
    iget-object p0, p0, Lcd;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lfi7;

    .line 10
    .line 11
    iget-object v2, p1, Lfi7;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lfi7;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2, v3}, Lw13;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    sget-object v4, Lj87;->x:Ll15;

    .line 22
    .line 23
    const-string v5, "Re-routing the connection to host {}"

    .line 24
    .line 25
    invoke-interface {v4, v2, v5}, Ll15;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lj87;->h(Lfi7;)Lj87;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_0
    invoke-static {v2, v3}, Lw13;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lfi7;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0, p0}, Lw13;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :cond_1
    invoke-virtual {v1, v0}, Lj87;->a(Ljava/lang/String;)Lvc7;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public d(Ls26;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcd;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ls14;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ls14;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Ls14;-><init>(Ls26;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1}, Ls26;->a()V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v1, Ls14;->d:Ls14;

    .line 26
    .line 27
    iget-object v0, v1, Ls14;->c:Ls14;

    .line 28
    .line 29
    iput-object v0, p1, Ls14;->c:Ls14;

    .line 30
    .line 31
    iget-object v0, v1, Ls14;->c:Ls14;

    .line 32
    .line 33
    iput-object p1, v0, Ls14;->d:Ls14;

    .line 34
    .line 35
    iget-object p0, p0, Lcd;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Ls14;

    .line 38
    .line 39
    iput-object p0, v1, Ls14;->d:Ls14;

    .line 40
    .line 41
    iget-object p0, p0, Ls14;->c:Ls14;

    .line 42
    .line 43
    iput-object p0, v1, Ls14;->c:Ls14;

    .line 44
    .line 45
    iput-object v1, p0, Ls14;->d:Ls14;

    .line 46
    .line 47
    iget-object p0, v1, Ls14;->d:Ls14;

    .line 48
    .line 49
    iput-object v1, p0, Ls14;->c:Ls14;

    .line 50
    .line 51
    iget-object p0, v1, Ls14;->b:Ljava/util/ArrayList;

    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 p0, 0x0

    .line 61
    :goto_1
    if-lez p0, :cond_2

    .line 62
    .line 63
    iget-object p1, v1, Ls14;->b:Ljava/util/ArrayList;

    .line 64
    .line 65
    add-int/lit8 p0, p0, -0x1

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_2
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public e(Loe;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcd;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lfg7;

    .line 4
    .line 5
    return-object p0
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcd;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Loe;

    .line 4
    .line 5
    iput-object p1, v0, Loe;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, v0, Loe;->c:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcd;->e(Loe;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcd;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcd;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcd;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lid4;

    .line 4
    .line 5
    iget-object v0, v0, Lid4;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    iget-object p0, p0, Lcd;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lca6;

    .line 12
    .line 13
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lni8;

    .line 18
    .line 19
    new-instance v1, Lj76;

    .line 20
    .line 21
    invoke-direct {v1, v0, p0}, Lj76;-><init>(Landroid/content/Context;Lni8;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public getLength()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcd;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/widget/LinearLayout;

    .line 4
    .line 5
    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lcd;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Class;

    .line 4
    .line 5
    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcd;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Ljava/lang/Object;Ljava/io/File;Lou5;)Z
    .locals 2

    .line 1
    check-cast p1, Lll6;

    .line 2
    .line 3
    iget-object v0, p0, Lcd;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lkr0;

    .line 6
    .line 7
    new-instance v1, Lor0;

    .line 8
    .line 9
    invoke-interface {p1}, Lll6;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p0, p0, Lcd;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lnr0;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Lor0;-><init>(Lnr0;Landroid/graphics/Bitmap;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, p2, p3}, Lkr0;->h(Ljava/lang/Object;Ljava/io/File;Lou5;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public i(Ls26;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcd;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ls14;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ls14;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Ls14;-><init>(Ls26;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v1, Ls14;->d:Ls14;

    .line 19
    .line 20
    iget-object p0, p0, Lcd;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Ls14;

    .line 23
    .line 24
    iget-object v2, p0, Ls14;->d:Ls14;

    .line 25
    .line 26
    iput-object v2, v1, Ls14;->d:Ls14;

    .line 27
    .line 28
    iput-object p0, v1, Ls14;->c:Ls14;

    .line 29
    .line 30
    iput-object v1, p0, Ls14;->d:Ls14;

    .line 31
    .line 32
    iget-object p0, v1, Ls14;->d:Ls14;

    .line 33
    .line 34
    iput-object v1, p0, Ls14;->c:Ls14;

    .line 35
    .line 36
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p1}, Ls26;->a()V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object p0, v1, Ls14;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    new-instance p0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p0, v1, Ls14;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    :cond_1
    iget-object p0, v1, Ls14;->b:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public k()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcd;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lgw6;

    .line 4
    .line 5
    invoke-interface {p0}, Lgw6;->k()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public l()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcd;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ls14;

    .line 4
    .line 5
    iget-object v1, v0, Ls14;->d:Ls14;

    .line 6
    .line 7
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v1, Ls14;->a:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v2, :cond_3

    .line 15
    .line 16
    iget-object v2, v1, Ls14;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_1
    if-lez v2, :cond_1

    .line 27
    .line 28
    iget-object v4, v1, Ls14;->b:Ljava/util/ArrayList;

    .line 29
    .line 30
    add-int/lit8 v2, v2, -0x1

    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    :cond_1
    if-eqz v4, :cond_2

    .line 37
    .line 38
    return-object v4

    .line 39
    :cond_2
    iget-object v2, v1, Ls14;->d:Ls14;

    .line 40
    .line 41
    iget-object v4, v1, Ls14;->c:Ls14;

    .line 42
    .line 43
    iput-object v4, v2, Ls14;->c:Ls14;

    .line 44
    .line 45
    iget-object v4, v1, Ls14;->c:Ls14;

    .line 46
    .line 47
    iput-object v2, v4, Ls14;->d:Ls14;

    .line 48
    .line 49
    iget-object v2, p0, Lcd;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    check-cast v3, Ls26;

    .line 57
    .line 58
    invoke-interface {v3}, Ls26;->a()V

    .line 59
    .line 60
    .line 61
    iget-object v1, v1, Ls14;->d:Ls14;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    return-object v4
.end method

.method public m()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcd;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwc9;

    .line 4
    .line 5
    iget-object p0, p0, Lcd;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Lwc9;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v0, Lhb9;->a:Landroid/net/Uri;

    .line 18
    .line 19
    const-class v2, Lhb9;

    .line 20
    .line 21
    monitor-enter v2

    .line 22
    :try_start_0
    sget-object v0, Lhb9;->e:Ljava/util/HashMap;

    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    sget-object v0, Lhb9;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/util/HashMap;

    .line 35
    .line 36
    const/16 v3, 0x10

    .line 37
    .line 38
    const/high16 v4, 0x3f800000    # 1.0f

    .line 39
    .line 40
    invoke-direct {v0, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lhb9;->e:Ljava/util/HashMap;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/Object;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lhb9;->j:Ljava/lang/Object;

    .line 51
    .line 52
    sget-object v0, Lhb9;->a:Landroid/net/Uri;

    .line 53
    .line 54
    new-instance v3, Leb9;

    .line 55
    .line 56
    invoke-direct {v3, v8}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p0, v0

    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :cond_0
    sget-object v0, Lhb9;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    sget-object v0, Lhb9;->e:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 78
    .line 79
    .line 80
    sget-object v0, Lhb9;->f:Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 83
    .line 84
    .line 85
    sget-object v0, Lhb9;->g:Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lhb9;->h:Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lhb9;->i:Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 98
    .line 99
    .line 100
    new-instance v0, Ljava/lang/Object;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    sput-object v0, Lhb9;->j:Ljava/lang/Object;

    .line 106
    .line 107
    :cond_1
    :goto_0
    sget-object v0, Lhb9;->j:Ljava/lang/Object;

    .line 108
    .line 109
    sget-object v3, Lhb9;->e:Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_3

    .line 116
    .line 117
    sget-object v0, Lhb9;->e:Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    check-cast p0, Ljava/lang/String;

    .line 124
    .line 125
    if-nez p0, :cond_2

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    move-object v8, p0

    .line 129
    :goto_1
    monitor-exit v2

    .line 130
    return-object v8

    .line 131
    :cond_3
    sget-object v3, Lhb9;->k:[Ljava/lang/String;

    .line 132
    .line 133
    array-length v3, v3

    .line 134
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    sget-object v2, Lhb9;->a:Landroid/net/Uri;

    .line 136
    .line 137
    filled-new-array {p0}, [Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    const/4 v6, 0x0

    .line 142
    const/4 v3, 0x0

    .line 143
    const/4 v4, 0x0

    .line 144
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-nez v1, :cond_4

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_4
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-nez v2, :cond_6

    .line 156
    .line 157
    const-class v2, Lhb9;

    .line 158
    .line 159
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 160
    :try_start_2
    sget-object v3, Lhb9;->j:Ljava/lang/Object;

    .line 161
    .line 162
    if-ne v0, v3, :cond_5

    .line 163
    .line 164
    sget-object v0, Lhb9;->e:Ljava/util/HashMap;

    .line 165
    .line 166
    invoke-virtual {v0, p0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catchall_1
    move-exception v0

    .line 171
    move-object p0, v0

    .line 172
    goto :goto_3

    .line 173
    :cond_5
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 175
    .line 176
    .line 177
    return-object v8

    .line 178
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    :try_start_4
    throw p0

    .line 180
    :cond_6
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 184
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 185
    .line 186
    .line 187
    if-eqz v2, :cond_7

    .line 188
    .line 189
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_7

    .line 194
    .line 195
    move-object v2, v8

    .line 196
    :cond_7
    const-class v3, Lhb9;

    .line 197
    .line 198
    monitor-enter v3

    .line 199
    :try_start_5
    sget-object v1, Lhb9;->j:Ljava/lang/Object;

    .line 200
    .line 201
    if-ne v0, v1, :cond_8

    .line 202
    .line 203
    sget-object v0, Lhb9;->e:Ljava/util/HashMap;

    .line 204
    .line 205
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :catchall_2
    move-exception v0

    .line 210
    move-object p0, v0

    .line 211
    goto :goto_6

    .line 212
    :cond_8
    :goto_4
    monitor-exit v3

    .line 213
    if-eqz v2, :cond_9

    .line 214
    .line 215
    return-object v2

    .line 216
    :cond_9
    :goto_5
    return-object v8

    .line 217
    :goto_6
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 218
    throw p0

    .line 219
    :catchall_3
    move-exception v0

    .line 220
    move-object p0, v0

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 222
    .line 223
    .line 224
    throw p0

    .line 225
    :goto_7
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 226
    throw p0
.end method

.method public n()Ltg9;
    .locals 3

    .line 1
    iget-object v0, p0, Lcd;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Integer;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Lcd;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lsg9;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v1, Ltg9;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object p0, p0, Lcd;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lsg9;

    .line 23
    .line 24
    invoke-direct {v1, v0, p0}, Ltg9;-><init>(ILsg9;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    const-string p0, "Variant is not set"

    .line 29
    .line 30
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    const-string p0, "Key size is not set"

    .line 35
    .line 36
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method

.method public o(I)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "Invalid key size %d; only 16-byte and 32-byte AES keys are supported"

    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcd;->b:Ljava/lang/Object;

    .line 35
    .line 36
    return-void
.end method

.method public open(Ljava/lang/String;)Lfw6;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcd;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lmi2;

    .line 7
    .line 8
    const-string v1, ":memory:"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-object v2, v0, Lmi2;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lvc2;

    .line 19
    .line 20
    iget-object v2, v2, Lvc2;->a:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v2, Lkz2;

    .line 34
    .line 35
    iget-boolean v3, v0, Lmi2;->a:Z

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    iget-boolean v3, v0, Lmi2;->b:Z

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    move v1, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v1, v5

    .line 54
    :goto_0
    invoke-direct {v2, p1, v1}, Lkz2;-><init>(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v2, Lkz2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 60
    .line 61
    .line 62
    iget-object v2, v2, Lkz2;->b:Lc00;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    :try_start_0
    invoke-virtual {v2}, Lc00;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    move v4, v5

    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 75
    :try_start_1
    iget-boolean v6, v0, Lmi2;->b:Z

    .line 76
    .line 77
    if-nez v6, :cond_7

    .line 78
    .line 79
    iget-object p0, p0, Lcd;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, Lgw6;

    .line 82
    .line 83
    invoke-interface {p0, p1}, Lgw6;->open(Ljava/lang/String;)Lfw6;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    iget-boolean v6, v0, Lmi2;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 88
    .line 89
    if-nez v6, :cond_3

    .line 90
    .line 91
    :try_start_2
    iput-boolean v4, v0, Lmi2;->b:Z

    .line 92
    .line 93
    invoke-static {v0, p0}, Lmi2;->a(Lmi2;Lfw6;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .line 95
    .line 96
    :try_start_3
    iput-boolean v5, v0, Lmi2;->b:Z

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    iput-boolean v5, v0, Lmi2;->b:Z

    .line 101
    .line 102
    throw p0

    .line 103
    :cond_3
    invoke-static {p0}, Lmi2;->f(Lfw6;)V

    .line 104
    .line 105
    .line 106
    iget-object v5, v0, Lmi2;->c:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v5, Lvc2;

    .line 109
    .line 110
    iget-object v5, v5, Lvc2;->g:Lco6;

    .line 111
    .line 112
    sget-object v6, Lco6;->c:Lco6;

    .line 113
    .line 114
    if-ne v5, v6, :cond_4

    .line 115
    .line 116
    const-string v5, "PRAGMA synchronous = NORMAL"

    .line 117
    .line 118
    invoke-static {v5, p0}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    const-string v5, "PRAGMA synchronous = FULL"

    .line 123
    .line 124
    invoke-static {v5, p0}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 125
    .line 126
    .line 127
    :goto_2
    iget-object v0, v0, Lmi2;->d:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Lgu2;

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Lgu2;->t(Lfw6;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 132
    .line 133
    .line 134
    :goto_3
    if-eqz v2, :cond_6

    .line 135
    .line 136
    :try_start_4
    iget-object v0, v2, Lc00;->c:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 139
    .line 140
    if-nez v0, :cond_5

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 144
    .line 145
    .line 146
    :try_start_6
    iput-object v3, v2, Lc00;->c:Ljava/lang/Object;

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :catchall_2
    move-exception p0

    .line 150
    iput-object v3, v2, Lc00;->c:Ljava/lang/Object;

    .line 151
    .line 152
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 153
    :cond_6
    :goto_4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    .line 155
    .line 156
    return-object p0

    .line 157
    :cond_7
    :try_start_7
    const-string p0, "Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?"

    .line 158
    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 165
    :catchall_3
    move-exception p0

    .line 166
    if-eqz v2, :cond_9

    .line 167
    .line 168
    :try_start_8
    iget-object v0, v2, Lc00;->c:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Ljava/nio/channels/FileChannel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 171
    .line 172
    if-nez v0, :cond_8

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_8
    :try_start_9
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 176
    .line 177
    .line 178
    :try_start_a
    iput-object v3, v2, Lc00;->c:Ljava/lang/Object;

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :catchall_4
    move-exception p0

    .line 182
    iput-object v3, v2, Lc00;->c:Ljava/lang/Object;

    .line 183
    .line 184
    throw p0

    .line 185
    :cond_9
    :goto_5
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 186
    :catchall_5
    move-exception p0

    .line 187
    :goto_6
    if-eqz v4, :cond_a

    .line 188
    .line 189
    :try_start_b
    throw p0

    .line 190
    :catchall_6
    move-exception p0

    .line 191
    goto :goto_7

    .line 192
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 193
    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v3, "Unable to open database \'"

    .line 197
    .line 198
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string p1, "\'. Was a proper path / name used in Room\'s database builder?"

    .line 205
    .line 206
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 217
    :goto_7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 218
    .line 219
    .line 220
    throw p0
.end method

.method public q(Lou5;)I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcd;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public t(Lli3;Lkv1;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lpi3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lpi3;

    .line 7
    .line 8
    iget v1, v0, Lpi3;->b:I

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
    iput v1, v0, Lpi3;->b:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lpi3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lpi3;-><init>(Lcd;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lpi3;->a:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lpi3;->b:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    sget-object v5, Lyx1;->a:Lyx1;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v3, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :cond_2
    iget p1, v0, Lpi3;->f:I

    .line 51
    .line 52
    iget-object v1, v0, Lpi3;->e:Lsw6;

    .line 53
    .line 54
    iget-object v3, v0, Lpi3;->d:Lli3;

    .line 55
    .line 56
    :try_start_0
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    move v6, p1

    .line 60
    move-object p1, v3

    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_4

    .line 64
    :cond_3
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lsw6;

    .line 68
    .line 69
    invoke-interface {v0}, Ljv1;->getContext()Lox1;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {v1, p1, p2}, Lsw6;-><init>(Lli3;Lox1;)V

    .line 74
    .line 75
    .line 76
    :try_start_1
    iget-object p2, p0, Lcd;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p2, Llb2;

    .line 79
    .line 80
    iput-object p1, v0, Lpi3;->d:Lli3;

    .line 81
    .line 82
    iput-object v1, v0, Lpi3;->e:Lsw6;

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    iput v6, v0, Lpi3;->f:I

    .line 86
    .line 87
    iput v3, v0, Lpi3;->b:I

    .line 88
    .line 89
    invoke-virtual {p2, v1, v0}, Llb2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    if-ne p2, v5, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lkv1;->releaseIntercepted()V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcd;->c:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Lji3;

    .line 102
    .line 103
    iput-object v4, v0, Lpi3;->d:Lli3;

    .line 104
    .line 105
    iput-object v4, v0, Lpi3;->e:Lsw6;

    .line 106
    .line 107
    iput v6, v0, Lpi3;->f:I

    .line 108
    .line 109
    iput v2, v0, Lpi3;->b:I

    .line 110
    .line 111
    invoke-interface {p0, p1, v0}, Lji3;->t(Lli3;Lkv1;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-ne p0, v5, :cond_5

    .line 116
    .line 117
    :goto_2
    return-object v5

    .line 118
    :cond_5
    :goto_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 119
    .line 120
    return-object p0

    .line 121
    :goto_4
    invoke-virtual {v1}, Lkv1;->releaseIntercepted()V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcd;->a:I

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "GroupedLinkedMap( "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcd;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Ls14;

    .line 21
    .line 22
    iget-object v1, p0, Ls14;->c:Ls14;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    const/16 v3, 0x7b

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v3, v1, Ls14;->a:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v3, 0x3a

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v3, v1, Ls14;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    move v3, v2

    .line 57
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, "}, "

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v1, v1, Ls14;->c:Ls14;

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    if-eqz v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    add-int/lit8 p0, p0, -0x2

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :cond_2
    const-string p0, " )"

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
