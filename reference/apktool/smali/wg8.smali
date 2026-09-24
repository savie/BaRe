.class public final Lwg8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final n:Ll15;

.field public static final p:Ltg8;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Las1;

.field public final c:Landroid/hardware/usb/UsbManager;

.field public final d:Landroid/hardware/usb/UsbDevice;

.field public final e:I

.field public f:Lvg8;

.field public k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lwg8;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lwg8;->n:Ll15;

    .line 8
    .line 9
    new-instance v0, Ltg8;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lwg8;->p:Ltg8;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lwg8;->a:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lwg8;->f:Lvg8;

    .line 12
    .line 13
    iput-object v0, p0, Lwg8;->k:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x1050

    .line 20
    .line 21
    if-ne v1, v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0x11

    .line 28
    .line 29
    invoke-static {v2}, Ldj7;->C(I)[I

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    array-length v3, v2

    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_0
    if-ge v4, v3, :cond_1

    .line 36
    .line 37
    aget v5, v2, v4

    .line 38
    .line 39
    packed-switch v5, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :pswitch_0
    const/16 v6, 0x410

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :pswitch_1
    const/16 v6, 0x407

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :pswitch_2
    const/16 v6, 0x406

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_3
    const/16 v6, 0x405

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_4
    const/16 v6, 0x404

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_5
    const/16 v6, 0x403

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_6
    const/16 v6, 0x402

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_7
    const/16 v6, 0x401

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :pswitch_8
    const/16 v6, 0x120

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :pswitch_9
    const/16 v6, 0x116

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :pswitch_a
    const/16 v6, 0x115

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :pswitch_b
    const/16 v6, 0x114

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :pswitch_c
    const/16 v6, 0x113

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :pswitch_d
    const/16 v6, 0x112

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_e
    const/16 v6, 0x111

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :pswitch_f
    const/16 v6, 0x110

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :pswitch_10
    const/16 v6, 0x10

    .line 92
    .line 93
    :goto_1
    if-ne v6, v1, :cond_0

    .line 94
    .line 95
    iput v5, p0, Lwg8;->e:I

    .line 96
    .line 97
    new-instance v0, Las1;

    .line 98
    .line 99
    invoke-direct {v0, p1, p2}, Las1;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lwg8;->b:Las1;

    .line 103
    .line 104
    iput-object p2, p0, Lwg8;->d:Landroid/hardware/usb/UsbDevice;

    .line 105
    .line 106
    iput-object p1, p0, Lwg8;->c:Landroid/hardware/usb/UsbManager;

    .line 107
    .line 108
    return-void

    .line 109
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    const-string p0, "invalid pid value"

    .line 113
    .line 114
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :cond_2
    const-string p0, "Invalid vendor id"

    .line 119
    .line 120
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lvz0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lwg8;->c:Landroid/hardware/usb/UsbManager;

    .line 2
    .line 3
    iget-object v1, p0, Lwg8;->d:Landroid/hardware/usb/UsbDevice;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Lwg8;->b:Las1;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-class v1, Lrg8;

    .line 17
    .line 18
    invoke-static {v1}, Las1;->a(Ljava/lang/Class;)Lvd4;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    iget-object v0, v0, Las1;->b:Landroid/hardware/usb/UsbDevice;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Lvd4;->b(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const-class v0, Lxu5;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Lug8;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Lug8;-><init>(Lvz0;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lwg8;->f:Lvg8;

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    new-instance p1, Lvg8;

    .line 50
    .line 51
    invoke-direct {p1, p0, v0}, Lvg8;-><init>(Lwg8;Lug8;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lwg8;->f:Lvg8;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    iget-object p0, p1, Lvg8;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lwg8;->f:Lvg8;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Lvg8;->close()V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lwg8;->f:Lvg8;

    .line 72
    .line 73
    :cond_2
    new-instance v0, Lln;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    invoke-direct {v0, v1, p0, p1}, Lln;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lwg8;->a:Ljava/util/concurrent/ExecutorService;

    .line 80
    .line 81
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    const-string p0, "Unsupported connection type"

    .line 86
    .line 87
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    const-string p0, "Device access not permitted"

    .line 92
    .line 93
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final close()V
    .locals 2

    .line 1
    sget-object v0, Lwg8;->n:Ll15;

    .line 2
    .line 3
    const-string v1, "Closing YubiKey device"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ll15;->k(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lwg8;->f:Lvg8;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lvg8;->close()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lwg8;->f:Lvg8;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lwg8;->k:Ljava/lang/Runnable;

    .line 19
    .line 20
    iget-object p0, p0, Lwg8;->a:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UsbYubiKeyDevice{usbDevice="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lwg8;->d:Landroid/hardware/usb/UsbDevice;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", usbPid="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lwg8;->e:I

    .line 19
    .line 20
    packed-switch p0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    const-string p0, "null"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_0
    const-string p0, "YKP_OTP_FIDO"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_1
    const-string p0, "YK4_OTP_FIDO_CCID"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_2
    const-string p0, "YK4_FIDO_CCID"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_3
    const-string p0, "YK4_OTP_CCID"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_4
    const-string p0, "YK4_CCID"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_5
    const-string p0, "YK4_OTP_FIDO"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_6
    const-string p0, "YK4_FIDO"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_7
    const-string p0, "YK4_OTP"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_8
    const-string p0, "SKY_FIDO"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_9
    const-string p0, "NEO_OTP_FIDO_CCID"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_a
    const-string p0, "NEO_FIDO_CCID"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_b
    const-string p0, "NEO_OTP_FIDO"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_c
    const-string p0, "NEO_FIDO"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_d
    const-string p0, "NEO_CCID"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_e
    const-string p0, "NEO_OTP_CCID"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_f
    const-string p0, "NEO_OTP"

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_10
    const-string p0, "YKS_OTP"

    .line 75
    .line 76
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/16 p0, 0x7d

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
