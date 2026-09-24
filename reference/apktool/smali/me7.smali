.class public final Lme7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/IBinder;


# instance fields
.field public final a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroid/os/IBinder;

    .line 5
    .line 6
    iput-object p1, p0, Lme7;->a:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lme7;->a:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lme7;->a:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lme7;->a:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isBinderAlive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lme7;->a:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lme7;->a:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final pingBinder()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lme7;->a:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/os/IBinder;->pingBinder()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .line 1
    sget-boolean v0, Lle7;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lle7;->d()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v3, 0xd

    .line 12
    .line 13
    if-lt v0, v3, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    :try_start_0
    const-string v4, "moe.shizuku.server.IShizukuService"

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lme7;->a:Landroid/os/IBinder;

    .line 28
    .line 29
    invoke-virtual {v3, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_3

    .line 43
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-virtual {v3, p2, v2, p0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    :try_start_1
    invoke-static {}, Lle7;->h()Lh94;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lf94;

    .line 57
    .line 58
    iget-object p0, p0, Lf94;->a:Landroid/os/IBinder;

    .line 59
    .line 60
    invoke-interface {p0, v1, v3, p3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catch_0
    move-exception p0

    .line 65
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :cond_2
    :try_start_3
    invoke-static {}, Lle7;->h()Lh94;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lf94;

    .line 76
    .line 77
    iget-object p0, p0, Lf94;->a:Landroid/os/IBinder;

    .line 78
    .line 79
    invoke-interface {p0, v1, v3, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    .line 81
    .line 82
    :goto_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 83
    .line 84
    .line 85
    return v1

    .line 86
    :catch_1
    move-exception p0

    .line 87
    :try_start_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 88
    .line 89
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    :goto_3
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public final unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lme7;->a:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
