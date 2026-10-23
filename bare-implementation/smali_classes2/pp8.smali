.class public final Lpp8;
.super Lpo8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public g:Z

.field public final h:Luv7;

.field public final i:Lc05;

.field public final j:Lxj1;

.field public k:Lop8;

.field public l:Lnp8;

.field public m:Llp8;

.field public final n:Lgv7;

.field public final o:Ljava/util/List;

.field public final p:Landroid/util/SparseIntArray;

.field public q:Z

.field public final r:Lex6;

.field public final s:Lex6;

.field public final t:Lex6;

.field public final u:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lpo8;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Luv7;->a:Luv7;

    .line 5
    .line 6
    iput-object v0, p0, Lpp8;->h:Luv7;

    .line 7
    .line 8
    sget-object v0, Lc05;->g:Lc05;

    .line 9
    .line 10
    iput-object v0, p0, Lpp8;->i:Lc05;

    .line 11
    .line 12
    sget-object v0, Lxj1;->g:Lxj1;

    .line 13
    .line 14
    iput-object v0, p0, Lpp8;->j:Lxj1;

    .line 15
    .line 16
    new-instance v0, Lpu;

    .line 17
    .line 18
    const/16 v1, 0x11

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lpu;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lgv7;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lpp8;->n:Lgv7;

    .line 29
    .line 30
    const-string v0, "net.oneplus.launcher"

    .line 31
    .line 32
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lpp8;->o:Ljava/util/List;

    .line 37
    .line 38
    new-instance v0, Landroid/util/SparseIntArray;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lpp8;->p:Landroid/util/SparseIntArray;

    .line 44
    .line 45
    new-instance v0, Lex6;

    .line 46
    .line 47
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lpp8;->r:Lex6;

    .line 51
    .line 52
    new-instance v0, Lex6;

    .line 53
    .line 54
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lpp8;->s:Lex6;

    .line 58
    .line 59
    new-instance v0, Lex6;

    .line 60
    .line 61
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lpp8;->t:Lex6;

    .line 65
    .line 66
    new-instance v0, Lix6;

    .line 67
    .line 68
    invoke-direct {v0}, Lix6;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lpp8;->u:Lix6;

    .line 72
    .line 73
    sget-object v0, Lzn4;->a:Lzn4;

    .line 74
    .line 75
    new-instance v0, Llb2;

    .line 76
    .line 77
    const/4 v1, 0x3

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-direct {v0, p0, v2, v1}, Llb2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpp8;->i:Lc05;

    .line 2
    .line 3
    iget-object v1, p0, Lpp8;->l:Lnp8;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ldv;->p(Lgk6;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lpp8;->j:Lxj1;

    .line 9
    .line 10
    iget-object v1, p0, Lpp8;->m:Llp8;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ldv;->p(Lgk6;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lpp8;->k:Lop8;

    .line 16
    .line 17
    iget-object v1, p0, Lpp8;->h:Luv7;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object v1, Luv7;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-super {p0}, La55;->b()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final k()V
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.category.HOME"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lg00;->a:Lg00;

    .line 14
    .line 15
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/high16 v2, 0x10000

    .line 20
    .line 21
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v0, v1

    .line 36
    :goto_0
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget-object v2, p0, Lpp8;->o:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const-string v3, "KEY_SAVED_UNSUPPORTED_LAUNCHER"

    .line 46
    .line 47
    const-string v4, ""

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 52
    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string v5, "prefs"

    .line 61
    .line 62
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :catch_0
    move-object v5, v4

    .line 67
    :goto_1
    invoke-static {v5, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_3

    .line 72
    .line 73
    iget-object p0, p0, Lpp8;->u:Lix6;

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    if-nez v2, :cond_5

    .line 79
    .line 80
    sget-object p0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    const-string p0, "editor"

    .line 93
    .line 94
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v1

    .line 98
    :cond_5
    :goto_2
    return-void
.end method

.method public final l(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lpp8;->m:Llp8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lpp8;->j:Lxj1;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ldv;->p(Lgk6;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v4, Llp8;

    .line 11
    .line 12
    invoke-direct {v4, p0}, Llp8;-><init>(Lpp8;)V

    .line 13
    .line 14
    .line 15
    iput-object v4, p0, Lpp8;->m:Llp8;

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    const/16 v7, 0x8

    .line 19
    .line 20
    iget-object v2, p0, Lpp8;->j:Lxj1;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    move v3, p1

    .line 24
    invoke-static/range {v2 .. v7}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
