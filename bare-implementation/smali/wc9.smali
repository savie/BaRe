.class public final Lwc9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lk58;
.implements Lzo7;
.implements Ljk8;
.implements Lwi8;
.implements Lw23;


# static fields
.field public static d:Lwc9;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, Lwc9;->a:I

    sparse-switch p1, :sswitch_data_0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lwc9;->b:Ljava/lang/Object;

    iput-object p1, p0, Lwc9;->c:Ljava/lang/Object;

    return-void

    .line 55
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 56
    :sswitch_1
    new-instance p1, Lb05;

    .line 57
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Loe;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loe;-><init>(I)V

    iput-object v0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lwc9;->c:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 53
    iput p1, p0, Lwc9;->a:I

    iput-object p2, p0, Lwc9;->b:Ljava/lang/Object;

    iput-object p3, p0, Lwc9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iput p2, p0, Lwc9;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lwc9;->b:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance p2, Ltc9;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p2, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lwc9;->c:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object p1, Lhb9;->a:Landroid/net/Uri;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lwc9;->b:Ljava/lang/Object;

    .line 41
    .line 42
    const p2, 0x7f130198

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lwc9;->c:Ljava/lang/Object;

    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lf66;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lwc9;->a:I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc9;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lua9;)V
    .locals 0

    const/16 p3, 0x9

    iput p3, p0, Lwc9;->a:I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lwc9;->b:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, Lwc9;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llu5;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lwc9;->a:I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lwc9;->b:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lwc9;->c:Ljava/lang/Object;

    .line 67
    new-instance v0, Llb;

    invoke-direct {v0, p0}, Llb;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Llu5;->a(Lig2;)V

    return-void
.end method


