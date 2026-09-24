.class public final Li39;
.super Lj39;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/common/api/Status;)Lfn6;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final f(Lne;)V
    .locals 3

    .line 1
    check-cast p1, Lc39;

    .line 2
    .line 3
    invoke-virtual {p1}, Laz3;->p()Landroid/os/IInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm39;

    .line 8
    .line 9
    new-instance v1, Lh39;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lh39;-><init>(Li39;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p1, Lc39;->y:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 15
    .line 16
    invoke-virtual {v0}, Lvz8;->f()Landroid/os/Parcel;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget v2, Lz29;->a:I

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p0}, Lz29;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 26
    .line 27
    .line 28
    const/16 p0, 0x67

    .line 29
    .line 30
    invoke-virtual {v0, p1, p0}, Lvz8;->g(Landroid/os/Parcel;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
