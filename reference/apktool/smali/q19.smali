.class public final Lq19;
.super Lb19;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnz3;
.implements Loz3;


# static fields
.field public static final p:Lw09;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Landroid/os/Handler;

.field public final d:Lw09;

.field public final e:Ljava/util/Set;

.field public final f:Lz91;

.field public k:Lif7;

.field public n:Lw86;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lt19;->a:Lw09;

    .line 2
    .line 3
    sput-object v0, Lq19;->p:Lw09;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln29;Lz91;)V
    .locals 2

    .line 1
    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lb19;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lq19;->b:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lq19;->c:Landroid/os/Handler;

    .line 10
    .line 11
    iput-object p3, p0, Lq19;->f:Lz91;

    .line 12
    .line 13
    iget-object p1, p3, Lz91;->a:Ljava/util/Set;

    .line 14
    .line 15
    iput-object p1, p0, Lq19;->e:Ljava/util/Set;

    .line 16
    .line 17
    sget-object p1, Lq19;->p:Lw09;

    .line 18
    .line 19
    iput-object p1, p0, Lq19;->d:Lw09;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lhs1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lq19;->n:Lw86;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lw86;->b(Lhs1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lq19;->n:Lw86;

    .line 2
    .line 3
    iget-object v0, p0, Lw86;->f:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lpz3;

    .line 6
    .line 7
    iget-object v0, v0, Lpz3;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    iget-object p0, p0, Lw86;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ldf;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lg19;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Lg19;->p:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance p1, Lhs1;

    .line 26
    .line 27
    const/16 v0, 0x11

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {p1, v0, v1, v1}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lg19;->p(Lhs1;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Lg19;->f(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 8

    .line 1
    iget-object v0, p0, Lq19;->k:Lif7;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "<<default account>>"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    iget-object v4, v0, Lif7;->z:Lz91;

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v4, Landroid/accounts/Account;

    .line 16
    .line 17
    const-string v5, "com.google"

    .line 18
    .line 19
    invoke-direct {v4, v1, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, v0, Laz3;->c:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v1}, Lao7;->a(Landroid/content/Context;)Lao7;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lao7;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    move-object v1, v3

    .line 44
    :goto_0
    new-instance v5, Lm29;

    .line 45
    .line 46
    iget-object v6, v0, Lif7;->B:Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-static {v6}, Lly8;->h(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const/4 v7, 0x2

    .line 56
    invoke-direct {v5, v7, v4, v6, v1}, Lm29;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Laz3;->p()Landroid/os/IInterface;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lw19;

    .line 64
    .line 65
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v4, v0, Lvz8;->c:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget v4, Lm19;->a:I

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    const/16 v4, 0x4f45

    .line 80
    .line 81
    invoke-static {v1, v4}, Lyc9;->F0(Landroid/os/Parcel;I)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    const/4 v6, 0x4

    .line 86
    invoke-static {v1, v2, v6}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    .line 91
    .line 92
    const/4 v6, 0x0

    .line 93
    invoke-static {v1, v7, v5, v6}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v4}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 103
    .line 104
    .line 105
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :try_start_1
    iget-object v0, v0, Lvz8;->b:Landroid/os/IBinder;

    .line 107
    .line 108
    const/16 v5, 0xc

    .line 109
    .line 110
    invoke-interface {v0, v5, v1, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    .line 116
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 128
    .line 129
    .line 130
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    :goto_1
    const-string v1, "Remote service probably died when signIn is called"

    .line 132
    .line 133
    const-string v4, "SignInClientImpl"

    .line 134
    .line 135
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :try_start_3
    new-instance v1, Lf29;

    .line 139
    .line 140
    new-instance v5, Lhs1;

    .line 141
    .line 142
    const/16 v6, 0x8

    .line 143
    .line 144
    invoke-direct {v5, v6, v3, v3}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v2, v5, v3}, Lf29;-><init>(ILhs1;Lo29;)V

    .line 148
    .line 149
    .line 150
    new-instance v2, Lvb;

    .line 151
    .line 152
    invoke-direct {v2, p0, v1}, Lvb;-><init>(Lq19;Lf29;)V

    .line 153
    .line 154
    .line 155
    iget-object p0, p0, Lq19;->c:Landroid/os/Handler;

    .line 156
    .line 157
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :catch_1
    const-string p0, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    .line 162
    .line 163
    invoke-static {v4, p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .line 165
    .line 166
    :goto_2
    return-void
.end method

.method public final m(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :pswitch_1
    sget-object p0, La29;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    invoke-static {p2, p0}, Lm19;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, La29;

    .line 13
    .line 14
    invoke-static {p2}, Lm19;->b(Landroid/os/Parcel;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_2
    sget-object p1, Lf29;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    .line 20
    invoke-static {p2, p1}, Lm19;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lf29;

    .line 25
    .line 26
    invoke-static {p2}, Lm19;->b(Landroid/os/Parcel;)V

    .line 27
    .line 28
    .line 29
    new-instance p2, Lvb;

    .line 30
    .line 31
    invoke-direct {p2, p0, p1}, Lvb;-><init>(Lq19;Lf29;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lq19;->c:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    .line 42
    invoke-static {p2, p0}, Lm19;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 47
    .line 48
    sget-object p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    .line 50
    invoke-static {p2, p0}, Lm19;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 55
    .line 56
    invoke-static {p2}, Lm19;->b(Landroid/os/Parcel;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    .line 62
    invoke-static {p2, p0}, Lm19;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 67
    .line 68
    invoke-static {p2}, Lm19;->b(Landroid/os/Parcel;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 73
    .line 74
    invoke-static {p2, p0}, Lm19;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 79
    .line 80
    invoke-static {p2}, Lm19;->b(Landroid/os/Parcel;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_6
    sget-object p0, Lhs1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    .line 86
    invoke-static {p2, p0}, Lm19;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Lhs1;

    .line 91
    .line 92
    sget-object p0, Lx09;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 93
    .line 94
    invoke-static {p2, p0}, Lm19;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Lx09;

    .line 99
    .line 100
    invoke-static {p2}, Lm19;->b(Landroid/os/Parcel;)V

    .line 101
    .line 102
    .line 103
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    .line 105
    .line 106
    const/4 p0, 0x1

    .line 107
    return p0

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
