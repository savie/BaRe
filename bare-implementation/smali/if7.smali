.class public final Lif7;
.super Laz3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final A:Landroid/os/Bundle;

.field public final B:Ljava/lang/Integer;

.field public final y:Z

.field public final z:Lz91;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lz91;Landroid/os/Bundle;Lnz3;Loz3;)V
    .locals 8

    .line 1
    const/16 v3, 0x2c

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
    const/4 p0, 0x1

    .line 14
    iput-boolean p0, v0, Lif7;->y:Z

    .line 15
    .line 16
    iput-object v4, v0, Lif7;->z:Lz91;

    .line 17
    .line 18
    iput-object p4, v0, Lif7;->A:Landroid/os/Bundle;

    .line 19
    .line 20
    iget-object p0, v4, Lz91;->f:Ljava/lang/Integer;

    .line 21
    .line 22
    iput-object p0, v0, Lif7;->B:Ljava/lang/Integer;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final f()I
    .locals 0

    .line 1
    const p0, 0xbdfcb8

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final j()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lif7;->y:Z

    .line 2
    .line 3
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
    const-string p0, "com.google.android.gms.signin.internal.ISignInService"

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lw19;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lw19;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lw19;

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

.method public final o()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lif7;->z:Lz91;

    .line 2
    .line 3
    iget-object v1, v0, Lz91;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Laz3;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p0, p0, Lif7;->A:Landroid/os/Bundle;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    .line 20
    .line 21
    iget-object v0, v0, Lz91;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.google.android.gms.signin.internal.ISignInService"

    .line 2
    .line 3
    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.google.android.gms.signin.service.START"

    .line 2
    .line 3
    return-object p0
.end method
