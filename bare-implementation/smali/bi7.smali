.class public final Lbi7;
.super Lvd4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)Lky8;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lvd4;->b(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p0, :cond_5

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p2, p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    move-object v1, p1

    .line 17
    move-object v2, v1

    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v0, v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x2

    .line 33
    if-ne v4, v5, :cond_1

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/16 v5, 0x80

    .line 40
    .line 41
    if-ne v4, v5, :cond_0

    .line 42
    .line 43
    move-object v1, v3

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    move-object v2, v3

    .line 46
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    if-eqz v1, :cond_3

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    new-instance p1, Landroid/util/Pair;

    .line 54
    .line 55
    invoke-direct {p1, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lrg8;

    .line 59
    .line 60
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Landroid/hardware/usb/UsbEndpoint;

    .line 63
    .line 64
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Landroid/hardware/usb/UsbEndpoint;

    .line 67
    .line 68
    invoke-direct {v0, p2, p0, v1, p1}, Lrg8;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_3
    const-string p0, "Missing CCID bulk endpoints"

    .line 73
    .line 74
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_4
    const-string p0, "Unable to claim interface"

    .line 79
    .line 80
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_5
    const-string p0, "The connection type is not available via this transport"

    .line 85
    .line 86
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object p1
.end method
