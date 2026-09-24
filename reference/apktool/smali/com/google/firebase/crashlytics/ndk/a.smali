.class public final synthetic Lcom/google/firebase/crashlytics/ndk/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmo1;


# virtual methods
.method public final m(Lpp0;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-class p0, Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lpp0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/Context;

    .line 8
    .line 9
    const-string p1, "com.google.firebase.crashlytics.unity_version"

    .line 10
    .line 11
    const-string v0, "string"

    .line 12
    .line 13
    invoke-static {p0, p1, v0}, Ljm1;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    move p1, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    xor-int/2addr p1, v0

    .line 24
    new-instance v0, Lt02;

    .line 25
    .line 26
    new-instance v1, Lcom/google/firebase/crashlytics/ndk/JniNativeApi;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/ndk/JniNativeApi;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lca3;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lca3;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0, v1, v2}, Lt02;-><init>(Landroid/content/Context;Llk5;Lca3;)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;

    .line 40
    .line 41
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;-><init>(Lt02;Z)V

    .line 42
    .line 43
    .line 44
    sput-object p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->e:Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;

    .line 45
    .line 46
    return-object p0
.end method
