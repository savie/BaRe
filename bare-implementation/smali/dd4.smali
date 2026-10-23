.class public final Ldd4;
.super Landroid/os/Binder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Led4;


# direct methods
.method public constructor <init>(Led4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldd4;->a:Led4;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x5f4e5446

    .line 5
    .line 6
    .line 7
    const-string v1, "android.content.IIntentSender"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return v2

    .line 18
    :cond_1
    if-eq p1, v2, :cond_2

    .line 19
    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Ldd4;->a:Led4;

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-eqz p3, :cond_3

    .line 38
    .line 39
    sget-object p3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    .line 41
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Landroid/content/Intent;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 p2, 0x0

    .line 49
    :goto_0
    iput-object p2, p1, Led4;->b:Landroid/content/Intent;

    .line 50
    .line 51
    iget-object p0, p0, Ldd4;->a:Led4;

    .line 52
    .line 53
    iget-object p0, p0, Led4;->a:Ljava/util/concurrent/CountDownLatch;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 56
    .line 57
    .line 58
    return v2
.end method
