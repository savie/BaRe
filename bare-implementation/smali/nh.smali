.class public final Lnh;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lt22;
.implements La13;
.implements Lzi0;
.implements Ldc5;
.implements Lzv5;
.implements Lav7;
.implements Ljk8;
.implements Lyi6;
.implements Lh9;
.implements Lu1a;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Lnh;->a:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnh;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 31
    iput p1, p0, Lnh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lnh;->a:I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lzu2;

    invoke-direct {v0, p1}, Lzu2;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lnh;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lka;Lka;)V
    .locals 0

    const/16 p2, 0x12

    iput p2, p0, Lnh;->a:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lnh;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 26
    iput p2, p0, Lnh;->a:I

    iput-object p1, p0, Lnh;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    iput v0, p0, Lnh;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lnh;->b:Ljava/lang/Object;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 22
    .line 23
    iput-object p1, p0, Lnh;->b:Ljava/lang/Object;

    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public constructor <init>(Lzm;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnh;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lnh;->b:Ljava/lang/Object;

    return-void
.end method

.method private final j(Lfc5;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static p(Lorg/json/JSONArray;)Lnh;
    .locals 10

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    new-instance v2, Ld69;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    new-instance v3, Ld69;

    .line 36
    .line 37
    const-string v4, "federatedId"

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string v5, "displayName"

    .line 48
    .line 49
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v6, "photoUrl"

    .line 58
    .line 59
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-static {v6}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    const-string v7, "providerId"

    .line 68
    .line 69
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v7}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const-string v8, "phoneNumber"

    .line 78
    .line 79
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-static {v8}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    const-string v9, "email"

    .line 88
    .line 89
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v4, v3, Ld69;->a:Ljava/lang/String;

    .line 101
    .line 102
    iput-object v5, v3, Ld69;->b:Ljava/lang/String;

    .line 103
    .line 104
    iput-object v6, v3, Ld69;->c:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v7, v3, Ld69;->d:Ljava/lang/String;

    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    iput-object v4, v3, Ld69;->e:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v8, v3, Ld69;->f:Ljava/lang/String;

    .line 112
    .line 113
    iput-object v2, v3, Ld69;->g:Ljava/lang/String;

    .line 114
    .line 115
    move-object v2, v3

    .line 116
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    new-instance p0, Lnh;

    .line 123
    .line 124
    invoke-direct {p0, v0}, Lnh;-><init>(Ljava/util/ArrayList;)V

    .line 125
    .line 126
    .line 127
    return-object p0

    .line 128
    :cond_3
    :goto_2
    new-instance p0, Lnh;

    .line 129
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, v0}, Lnh;-><init>(Ljava/util/ArrayList;)V

    .line 136
    .line 137
    .line 138
    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lnh;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lh12;

    .line 13
    .line 14
    check-cast p1, Lo94;

    .line 15
    .line 16
    new-instance v0, Lfe4;

    .line 17
    .line 18
    invoke-direct {v0, p2}, Lfe4;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Laz3;->p()Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lv74;

    .line 26
    .line 27
    new-instance p2, Lqn1;

    .line 28
    .line 29
    const/4 v3, -0x1

    .line 30
    invoke-direct {p2, v3, v3, v2, v1}, Lqn1;-><init>(IIIZ)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lef;

    .line 34
    .line 35
    invoke-direct {v1, p2, v2}, Lef;-><init>(Lqn1;Z)V

    .line 36
    .line 37
    .line 38
    iput-boolean v2, v1, Lef;->c:Z

    .line 39
    .line 40
    check-cast p1, Lt74;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const-string v2, "com.google.android.gms.identitycredentials.internal.IIdentityCredentialService"

    .line 47
    .line 48
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget v2, Lsa9;->a:I

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p0}, Lsa9;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p2, v1}, Lsa9;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x6

    .line 63
    invoke-virtual {p1, p2, p0}, Lt74;->a(Landroid/os/Parcel;I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_0
    check-cast p1, Lk29;

    .line 68
    .line 69
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 70
    .line 71
    invoke-virtual {p1}, Laz3;->p()Landroid/os/IInterface;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ld29;

    .line 76
    .line 77
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p0, Lsz7;

    .line 80
    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v3, p1, Lvz8;->c:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget v3, Lm19;->a:I

    .line 91
    .line 92
    if-nez p0, :cond_0

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0, v2}, Lsz7;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    .line 103
    .line 104
    :goto_0
    :try_start_0
    iget-object p0, p1, Lvz8;->b:Landroid/os/IBinder;

    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr v0, v1

    .line 19
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s0:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t0:I

    .line 23
    .line 24
    add-int/2addr v0, p0

    .line 25
    return v0
