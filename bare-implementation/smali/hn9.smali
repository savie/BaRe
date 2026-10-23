.class public final Lhn9;
.super Laz3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "GoogleAuthSvcClientImpl"

    .line 2
    .line 3
    const-string v1, "GoogleAuthServiceClientImpl disconnected with reason: "

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Laz3;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final f()I
    .locals 0

    .line 1
    const p0, 0x1110e58

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final l(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string p0, "com.google.android.gms.auth.account.data.IGoogleAuthService"

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lat9;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lat9;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lat9;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-direct {v0, p1, p0, v1}, Lvz8;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final n()[Ly53;
    .locals 2

    .line 1
    sget-object p0, Lzv1;->i:Ly53;

    .line 2
    .line 3
    sget-object v0, Lzv1;->h:Ly53;

    .line 4
    .line 5
    sget-object v1, Lzv1;->g:Ly53;

    .line 6
    .line 7
    filled-new-array {p0, v0, v1}, [Ly53;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.google.android.gms.auth.account.data.IGoogleAuthService"

    .line 2
    .line 3
    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.google.android.gms.auth.account.authapi.START"

    .line 2
    .line 3
    return-object p0
.end method

.method public final s()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final t()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
