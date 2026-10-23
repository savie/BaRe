.class public final Lyu5;
.super Lvd4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)Lky8;
    .locals 2

    .line 1
    new-instance v0, Lpg8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lvd4;->b(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p2, p0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-direct {v0, p2, p0}, Lsg8;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const-string p0, "Unable to claim interface"

    .line 22
    .line 23
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    const-string p0, "The connection type is not available via this transport"

    .line 28
    .line 29
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method
