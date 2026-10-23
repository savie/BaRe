.class public final enum Lfe3;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnd3;


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lfe3;

.field public static final enum All:Lfe3;

.field public static final enum LabelledOrFavorites:Lfe3;

.field public static final enum Launchable:Lfe3;

.field public static final enum Updated:Lfe3;


# direct methods
.method private static final synthetic $values()[Lfe3;
    .locals 4

    .line 1
    sget-object v0, Lfe3;->All:Lfe3;

    .line 2
    .line 3
    sget-object v1, Lfe3;->Launchable:Lfe3;

    .line 4
    .line 5
    sget-object v2, Lfe3;->Updated:Lfe3;

    .line 6
    .line 7
    sget-object v3, Lfe3;->LabelledOrFavorites:Lfe3;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lfe3;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lfe3;

    .line 2
    .line 3
    const-string v1, "All"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lfe3;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lfe3;->All:Lfe3;

    .line 10
    .line 11
    new-instance v0, Lfe3;

    .line 12
    .line 13
    const-string v1, "Launchable"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lfe3;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lfe3;->Launchable:Lfe3;

    .line 20
    .line 21
    new-instance v0, Lfe3;

    .line 22
    .line 23
    const-string v1, "Updated"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lfe3;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lfe3;->Updated:Lfe3;

    .line 30
    .line 31
    new-instance v0, Lfe3;

    .line 32
    .line 33
    const-string v1, "LabelledOrFavorites"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lfe3;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lfe3;->LabelledOrFavorites:Lfe3;

    .line 40
    .line 41
    invoke-static {}, Lfe3;->$values()[Lfe3;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lfe3;->$VALUES:[Lfe3;

    .line 46
    .line 47
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lfe3;->$ENTRIES:Ljx2;

    .line 52
    .line 53
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
    sget-object v0, Lfe3;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfe3;
    .locals 1

    .line 1
    const-class v0, Lfe3;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfe3;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lfe3;
    .locals 1

    .line 1
    sget-object v0, Lfe3;->$VALUES:[Lfe3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lfe3;

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
    sget-object v1, Lee3;->a:[I

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
    if-eq p0, v1, :cond_3

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-eq p0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    if-eq p0, v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    if-ne p0, v1, :cond_0

    .line 26
    .line 27
    const p0, 0x7f1302e2

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_1
    const p0, 0x7f130588

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const p0, 0x7f1302ee

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    const p0, 0x7f130030

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    return-object p0
.end method

.method public bridge isApplied()Z
    .locals 0

    .line 1
    invoke-super {p0}, Lnd3;->isApplied()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
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
    sget-object v0, Lfe3;->All:Lfe3;

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
    sget-object p0, Lfe3;->All:Lfe3;

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
    const-string v1, "key_system_apps_pref"

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
    return-void

    .line 24
    :cond_0
    const-string p0, "editor"

    .line 25
    .line 26
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0
.end method
