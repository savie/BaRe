.class public final Lvk9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lo53;
.implements Lwg7;
.implements Lt22;
.implements Lza2;
.implements Lc33;
.implements Lyi6;
.implements Ldh5;
.implements Lgl2;
.implements Lj58;
.implements Lm88;
.implements Lgg8;
.implements Lf59;
.implements Lh9;


# static fields
.field public static final c:Lfa9;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfa9;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lvk9;->c:Lfa9;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    iput p1, p0, Lvk9;->a:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lz28;

    .line 7
    .line 8
    sget v0, Lpg9;->a:I

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [Ldl9;

    .line 12
    .line 13
    sget-object v1, Llv1;->n:Llv1;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    sget-object v1, Lvk9;->c:Lfa9;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    const/16 v1, 0x14

    .line 24
    .line 25
    invoke-direct {p1, v0, v1}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    iput-object p1, p0, Lvk9;->b:Ljava/lang/Object;

    .line 34
    .line 35
    return-void

    .line 36
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lyg5;

    .line 40
    .line 41
    const-wide/16 v0, 0x1f4

    .line 42
    .line 43
    invoke-direct {p1, v0, v1}, Lf62;-><init>(J)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lvk9;->b:Ljava/lang/Object;

    .line 47
    .line 48
    return-void

    .line 49
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance p1, Ljava/util/ArrayDeque;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lvk9;->b:Ljava/lang/Object;

    .line 58
    .line 59
    return-void

    .line 60
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance p1, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lvk9;->b:Ljava/lang/Object;

    .line 69
    .line 70
    return-void

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 72
    iput p1, p0, Lvk9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 71
    iput p2, p0, Lvk9;->a:I

    iput-object p1, p0, Lvk9;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lx44;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lvk9;->a:I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget-object p1, p1, Lx44;->n:Ljava/lang/Object;

    check-cast p1, Lvq3;

    .line 75
    iput-object p1, p0, Lvk9;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Llx1;)Llx1;
    .locals 1

    .line 1
    instance-of v0, p1, Lvi6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance v0, Lfa;

    .line 7
    .line 8
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lc95;

    .line 11
    .line 12
    invoke-virtual {p0}, Lc95;->l()F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    neg-float p0, p0

    .line 17
    invoke-direct {v0, p0, p1}, Lfa;-><init>(FLlx1;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lxw3;

    .line 4
    .line 5
    check-cast p1, Lkm6;

    .line 6
    .line 7
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    .line 9
    new-instance v0, Lke4;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Lke4;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Laz3;->p()Landroid/os/IInterface;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lw84;

    .line 19
    .line 20
    check-cast p1, Lu84;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v1, "com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService"

    .line 27
    .line 28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget v1, Lya9;->a:I

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, p2, v1}, Lxw3;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x2

    .line 45
    invoke-virtual {p1, p2, p0}, Lu84;->a(Landroid/os/Parcel;I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Ldx2;

    .line 2
    .line 3
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lxw2;

    .line 6
    .line 7
    iget-object v1, p0, Lxw2;->a:Ljy3;

    .line 8
    .line 9
    iget-object v2, p0, Lxw2;->b:Ljy3;

    .line 10
    .line 11
    iget-object v3, p0, Lxw2;->c:Ljy3;

    .line 12
    .line 13
    iget-object v4, p0, Lxw2;->d:Ljy3;

    .line 14
    .line 15
    iget-object v5, p0, Lxw2;->e:Lzw2;

    .line 16
    .line 17
    iget-object v6, p0, Lxw2;->f:Lzw2;

    .line 18
    .line 19
    iget-object v7, p0, Lxw2;->g:Ll22;

    .line 20
    .line 21
    invoke-direct/range {v0 .. v7}, Ldx2;-><init>(Ljy3;Ljy3;Ljy3;Ljy3;Lzw2;Lzw2;Ll22;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d([B[B)[B
    .locals 5

    .line 1
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lk48;

    .line 4
    .line 5
    iget-object p0, p0, Lk48;->b:Ljava/util/List;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, Li48;

    .line 28
    .line 29
    iget v2, v2, Li48;->d:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v2, v1

    .line 58
    check-cast v2, Li48;

    .line 59
    .line 60
    invoke-virtual {v2}, Li48;->a()[B

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    array-length v3, p1

    .line 65
    array-length v4, v2

    .line 66
    if-lt v3, v4, :cond_2

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    array-length v4, v2

    .line 70
    invoke-static {p1, v3, v4}, Lx50;->k0([BII)[B

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :catch_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Li48;

    .line 99
    .line 100
    :try_start_0
    new-instance v1, Lla;

    .line 101
    .line 102
    iget-object v2, v0, Li48;->b:[B

    .line 103
    .line 104
    invoke-direct {v1, v2}, Lla;-><init>([B)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Li48;->a()[B

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    array-length v0, v0

    .line 112
    array-length v2, p1

    .line 113
    invoke-static {p1, v0, v2}, Lx50;->k0([BII)[B

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v1, v0, p2}, Lla;->b([B[B)[B

    .line 118
    .line 119
    .line 120
    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-object p0

    .line 122
    :cond_4
    new-instance p0, Ljavax/crypto/AEADBadTagException;

    .line 123
    .line 124
    const-string p1, "Deterministic decryption failed"

    .line 125
    .line 126
    invoke-direct {p0, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ldt;->Y:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lil0;->A(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->k0()Lg20;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lg20;->b:Lx00;

    .line 16
    .line 17
    iget-object v1, v1, Lx00;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ltf2;

    .line 20
    .line 21
    iget-object v1, v1, Ltf2;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->g0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-wide/16 v2, 0x12c

    .line 34
    .line 35
    invoke-static {v1, v2, v3}, Lsz8;->F(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->l0()Lr20;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    iget-object p0, p0, Lgm7;->e:Lfm7;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iput-boolean v0, v1, Lr20;->o:Z

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    const/16 v3, 0x1f

    .line 56
    .line 57
    invoke-static {p0, v2, v2, v0, v3}, Lfm7;->a(Lfm7;Ljava/util/List;Ljava/util/Set;ZI)Lfm7;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iput-object p0, v1, Lr20;->q:Lfm7;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    const-string p0, "mAdapter"

    .line 65
    .line 66
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v2
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Ldt;->Y:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lil0;->A(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->k0()Lg20;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lg20;->b:Lx00;

    .line 16
    .line 17
    iget-object v1, v1, Lx00;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ltf2;

    .line 20
    .line 21
    iget-object v1, v1, Ltf2;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->g0()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-static {v1, v2}, Lsz8;->e0(Landroid/view/View;Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->l0()Lr20;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 44
    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    iget-object p0, p0, Lgm7;->e:Lfm7;

    .line 48
    .line 49
    iget-object p0, p0, Lfm7;->b:Ljava/util/Set;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iput-boolean v0, v1, Lr20;->o:Z

    .line 55
    .line 56
    iget-object v0, v1, Lr20;->q:Lfm7;

    .line 57
    .line 58
    iget-object v0, v0, Lfm7;->a:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {v1, v0, p0}, Lr20;->m(Ljava/util/List;Ljava/util/Set;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    const-string p0, "mAdapter"

    .line 65
    .line 66
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    throw p0
.end method

.method public g(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwj6;

    .line 4
    .line 5
    iget-object v0, p0, Lwj6;->i:Lu00;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v3, "App check token changed, triggering app check token refresh"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-virtual {v0, v3, v4, v2}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lwj6;->c:Lwz5;

    .line 17
    .line 18
    iget-object v0, p0, Lwz5;->y:Lu00;

    .line 19
    .line 20
    const-string v2, "App check token refreshed."

    .line 21
    .line 22
    new-array v3, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0, v2, v4, v3}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lwz5;->s:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0}, Lwz5;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lwz5;->i(Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lwz5;->a()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const-string v0, "Must be connected to send unauth."

    .line 46
    .line 47
    new-array v2, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {p1, v0, v2}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lwz5;->s:Ljava/lang/String;

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move p1, v1

    .line 59
    :goto_0
    const-string v0, "App check token must not be set."

    .line 60
    .line 61
    new-array v2, v1, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {p1, v0, v2}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const-string p1, "unappcheck"

    .line 67
    .line 68
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 69
    .line 70
    invoke-virtual {p0, p1, v1, v0, v4}, Lwz5;->n(Ljava/lang/String;ZLjava/util/Map;Lqz5;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;

    .line 4
    .line 5
    check-cast p1, Lg9;

    .line 6
    .line 7
    iget-object v0, p1, Lg9;->b:Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "ProxyBillingActivityV2"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lta9;->e(Landroid/content/Intent;Ljava/lang/String;)Lyq0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v2, v2, Lyq0;->a:I

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->e:Landroid/os/ResultReceiver;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-virtual {v3, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget p1, p1, Lg9;->a:I

    .line 33
    .line 34
    const/4 v0, -0x1

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "Alternative billing only dialog finished with resultCode "

    .line 42
    .line 43
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, " and billing\'s responseCode: "

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public i([B[B)[B
    .locals 5

    .line 1
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lk48;

    .line 4
    .line 5
    invoke-virtual {p0}, Lk48;->a()Li48;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Li48;->a()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lla;

    .line 14
    .line 15
    iget-object p0, p0, Li48;->b:[B

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lla;-><init>([B)V

    .line 18
    .line 19
    .line 20
    filled-new-array {p2, p1}, [[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v1, p0}, Lla;->h([[B)[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    array-length p2, p0

    .line 29
    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/16 v2, 0x8

    .line 34
    .line 35
    aget-byte v3, p2, v2

    .line 36
    .line 37
    and-int/lit8 v3, v3, 0x7f

    .line 38
    .line 39
    int-to-byte v3, v3

    .line 40
    aput-byte v3, p2, v2

    .line 41
    .line 42
    const/16 v2, 0xc

    .line 43
    .line 44
    aget-byte v3, p2, v2

    .line 45
    .line 46
    and-int/lit8 v3, v3, 0x7f

    .line 47
    .line 48
    int-to-byte v3, v3

    .line 49
    aput-byte v3, p2, v2

    .line 50
    .line 51
    const-string v2, "AES/CTR/NoPadding"

    .line 52
    .line 53
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 58
    .line 59
    iget-object v1, v1, Lla;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, [B

    .line 62
    .line 63
    const-string v4, "AES"

    .line 64
    .line 65
    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 69
    .line 70
    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 71
    .line 72
    .line 73
    const/4 p2, 0x1

    .line 74
    invoke-virtual {v2, p2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {p0, p1}, Lx50;->u0([B[B)[B

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v0, p0}, Lx50;->u0([B[B)[B

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method

.method public j(Landroid/net/Uri;)Lra2;
    .locals 2

    .line 1
    new-instance v0, Lg60;

    .line 2
    .line 3
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/content/ContentResolver;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, p1, v1}, Lg60;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public k(F)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lvk9;->n()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 14
    .line 15
    float-to-int p1, p1

    .line 16
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->j(I)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public l()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public m()F
    .locals 0

    .line 1
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    neg-float p0, p0

    .line 10
    return p0
.end method

.method public n()V
    .locals 0

    .line 1
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public o(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;I)Ltw5;
    .locals 6

    .line 1
    instance-of v0, p2, Lat2;

    .line 2
    .line 3
    const-class v1, Lat2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ldr;

    .line 9
    .line 10
    const-class v3, Ltt2;

    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2}, Ldr;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    instance-of v0, p2, Lgt2;

    .line 18
    .line 19
    const-class v3, Lgt2;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Ldr;

    .line 24
    .line 25
    const-class v1, Lit2;

    .line 26
    .line 27
    invoke-direct {v0, v1, v3, v2}, Ldr;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v0, p2, Lct2;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    new-instance v0, Ldr;

    .line 36
    .line 37
    const-class v1, Let2;

    .line 38
    .line 39
    const-class v3, Lct2;

    .line 40
    .line 41
    invoke-direct {v0, v1, v3, v2}, Ldr;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    instance-of v0, p2, Lpt2;

    .line 46
    .line 47
    const-class v4, Lmt2;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    new-instance v0, Ldr;

    .line 52
    .line 53
    const-class v1, Lrt2;

    .line 54
    .line 55
    const-class v2, Lpt2;

    .line 56
    .line 57
    invoke-direct {v0, v1, v2, v4}, Ldr;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    instance-of v0, p2, Ljt2;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    new-instance v0, Ldr;

    .line 66
    .line 67
    const-class v1, Llt2;

    .line 68
    .line 69
    const-class v2, Ljt2;

    .line 70
    .line 71
    invoke-direct {v0, v1, v2, v3}, Ldr;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    instance-of v0, p2, Lut2;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    new-instance v0, Ldr;

    .line 80
    .line 81
    const-class v2, Lwt2;

    .line 82
    .line 83
    const-class v3, Lut2;

    .line 84
    .line 85
    invoke-direct {v0, v2, v3, v1}, Ldr;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    instance-of v0, p2, Lmt2;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    new-instance v0, Ldr;

    .line 94
    .line 95
    const-class v1, Lot2;

    .line 96
    .line 97
    invoke-direct {v0, v1, v4, v2}, Ldr;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    instance-of v0, p2, Lu70;

    .line 102
    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    new-instance v0, Ldr;

    .line 106
    .line 107
    const-class v1, Ly70;

    .line 108
    .line 109
    const-class v3, Lu70;

    .line 110
    .line 111
    invoke-direct {v0, v1, v3, v2}, Ldr;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    instance-of v0, p2, Lq08;

    .line 116
    .line 117
    if-eqz v0, :cond_b

    .line 118
    .line 119
    new-instance v0, Ldr;

    .line 120
    .line 121
    const-class v1, Ls18;

    .line 122
    .line 123
    const-class v3, Lq08;

    .line 124
    .line 125
    invoke-direct {v0, v1, v3, v2}, Ldr;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 126
    .line 127
    .line 128
    :goto_0
    iget-object v1, v0, Ldr;->d:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v1, Ljava/lang/Class;

    .line 131
    .line 132
    iget-object v2, v0, Ldr;->b:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v2, Ljava/lang/Class;

    .line 135
    .line 136
    iget-object v0, v0, Ldr;->c:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Ljava/lang/Class;

    .line 139
    .line 140
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 141
    .line 142
    const-class v4, Lvq3;

    .line 143
    .line 144
    const-class v5, Ljava/lang/reflect/Constructor;

    .line 145
    .line 146
    if-eqz v2, :cond_8

    .line 147
    .line 148
    filled-new-array {v5, v0, v2, v4, v3}, [Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    goto :goto_1

    .line 157
    :cond_8
    filled-new-array {v5, v0, v4, v3}, [Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    :goto_1
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_9

    .line 170
    .line 171
    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 173
    .line 174
    .line 175
    :cond_9
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p0, Lvq3;

    .line 178
    .line 179
    if-eqz p3, :cond_a

    .line 180
    .line 181
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object p4

    .line 185
    filled-new-array {p1, p2, p3, p0, p4}, [Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    check-cast p0, Ltw5;

    .line 194
    .line 195
    return-object p0

    .line 196
    :cond_a
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object p3

    .line 200
    filled-new-array {p1, p2, p0, p3}, [Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    check-cast p0, Ltw5;

    .line 209
    .line 210
    return-object p0

    .line 211
    :cond_b
    new-instance p0, Lkd5;

    .line 212
    .line 213
    const-string p1, "Annotation %s not supported"

    .line 214
    .line 215
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-direct {p0, p1, p2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    throw p0
.end method

.method public onError(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lc12;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lo21;

    .line 9
    .line 10
    invoke-virtual {p0}, Lo21;->t()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Lho5;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lbn6;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lk12;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lo21;

    .line 9
    .line 10
    invoke-virtual {p0}, Lo21;->t()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Lho5;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public p(Lk31;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    iget v0, p1, Lk31;->a:I

    .line 6
    .line 7
    iget-object v3, p1, Lk31;->b:Lsb4;

    .line 8
    .line 9
    iget-object v4, p1, Lk31;->d:Lm61;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x4

    .line 13
    const/4 v5, 0x2

    .line 14
    if-eq v0, v5, :cond_1

    .line 15
    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v6, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move v6, v1

    .line 24
    :goto_1
    const-string v7, "Only child changes supported for tracking"

    .line 25
    .line 26
    invoke-static {v7, v6}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    sget-object v6, Lm61;->d:Lm61;

    .line 30
    .line 31
    invoke-virtual {v4, v6}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    xor-int/2addr v6, v1

    .line 36
    invoke-static {v6}, Lzm5;->s(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_7

    .line 44
    .line 45
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Lk31;

    .line 50
    .line 51
    iget v7, v6, Lk31;->a:I

    .line 52
    .line 53
    move-object v8, v6

    .line 54
    iget-object v6, v8, Lk31;->c:Lsb4;

    .line 55
    .line 56
    if-ne v0, v5, :cond_2

    .line 57
    .line 58
    if-ne v7, v1, :cond_2

    .line 59
    .line 60
    iget-object v6, v8, Lk31;->b:Lsb4;

    .line 61
    .line 62
    new-instance v1, Lk31;

    .line 63
    .line 64
    const/4 v2, 0x4

    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-direct/range {v1 .. v6}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    if-ne v0, v1, :cond_3

    .line 74
    .line 75
    if-ne v7, v5, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    if-ne v0, v1, :cond_4

    .line 82
    .line 83
    if-ne v7, v2, :cond_4

    .line 84
    .line 85
    move-object v7, v4

    .line 86
    new-instance v4, Lk31;

    .line 87
    .line 88
    const/4 v8, 0x0

    .line 89
    const/4 v9, 0x0

    .line 90
    const/4 v5, 0x1

    .line 91
    invoke-direct/range {v4 .. v9}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 92
    .line 93
    .line 94
    move-object p1, v4

    .line 95
    move-object v4, v7

    .line 96
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    move v1, v7

    .line 101
    if-ne v0, v2, :cond_5

    .line 102
    .line 103
    if-ne v1, v5, :cond_5

    .line 104
    .line 105
    new-instance v1, Lk31;

    .line 106
    .line 107
    const/4 v5, 0x0

    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v2, 0x2

    .line 110
    invoke-direct/range {v1 .. v6}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_5
    if-ne v0, v2, :cond_6

    .line 118
    .line 119
    if-ne v1, v2, :cond_6

    .line 120
    .line 121
    new-instance v1, Lk31;

    .line 122
    .line 123
    const/4 v2, 0x4

    .line 124
    const/4 v5, 0x0

    .line 125
    invoke-direct/range {v1 .. v6}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v1, "Illegal combination of changes: "

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p1, " occurred after "

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0

    .line 160
    :cond_7
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public y(Lai5;)Lch5;
    .locals 0

    .line 1
    iget p1, p0, Lvk9;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lhg8;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lhg8;-><init>(Lgg8;)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_0
    new-instance p1, Lr95;

    .line 13
    .line 14
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lr95;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Ljava/lang/String;)Lf59;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lvk9;->b:Ljava/lang/Object;

    .line 12
    .line 13
    const-string v1, "authorizedDomains"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ge v1, v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lvk9;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    return-object p0

    .line 45
    :goto_1
    const-string v0, "vk9"

    .line 46
    .line 47
    invoke-static {p0, v0, p1}, Lyc9;->C0(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Ld49;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0
.end method
