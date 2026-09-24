.class public final Le63;
.super Lvd4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)Lky8;
    .locals 6

    .line 1
    const/4 p0, 0x0

    .line 2
    move v0, p0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x0

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-ne v4, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v1, v3

    .line 32
    :goto_1
    if-eqz v1, :cond_3

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    invoke-virtual {p2, v1, p1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_2
    const-string p1, "Unable to claim interface"

    .line 43
    .line 44
    invoke-static {p1}, Ly5;->m(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_2
    move-object v1, v3

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    const-string p1, "The connection type is not available via this transport"

    .line 50
    .line 51
    invoke-static {p1}, Ll0;->e(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :goto_3
    move-object p1, v3

    .line 56
    :goto_4
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ge p0, v0, :cond_6

    .line 61
    .line 62
    invoke-virtual {v1, p0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-ne v4, v2, :cond_5

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    const/16 v5, 0x80

    .line 77
    .line 78
    if-ne v4, v5, :cond_4

    .line 79
    .line 80
    move-object v3, v0

    .line 81
    goto :goto_5

    .line 82
    :cond_4
    move-object p1, v0

    .line 83
    :cond_5
    :goto_5
    add-int/lit8 p0, p0, 0x1

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    new-instance p0, Landroid/util/Pair;

    .line 87
    .line 88
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Log8;

    .line 98
    .line 99
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Landroid/hardware/usb/UsbEndpoint;

    .line 102
    .line 103
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p0, Landroid/hardware/usb/UsbEndpoint;

    .line 106
    .line 107
    invoke-direct {p1, p2, v1}, Lsg8;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V

    .line 108
    .line 109
    .line 110
    return-object p1
.end method