# virtual methods
.method public a(ZLro;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lwc9;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lae4;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lae4;->b(Z)Lcom/google/android/gms/tasks/Task;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance p1, Lmb;

    .line 18
    .line 19
    invoke-direct {p1, p2}, Lmb;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance p1, Lnb;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {p1, p2, v0}, Lnb;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    invoke-virtual {p2, p0}, Lro;->q(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public b(Lvb8;Lxn5;Ljava/util/Map;)Lwi8;
    .locals 1

    .line 1
    iget-object v0, p0, Lwc9;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb05;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lb05;->b(Lvb8;Lxn5;Ljava/util/Map;)Lwi8;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    invoke-interface {p3}, Lwi8;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object p3

    .line 18
    :cond_0
    iget-object p0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Loe;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lvb8;->getType()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    invoke-interface {p3}, Lwi8;->getType()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_1
    invoke-virtual {p0, p1, v0}, Loe;->g(Lvb8;Ljava/lang/Class;)Lxv1;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Loe;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lty3;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lty3;->f(Lxv1;)Law1;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 p0, 0x0

    .line 51
    :goto_0
    invoke-interface {p2}, Lxn5;->W()Lpn5;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Lmc4;

    .line 56
    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    invoke-interface {p0, p2}, Law1;->b(Lmc4;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {p1}, Lvb8;->getType()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p3, :cond_3

    .line 68
    .line 69
    invoke-interface {p3, p0}, Lwi8;->setValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    new-instance p2, Lgh;

    .line 73
    .line 74
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p2, Lgh;->c:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object p3, p2, Lgh;->a:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p0, p2, Lgh;->b:Ljava/lang/Object;

    .line 82
    .line 83
    return-object p2

    .line 84
    :cond_4
    return-object p3
.end method

.method public c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwi8;

    .line 4
    .line 5
    invoke-interface {p0}, Lwi8;->c()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public d(Lvb8;Ljava/lang/Object;Lxn5;Ljava/util/Map;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lwc9;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb05;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lb05;->d(Lvb8;Ljava/lang/Object;Lxn5;Ljava/util/Map;)Z

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Loe;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lvb8;->getType()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    invoke-virtual {p0, p1, p4}, Loe;->g(Lvb8;Ljava/lang/Class;)Lxv1;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Loe;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lty3;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lty3;->f(Lxv1;)Law1;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    :goto_0
    invoke-interface {p3}, Lxn5;->W()Lpn5;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lev5;

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-interface {p0, p1, p2}, Law1;->a(Lev5;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_1
    const/4 p0, 0x0

    .line 52
    return p0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lwc9;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/content/res/Resources;

    .line 8
    .line 9
    const-string v1, "string"

    .line 10
    .line 11
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public f()Ldp9;
    .locals 3

    .line 1
    iget-object v0, p0, Lwc9;->b:Ljava/lang/Object;

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
    iget-object v2, p0, Lwc9;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lcp9;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v1, Ldp9;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object p0, p0, Lwc9;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lcp9;

    .line 23
    .line 24
    invoke-direct {v1, v0, p0}, Ldp9;-><init>(ILcp9;)V

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

.method public g(I)V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x30

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x40

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "Invalid key size %d; only 32-byte, 48-byte and 64-byte AES-SIV keys are supported"

    .line 25
    .line 26
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lwc9;->b:Ljava/lang/Object;

    .line 39
    .line 40
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lca6;

    .line 4
    .line 5
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lf10;

    .line 10
    .line 11
    iget-object p0, p0, Lwc9;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lid4;

    .line 14
    .line 15
    iget-object p0, p0, Lid4;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lox1;

    .line 18
    .line 19
    new-instance v1, Lfj6;

    .line 20
    .line 21
    invoke-direct {v1, v0, p0}, Lfj6;-><init>(Lf10;Lox1;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public getLength()I
    .locals 0

    .line 1
    iget-object p0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwi8;

    .line 4
    .line 5
    invoke-interface {p0}, Lwi8;->getLength()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/widget/TextView;

    .line 4
    .line 5
    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lwc9;->c:Ljava/lang/Object;

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
    iget-object p0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwi8;

    .line 4
    .line 5
    invoke-interface {p0}, Lwi8;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public h(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh59;

    .line 4
    .line 5
    iget-object p0, p0, Lwc9;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    .line 9
    const-string v1, "completion source cannot be null"

    .line 10
    .line 11
    invoke-static {p0, v1}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_d

    .line 15
    .line 16
    iget-object p1, v0, Lh59;->k:Lwc9;

    .line 17
    .line 18
    if-eqz p1, :cond_8

    .line 19
    .line 20
    iget-object p1, v0, Lh59;->c:Lcom/google/firebase/FirebaseApp;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, v0, Lh59;->k:Lwc9;

    .line 27
    .line 28
    const-string v1, "reauthenticateWithCredential"

    .line 29
    .line 30
    invoke-virtual {v0}, Lh59;->a()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    const-string v1, "reauthenticateWithCredentialWithData"

    .line 41
    .line 42
    invoke-virtual {v0}, Lh59;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :cond_0
    sget-object v0, Ly49;->a:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object v0, Ly49;->a:Landroid/util/SparseArray;

    .line 59
    .line 60
    const/16 v1, 0x42b6

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/util/Pair;

    .line 67
    .line 68
    new-instance v1, Lpf3;

    .line 69
    .line 70
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Ljava/lang/String;

    .line 73
    .line 74
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Ljava/lang/String;

    .line 77
    .line 78
    iget-object v3, p2, Lwc9;->c:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v3, Ljava/util/List;

    .line 81
    .line 82
    invoke-static {v3}, Lod2;->A(Ljava/util/List;)Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    new-instance v5, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Luh5;

    .line 106
    .line 107
    instance-of v7, v6, Lyz5;

    .line 108
    .line 109
    if-eqz v7, :cond_1

    .line 110
    .line 111
    check-cast v6, Lyz5;

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    invoke-static {v3}, Lod2;->A(Ljava/util/List;)Ljava/util/ArrayList;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    new-instance v5, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_4

    .line 135
    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, Luh5;

    .line 141
    .line 142
    instance-of v7, v6, Lv88;

    .line 143
    .line 144
    if-eqz v7, :cond_3

    .line 145
    .line 146
    check-cast v6, Lv88;

    .line 147
    .line 148
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    invoke-static {v3}, Lod2;->A(Ljava/util/List;)Ljava/util/ArrayList;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    iget-object p2, p2, Lwc9;->b:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p2, Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {p2}, Lly8;->e(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance p2, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    new-instance v4, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_7

    .line 182
    .line 183
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, Luh5;

    .line 188
    .line 189
    instance-of v6, v5, Lyz5;

    .line 190
    .line 191
    if-eqz v6, :cond_5

    .line 192
    .line 193
    check-cast v5, Lyz5;

    .line 194
    .line 195
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_5
    instance-of v6, v5, Lv88;

    .line 200
    .line 201
    if-eqz v6, :cond_6

    .line 202
    .line 203
    check-cast v5, Lv88;

    .line 204
    .line 205
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_6
    invoke-virtual {v5}, Luh5;->n()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    const-string p1, "MultiFactorInfo must be either PhoneMultiFactorInfo or TotpMultiFactorInfo. The factorId of this MultiFactorInfo: "

    .line 214
    .line 215
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_7
    iget-object p1, p1, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-direct {v1, v2, v0}, Lmf3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_8
    iget-object p1, v0, Lh59;->j:Ld80;

    .line 240
    .line 241
    if-eqz p1, :cond_c

    .line 242
    .line 243
    sget-object p1, Ly49;->a:Landroid/util/SparseArray;

    .line 244
    .line 245
    iget p1, p2, Lcom/google/android/gms/common/api/Status;->a:I

    .line 246
    .line 247
    const/16 v0, 0x4274

    .line 248
    .line 249
    if-eq p1, v0, :cond_a

    .line 250
    .line 251
    const/16 v0, 0x426f

    .line 252
    .line 253
    if-eq p1, v0, :cond_a

    .line 254
    .line 255
    const/16 v0, 0x4281

    .line 256
    .line 257
    if-ne p1, v0, :cond_9

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_9
    invoke-static {p2}, Ly49;->a(Lcom/google/android/gms/common/api/Status;)Lkg3;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    goto :goto_5

    .line 265
    :cond_a
    :goto_3
    sget-object v0, Ly49;->a:Landroid/util/SparseArray;

    .line 266
    .line 267
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Landroid/util/Pair;

    .line 272
    .line 273
    if-eqz v0, :cond_b

    .line 274
    .line 275
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v0, Ljava/lang/String;

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_b
    const-string v0, "An internal error has occurred."

    .line 281
    .line 282
    :goto_4
    invoke-static {v0, p2}, Ly49;->c(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    new-instance v0, Lrf3;

    .line 287
    .line 288
    invoke-static {p1}, Ly49;->b(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-direct {v0, p1, p2}, Lmf3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    move-object p1, v0

    .line 296
    :goto_5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_c
    invoke-static {p2}, Ly49;->a(Lcom/google/android/gms/common/api/Status;)Lkg3;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :cond_d
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    return-void
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    sget-boolean v2, Ljb9;->b:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_0
    const-class v2, Ljb9;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    sget-boolean v3, Ljb9;->b:Z

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    monitor-exit v2

    .line 21
    goto :goto_3

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :cond_1
    const/4 v3, 0x1

    .line 26
    move v4, v3

    .line 27
    :goto_0
    const/4 v5, 0x2

    .line 28
    const/4 v6, 0x0

    .line 29
    if-gt v4, v5, :cond_5

    .line 30
    .line 31
    sget-object v5, Ljb9;->a:Landroid/os/UserManager;

    .line 32
    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    const-class v5, Landroid/os/UserManager;

    .line 36
    .line 37
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Landroid/os/UserManager;

    .line 42
    .line 43
    sput-object v5, Ljb9;->a:Landroid/os/UserManager;

    .line 44
    .line 45
    :cond_2
    sget-object v5, Ljb9;->a:Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    if-nez v5, :cond_3

    .line 48
    .line 49
    move v6, v3

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-nez v7, :cond_4

    .line 56
    .line 57
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v5, v7}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    .line 62
    .line 63
    .line 64
    move-result v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    :cond_4
    move v6, v3

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v5

    .line 70
    :try_start_2
    const-string v6, "DirectBootUtils"

    .line 71
    .line 72
    const-string v7, "Failed to check if user is unlocked."

    .line 73
    .line 74
    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    sput-object v1, Ljb9;->a:Landroid/os/UserManager;

    .line 78
    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    :goto_1
    if-eqz v6, :cond_6

    .line 83
    .line 84
    sput-object v1, Ljb9;->a:Landroid/os/UserManager;

    .line 85
    .line 86
    :cond_6
    :goto_2
    if-eqz v6, :cond_7

    .line 87
    .line 88
    sput-boolean v3, Ljb9;->b:Z

    .line 89
    .line 90
    :cond_7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    if-nez v6, :cond_8

    .line 92
    .line 93
    goto :goto_7

    .line 94
    :cond_8
    :goto_3
    :try_start_3
    new-instance v0, Lcd;

    .line 95
    .line 96
    const/16 v2, 0xe

    .line 97
    .line 98
    invoke-direct {v0, v2, p0, p1}, Lcd;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 99
    .line 100
    .line 101
    :try_start_4
    invoke-virtual {v0}, Lcd;->m()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    .line 105
    goto :goto_4

    .line 106
    :catch_1
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 107
    .line 108
    .line 109
    move-result-wide v2
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    .line 110
    :try_start_6
    invoke-virtual {v0}, Lcd;->m()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 114
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    .line 116
    .line 117
    :goto_4
    check-cast p0, Ljava/lang/String;

    .line 118
    .line 119
    return-object p0

    .line 120
    :catch_2
    move-exception p0

    .line 121
    goto :goto_5

    .line 122
    :catch_3
    move-exception p0

    .line 123
    goto :goto_5

    .line 124
    :catch_4
    move-exception p0

    .line 125
    goto :goto_5

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    .line 129
    .line 130
    throw p0
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2

    .line 131
    :goto_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const-string v0, "Unable to read GServices for: "

    .line 136
    .line 137
    const-string v2, "GservicesLoader"

    .line 138
    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .line 145
    .line 146
    return-object v1

    .line 147
    :goto_6
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 148
    throw p0

    .line 149
    :cond_9
    :goto_7
    return-object v1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwi8;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lwi8;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lwc9;->a:I

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
    iget-object v0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lej7;

    .line 14
    .line 15
    const-string v1, "[ "

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    const/16 v2, 0x9

    .line 21
    .line 22
    if-ge v0, v2, :cond_0

    .line 23
    .line 24
    invoke-static {v1}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lwc9;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lej7;

    .line 31
    .line 32
    iget-object v2, v2, Lej7;->n:[F

    .line 33
    .line 34
    aget v2, v2, v0

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " "

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "] "

    .line 52
    .line 53
    invoke-static {v1, v0}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object p0, p0, Lwc9;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Lej7;

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
