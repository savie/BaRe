.class public final Lorg/swiftapps/swiftbackup/appconfigs/list/a;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;,
        Lorg/swiftapps/swiftbackup/appconfigs/list/a$b;
    }
.end annotation


# instance fields
.field public e:Z

.field public f:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

.field public final g:Lex6;

.field public final h:Lu95;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->g:Lex6;

    .line 10
    .line 11
    new-instance v0, Lu95;

    .line 12
    .line 13
    invoke-direct {v0}, Lu95;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->h:Lu95;

    .line 17
    .line 18
    return-void
.end method

.method public static j()Lpw5;
    .locals 4

    .line 1
    const-string v0, "configs_list_sort_options"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "prefs"

    .line 14
    .line 15
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    :goto_0
    const-string v0, ":"

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    sget-object v1, Lorg/swiftapps/swiftbackup/appconfigs/list/a$b;->Name:Lorg/swiftapps/swiftbackup/appconfigs/list/a$b;

    .line 24
    .line 25
    sget-object v2, Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;->Asc:Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_1
    invoke-static {v1, v0}, Lai8;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Lorg/swiftapps/swiftbackup/appconfigs/list/a$b;->valueOf(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appconfigs/list/a$b;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v1, v0}, Lai8;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;->valueOf(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Lpw5;

    .line 62
    .line 63
    invoke-direct {v1, v2, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-object v1
.end method


# virtual methods
.method public final k(Lorg/swiftapps/swiftbackup/appconfigs/list/a$b;Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, ":"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object p2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    const-string v0, "configs_list_sort_options"

    .line 32
    .line 33
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->f:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->l(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    const-string p0, "editor"

    .line 47
    .line 48
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    throw p0
.end method

.method public final l(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->f:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->j()Lpw5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lpw5;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/list/a$b;

    .line 10
    .line 11
    invoke-static {}, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->j()Lpw5;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lpw5;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;

    .line 18
    .line 19
    sget-object v2, Lorg/swiftapps/swiftbackup/appconfigs/list/b;->a:[I

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    aget v0, v2, v0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-eq v0, v2, :cond_1

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    if-ne v0, v3, :cond_0

    .line 32
    .line 33
    new-instance v0, Ljc1;

    .line 34
    .line 35
    invoke-direct {v0, v2}, Ljc1;-><init>(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcl7;

    .line 49
    .line 50
    const/4 v2, 0x4

    .line 51
    invoke-direct {v0, v2}, Lcl7;-><init>(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;->getValues()Ljava/util/Collection;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 p1, 0x0

    .line 62
    :goto_1
    if-nez p1, :cond_3

    .line 63
    .line 64
    sget-object p1, Lov2;->a:Lov2;

    .line 65
    .line 66
    :cond_3
    invoke-static {p1, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget-object v0, Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;->Desc:Lorg/swiftapps/swiftbackup/appconfigs/list/a$a;

    .line 71
    .line 72
    if-ne v1, v0, :cond_4

    .line 73
    .line 74
    invoke-static {p1}, Lel1;->j1(Ljava/util/List;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :cond_4
    move-object v1, p1

    .line 79
    new-instance v0, Lfm7;

    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    const/16 v5, 0x1e

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-direct/range {v0 .. v5}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->h:Lu95;

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lzy4;->k(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
