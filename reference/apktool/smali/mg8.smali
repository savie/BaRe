.class public final Lmg8;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lng8;


# direct methods
.method public constructor <init>(Lng8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmg8;->a:Lng8;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string v0, "com.yubico.yubikey.USB_PERMISSION"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-static {p2}, Lng8;->a(Landroid/content/Intent;)Landroid/hardware/usb/UsbDevice;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "usb"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 24
    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    iget-object p0, p0, Lmg8;->a:Lng8;

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sget-object v1, Lng8;->g:Ll15;

    .line 34
    .line 35
    const-string v2, "Permission result for {}, permitted: {}"

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x4

    .line 46
    invoke-static {v5, v1, v2, v3, v4}, Lms8;->B(ILl15;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lng8;->d:Ljava/util/WeakHashMap;

    .line 50
    .line 51
    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/util/Set;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    monitor-enter v1

    .line 60
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_0

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lxg8;

    .line 75
    .line 76
    invoke-virtual {v3, v0}, Lxg8;->a(Z)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 83
    .line 84
    .line 85
    monitor-exit v1

    .line 86
    goto :goto_2

    .line 87
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0

    .line 89
    :cond_1
    :goto_2
    iget-object v0, p0, Lng8;->e:Ljava/util/HashSet;

    .line 90
    .line 91
    monitor-enter v0

    .line 92
    :try_start_1
    iget-object v1, p0, Lng8;->e:Ljava/util/HashSet;

    .line 93
    .line 94
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_2

    .line 99
    .line 100
    iget-object p2, p0, Lng8;->e:Ljava/util/HashSet;

    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_2

    .line 107
    .line 108
    iget-object p0, p0, Lng8;->b:Lmg8;

    .line 109
    .line 110
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :catchall_1
    move-exception p0

    .line 115
    goto :goto_4

    .line 116
    :cond_2
    :goto_3
    monitor-exit v0

    .line 117
    return-void

    .line 118
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    throw p0

    .line 120
    :cond_3
    return-void
.end method