.end method

.method public c(Lqc6;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Le97;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v1, v0, Le97;->b:I

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    iput v1, v0, Le97;->b:I

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance p0, Lkd5;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string v1, "Session does not exist"

    .line 31
    .line 32
    invoke-direct {p0, v1, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public e(Lfc5;Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget p1, p0, Lnh;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    return v0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lol5;

    .line 11
    .line 12
    iget-object p1, p0, Lol5;->f:Lkl5;

    .line 13
    .line 14
    const v1, 0x7f0a034c

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0}, Lol5;->getSelectedItemId()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ne p1, v3, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lol5;->f:Lkl5;

    .line 31
    .line 32
    check-cast p0, Ler1;

    .line 33
    .line 34
    iget-object p0, p0, Ler1;->a:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 37
    .line 38
    sget-object p1, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    check-cast p1, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eq p2, v1, :cond_0

    .line 66
    .line 67
    move v0, v2

    .line 68
    :cond_0
    invoke-virtual {p0, v0}, Lil0;->A(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0(I)V

    .line 72
    .line 73
    .line 74
    move v0, v2

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    iget-object p0, p0, Lol5;->e:Lll5;

    .line 77
    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    check-cast p0, Lfs;

    .line 81
    .line 82
    iget-object p0, p0, Lfs;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 85
    .line 86
    sget-object p1, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    sget-object p1, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    check-cast p1, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-ne p1, v2, :cond_2

    .line 115
    .line 116
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iget-object v3, v3, Lw44;->f:Lorg/swiftapps/swiftbackup/views/NoSwipeViewPager;

    .line 121
    .line 122
    iput-boolean v0, v3, Landroidx/viewpager/widget/ViewPager;->M:Z

    .line 123
    .line 124
    invoke-virtual {v3, p1, v0, v0, v0}, Landroidx/viewpager/widget/ViewPager;->w(IIZZ)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->a0()Lc64;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    sget-object v3, Lzn4;->a:Lzn4;

    .line 132
    .line 133
    new-instance v3, Lej;

    .line 134
    .line 135
    const/16 v4, 0x16

    .line 136
    .line 137
    invoke-direct {v3, p1, v4}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 138
    .line 139
    .line 140
    invoke-static {v3}, Lzn4;->c(Lbt3;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    iget-object v3, v3, Lw44;->f:Lorg/swiftapps/swiftbackup/views/NoSwipeViewPager;

    .line 149
    .line 150
    iput-boolean v0, v3, Landroidx/viewpager/widget/ViewPager;->M:Z

    .line 151
    .line 152
    invoke-virtual {v3, p1, v0, v0, v0}, Landroidx/viewpager/widget/ViewPager;->w(IIZZ)V

    .line 153
    .line 154
    .line 155
    :goto_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eq p1, v1, :cond_3

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    move v2, v0

    .line 163
    :goto_1
    invoke-virtual {p0, v2}, Lil0;->A(Z)V

    .line 164
    .line 165
    .line 166
    :cond_4
    :goto_2
    return v0

    .line 167
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lqc6;Lhx7;Lgd;Lgd;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lnh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lwj6;

    .line 4
    .line 5
    new-instance p3, Lrj6;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p3, v0, p0, p1, p4}, Lrj6;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p3}, Lwj6;->n(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public g(Lfu;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lgl9;

    .line 4
    .line 5
    new-instance v0, Lh1a;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2, p0}, Lh1a;-><init>(Lfu;Ljava/lang/CharSequence;Lgl9;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getPaddingEnd()I
    .locals 0

    .line 1
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t0:I

    .line 6
    .line 7
    return p0
.end method

.method public getPaddingStart()I
    .locals 0

    .line 1
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s0:I

    .line 6
    .line 7
    return p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    return-object p0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;

    .line 4
    .line 5
    check-cast p1, Lg9;

    .line 6
    .line 7
    iget-object v0, p1, Lg9;->b:Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "ProxyBillingActivityV2"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lta9;->e(Landroid/content/Intent;Ljava/lang/String;)Lyq0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v2, v2, Lyq0;->a:I

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->f:Landroid/os/ResultReceiver;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-virtual {v3, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget p1, p1, Lg9;->a:I

    .line 33
    .line 34
    const/4 v0, -0x1

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "External offer dialog finished with resultCode: "

    .line 42
    .line 43
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, " and billing\'s responseCode: "

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public i()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public k(Lod;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Law5;

    .line 4
    .line 5
    iget-object p0, p0, Law5;->d:Las5;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Las5;->D(Lod;)Lde;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public l()Li87;
    .locals 2

    .line 1
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Le97;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget p0, v0, Le97;->b:I

    .line 14
    .line 15
    if-ltz p0, :cond_0

    .line 16
    .line 17
    add-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    iput p0, v0, Le97;->b:I

    .line 20
    .line 21
    :cond_0
    iget-object p0, v0, Le97;->a:Li87;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    new-instance v0, Le97;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v1, Li87;

    .line 30
    .line 31
    invoke-direct {v1}, Li87;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Le97;->a:Li87;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget p0, v0, Le97;->b:I

    .line 40
    .line 41
    if-ltz p0, :cond_2

    .line 42
    .line 43
    add-int/lit8 p0, p0, 0x1

    .line 44
    .line 45
    iput p0, v0, Le97;->b:I

    .line 46
    .line 47
    :cond_2
    return-object v1
.end method

.method public m(Lfc5;)V
    .locals 3

    .line 1
    iget v0, p0, Lnh;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lo88;

    .line 9
    .line 10
    iget-object v0, p0, Lo88;->e:Lr88;

    .line 11
    .line 12
    iget-object v0, v0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->o()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object p0, p0, Lo88;->f:Landroid/view/Window$Callback;

    .line 19
    .line 20
    const/16 v1, 0x6c

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {p0, v0, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public n(Lk55;)V
    .locals 6

    .line 1
    new-instance v0, Lw45;

    .line 2
    .line 3
    iget-object v1, p0, Lnh;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lzm;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lw45;-><init>(Lio1;)V

    .line 8
    .line 9
    .line 10
    const v2, 0x7f130426

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Lwa;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput v2, v0, Lw45;->r:I

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, v3}, Lw45;->n(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/16 v4, 0x64

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Lw45;->l(I)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v0, v4}, Lw45;->m(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lw45;->k(Z)V

    .line 37
    .line 38
    .line 39
    instance-of v2, p1, Lwh;

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    const v5, 0x7f130209

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const v5, 0x7f130427

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lw45;->i(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lw45;->show()V

    .line 64
    .line 65
    .line 66
    const v1, 0x102000b

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lho;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/widget/TextView;

    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    const/high16 v5, 0x41580000    # 13.5f

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    .line 81
    .line 82
    :cond_1
    if-eqz v2, :cond_2

    .line 83
    .line 84
    new-instance v3, Ljh;

    .line 85
    .line 86
    invoke-direct {v3, v4, p0, v0}, Ljh;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    sget-object v1, Lzn4;->a:Lzn4;

    .line 90
    .line 91
    new-instance v1, Lkh;

    .line 92
    .line 93
    invoke-direct {v1, p0, p1, v3, v0}, Lkh;-><init>(Lnh;Lk55;Ljh;Lw45;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Lzn4;->d(Lbt3;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public o(Lxy7;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lgm7;->l()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Lff5;

    .line 15
    .line 16
    invoke-direct {v2, v0, p1}, Lff5;-><init>(Ljava/util/List;Lzy7;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lxy7;->e:Ljava/util/List;

    .line 20
    .line 21
    sget-object v0, Lq05;->CLOUD:Lq05;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    new-instance p1, Lg52;

    .line 30
    .line 31
    const/16 v0, 0x8

    .line 32
    .line 33
    invoke-direct {p1, v0, p0, v2}, Lg52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-static {p0, v1, p1, v0}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-class p1, Lff5;

    .line 46
    .line 47
    invoke-virtual {p0, p1, v2}, Lqo0;->c(Ljava/lang/Class;Lpw6;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    const-string p0, "mAdapter"

    .line 52
    .line 53
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1
.end method

.method public onError(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lwv3;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lo21;

    .line 9
    .line 10
    invoke-virtual {p0}, Lo21;->t()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Lho5;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lbn6;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lbw3;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lo21;

    .line 9
    .line 10
    invoke-virtual {p0}, Lo21;->t()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Lho5;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
