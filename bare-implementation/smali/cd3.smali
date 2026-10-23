.class public final enum Lcd3;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnd3;


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lcd3;

.field public static final enum All:Lcd3;

.field public static final enum System:Lcd3;

.field public static final enum User:Lcd3;


# direct methods
.method private static final synthetic $values()[Lcd3;
    .locals 3

    .line 1
    sget-object v0, Lcd3;->All:Lcd3;

    .line 2
    .line 3
    sget-object v1, Lcd3;->User:Lcd3;

    .line 4
    .line 5
    sget-object v2, Lcd3;->System:Lcd3;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcd3;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcd3;

    .line 2
    .line 3
    const-string v1, "All"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcd3;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcd3;->All:Lcd3;

    .line 10
    .line 11
    new-instance v0, Lcd3;

    .line 12
    .line 13
    const-string v1, "User"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcd3;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcd3;->User:Lcd3;

    .line 20
    .line 21
    new-instance v0, Lcd3;

    .line 22
    .line 23
    const-string v1, "System"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcd3;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcd3;->System:Lcd3;

    .line 30
    .line 31
    invoke-static {}, Lcd3;->$values()[Lcd3;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcd3;->$VALUES:[Lcd3;

    .line 36
    .line 37
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcd3;->$ENTRIES:Ljx2;

    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcd3;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcd3;
    .locals 1

    .line 1
    const-class v0, Lcd3;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcd3;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcd3;
    .locals 1

    .line 1
    sget-object v0, Lcd3;->$VALUES:[Lcd3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcd3;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getDisplayString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lbd3;->a:[I

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    aget p0, v1, p0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq p0, v1, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-eq p0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    if-ne p0, v1, :cond_0

    .line 23
    .line 24
    const p0, 0x7f13059a

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_1
    const p0, 0x7f130560

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const p0, 0x7f130591

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public final hasSystem()Z
    .locals 3

    .line 1
    const-string v0, "show_system_apps"

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
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

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
    const/4 v0, 0x0

    .line 19
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    move v0, v1

    .line 21
    :goto_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    sget-object v0, Lcd3;->All:Lcd3;

    .line 25
    .line 26
    if-eq p0, v0, :cond_3

    .line 27
    .line 28
    sget-object v0, Lcd3;->System:Lcd3;

    .line 29
    .line 30
    if-ne p0, v0, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    return v1

    .line 34
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public isApplied()Z
    .locals 3

    .line 1
    const-string v0, "show_system_apps"

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
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

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
    const/4 v0, 0x0

    .line 19
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    move v0, v1

    .line 21
    :goto_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-super {p0}, Lnd3;->isApplied()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Lcd3;->hasSystem()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    invoke-static {}, Lge3;->e()Lfe3;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lfe3;->isApplied()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    return v1

    .line 48
    :cond_3
    :goto_2
    const/4 p0, 0x1

    .line 49
    return p0
.end method

.method public isDefault()Z
    .locals 3

    .line 1
    const-string v0, "show_system_apps"

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
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

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
    const/4 v0, 0x0

    .line 19
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    move v0, v1

    .line 21
    :goto_0
    const/4 v2, 0x1

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    sget-object v0, Lcd3;->All:Lcd3;

    .line 26
    .line 27
    if-ne p0, v0, :cond_2

    .line 28
    .line 29
    return v2

    .line 30
    :cond_2
    return v1
.end method

.method public reset()V
    .locals 2

    .line 1
    sget-object p0, Lcd3;->All:Lcd3;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v1, "key_user_apps_pref"

    .line 15
    .line 16
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lge3;->a:Lge3;

    .line 24
    .line 25
    invoke-interface {p0}, Lod3;->reset()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "editor"

    .line 30
    .line 31
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    throw p0
.end method
