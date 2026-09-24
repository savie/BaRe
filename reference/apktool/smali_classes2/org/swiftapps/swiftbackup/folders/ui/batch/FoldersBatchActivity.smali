.class public final Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic Y:I


# instance fields
.field public final P:Ll90;

.field public final Q:Lgv7;

.field public R:Llk3;

.field public final S:Lgv7;

.field public final T:Lgv7;

.field public final U:Lgv7;

.field public final V:Lcp3;

.field public W:Landroid/view/Menu;

.field public X:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Luf;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Luf;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Lqo3;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lvf;

    .line 20
    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    invoke-direct {v3, p0, v4}, Lvf;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lwf;

    .line 27
    .line 28
    const/4 v5, 0x6

    .line 29
    invoke-direct {v4, p0, v5}, Lwf;-><init>(Lil0;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->P:Ll90;

    .line 36
    .line 37
    new-instance v0, Lmo3;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {v0, p0, v1}, Lmo3;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lgv7;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Q:Lgv7;

    .line 49
    .line 50
    new-instance v0, Lbh;

    .line 51
    .line 52
    const/16 v1, 0x1b

    .line 53
    .line 54
    invoke-direct {v0, p0, v1}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lgv7;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->S:Lgv7;

    .line 63
    .line 64
    new-instance v0, Lbk;

    .line 65
    .line 66
    const/16 v1, 0x15

    .line 67
    .line 68
    invoke-direct {v0, p0, v1}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lgv7;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->T:Lgv7;

    .line 77
    .line 78
    new-instance v0, Lck;

    .line 79
    .line 80
    const/16 v1, 0x17

    .line 81
    .line 82
    invoke-direct {v0, p0, v1}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lgv7;

    .line 86
    .line 87
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->U:Lgv7;

    .line 91
    .line 92
    new-instance v0, Lcp3;

    .line 93
    .line 94
    const/4 v1, 0x2

    .line 95
    invoke-direct {v0, v1}, Lcp3;-><init>(I)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V:Lcp3;

    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y()Lqo3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final U()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->U:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 8
    .line 9
    return-object p0
.end method

.method public final V()Ley2;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->T:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ley2;

    .line 8
    .line 9
    return-object p0
.end method

.method public final W()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->S:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    return-object p0
.end method

.method public final X()Loo3;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Q:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Loo3;

    .line 8
    .line 9
    return-object p0
.end method

.method public final Y()Lqo3;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lqo3;

    .line 8
    .line 9
    return-object p0
.end method

.method public final Z(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->X:Landroid/view/MenuItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Lsz8;->z(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const p1, 0x7f08008f

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const p1, 0x7f08008e

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/swiftapps/swiftbackup/common/Const;->w(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->X:Landroid/view/MenuItem;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public final a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->W:Landroid/view/Menu;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y()Lqo3;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lqo3;->g:Lex6;

    .line 10
    .line 11
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lym7;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    sget-object v1, Lym7;->LOADING:Lym7;

    .line 20
    .line 21
    :cond_0
    sget-object v2, Lym7;->DATA_RECEIVED:Lym7;

    .line 22
    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_0
    const v2, 0x7f0a0252

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V:Lcp3;

    .line 41
    .line 42
    invoke-virtual {v0}, Lgm7;->p()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Z(Z)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final b0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V:Lcp3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgm7;->k()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Lgm7;->b()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->X()Loo3;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v2, v2, Loo3;->f:Ltf2;

    .line 16
    .line 17
    iget-object v2, v2, Ltf2;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Landroid/widget/TextView;

    .line 20
    .line 21
    const v3, 0x7f1304e7

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string v3, "app_locale"

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v3, "prefs"

    .line 44
    .line 45
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    :goto_0
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-static {v4}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, "/"

    .line 91
    .line 92
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, " "

    .line 99
    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->X()Loo3;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Loo3;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->X()Loo3;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Loo3;->f:Ltf2;

    .line 18
    .line 19
    iget-object p1, p1, Ltf2;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lnc8;->Z(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lnc8;->b0(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v6, 0x0

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    const-string v2, "EXTRA_FOLDER_BATCH_ACTION_ITEM"

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Llk3;

    .line 54
    .line 55
    move-object v4, p1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v4, v6

    .line 58
    :goto_0
    iput-object v4, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->R:Llk3;

    .line 59
    .line 60
    const/16 p1, 0xa

    .line 61
    .line 62
    if-eqz v4, :cond_5

    .line 63
    .line 64
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 65
    .line 66
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->R:Llk3;

    .line 71
    .line 72
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    const/4 v11, 0x4

    .line 77
    const/4 v12, 0x0

    .line 78
    const/4 v10, 0x0

    .line 79
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->X()Loo3;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-object v2, v2, Loo3;->f:Ltf2;

    .line 87
    .line 88
    iget-object v3, v2, Ltf2;->f:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v3, Landroid/widget/CheckedTextView;

    .line 91
    .line 92
    iget v5, v4, Llk3;->b:I

    .line 93
    .line 94
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 95
    .line 96
    .line 97
    iget-object v3, v2, Ltf2;->e:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v3, Landroid/widget/TextView;

    .line 100
    .line 101
    const v5, 0x7f1302f6

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iget-object v2, v2, Ltf2;->d:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 114
    .line 115
    new-instance v3, Ljo3;

    .line 116
    .line 117
    invoke-direct {v3, p0, v0}, Ljo3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Lrj0;

    .line 124
    .line 125
    const/4 v2, 0x2

    .line 126
    invoke-direct {v0, p0, v2}, Lrj0;-><init>(Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V:Lcp3;

    .line 130
    .line 131
    iput-object v0, v2, Lgm7;->g:Lqt3;

    .line 132
    .line 133
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->W()Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const/4 v3, 0x7

    .line 138
    invoke-static {v0, v3}, Lsz8;->b(Landroid/view/View;I)V

    .line 139
    .line 140
    .line 141
    new-instance v5, Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;

    .line 142
    .line 143
    invoke-direct {v5, p0}, Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V()Ley2;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object v0, v0, Ley2;->d:Landroid/widget/ImageView;

    .line 163
    .line 164
    const v2, 0x7f08014a

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V()Ley2;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v0, v0, Ley2;->f:Landroid/widget/TextView;

    .line 175
    .line 176
    const v2, 0x7f1302f4

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V()Ley2;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v0, v0, Ley2;->e:Landroid/widget/TextView;

    .line 187
    .line 188
    const v2, 0x7f13026c

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V()Ley2;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iget-object v0, v0, Ley2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 199
    .line 200
    const v2, 0x7f130084

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V()Ley2;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v0, v0, Ley2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 211
    .line 212
    new-instance v2, Lnf;

    .line 213
    .line 214
    invoke-direct {v2, p0, v3}, Lnf;-><init>(Ljava/lang/Object;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->U()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->W()Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-static {v0, v2, v1}, Lsz8;->f0(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 229
    .line 230
    .line 231
    iget-object v2, v4, Llk3;->a:Ljava/lang/String;

    .line 232
    .line 233
    const-string v3, "Delete backups"

    .line 234
    .line 235
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_2

    .line 240
    .line 241
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    .line 246
    .line 247
    .line 248
    const/4 v2, -0x1

    .line 249
    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setTextColor(I)V

    .line 250
    .line 251
    .line 252
    invoke-static {v2}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 257
    .line 258
    .line 259
    const/16 v3, 0x1e

    .line 260
    .line 261
    invoke-static {v2, v3}, Lsz8;->U(II)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    invoke-static {v2}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 270
    .line 271
    .line 272
    :cond_2
    iget v2, v4, Llk3;->k:I

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 275
    .line 276
    .line 277
    iget v2, v4, Llk3;->n:I

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->U()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    new-instance v2, Ljo3;

    .line 287
    .line 288
    invoke-direct {v2, p0, v1}, Ljo3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y()Lqo3;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    iget-boolean v0, v3, Lqo3;->e:Z

    .line 299
    .line 300
    if-eqz v0, :cond_3

    .line 301
    .line 302
    goto :goto_1

    .line 303
    :cond_3
    iput-boolean v1, v3, Lqo3;->e:Z

    .line 304
    .line 305
    iget-boolean v0, v4, Llk3;->f:Z

    .line 306
    .line 307
    iput-boolean v0, v3, Lqo3;->f:Z

    .line 308
    .line 309
    sget-object v5, Lqo3;->k:Ljava/util/ArrayList;

    .line 310
    .line 311
    if-nez v5, :cond_4

    .line 312
    .line 313
    invoke-virtual {v3}, Lqo0;->d()V

    .line 314
    .line 315
    .line 316
    goto :goto_1

    .line 317
    :cond_4
    sget-object v0, Lzn4;->a:Lzn4;

    .line 318
    .line 319
    new-instance v2, Lpo3;

    .line 320
    .line 321
    const/4 v7, 0x0

    .line 322
    invoke-direct/range {v2 .. v7}, Lpo3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 323
    .line 324
    .line 325
    invoke-static {v6, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 326
    .line 327
    .line 328
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->R:Llk3;

    .line 329
    .line 330
    if-eqz v0, :cond_6

    .line 331
    .line 332
    invoke-virtual {v0}, Llk3;->c()Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_6

    .line 337
    .line 338
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 339
    .line 340
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-nez v0, :cond_6

    .line 345
    .line 346
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 347
    .line 348
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    const/4 v5, 0x4

    .line 353
    const/4 v6, 0x0

    .line 354
    const-string v3, "User not premium! Finishing."

    .line 355
    .line 356
    const/4 v4, 0x0

    .line 357
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    :cond_6
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y()Lqo3;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    iget-object v0, v0, Lqo3;->g:Lex6;

    .line 369
    .line 370
    new-instance v1, Lox;

    .line 371
    .line 372
    const/16 v2, 0xf

    .line 373
    .line 374
    invoke-direct {v1, p0, v2}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 375
    .line 376
    .line 377
    new-instance v2, Ltf;

    .line 378
    .line 379
    const/4 v3, 0x3

    .line 380
    invoke-direct {v2, v3, v1}, Ltf;-><init>(ILmt3;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, p0, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y()Lqo3;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    iget-object v0, v0, Lqo3;->h:Lex6;

    .line 391
    .line 392
    new-instance v1, Lcz;

    .line 393
    .line 394
    invoke-direct {v1, p0, p1}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 395
    .line 396
    .line 397
    new-instance p1, Ltf;

    .line 398
    .line 399
    invoke-direct {p1, v3, v1}, Ltf;-><init>(ILmt3;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, p0, p1}, Lzy4;->e(Lfu4;Les5;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y()Lqo3;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    iget-object p1, p1, Lqo3;->i:Lix6;

    .line 410
    .line 411
    new-instance v0, Lu10;

    .line 412
    .line 413
    const/16 v1, 0x9

    .line 414
    .line 415
    invoke-direct {v0, p0, v1}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 416
    .line 417
    .line 418
    new-instance v1, Ltf;

    .line 419
    .line 420
    invoke-direct {v1, v3, v0}, Ltf;-><init>(ILmt3;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y()Lqo3;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    iget-object p1, p1, Lqo3;->j:Lix6;

    .line 431
    .line 432
    new-instance v0, Lv10;

    .line 433
    .line 434
    const/16 v1, 0xb

    .line 435
    .line 436
    invoke-direct {v0, p0, v1}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 437
    .line 438
    .line 439
    new-instance v1, Ltf;

    .line 440
    .line 441
    invoke-direct {v1, v3, v0}, Ltf;-><init>(ILmt3;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 445
    .line 446
    .line 447
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0f001a

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->W:Landroid/view/Menu;

    .line 15
    .line 16
    const v0, 0x7f0a0081

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->X:Landroid/view/MenuItem;

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->a0()V

    .line 26
    .line 27
    .line 28
    invoke-super {p0, p1}, Lil0;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y()Lqo3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lqo3;->g:Lex6;

    .line 9
    .line 10
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lym7;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lym7;->LOADING:Lym7;

    .line 19
    .line 20
    :cond_0
    sget-object v1, Lym7;->DATA_RECEIVED:Lym7;

    .line 21
    .line 22
    if-ne v0, v1, :cond_4

    .line 23
    .line 24
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const v1, 0x7f0a0081

    .line 29
    .line 30
    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V:Lcp3;

    .line 34
    .line 35
    iget-object v1, v0, Lgm7;->e:Lfm7;

    .line 36
    .line 37
    iget-object v1, v1, Lfm7;->a:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->L()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    xor-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Lgm7;->s(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const v1, 0x7f0a0062

    .line 67
    .line 68
    .line 69
    if-ne v0, v1, :cond_3

    .line 70
    .line 71
    const v0, 0x7f130263

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v1, Landroid/content/Intent;

    .line 82
    .line 83
    const-class v2, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 84
    .line 85
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    const-string v2, "category"

    .line 89
    .line 90
    const/16 v3, 0x8

    .line 91
    .line 92
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    const-string v2, "category_title"

    .line 96
    .line 97
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    const v1, 0x7f0a0082

    .line 105
    .line 106
    .line 107
    if-ne v0, v1, :cond_4

    .line 108
    .line 109
    new-instance v0, Landroid/content/Intent;

    .line 110
    .line 111
    const-class v1, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 112
    .line 113
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    return p0
.end method
