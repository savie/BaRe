.class public final Lr84;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lt84;


# instance fields
.field public a:Landroid/os/IBinder;


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    const-string v2, "moe.shizuku.server.IRemoteProcess"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lr84;->a:Landroid/os/IBinder;

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    sget p0, Ls84;->a:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    .line 41
    .line 42
    return p0

    .line 43
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lr84;->a:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    const-string v2, "moe.shizuku.server.IRemoteProcess"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lr84;->a:Landroid/os/IBinder;

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    sget p0, Ls84;->a:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    sget-object p0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    .line 40
    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final g()Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    const-string v2, "moe.shizuku.server.IRemoteProcess"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lr84;->a:Landroid/os/IBinder;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    sget p0, Ls84;->a:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    sget-object p0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    .line 40
    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final j()Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    const-string v2, "moe.shizuku.server.IRemoteProcess"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lr84;->a:Landroid/os/IBinder;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    sget p0, Ls84;->a:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    sget-object p0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    .line 40
    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final k()I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    const-string v2, "moe.shizuku.server.IRemoteProcess"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lr84;->a:Landroid/os/IBinder;

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    sget p0, Ls84;->a:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    .line 41
    .line 42
    return p0

    .line 43
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method
