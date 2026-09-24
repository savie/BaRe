.class public final Ln05;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lex6;

.field public f:Z

.field public g:Ljava/util/ArrayList;

.field public final h:Lgv7;

.field public final i:Lm05;


# direct methods
.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Ln05;->e:Lex6;

    .line 10
    .line 11
    new-instance v0, Lqm;

    .line 12
    .line 13
    const/16 v1, 0xe

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lqm;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lgv7;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Ln05;->h:Lgv7;

    .line 24
    .line 25
    new-instance v0, Lm05;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lm05;-><init>(Ln05;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Ln05;->i:Lm05;

    .line 31
    .line 32
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lzc2;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lzc2;->c(Laj8;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    invoke-super {p0}, La55;->b()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lre3;->a:Lzc2;

    .line 5
    .line 6
    iget-object v0, p0, Ln05;->h:Lgv7;

    .line 7
    .line 8
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lzc2;

    .line 13
    .line 14
    iget-object p0, p0, Ln05;->i:Lm05;

    .line 15
    .line 16
    invoke-static {v0, p0}, Lre3;->n(Lzc2;Laj8;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    new-instance v0, Lfm7;

    .line 2
    .line 3
    invoke-static {}, Lxx3;->l()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "app_locale"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v2, "prefs"

    .line 20
    .line 21
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :goto_0
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static {v3}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lis4;->a()Ljava/util/Locale;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lis4;->a()Ljava/util/Locale;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :goto_2
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {v3, v2}, Lxx3;->i(Ljava/lang/String;Ljava/lang/String;)Lis4;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lis4;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v2}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const/4 v4, 0x0

    .line 78
    const/16 v5, 0x1c

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-direct/range {v0 .. v5}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Ln05;->e:Lex6;

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
