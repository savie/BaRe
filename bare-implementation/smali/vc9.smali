.class public synthetic Lvc9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ld36;
.implements Lfr9;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(BI)V
    .locals 0

    .line 1
    iput p2, p0, Lvc9;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/16 p1, 0x10

    .line 14
    .line 15
    new-array p1, p1, [C

    .line 16
    .line 17
    iput-object p1, p0, Lvc9;->c:Ljava/lang/Object;

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lvc9;->a:I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 28
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lvc9;->c:Ljava/lang/Object;

    return-void

    .line 29
    :cond_0
    const-string p0, "The max pool size must be > 0"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lgf9;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lvc9;->a:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lvc9;->c:Ljava/lang/Object;

    .line 23
    iget v0, p1, Lgf9;->a:I

    .line 24
    iget p1, p1, Lgf9;->b:I

    add-int/2addr v0, p1

    .line 25
    iput v0, p0, Lvc9;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lud9;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lvc9;->a:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvc9;->c:Ljava/lang/Object;

    iput p2, p0, Lvc9;->b:I

    return-void
.end method


# virtual methods
.method public a(I[B[B)[B
    .locals 3

    .line 1
    iget-object p0, p0, Lvc9;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lgf9;

    .line 4
    .line 5
    array-length v0, p3

    .line 6
    const/4 v1, 0x0

    .line 7
    if-lt v0, p1, :cond_0

    .line 8
    .line 9
    array-length v0, p3

    .line 10
    invoke-static {p3, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget p3, p0, Lgf9;->a:I

    .line 15
    .line 16
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    iget v0, p0, Lgf9;->a:I

    .line 21
    .line 22
    iget v2, p0, Lgf9;->b:I

    .line 23
    .line 24
    add-int/2addr v2, v0

    .line 25
    invoke-static {p2, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance v0, Lai5;

    .line 30
    .line 31
    const/16 v2, 0x8

    .line 32
    .line 33
    invoke-direct {v0, v2}, Lai5;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object v1, v0, Lai5;->c:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object v1, v0, Lai5;->d:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v1, v0, Lai5;->e:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object p0, v0, Lai5;->b:Ljava/lang/Object;

    .line 43
    .line 44
    new-instance p0, Lkm8;

    .line 45
    .line 46
    invoke-static {p3}, Ld2a;->a([B)Ld2a;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-direct {p0, p3}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object p0, v0, Lai5;->c:Ljava/lang/Object;

    .line 54
    .line 55
    new-instance p0, Lkm8;

    .line 56
    .line 57
    invoke-static {p2}, Ld2a;->a([B)Ld2a;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p0, p2}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-object p0, v0, Lai5;->d:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {v0}, Lai5;->B()Lte9;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Lq1a;->c(Lte9;)Lq1a;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    sget-object p2, Lx13;->d:[B

    .line 75
    .line 76
    invoke-virtual {p0, p1, p2}, Lq1a;->a([B[B)[B

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_0
    const-string p0, "ciphertext too short"

    .line 82
    .line 83
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lvc9;->b:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, v0

    .line 8
    invoke-virtual {p0, v1}, Lvc9;->e(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lvc9;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, [C

    .line 18
    .line 19
    iget v2, p0, Lvc9;->b:I

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lvc9;->b:I

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    add-int/2addr p1, v0

    .line 32
    iput p1, p0, Lvc9;->b:I

    .line 33
    .line 34
    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lvc9;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lvc9;->b:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_1

    .line 13
    .line 14
    aget-object v4, v0, v3

    .line 15
    .line 16
    if-eq v4, p1, :cond_0

    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "Already in the pool!"

    .line 22
    .line 23
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    iget v1, p0, Lvc9;->b:I

    .line 28
    .line 29
    array-length v3, v0

    .line 30
    if-ge v1, v3, :cond_2

    .line 31
    .line 32
    aput-object p1, v0, v1

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    add-int/2addr v1, p1

    .line 36
    iput v1, p0, Lvc9;->b:I

    .line 37
    .line 38
    return p1

    .line 39
    :cond_2
    return v2
.end method

.method public d()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lvc9;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/Object;

    .line 4
    .line 5
    iget v1, p0, Lvc9;->b:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    aget-object v3, v0, v1

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    iget v0, p0, Lvc9;->b:I

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    iput v0, p0, Lvc9;->b:I

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_0
    return-object v2
.end method

.method public e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lvc9;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [C

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-ge v1, p1, :cond_0

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    mul-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-array p1, p1, [C

    .line 16
    .line 17
    iget-object v0, p0, Lvc9;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, [C

    .line 20
    .line 21
    iget v1, p0, Lvc9;->b:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lvc9;->c:Ljava/lang/Object;

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public f(Lct9;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lvc9;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lud9;

    .line 4
    .line 5
    iget p0, p0, Lvc9;->b:I

    .line 6
    .line 7
    :try_start_0
    iget-object v1, v0, Lud9;->E:Le99;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    iget-object v1, v0, Lud9;->E:Le99;

    .line 13
    .line 14
    iget-object v3, v0, Lud9;->C:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x2

    .line 21
    if-eq p0, v4, :cond_4

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    if-eq p0, v4, :cond_3

    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    if-eq p0, v4, :cond_2

    .line 28
    .line 29
    const/4 v4, 0x5

    .line 30
    if-eq p0, v4, :cond_1

    .line 31
    .line 32
    const/4 v4, 0x6

    .line 33
    if-eq p0, v4, :cond_0

    .line 34
    .line 35
    const-string p0, "QUERY_PRODUCT_DETAILS_ASYNC"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const-string p0, "START_CONNECTION"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p0, "IS_FEATURE_SUPPORTED"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string p0, "CONSUME_ASYNC"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const-string p0, "ACKNOWLEDGE_PURCHASE"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const-string p0, "LAUNCH_BILLING_FLOW"

    .line 53
    .line 54
    :goto_0
    new-instance v4, Lkd9;

    .line 55
    .line 56
    invoke-direct {v4, p1}, Lkd9;-><init>(Lct9;)V

    .line 57
    .line 58
    .line 59
    check-cast v1, La99;

    .line 60
    .line 61
    invoke-virtual {v1}, Lvz8;->l()Landroid/os/Parcel;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget p0, Lz89;->a:I

    .line 72
    .line 73
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :try_start_1
    iget-object p0, v1, Lvz8;->b:Landroid/os/IBinder;

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    invoke-interface {p0, v1, v5, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    :try_start_2
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_5
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    :goto_1
    const/16 v1, 0x1c

    .line 93
    .line 94
    sget-object v2, Lle9;->r:Lyq0;

    .line 95
    .line 96
    const/16 v3, 0x5f

    .line 97
    .line 98
    invoke-virtual {v0, v3, v1, v2}, Lud9;->G(IILyq0;)V

    .line 99
    .line 100
    .line 101
    const-string v0, "BillingClientTesting"

    .line 102
    .line 103
    const-string v1, "An error occurred while retrieving billing override."

    .line 104
    .line 105
    invoke-static {v0, v1, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    const/4 p0, 0x0

    .line 109
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p1, p0}, Lct9;->a(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :goto_2
    const-string p0, "billingOverrideService.getBillingOverride"

    .line 117
    .line 118
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lvc9;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lvc9;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, [C

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iget p0, p0, Lvc9;->b:I

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public zza()I
    .locals 0

    .line 1
    iget p0, p0, Lvc9;->b:I

    .line 2
    .line 3
    return p0
.end method
