.class public abstract Ll09;
.super Lf09;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 p3, 0x2

    .line 2
    if-eq p1, p3, :cond_3

    .line 3
    .line 4
    const/4 p3, 0x3

    .line 5
    if-eq p1, p3, :cond_2

    .line 6
    .line 7
    const/4 p3, 0x4

    .line 8
    if-eq p1, p3, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x5

    .line 11
    if-eq p1, p3, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    invoke-static {p2}, Lg09;->a(Landroid/os/Parcel;)Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-static {p2}, Lg09;->b(Landroid/os/Parcel;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ll09;->b(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    .line 32
    invoke-static {p2}, Lg09;->a(Landroid/os/Parcel;)Landroid/os/Parcelable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-static {p2}, Lg09;->b(Landroid/os/Parcel;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ll09;->d(Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    .line 47
    invoke-static {p2}, Lg09;->a(Landroid/os/Parcel;)Landroid/os/Parcelable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-static {p2}, Lg09;->b(Landroid/os/Parcel;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ll09;->c(Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    .line 62
    invoke-static {p2}, Lg09;->a(Landroid/os/Parcel;)Landroid/os/Parcelable;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-static {p2}, Lg09;->b(Landroid/os/Parcel;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ll09;->e(Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    const/4 p0, 0x1

    .line 75
    return p0
.end method

.method public abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract c(Landroid/os/Bundle;)V
.end method

.method public abstract d(Landroid/os/Bundle;)V
.end method

.method public abstract e(Landroid/os/Bundle;)V
.end method
