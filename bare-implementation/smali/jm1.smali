.class public abstract Ljm1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Law2;


# static fields
.field public static final a:[C

.field public static final b:[C

.field public static final c:Ldu9;

.field public static final d:Ldu9;

.field public static final e:Lw96;

.field public static final f:Lcz4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [C

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Ljm1;->a:[C

    .line 9
    .line 10
    new-array v0, v0, [C

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Ljm1;->b:[C

    .line 16
    .line 17
    new-instance v0, Ldu9;

    .line 18
    .line 19
    const-string v1, "REMOVED_TASK"

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-direct {v0, v1, v2}, Ldu9;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Ljm1;->c:Ldu9;

    .line 26
    .line 27
    new-instance v0, Ldu9;

    .line 28
    .line 29
    const-string v1, "CLOSED_EMPTY"

    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Ldu9;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Ljm1;->d:Ldu9;

    .line 35
    .line 36
    new-instance v0, Lw96;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Ljm1;->e:Lw96;

    .line 42
    .line 43
    new-instance v0, Lcz4;

    .line 44
    .line 45
    const/16 v1, 0x17

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcz4;-><init>(I)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Ljm1;->f:Lcz4;

    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static A(Ljava/lang/CharSequence;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :goto_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    move v2, v0

    .line 14
    :goto_1
    if-ge v2, v1, :cond_3

    .line 15
    .line 16
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_2

    .line 25
    .line 26
    return v0

    .line 27
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_3
    :goto_2
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public static B()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "sdk"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "goldfish"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string v1, "ranchu"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    return v0

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    return v0
.end method

.method public static C()Z
    .locals 4

    .line 1
    invoke-static {}, Ljm1;->B()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v3, "test-keys"

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 22
    .line 23
    const-string v3, "/system/app/Superuser.apk"

    .line 24
    .line 25
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 36
    .line 37
    const-string v3, "/system/xbin/su"

    .line 38
    .line 39
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    return v2

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    return v0
.end method

.method public static final D(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p1, v0

    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/bumptech/glide/a;->c(Landroid/content/Context;)Lyk6;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lyk6;->f(Ljava/lang/Class;)Lpk6;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lpk6;->D(Ljava/lang/Object;)Lpk6;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget-object v0, Lso2;->b:Loo2;

    .line 39
    .line 40
    new-instance v1, Lb71;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Lmm0;->s(Lso2;Lpr0;)Lmm0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lpk6;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Lpk6;->B(Landroid/widget/ImageView;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/bumptech/glide/a;->c(Landroid/content/Context;)Lyk6;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v1, Lwk6;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lwk6;-><init>(Landroid/widget/ImageView;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Lyk6;->i(Lpx7;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static E(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    const-string v3, "map entries must not have null keys"

    .line 36
    .line 37
    invoke-static {v2, v3}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    const-string v3, "map entries must not have null values"

    .line 47
    .line 48
    invoke-static {v2, v3}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0, v2, v1}, Ljm1;->H(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    return-object v0
.end method

.method public static G(JLjava/lang/String;)Lq63;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p0, p1}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "apk_share"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lq63;->h()Z

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lq63;->E(Lq63;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string p1, "Unable to create APK share directory: "

    .line 24
    .line 25
    invoke-static {p0, p1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static H(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "field must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value must not be null"

    .line 7
    .line 8
    invoke-static {p2, v0}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string p1, "JSONException thrown in violation of contract"

    .line 17
    .line 18
    invoke-static {p1, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static I(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p0

    .line 6
    const-string p1, "JSONException thrown in violation of contract"

    .line 7
    .line 8
    invoke-static {p1, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    const-string v0, "value must not be null"

    .line 2
    .line 3
    invoke-static {p2, v0}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string p1, "JSONException thrown in violation of contract"

    .line 12
    .line 13
    invoke-static {p1, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static K(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string p1, "JSONException thrown in violation of contract"

    .line 14
    .line 15
    invoke-static {p1, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static L(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string p1, "JSONException thrown in violation of contract"

    .line 10
    .line 11
    invoke-static {p1, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string p1, "JSONException thrown in violation of contract"

    .line 10
    .line 11
    invoke-static {p1, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static N(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "\\"

    .line 5
    .line 6
    const-string v1, "\\\\"

    .line 7
    .line 8
    invoke-static {p0, v0, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "\\\'"

    .line 13
    .line 14
    const-string v1, "\'"

    .line 15
    .line 16
    invoke-static {p0, v1, v0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {v1, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static O(Ljava/lang/String;Ljava/lang/String;)La90;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "authorization"

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Le90;->b(Lorg/json/JSONObject;)Le90;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "end_session"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    new-instance v1, Lrw2;

    .line 28
    .line 29
    const-string p0, "configuration"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Ll90;->e(Lorg/json/JSONObject;)Ll90;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string p0, "id_token_hint"

    .line 40
    .line 41
    invoke-static {v0, p0}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string p0, "post_logout_redirect_uri"

    .line 46
    .line 47
    invoke-static {v0, p0}, Ljm1;->y(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string p0, "state"

    .line 52
    .line 53
    invoke-static {v0, p0}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string p0, "ui_locales"

    .line 58
    .line 59
    invoke-static {v0, p0}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    const-string p0, "additionalParameters"

    .line 64
    .line 65
    invoke-static {v0, p0}, Ljm1;->w(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-direct/range {v1 .. v7}, Lrw2;-><init>(Ll90;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_1
    const-string p0, "No AuthorizationManagementRequest found matching to this json schema"

    .line 74
    .line 75
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    return-object p0
.end method

.method public static P(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public static Q(Landroid/content/Context;IZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2}, Ljm1;->R(Landroid/content/res/Resources$Theme;IZ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static R(Landroid/content/res/Resources$Theme;IZ)Z
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ljm1;->P(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    iget p1, p0, Landroid/util/TypedValue;->type:I

    .line 8
    .line 9
    const/16 v0, 0x12

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_1
    return p2
.end method

.method public static S(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f040436

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljm1;->P(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget v2, v1, Landroid/util/TypedValue;->type:I

    .line 15
    .line 16
    const/4 v3, 0x5

    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 34
    .line 35
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const v0, 0x7f070438

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    float-to-int p0, p0

    .line 53
    return p0

    .line 54
    :cond_2
    float-to-int p0, v0

    .line 55
    return p0
.end method

.method public static T(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Ljm1;->P(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant)."

    .line 25
    .line 26
    invoke-static {p1, p0}, Ll0;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static U(Landroid/view/View;I)Landroid/util/TypedValue;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p1, v0, p0}, Ljm1;->T(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static V(Lji;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lji;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 21
    .line 22
    invoke-static {v1, v0, v1}, Ldj7;->q(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "[^a-z0-9._-]+"

    .line 27
    .line 28
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v3, "_"

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    new-array v1, v1, [C

    .line 50
    .line 51
    const/16 v3, 0x5f

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    aput-char v3, v1, v4

    .line 55
    .line 56
    invoke-static {v0, v1}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    move-object v2, v0

    .line 67
    :cond_2
    if-nez v2, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_3
    return-object v2
.end method

.method public static W(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "SHA-1"

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ljm1;->z([B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string v0, "Could not create hashing algorithm: SHA-1, returning empty string."

    .line 25
    .line 26
    const-string v1, "FirebaseCrashlytics"

    .line 27
    .line 28
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    const-string p0, ""

    .line 32
    .line 33
    return-object p0
.end method

.method public static X(Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Scanner;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "\\A"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0}, Ljava/util/Scanner;->close()V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :goto_1
    if-eqz p0, :cond_1

    .line 32
    .line 33
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_2
    throw v0
.end method

.method public static Y(Ljava/lang/Iterable;)Lorg/json/JSONArray;
    .locals 2

    .line 1
    const-string v0, "objects cannot be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/json/JSONArray;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-object v0
.end method

.method public static Z(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v3, v2, Lorg/json/JSONArray;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    check-cast v2, Lorg/json/JSONArray;

    .line 22
    .line 23
    invoke-static {v2}, Ljm1;->Z(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    instance-of v3, v2, Lorg/json/JSONObject;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    check-cast v2, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-static {v2}, Ljm1;->a0(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-object v0
.end method

.method public static final a(Landroid/content/Context;I)I
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p1, p0

    .line 13
    invoke-static {p1}, Ltu0;->v(F)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static a0(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    instance-of v4, v3, Lorg/json/JSONArray;

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    check-cast v3, Lorg/json/JSONArray;

    .line 31
    .line 32
    invoke-static {v3}, Ljm1;->Z(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    instance-of v4, v3, Lorg/json/JSONObject;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    check-cast v3, Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-static {v3}, Ljm1;->a0(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :cond_1
    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object v0
.end method

.method public static b0(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0
.end method

.method public static c0(Lhg9;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lhg9;->e()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lhg9;->e()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_4

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lhg9;->c(I)B

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x22

    .line 22
    .line 23
    if-eq v2, v3, :cond_3

    .line 24
    .line 25
    const/16 v3, 0x27

    .line 26
    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    .line 29
    const/16 v3, 0x5c

    .line 30
    .line 31
    if-eq v2, v3, :cond_1

    .line 32
    .line 33
    packed-switch v2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    const/16 v4, 0x20

    .line 37
    .line 38
    if-lt v2, v4, :cond_0

    .line 39
    .line 40
    const/16 v4, 0x7e

    .line 41
    .line 42
    if-gt v2, v4, :cond_0

    .line 43
    .line 44
    int-to-char v2, v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    ushr-int/lit8 v3, v2, 0x6

    .line 53
    .line 54
    and-int/lit8 v3, v3, 0x3

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x30

    .line 57
    .line 58
    int-to-char v3, v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    ushr-int/lit8 v3, v2, 0x3

    .line 63
    .line 64
    and-int/lit8 v3, v3, 0x7

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x30

    .line 67
    .line 68
    int-to-char v3, v3

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    and-int/lit8 v2, v2, 0x7

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x30

    .line 75
    .line 76
    int-to-char v2, v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_0
    const-string v2, "\\r"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_1
    const-string v2, "\\f"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :pswitch_2
    const-string v2, "\\v"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :pswitch_3
    const-string v2, "\\n"

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :pswitch_4
    const-string v2, "\\t"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_5
    const-string v2, "\\b"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :pswitch_6
    const-string v2, "\\a"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    const-string v2, "\\\\"

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    const-string v2, "\\\'"

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    const-string v2, "\\\""

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Lyn8;Landroid/widget/ImageView;ZLe66;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lyn8;->a:Lq63;

    .line 5
    .line 6
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/bumptech/glide/a;->c(Landroid/content/Context;)Lyk6;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Loy3;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Loy3;-><init>(Lyn8;)V

    .line 28
    .line 29
    .line 30
    const-class p0, Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lyk6;->f(Ljava/lang/Class;)Lpk6;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, v1}, Lpk6;->D(Ljava/lang/Object;)Lpk6;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1, p2, p3}, Ljm1;->e(Lpk6;Landroid/widget/ImageView;ZLe66;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static d0(Ljava/lang/Object;J)Lo79;
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lq89;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo79;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lb89;

    .line 9
    .line 10
    iget-boolean v1, v1, Lb89;->a:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Lb89;

    .line 15
    .line 16
    iget v1, v0, Lb89;->c:I

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Lb89;->d(I)Lb89;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p0, p1, p2, v0}, Lq89;->d(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-object v0
.end method

.method public static e(Lpk6;Landroid/widget/ImageView;ZLe66;)V
    .locals 4

    .line 1
    sget-object v0, Lso2;->c:Lpo2;

    .line 2
    .line 3
    new-instance v1, Le31;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lmm0;->s(Lso2;Lpr0;)Lmm0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lpk6;

    .line 13
    .line 14
    invoke-virtual {v0, p3}, Lmm0;->m(Le66;)Lmm0;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Lpk6;

    .line 19
    .line 20
    new-instance v0, Lap2;

    .line 21
    .line 22
    invoke-direct {v0}, Lea8;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ltr9;

    .line 26
    .line 27
    const/4 v2, 0x7

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v1, v2, v3}, Ltr9;-><init>(IZ)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lea8;->a:Lz98;

    .line 33
    .line 34
    invoke-virtual {p3, v0}, Lpk6;->E(Lap2;)Lpk6;

    .line 35
    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    new-instance p2, Lnr5;

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-direct {p2, p3}, Lnr5;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lmm0;->q(Lnr5;)Lmm0;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lpk6;

    .line 57
    .line 58
    sget-object p3, Lkm2;->a:Lhm2;

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Lmm0;->d(Lkm2;)Lmm0;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lpk6;

    .line 65
    .line 66
    invoke-virtual {p2}, Lmm0;->r()Lmm0;

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lpk6;->B(Landroid/widget/ImageView;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static f([B)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    array-length v2, p0

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    aget-byte v2, p0, v1

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "%02x"

    .line 24
    .line 25
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static declared-synchronized g(Landroid/content/Context;)J
    .locals 3

    .line 1
    const-class v0, Ljm1;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    .line 5
    .line 6
    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "activity"

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/app/ActivityManager;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 18
    .line 19
    .line 20
    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-wide v1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public static h(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "FirebaseCrashlytics"

    .line 9
    .line 10
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static i(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void

    .line 7
    :catch_1
    move-exception p0

    .line 8
    throw p0

    .line 9
    :cond_0
    return-void
.end method

.method public static j(Ljava/io/Serializable;)[J
    .locals 4

    .line 1
    instance-of v0, p0, [I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, [I

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p0

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    aget v2, p0, v1

    .line 15
    .line 16
    int-to-long v2, v2

    .line 17
    aput-wide v2, v0, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0

    .line 23
    :cond_1
    instance-of v0, p0, [J

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    check-cast p0, [J

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static k(Landroid/os/Bundle;Landroid/os/Bundle;)Lmx6;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    move-object p0, p1

    .line 4
    :cond_0
    if-nez p0, :cond_1

    .line 5
    .line 6
    new-instance p0, Lmx6;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcy6;

    .line 17
    .line 18
    sget-object v0, Lpv2;->a:Lpv2;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcy6;-><init>(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lmx6;->a:Lcy6;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    const-class p1, Lmx6;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    new-instance v0, Ld65;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Ld65;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Ld65;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Ld65;->b()Ld65;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance p1, Lmx6;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lcy6;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcy6;-><init>(Ljava/util/Map;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p1, Lmx6;->a:Lcy6;

    .line 98
    .line 99
    return-object p1
.end method

.method public static l(Lk55;Lmt3;)Lrh;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    instance-of v1, v0, Lxh;

    .line 6
    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    check-cast v0, Lxh;

    .line 14
    .line 15
    iget-object v0, v0, Lxh;->k:Lji;

    .line 16
    .line 17
    invoke-virtual {v0}, Lji;->getSourceDir()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_8

    .line 22
    .line 23
    new-instance v2, Lq63;

    .line 24
    .line 25
    invoke-direct {v2, v1, v3}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lji;->getSplitsUsingWorkaround()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/16 v5, 0xa

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    new-instance v8, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_0

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    check-cast v9, Ljava/lang/String;

    .line 60
    .line 61
    new-instance v10, Lq63;

    .line 62
    .line 63
    invoke-direct {v10, v9, v3}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_3

    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    move-object v9, v8

    .line 90
    check-cast v9, Lq63;

    .line 91
    .line 92
    invoke-virtual {v9}, Lq63;->j()Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_1

    .line 97
    .line 98
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move-object v1, v4

    .line 103
    :cond_3
    sget-object v17, Lov2;->a:Lov2;

    .line 104
    .line 105
    if-nez v1, :cond_4

    .line 106
    .line 107
    move-object/from16 v1, v17

    .line 108
    .line 109
    :cond_4
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v2}, Lq63;->A()J

    .line 114
    .line 115
    .line 116
    move-result-wide v8

    .line 117
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    if-eqz v11, :cond_5

    .line 126
    .line 127
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    check-cast v11, Lq63;

    .line 132
    .line 133
    invoke-virtual {v11}, Lq63;->A()J

    .line 134
    .line 135
    .line 136
    move-result-wide v11

    .line 137
    add-long/2addr v6, v11

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    add-long/2addr v8, v6

    .line 140
    invoke-static {v8, v9, v3}, Ljm1;->G(JLjava/lang/String;)Lq63;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static {v0}, Ljm1;->V(Lji;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_6

    .line 153
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, ".apk"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v3, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v2, v0, v4}, Lq63;->d(Lq63;Lkl;)V

    .line 176
    .line 177
    .line 178
    new-instance v1, Lrh;

    .line 179
    .line 180
    const-string v2, "application/vnd.android.package-archive"

    .line 181
    .line 182
    invoke-direct {v1, v0, v2}, Lrh;-><init>(Lq63;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return-object v1

    .line 186
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v6, ".apks"

    .line 195
    .line 196
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v3, v4}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    invoke-virtual {v0}, Lji;->getName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-virtual {v0}, Lji;->getVersionName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    invoke-virtual {v0}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    invoke-virtual {v0}, Lji;->getInstallerPackage()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v13

    .line 227
    new-instance v8, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;

    .line 228
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 230
    .line 231
    .line 232
    move-result-wide v14

    .line 233
    const-string v16, "Swift Backup"

    .line 234
    .line 235
    invoke-direct/range {v8 .. v17}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    .line 236
    .line 237
    .line 238
    new-instance v0, Lvh;

    .line 239
    .line 240
    const-string v4, "base.apk"

    .line 241
    .line 242
    sget-object v6, Luh;->BASE:Luh;

    .line 243
    .line 244
    invoke-direct {v0, v2, v4, v6}, Lvh;-><init>(Lq63;Ljava/lang/String;Luh;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    new-instance v2, Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_7

    .line 269
    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    check-cast v4, Lq63;

    .line 275
    .line 276
    new-instance v5, Lvh;

    .line 277
    .line 278
    invoke-virtual {v4}, Lq63;->p()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    sget-object v7, Luh;->SPLIT:Luh;

    .line 283
    .line 284
    invoke-direct {v5, v4, v6, v7}, Lvh;-><init>(Lq63;Ljava/lang/String;Luh;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_7
    invoke-static {v0, v2}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-static {v3, v8, v0}, Lorg/swiftapps/swiftbackup/apkshare/a;->c(Lq63;Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;Ljava/util/ArrayList;)V

    .line 296
    .line 297
    .line 298
    new-instance v0, Lrh;

    .line 299
    .line 300
    const-string v1, "application/octet-stream"

    .line 301
    .line 302
    invoke-direct {v0, v3, v1}, Lrh;-><init>(Lq63;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return-object v0

    .line 306
    :cond_8
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const-string v1, "APK path unavailable for "

    .line 311
    .line 312
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    return-object v4

    .line 320
    :cond_9
    instance-of v1, v0, Lyh;

    .line 321
    .line 322
    if-eqz v1, :cond_a

    .line 323
    .line 324
    check-cast v0, Lyh;

    .line 325
    .line 326
    iget-object v1, v0, Lyh;->k:Lji;

    .line 327
    .line 328
    iget-object v0, v0, Lyh;->n:Lhk;

    .line 329
    .line 330
    invoke-static {v1, v0, v4}, Ljm1;->m(Lji;Lhk;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;)Lrh;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    return-object v0

    .line 335
    :cond_a
    instance-of v1, v0, Lwh;

    .line 336
    .line 337
    if-eqz v1, :cond_1a

    .line 338
    .line 339
    check-cast v0, Lwh;

    .line 340
    .line 341
    iget-object v1, v0, Lwh;->n:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 342
    .line 343
    iget-object v8, v0, Lwh;->k:Lji;

    .line 344
    .line 345
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasApk()Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_19

    .line 354
    .line 355
    new-instance v10, Lhk;

    .line 356
    .line 357
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v8}, Lji;->getPackageName()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-direct {v10, v0, v1, v3}, Lhk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v10}, Lhk;->e()Lq63;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-static {v0}, Lq63;->E(Lq63;)Z

    .line 373
    .line 374
    .line 375
    invoke-virtual {v10}, Lhk;->c()Lq63;

    .line 376
    .line 377
    .line 378
    move-result-object v16

    .line 379
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    new-instance v11, Lfo2;

    .line 383
    .line 384
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkLink()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v12

    .line 388
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkSize()Ljava/lang/Long;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 396
    .line 397
    .line 398
    move-result-wide v14

    .line 399
    const/4 v13, 0x1

    .line 400
    invoke-direct/range {v11 .. v16}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 401
    .line 402
    .line 403
    filled-new-array {v11}, [Lfo2;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-static {v0}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_b

    .line 416
    .line 417
    invoke-virtual {v10}, Lhk;->C()Lq63;

    .line 418
    .line 419
    .line 420
    move-result-object v16

    .line 421
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    new-instance v11, Lfo2;

    .line 425
    .line 426
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSplitsLink()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v12

    .line 430
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSplitsSize()Ljava/lang/Long;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 438
    .line 439
    .line 440
    move-result-wide v14

    .line 441
    const/4 v13, 0x2

    .line 442
    invoke-direct/range {v11 .. v16}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    .line 449
    .line 450
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    if-eqz v3, :cond_d

    .line 462
    .line 463
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    move-object v4, v3

    .line 468
    check-cast v4, Lfo2;

    .line 469
    .line 470
    iget-object v5, v4, Lfo2;->d:Lq63;

    .line 471
    .line 472
    invoke-virtual {v5}, Lq63;->j()Z

    .line 473
    .line 474
    .line 475
    move-result v5

    .line 476
    if-eqz v5, :cond_c

    .line 477
    .line 478
    iget-object v5, v4, Lfo2;->d:Lq63;

    .line 479
    .line 480
    invoke-virtual {v5}, Lq63;->A()J

    .line 481
    .line 482
    .line 483
    move-result-wide v11

    .line 484
    iget-wide v4, v4, Lfo2;->c:J

    .line 485
    .line 486
    cmp-long v4, v11, v4

    .line 487
    .line 488
    if-nez v4, :cond_c

    .line 489
    .line 490
    goto :goto_4

    .line 491
    :cond_c
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    goto :goto_4

    .line 495
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    if-eqz v0, :cond_e

    .line 500
    .line 501
    goto :goto_5

    .line 502
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    if-eqz v3, :cond_10

    .line 511
    .line 512
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    check-cast v3, Lfo2;

    .line 517
    .line 518
    iget-wide v3, v3, Lfo2;->c:J

    .line 519
    .line 520
    cmp-long v3, v3, v6

    .line 521
    .line 522
    if-gtz v3, :cond_f

    .line 523
    .line 524
    move-wide v4, v6

    .line 525
    goto :goto_7

    .line 526
    :cond_10
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    move-wide v3, v6

    .line 531
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 532
    .line 533
    .line 534
    move-result v5

    .line 535
    if-eqz v5, :cond_11

    .line 536
    .line 537
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v5

    .line 541
    check-cast v5, Lfo2;

    .line 542
    .line 543
    iget-wide v11, v5, Lfo2;->c:J

    .line 544
    .line 545
    add-long/2addr v3, v11

    .line 546
    goto :goto_6

    .line 547
    :cond_11
    move-wide v4, v3

    .line 548
    :goto_7
    new-instance v3, Lkh6;

    .line 549
    .line 550
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 554
    .line 555
    .line 556
    move-result-object v11

    .line 557
    :cond_12
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 558
    .line 559
    .line 560
    move-result v0

    .line 561
    if-eqz v0, :cond_17

    .line 562
    .line 563
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    move-object v1, v0

    .line 568
    check-cast v1, Lfo2;

    .line 569
    .line 570
    if-eqz v2, :cond_13

    .line 571
    .line 572
    new-instance v0, Loh;

    .line 573
    .line 574
    iget-wide v12, v3, Lkh6;->a:J

    .line 575
    .line 576
    invoke-direct {v0, v12, v13, v4, v5}, Loh;-><init>(JJ)V

    .line 577
    .line 578
    .line 579
    invoke-interface {v2, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    :cond_13
    new-instance v0, Lth;

    .line 583
    .line 584
    invoke-direct/range {v0 .. v5}, Lth;-><init>(Lfo2;Lmt3;Lkh6;J)V

    .line 585
    .line 586
    .line 587
    iget-object v12, v1, Lfo2;->d:Lq63;

    .line 588
    .line 589
    invoke-virtual {v12}, Lq63;->j()Z

    .line 590
    .line 591
    .line 592
    move-result v12

    .line 593
    if-eqz v12, :cond_14

    .line 594
    .line 595
    iget-object v12, v1, Lfo2;->d:Lq63;

    .line 596
    .line 597
    invoke-virtual {v12}, Lq63;->A()J

    .line 598
    .line 599
    .line 600
    move-result-wide v12

    .line 601
    iget-wide v14, v1, Lfo2;->c:J

    .line 602
    .line 603
    cmp-long v12, v12, v14

    .line 604
    .line 605
    if-nez v12, :cond_14

    .line 606
    .line 607
    goto :goto_9

    .line 608
    :cond_14
    sget-object v12, Ltb1;->a:Ltb1;

    .line 609
    .line 610
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 611
    .line 612
    .line 613
    move-result-object v12

    .line 614
    invoke-virtual {v12, v1}, Ltb1;->c(Lfo2;)Lno2;

    .line 615
    .line 616
    .line 617
    move-result-object v12

    .line 618
    :try_start_0
    iput-object v0, v12, Lno2;->f:Lmt3;

    .line 619
    .line 620
    invoke-virtual {v12}, Lno2;->b()Lke;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v0}, Lke;->e()Z

    .line 625
    .line 626
    .line 627
    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    if-eqz v13, :cond_16

    .line 629
    .line 630
    invoke-interface {v12}, Ljava/io/Closeable;->close()V

    .line 631
    .line 632
    .line 633
    :goto_9
    iget-wide v12, v3, Lkh6;->a:J

    .line 634
    .line 635
    iget-wide v0, v1, Lfo2;->c:J

    .line 636
    .line 637
    cmp-long v14, v0, v6

    .line 638
    .line 639
    if-gez v14, :cond_15

    .line 640
    .line 641
    move-wide v0, v6

    .line 642
    :cond_15
    add-long/2addr v12, v0

    .line 643
    iput-wide v12, v3, Lkh6;->a:J

    .line 644
    .line 645
    if-eqz v2, :cond_12

    .line 646
    .line 647
    new-instance v0, Loh;

    .line 648
    .line 649
    invoke-direct {v0, v12, v13, v4, v5}, Loh;-><init>(JJ)V

    .line 650
    .line 651
    .line 652
    invoke-interface {v2, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    goto :goto_8

    .line 656
    :cond_16
    :try_start_1
    invoke-virtual {v0}, Lke;->b()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 661
    .line 662
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    :catchall_0
    move-exception v0

    .line 671
    move-object v1, v0

    .line 672
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 673
    :catchall_1
    move-exception v0

    .line 674
    invoke-static {v12, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 675
    .line 676
    .line 677
    throw v0

    .line 678
    :cond_17
    if-eqz v2, :cond_18

    .line 679
    .line 680
    sget-object v0, Lph;->a:Lph;

    .line 681
    .line 682
    invoke-interface {v2, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    :cond_18
    invoke-static {v8, v10, v9}, Ljm1;->m(Lji;Lhk;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;)Lrh;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    return-object v0

    .line 690
    :cond_19
    const-string v0, "Cloud backup does not contain an APK"

    .line 691
    .line 692
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    return-object v4

    .line 696
    :cond_1a
    invoke-static {}, Lq;->j()V

    .line 697
    .line 698
    .line 699
    return-object v4
.end method

.method public static m(Lji;Lhk;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;)Lrh;
    .locals 15

    .line 1
    invoke-virtual/range {p1 .. p1}, Lhk;->c()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq63;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_18

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lhk;->u()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual/range {p1 .. p1}, Lhk;->C()Lq63;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-virtual/range {p2 .. p2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v2}, Lq63;->j()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    :goto_0
    if-eqz v3, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v2, v1

    .line 35
    :goto_1
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2}, Lq63;->j()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move-object v2, v1

    .line 45
    :goto_2
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual/range {p1 .. p1}, Lhk;->c()Lq63;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lq63;->A()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {v2}, Lq63;->A()J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move-object v6, v1

    .line 69
    :goto_3
    invoke-static {v6}, Lio4;->h(Ljava/lang/Long;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    add-long/2addr v6, v4

    .line 74
    invoke-static {v6, v7, v3}, Ljm1;->G(JLjava/lang/String;)Lq63;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {p0}, Ljm1;->V(Lji;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ".apk"

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v3, p0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual/range {p1 .. p1}, Lhk;->c()Lq63;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0, p0, v1}, Lq63;->d(Lq63;Lkl;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lrh;

    .line 113
    .line 114
    const-string v1, "application/vnd.android.package-archive"

    .line 115
    .line 116
    invoke-direct {v0, p0, v1}, Lrh;-><init>(Lq63;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_4
    const-string v5, "splits"

    .line 121
    .line 122
    invoke-virtual {v3, v5}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-static {v5}, Lq63;->E(Lq63;)Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_17

    .line 131
    .line 132
    new-instance v6, Lb7;

    .line 133
    .line 134
    const/4 v7, 0x3

    .line 135
    invoke-direct {v6, v7}, Lb7;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-static {v2, v5, v6, v1}, Lky;->a(Lq63;Lq63;Lbt3;Lrt3;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_16

    .line 143
    .line 144
    new-instance v2, Lsh;

    .line 145
    .line 146
    const/4 v6, 0x0

    .line 147
    invoke-direct {v2, v6}, Lsh;-><init>(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5, v2}, Lq63;->C(Lmt3;)Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    if-eqz v2, :cond_5

    .line 155
    .line 156
    new-instance v5, Lxg;

    .line 157
    .line 158
    const/4 v6, 0x1

    .line 159
    invoke-direct {v5, v6}, Lxg;-><init>(I)V

    .line 160
    .line 161
    .line 162
    invoke-static {v2, v5}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    goto :goto_4

    .line 167
    :cond_5
    move-object v2, v1

    .line 168
    :goto_4
    sget-object v14, Lov2;->a:Lov2;

    .line 169
    .line 170
    if-nez v2, :cond_6

    .line 171
    .line 172
    move-object v2, v14

    .line 173
    :cond_6
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-nez v5, :cond_15

    .line 178
    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v4, ".apks"

    .line 188
    .line 189
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v3, v4}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    if-eqz v4, :cond_9

    .line 211
    .line 212
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-nez v5, :cond_7

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_7
    move-object v4, v1

    .line 220
    :goto_5
    if-nez v4, :cond_8

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_8
    :goto_6
    move-object v7, v4

    .line 224
    goto :goto_8

    .line 225
    :cond_9
    :goto_7
    if-eqz p2, :cond_a

    .line 226
    .line 227
    invoke-virtual/range {p2 .. p2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    goto :goto_6

    .line 232
    :cond_a
    invoke-virtual {p0}, Lji;->getName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    goto :goto_6

    .line 237
    :goto_8
    if-eqz v0, :cond_c

    .line 238
    .line 239
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getVersionName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    if-nez v4, :cond_b

    .line 244
    .line 245
    goto :goto_a

    .line 246
    :cond_b
    :goto_9
    move-object v8, v4

    .line 247
    goto :goto_c

    .line 248
    :cond_c
    :goto_a
    if-eqz p2, :cond_d

    .line 249
    .line 250
    invoke-virtual/range {p2 .. p2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    goto :goto_b

    .line 255
    :cond_d
    move-object v4, v1

    .line 256
    :goto_b
    if-nez v4, :cond_b

    .line 257
    .line 258
    invoke-virtual {p0}, Lji;->getVersionName()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    goto :goto_9

    .line 263
    :goto_c
    if-eqz v0, :cond_f

    .line 264
    .line 265
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getVersionCode()Ljava/lang/Long;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    if-nez v4, :cond_e

    .line 270
    .line 271
    goto :goto_e

    .line 272
    :cond_e
    :goto_d
    move-object v9, v4

    .line 273
    goto :goto_10

    .line 274
    :cond_f
    :goto_e
    if-eqz p2, :cond_10

    .line 275
    .line 276
    invoke-virtual/range {p2 .. p2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionCode()Ljava/lang/Long;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    goto :goto_f

    .line 281
    :cond_10
    move-object v4, v1

    .line 282
    :goto_f
    if-nez v4, :cond_e

    .line 283
    .line 284
    invoke-virtual {p0}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    goto :goto_d

    .line 289
    :goto_10
    if-eqz v0, :cond_12

    .line 290
    .line 291
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getInstallerPackage()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    if-nez p0, :cond_11

    .line 296
    .line 297
    goto :goto_11

    .line 298
    :cond_11
    move-object v10, p0

    .line 299
    goto :goto_12

    .line 300
    :cond_12
    :goto_11
    if-eqz p2, :cond_13

    .line 301
    .line 302
    invoke-virtual/range {p2 .. p2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getInstallerPackage()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    :cond_13
    move-object v10, v1

    .line 307
    :goto_12
    new-instance v5, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;

    .line 308
    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 310
    .line 311
    .line 312
    move-result-wide v11

    .line 313
    const-string v13, "Swift Backup"

    .line 314
    .line 315
    invoke-direct/range {v5 .. v14}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    .line 316
    .line 317
    .line 318
    new-instance p0, Lvh;

    .line 319
    .line 320
    invoke-virtual/range {p1 .. p1}, Lhk;->c()Lq63;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    const-string v1, "base.apk"

    .line 325
    .line 326
    sget-object v4, Luh;->BASE:Luh;

    .line 327
    .line 328
    invoke-direct {p0, v0, v1, v4}, Lvh;-><init>(Lq63;Ljava/lang/String;Luh;)V

    .line 329
    .line 330
    .line 331
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    .line 336
    .line 337
    const/16 v1, 0xa

    .line 338
    .line 339
    invoke-static {v2, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 344
    .line 345
    .line 346
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eqz v2, :cond_14

    .line 355
    .line 356
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    check-cast v2, Lq63;

    .line 361
    .line 362
    new-instance v4, Lvh;

    .line 363
    .line 364
    invoke-virtual {v2}, Lq63;->p()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    sget-object v7, Luh;->SPLIT:Luh;

    .line 369
    .line 370
    invoke-direct {v4, v2, v6, v7}, Lvh;-><init>(Lq63;Ljava/lang/String;Luh;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    goto :goto_13

    .line 377
    :cond_14
    invoke-static {p0, v0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    invoke-static {v3, v5, p0}, Lorg/swiftapps/swiftbackup/apkshare/a;->c(Lq63;Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;Ljava/util/ArrayList;)V

    .line 382
    .line 383
    .line 384
    new-instance p0, Lrh;

    .line 385
    .line 386
    const-string v0, "application/octet-stream"

    .line 387
    .line 388
    invoke-direct {p0, v3, v0}, Lrh;-><init>(Lq63;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    return-object p0

    .line 392
    :cond_15
    const-string p0, "Split APK backup did not contain APK files"

    .line 393
    .line 394
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    return-object v1

    .line 398
    :cond_16
    const-string p0, "Unable to extract split APK backup"

    .line 399
    .line 400
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    return-object v1

    .line 404
    :cond_17
    const-string p0, "Unable to create splits export directory"

    .line 405
    .line 406
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    return-object v1

    .line 410
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lhk;->c()Lq63;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    const-string v0, "Backup APK does not exist: "

    .line 415
    .line 416
    invoke-static {p0, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    return-object v1
.end method

.method public static o(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    const-string v0, "json must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    new-instance p0, Lorg/json/JSONException;

    .line 22
    .line 23
    const-string v0, "field \""

    .line 24
    .line 25
    const-string v1, "\" is mapped to a null value"

    .line 26
    .line 27
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public static p(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    const-string v0, "json must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 14
    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "android"

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public static t(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "json must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "field \""

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance p0, Lorg/json/JSONException;

    .line 22
    .line 23
    const-string v0, "\" is mapped to a null value"

    .line 24
    .line 25
    invoke-static {v1, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    new-instance p0, Lorg/json/JSONException;

    .line 34
    .line 35
    const-string v0, "\" not found in json object"

    .line 36
    .line 37
    invoke-static {v1, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public static u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "json must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    new-instance p0, Lorg/json/JSONException;

    .line 22
    .line 23
    const-string v0, "field \""

    .line 24
    .line 25
    const-string v1, "\" is mapped to a null value"

    .line 26
    .line 27
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public static v(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Ljm1;->b0(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance p0, Lorg/json/JSONException;

    .line 21
    .line 22
    const-string v0, "field \""

    .line 23
    .line 24
    const-string v1, "\" is mapped to a null value"

    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public static w(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "json must not be null"

    .line 7
    .line 8
    invoke-static {p0, v1}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "additional parameter values must not be null"

    .line 43
    .line 44
    invoke-static {v2, v3}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static x(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    const-string v0, "json must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p0, Lorg/json/JSONException;

    .line 18
    .line 19
    const-string v0, "field \""

    .line 20
    .line 21
    const-string v1, "\" is mapped to a null value"

    .line 22
    .line 23
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static y(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    const-string v0, "json must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance p0, Lorg/json/JSONException;

    .line 26
    .line 27
    const-string v0, "field \""

    .line 28
    .line 29
    const-string v1, "\" is mapped to a null value"

    .line 30
    .line 31
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public static z([B)Ljava/lang/String;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v0, v0, 0x2

    .line 3
    .line 4
    new-array v0, v0, [C

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    aget-byte v2, p0, v1

    .line 11
    .line 12
    and-int/lit16 v3, v2, 0xff

    .line 13
    .line 14
    mul-int/lit8 v4, v1, 0x2

    .line 15
    .line 16
    ushr-int/lit8 v3, v3, 0x4

    .line 17
    .line 18
    sget-object v5, Ljm1;->a:[C

    .line 19
    .line 20
    aget-char v3, v5, v3

    .line 21
    .line 22
    aput-char v3, v0, v4

    .line 23
    .line 24
    add-int/lit8 v4, v4, 0x1

    .line 25
    .line 26
    and-int/lit8 v2, v2, 0xf

    .line 27
    .line 28
    aget-char v2, v5, v2

    .line 29
    .line 30
    aput-char v2, v0, v4

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 38
    .line 39
    .line 40
    return-object p0
.end method


# virtual methods
.method public abstract F()V
.end method

.method public abstract b(II)Z
.end method

.method public abstract c(II)Z
.end method

.method public n(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract q()I
.end method

.method public abstract r()I
.end method
