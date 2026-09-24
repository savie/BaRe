.class public final Lxp3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Ln59;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lxp3;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ldz3;

    .line 8
    .line 9
    invoke-direct {v0}, Ldz3;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lxp3;->b:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lxp3;->c:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lxp3;->d:Ljava/lang/Object;

    .line 27
    .line 28
    const-string v0, ".ttf"

    .line 29
    .line 30
    iput-object v0, p0, Lxp3;->f:Ljava/lang/Object;

    .line 31
    .line 32
    instance-of v0, p1, Landroid/view/View;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const-string p1, "LottieDrawable must be inside of a view for images to work."

    .line 37
    .line 38
    invoke-static {p1}, Lm15;->b(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lxp3;->e:Ljava/lang/Object;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    check-cast p1, Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lxp3;->e:Ljava/lang/Object;

    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;I)V
    .locals 0

    .line 59
    iput p6, p0, Lxp3;->a:I

    iput-object p1, p0, Lxp3;->b:Ljava/lang/Object;

    iput-object p2, p0, Lxp3;->c:Ljava/lang/Object;

    iput-object p3, p0, Lxp3;->d:Ljava/lang/Object;

    iput-object p4, p0, Lxp3;->e:Ljava/lang/Object;

    iput-object p5, p0, Lxp3;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lke;Lu94;Lyf1;Lb69;Las2;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lxp3;->a:I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lxp3;->b:Ljava/lang/Object;

    iput-object p3, p0, Lxp3;->c:Ljava/lang/Object;

    iput-object p4, p0, Lxp3;->d:Ljava/lang/Object;

    iput-object p5, p0, Lxp3;->e:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lxp3;->f:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/view/View;)Lxp3;
    .locals 9

    .line 1
    const v0, 0x7f0a0209

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lzx2;->a(Landroid/view/View;)Lzx2;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const v0, 0x7f0a02cd

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/widget/ImageView;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const v0, 0x7f0a02fa

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const v0, 0x7f0a0302

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    const v0, 0x7f0a03bf

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move-object v5, v1

    .line 53
    check-cast v5, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 54
    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    const v0, 0x7f0a044e

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    move-object v6, v1

    .line 65
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 66
    .line 67
    if-eqz v6, :cond_0

    .line 68
    .line 69
    const v0, 0x7f0a0526

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    move-object v7, v1

    .line 77
    check-cast v7, Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v7, :cond_0

    .line 80
    .line 81
    const v0, 0x7f0a0597

    .line 82
    .line 83
    .line 84
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroid/widget/TextView;

    .line 89
    .line 90
    if-eqz v1, :cond_0

    .line 91
    .line 92
    new-instance v2, Lxp3;

    .line 93
    .line 94
    move-object v3, p0

    .line 95
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 96
    .line 97
    const/4 v8, 0x2

    .line 98
    invoke-direct/range {v2 .. v8}, Lxp3;-><init>(Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;I)V

    .line 99
    .line 100
    .line 101
    return-object v2

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string v0, "Missing required view with ID: "

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/4 p0, 0x0

    .line 120
    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lxp3;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lxp3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public h(Lf59;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lxp3;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v7, v0

    .line 4
    check-cast v7, Lu94;

    .line 5
    .line 6
    check-cast p1, Lw59;

    .line 7
    .line 8
    iget-object p1, p1, Lw59;->a:Lln5;

    .line 9
    .line 10
    iget-object p1, p1, Lln5;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Ljava/util/List;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lxp3;->f:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v2, v0

    .line 26
    check-cast v2, Lke;

    .line 27
    .line 28
    iget-object v0, p0, Lxp3;->c:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v5, v0

    .line 31
    check-cast v5, Lyf1;

    .line 32
    .line 33
    iget-object v0, p0, Lxp3;->d:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v6, v0

    .line 36
    check-cast v6, Lb69;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    move-object v4, p1

    .line 44
    check-cast v4, Lx59;

    .line 45
    .line 46
    iget-object p0, p0, Lxp3;->e:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v3, p0

    .line 49
    check-cast v3, Las2;

    .line 50
    .line 51
    invoke-static {v6}, Lly8;->h(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v4}, Lly8;->h(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, v2, Lke;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Lg59;

    .line 60
    .line 61
    new-instance v1, Lgp1;

    .line 62
    .line 63
    invoke-direct/range {v1 .. v7}, Lgp1;-><init>(Lke;Las2;Lx59;Lyf1;Lb69;Lu94;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lg59;->a:Ld59;

    .line 70
    .line 71
    iget-object p0, p0, Lg59;->f:Ljava/lang/String;

    .line 72
    .line 73
    const-string v0, "/setAccountInfo"

    .line 74
    .line 75
    invoke-virtual {p1, v0, p0}, Lao;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance v0, Lf69;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p1, Lao;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lxt1;

    .line 87
    .line 88
    invoke-static {p0, v3, v1, v0, p1}, Lms8;->U(Ljava/lang/String;Le59;Ln59;Lf59;Lxt1;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_1
    :goto_0
    const-string p0, "No users"

    .line 93
    .line 94
    invoke-virtual {v7, p0}, Lu94;->zza(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxp3;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lu94;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lu94;->zza(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
