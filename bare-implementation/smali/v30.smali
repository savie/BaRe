.class public final Lv30;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lv30;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv30;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lv30;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lv30;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string v0, "datastore_shared_counter"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lu30;

    .line 15
    .line 16
    check-cast p0, Lfi5;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-direct {v0, p0, v2}, Lu30;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lu30;->invoke()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/io/File;

    .line 27
    .line 28
    const/high16 v0, 0x38000000

    .line 29
    .line 30
    :try_start_0
    invoke-static {p0, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    sget-object v0, Lxc7;->b:Landroidx/datastore/core/NativeSharedCounter;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroidx/datastore/core/NativeSharedCounter;->nativeTruncateFile(I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Landroidx/datastore/core/NativeSharedCounter;->nativeCreateSharedCounter(I)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    const-wide/16 v4, 0x0

    .line 51
    .line 52
    cmp-long p0, v2, v4

    .line 53
    .line 54
    if-ltz p0, :cond_0

    .line 55
    .line 56
    new-instance p0, Lxc7;

    .line 57
    .line 58
    invoke-direct {p0, v2, v3}, Lxc7;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    .line 66
    .line 67
    const-string v0, "Failed to mmap counter file"

    .line 68
    .line 69
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 74
    .line 75
    const-string v0, "Failed to truncate counter file"

    .line 76
    .line 77
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 85
    .line 86
    .line 87
    :cond_2
    throw p0

    .line 88
    :pswitch_0
    check-cast p0, Los4;

    .line 89
    .line 90
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    check-cast p0, Lzl8;

    .line 95
    .line 96
    invoke-interface {p0}, Lzl8;->getViewModelStore()Lyl8;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :pswitch_1
    check-cast p0, Los4;

    .line 102
    .line 103
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Lzl8;

    .line 108
    .line 109
    instance-of v0, p0, Lw24;

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    move-object v1, p0

    .line 114
    check-cast v1, Lw24;

    .line 115
    .line 116
    :cond_3
    if-eqz v1, :cond_4

    .line 117
    .line 118
    invoke-interface {v1}, Lw24;->getDefaultViewModelCreationExtras()Lej5;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    sget-object p0, Lm22;->b:Lm22;

    .line 124
    .line 125
    :goto_0
    return-object p0

    .line 126
    :pswitch_2
    check-cast p0, Los4;

    .line 127
    .line 128
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Lzl8;

    .line 133
    .line 134
    invoke-interface {p0}, Lzl8;->getViewModelStore()Lyl8;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
