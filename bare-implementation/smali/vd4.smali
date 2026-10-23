.class public abstract Lvd4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lvd4;->a:I

    .line 5
    .line 6
    iput p2, p0, Lvd4;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)Lky8;
.end method

.method public final b(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget v3, p0, Lvd4;->a:I

    .line 17
    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget v3, p0, Lvd4;->b:I

    .line 25
    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method
