.class public abstract Lsg8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lky8;


# static fields
.field public static final c:Ll15;


# instance fields
.field public final a:Landroid/hardware/usb/UsbDeviceConnection;

.field public final b:Landroid/hardware/usb/UsbInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lsg8;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lsg8;->c:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsg8;->a:Landroid/hardware/usb/UsbDeviceConnection;

    .line 5
    .line 6
    iput-object p2, p0, Lsg8;->b:Landroid/hardware/usb/UsbInterface;

    .line 7
    .line 8
    const-string p1, "USB connection opened: {}"

    .line 9
    .line 10
    const/4 p2, 0x4

    .line 11
    sget-object v0, Lsg8;->c:Ll15;

    .line 12
    .line 13
    invoke-static {p2, v0, p1, p0}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsg8;->b:Landroid/hardware/usb/UsbInterface;

    .line 2
    .line 3
    iget-object v1, p0, Lsg8;->a:Landroid/hardware/usb/UsbDeviceConnection;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 9
    .line 10
    .line 11
    const-string v0, "USB connection closed: {}"

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    sget-object v2, Lsg8;->c:Ll15;

    .line 15
    .line 16
    invoke-static {v1, v2, v0, p0}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
