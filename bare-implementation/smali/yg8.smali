.class public final Lyg8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lvz0;

.field public final b:Lkg8;

.field public final c:Ljava/util/HashMap;

.field public final synthetic d:Lzg8;


# direct methods
.method public constructor <init>(Lzg8;Lkg8;Lvz0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyg8;->d:Lzg8;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lyg8;->c:Ljava/util/HashMap;

    .line 12
    .line 13
    iput-object p2, p0, Lyg8;->b:Lkg8;

    .line 14
    .line 15
    iput-object p3, p0, Lyg8;->a:Lvz0;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lyg8;->d:Lzg8;

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lwg8;

    .line 4
    .line 5
    iget-object v2, v0, Lzg8;->b:Landroid/hardware/usb/UsbManager;

    .line 6
    .line 7
    invoke-direct {v1, v2, p1}, Lwg8;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lyg8;->c:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lyg8;->b:Lkg8;

    .line 16
    .line 17
    iget-boolean v2, v2, Lkg8;->a:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, v1, Lwg8;->c:Landroid/hardware/usb/UsbManager;

    .line 22
    .line 23
    iget-object v3, v1, Lwg8;->d:Landroid/hardware/usb/UsbDevice;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    sget-object v2, Lzg8;->d:Ll15;

    .line 32
    .line 33
    const-string v3, "request permission"

    .line 34
    .line 35
    invoke-interface {v2, v3}, Ll15;->k(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lzg8;->a:Landroid/content/Context;

    .line 39
    .line 40
    new-instance v2, Lxg8;

    .line 41
    .line 42
    invoke-direct {v2, p0, v1}, Lxg8;-><init>(Lyg8;Lwg8;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p1, v2}, Lng8;->e(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Lxg8;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object p0, p0, Lyg8;->a:Lvz0;

    .line 50
    .line 51
    invoke-interface {p0, v1}, Lvz0;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catch_0
    sget-object p0, Lzg8;->d:Ll15;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 v1, 0x4

    .line 74
    const-string v2, "Attached usbDevice(vid={},pid={}) is not recognized as a valid YubiKey"

    .line 75
    .line 76
    invoke-static {v1, p0, v2, v0, p1}, Lms8;->B(ILl15;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
