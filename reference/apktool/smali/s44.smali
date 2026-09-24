.class public final synthetic Ls44;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls44;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 1
    sget-object p1, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 2
    .line 3
    const-string p1, "prefs"

    .line 4
    .line 5
    const-string v0, "compact_storage_info"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    move v3, v2

    .line 23
    :goto_0
    const/4 v4, 0x1

    .line 24
    xor-int/2addr v3, v4

    .line 25
    sget-object v5, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Ls44;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->a0()Lc64;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object p0, p0, Lc64;->j:Lgv7;

    .line 43
    .line 44
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lex6;

    .line 49
    .line 50
    :try_start_1
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    :catch_1
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return v4

    .line 71
    :cond_2
    const-string p0, "editor"

    .line 72
    .line 73
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v1
.end method
