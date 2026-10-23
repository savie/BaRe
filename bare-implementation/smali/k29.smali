.class public final Lk29;
.super Laz3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final y:Ltz7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lz91;Ltz7;Lg19;Lg19;)V
    .locals 8

    .line 1
    const/16 v3, 0x10e

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p5

    .line 9
    move-object v6, p6

    .line 10
    invoke-direct/range {v0 .. v7}, Laz3;-><init>(Landroid/content/Context;Landroid/os/Looper;ILz91;Lnz3;Loz3;I)V

    .line 11
    .line 12
    .line 13
    iput-object p4, v0, Lk29;->y:Ltz7;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final f()I
    .locals 0

    .line 1
    const p0, 0xc1fa340

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
    const-string p0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Ld29;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Ld29;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Ld29;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, p1, p0, v1}, Lvz8;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final n()[Ly53;
    .locals 0

    .line 1
    sget-object p0, Lly8;->e:[Ly53;

    .line 2
    .line 3
    return-object p0
.end method

.method public final o()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lk29;->y:Ltz7;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    .line 2
    .line 3
    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.google.android.gms.common.telemetry.service.START"

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
