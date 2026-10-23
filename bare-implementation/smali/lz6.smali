.class public final Llz6;
.super Landroid/os/Binder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Le94;


# instance fields
.field public final synthetic a:Lh07;


# direct methods
.method public constructor <init>(Lh07;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llz6;->a:Lh07;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "org.swiftapps.rootservice.ISbaRootProgress"

    .line 7
    .line 8
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Le94;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "org.swiftapps.rootservice.ISbaRootProgress"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Le94;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Le94;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Ld94;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p0, v0, Ld94;->a:Landroid/os/IBinder;

    .line 26
    .line 27
    return-object v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(JIIIILjava/lang/String;JJ)V
    .locals 2

    .line 1
    sget-object p1, Lmz6;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    const/4 p2, 0x1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p3, :cond_2

    .line 7
    .line 8
    if-eq p3, p2, :cond_1

    .line 9
    .line 10
    if-eq p3, p1, :cond_0

    .line 11
    .line 12
    move-object v1, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Li07;->Extract:Li07;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget-object v1, Li07;->ListTarEntries:Li07;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    sget-object v1, Li07;->Create:Li07;

    .line 21
    .line 22
    :goto_0
    if-nez v1, :cond_3

    .line 23
    .line 24
    const-string p0, "operation"

    .line 25
    .line 26
    invoke-static {p3, p0}, Lmz6;->a(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_3
    if-eqz p4, :cond_8

    .line 31
    .line 32
    if-eq p4, p2, :cond_7

    .line 33
    .line 34
    if-eq p4, p1, :cond_6

    .line 35
    .line 36
    const/4 p3, 0x3

    .line 37
    if-eq p4, p3, :cond_5

    .line 38
    .line 39
    const/4 p3, 0x4

    .line 40
    if-eq p4, p3, :cond_4

    .line 41
    .line 42
    move-object p3, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_4
    sget-object p3, Lk07;->Finalizing:Lk07;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_5
    sget-object p3, Lk07;->ExtractingArchive:Lk07;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_6
    sget-object p3, Lk07;->ListingArchive:Lk07;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_7
    sget-object p3, Lk07;->CreatingArchive:Lk07;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_8
    sget-object p3, Lk07;->Preparing:Lk07;

    .line 57
    .line 58
    :goto_1
    if-nez p3, :cond_9

    .line 59
    .line 60
    const-string p0, "phase"

    .line 61
    .line 62
    invoke-static {p4, p0}, Lmz6;->a(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_9
    packed-switch p5, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    move-object p4, v0

    .line 70
    goto :goto_2

    .line 71
    :pswitch_0
    sget-object p4, Ll07;->Finalize:Ll07;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_1
    sget-object p4, Ll07;->Extraction:Ll07;

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :pswitch_2
    sget-object p4, Ll07;->Listing:Ll07;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :pswitch_3
    sget-object p4, Ll07;->Decryption:Ll07;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :pswitch_4
    sget-object p4, Ll07;->Encryption:Ll07;

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :pswitch_5
    sget-object p4, Ll07;->Compression:Ll07;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :pswitch_6
    sget-object p4, Ll07;->Tar:Ll07;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :pswitch_7
    sget-object p4, Ll07;->Entry:Ll07;

    .line 93
    .line 94
    :goto_2
    if-nez p4, :cond_a

    .line 95
    .line 96
    const-string p0, "stage"

    .line 97
    .line 98
    invoke-static {p5, p0}, Lmz6;->a(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_a
    if-eqz p6, :cond_d

    .line 103
    .line 104
    if-eq p6, p2, :cond_c

    .line 105
    .line 106
    if-eq p6, p1, :cond_b

    .line 107
    .line 108
    move-object p1, v0

    .line 109
    goto :goto_3

    .line 110
    :cond_b
    sget-object p1, Lm07;->Completed:Lm07;

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_c
    sget-object p1, Lm07;->Progress:Lm07;

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_d
    sget-object p1, Lm07;->Started:Lm07;

    .line 117
    .line 118
    :goto_3
    if-nez p1, :cond_e

    .line 119
    .line 120
    const-string p0, "state"

    .line 121
    .line 122
    invoke-static {p6, p0}, Lmz6;->a(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_e
    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    const-wide/16 p5, 0x0

    .line 131
    .line 132
    cmp-long p5, p10, p5

    .line 133
    .line 134
    if-ltz p5, :cond_f

    .line 135
    .line 136
    move-object p11, p2

    .line 137
    :goto_4
    move-object p5, p3

    .line 138
    goto :goto_5

    .line 139
    :cond_f
    move-object p11, v0

    .line 140
    goto :goto_4

    .line 141
    :goto_5
    new-instance p3, Lf07;

    .line 142
    .line 143
    move-object p6, p4

    .line 144
    move-wide p9, p8

    .line 145
    move-object p4, v1

    .line 146
    move-object p8, p7

    .line 147
    move-object p7, p1

    .line 148
    invoke-direct/range {p3 .. p11}, Lf07;-><init>(Li07;Lk07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V

    .line 149
    .line 150
    .line 151
    iget-object p0, p0, Llz6;->a:Lh07;

    .line 152
    .line 153
    invoke-interface {p0, p3}, Lh07;->a(Lf07;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "org.swiftapps.rootservice.ISbaRootProgress"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v2, :cond_0

    .line 7
    .line 8
    const v3, 0xffffff

    .line 9
    .line 10
    .line 11
    if-gt v0, v3, :cond_0

    .line 12
    .line 13
    move-object/from16 v3, p2

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object/from16 v3, p2

    .line 20
    .line 21
    :goto_0
    const v4, 0x5f4e5446

    .line 22
    .line 23
    .line 24
    if-ne v0, v4, :cond_1

    .line 25
    .line 26
    move-object/from16 v4, p3

    .line 27
    .line 28
    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    move-object/from16 v4, p3

    .line 33
    .line 34
    if-eq v0, v2, :cond_2

    .line 35
    .line 36
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0

    .line 41
    :cond_2
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v12

    .line 65
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    .line 66
    .line 67
    .line 68
    move-result-wide v13

    .line 69
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    .line 70
    .line 71
    .line 72
    move-result-wide v15

    .line 73
    move-object/from16 v5, p0

    .line 74
    .line 75
    invoke-virtual/range {v5 .. v16}, Llz6;->c(JIIIILjava/lang/String;JJ)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    .line 80
    .line 81
    return v2
.end method
