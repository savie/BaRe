.class public final Lke;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lls5;
.implements Ljk8;
.implements Ldz7;
.implements Lh9;
.implements Lx76;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 32
    iput p1, p0, Lke;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/ImageView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V
    .locals 0

    const/16 p2, 0xb

    iput p2, p0, Lke;->a:I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lke;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcz4;Ljava/util/Map;)V
    .locals 0

    const/16 p1, 0x10

    iput p1, p0, Lke;->a:I

    sget-object p1, Lns8;->a:Lns8;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lke;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg45;)V
    .locals 4

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    iput v0, p0, Lke;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iget v0, p1, Lg45;->d:I

    .line 9
    .line 10
    new-array v1, v0, [Ll22;

    .line 11
    .line 12
    iput-object v1, p0, Lke;->b:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lke;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, [Ll22;

    .line 20
    .line 21
    new-instance v3, Ll22;

    .line 22
    .line 23
    invoke-direct {v3, p1}, Ll22;-><init>(Lg45;)V

    .line 24
    .line 25
    .line 26
    aput-object v3, v2, v1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 33
    iput p2, p0, Lke;->a:I

    iput-object p1, p0, Lke;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lke;->a:I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 38
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lke;->b:Ljava/lang/Object;

    return-void

    .line 39
    :cond_0
    const-string p0, "Invalid APDU response data"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static q(Lke;Lk69;Lyf1;Ln59;)V
    .locals 9

    .line 1
    iget-boolean v0, p1, Lk69;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lk69;->t:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object v7, p2

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance v2, Lb69;

    .line 16
    .line 17
    iget-object v0, p1, Lk69;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p1, Lk69;->b:Ljava/lang/String;

    .line 20
    .line 21
    iget-wide v3, p1, Lk69;->d:J

    .line 22
    .line 23
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "Bearer"

    .line 28
    .line 29
    invoke-direct {v2, v0, v1, v3, v4}, Lb69;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p1, Lk69;->k:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v4, p1, Lk69;->f:Ljava/lang/String;

    .line 35
    .line 36
    iget-boolean v0, p1, Lk69;->n:Z

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {p1}, Lk69;->a()Lua9;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    move-object v1, p0

    .line 47
    move-object v7, p2

    .line 48
    move-object v8, p3

    .line 49
    invoke-virtual/range {v1 .. v8}, Lke;->t(Lb69;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lua9;Lyf1;Ln59;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :goto_0
    invoke-virtual {p1}, Lk69;->a()Lua9;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v3, p1, Lk69;->e:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v4, p1, Lk69;->y:Ljava/lang/String;

    .line 60
    .line 61
    iget-boolean p0, p1, Lk69;->a:Z

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    .line 66
    .line 67
    const/16 p1, 0x4274

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p2, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    move-object v1, p0

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    iget-object p0, p1, Lk69;->t:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p0}, Lzv1;->t(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    goto :goto_1

    .line 82
    :goto_2
    new-instance v0, Lbs2;

    .line 83
    .line 84
    const/4 v5, 0x3

    .line 85
    invoke-direct/range {v0 .. v5}, Lbs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v0}, Lyf1;->g(Lbs2;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lg3;

    .line 4
    .line 5
    instance-of v0, p0, Lsw5;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lsw5;

    .line 10
    .line 11
    iget-object p0, p0, Lsw5;->b:Lov4;

    .line 12
    .line 13
    iget-object p0, p0, Lov4;->b:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object p0

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lke;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Exception;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    return-object v0

    .line 25
    :cond_2
    :goto_1
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Ljava/lang/Exception;

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_3
    const-string p0, "No error message"

    .line 37
    .line 38
    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Exception;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public d()S
    .locals 2

    .line 1
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, [B

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    add-int/lit8 v0, v0, -0x2

    .line 7
    .line 8
    aget-byte v0, p0, v0

    .line 9
    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 11
    .line 12
    shl-int/lit8 v0, v0, 0x8

    .line 13
    .line 14
    array-length v1, p0

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    aget-byte p0, p0, v1

    .line 18
    .line 19
    and-int/lit16 p0, p0, 0xff

    .line 20
    .line 21
    or-int/2addr p0, v0

    .line 22
    int-to-short p0, p0

    .line 23
    return p0
.end method

.method public e()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lke;->c()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method public f()V
    .locals 0

    .line 1
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/fragment/app/t;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/fragment/app/t;->k:Lur3;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/z;->Q()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public g(Lsd1;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Lhf1;

    .line 7
    .line 8
    new-instance v0, Lvm;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p2, v1}, Lvm;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1, v0}, Lhf1;->j(Lhf1;Lsd1;Lmt3;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lke;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public h(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lg9;

    .line 2
    .line 3
    iget-object v0, p0, Lke;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/fragment/app/z;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/fragment/app/z;->F:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lrr3;

    .line 14
    .line 15
    const-string v2, "FragmentManager"

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "No Activities were started for result for "

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p0, v1, Lrr3;->a:Ljava/lang/String;

    .line 38
    .line 39
    iget v1, v1, Lrr3;->b:I

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Landroidx/fragment/app/e0;->c(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "Activity result delivered for unknown Fragment "

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iget p0, p1, Lg9;->a:I

    .line 68
    .line 69
    iget-object p1, p1, Lg9;->b:Landroid/content/Intent;

    .line 70
    .line 71
    invoke-virtual {v0, v1, p0, p1}, Landroidx/fragment/app/o;->onActivityResult(IILandroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    const-string p0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    .line 2
    .line 3
    const-string v0, "ProfileInstaller"

    .line 4
    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public j()V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lke;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, [Ll22;

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    if-ge v1, v3, :cond_3

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    iget-object v3, v2, Ll22;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, [I

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    invoke-static {v0, v4}, Lms8;->w(II)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    new-array v5, v4, [I

    .line 22
    .line 23
    array-length v6, v3

    .line 24
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-static {v3, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    const/16 v3, 0x80

    .line 32
    .line 33
    move v4, v0

    .line 34
    :goto_1
    if-lez v3, :cond_2

    .line 35
    .line 36
    move v6, v0

    .line 37
    :goto_2
    const/16 v7, 0x100

    .line 38
    .line 39
    if-ge v6, v7, :cond_1

    .line 40
    .line 41
    sget-object v7, Lms8;->b:[I

    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    aget v7, v7, v4

    .line 46
    .line 47
    move v8, v6

    .line 48
    :goto_3
    add-int v9, v6, v3

    .line 49
    .line 50
    if-ge v8, v9, :cond_0

    .line 51
    .line 52
    int-to-long v9, v7

    .line 53
    add-int v11, v8, v3

    .line 54
    .line 55
    aget v12, v5, v11

    .line 56
    .line 57
    int-to-long v12, v12

    .line 58
    mul-long/2addr v9, v12

    .line 59
    invoke-static {v9, v10}, Lxx3;->w(J)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    aget v10, v5, v8

    .line 64
    .line 65
    sub-int/2addr v10, v9

    .line 66
    aput v10, v5, v11

    .line 67
    .line 68
    aget v10, v5, v8

    .line 69
    .line 70
    add-int/2addr v10, v9

    .line 71
    aput v10, v5, v8

    .line 72
    .line 73
    add-int/lit8 v8, v8, 0x1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_0
    add-int v6, v8, v3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    ushr-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    iput-object v5, v2, Ll22;->b:Ljava/lang/Object;

    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    return-void
.end method

.method public k(ILjava/lang/Object;)V
    .locals 3

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, ""

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    .line 35
    .line 36
    :goto_0
    const/4 v1, 0x6

    .line 37
    const-string v2, "ProfileInstaller"

    .line 38
    .line 39
    if-eq p1, v1, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x7

    .line 42
    if-eq p1, v1, :cond_0

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    if-eq p1, v1, :cond_0

    .line 47
    .line 48
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    .line 53
    .line 54
    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_1
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Landroidx/profileinstaller/ProfileInstallReceiver;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public l()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public m(Lkt8;)Lis8;
    .locals 3

    .line 1
    sget-object v0, Lns8;->a:Lns8;

    .line 2
    .line 3
    invoke-virtual {v0}, Lns8;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqr8;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v1, v0, Lqr8;->a:I

    .line 13
    .line 14
    sget-object v2, Lkt8;->DISPLAY:Lkt8;

    .line 15
    .line 16
    if-ne p1, v2, :cond_0

    .line 17
    .line 18
    const/16 p1, 0x1d

    .line 19
    .line 20
    if-ge v1, p1, :cond_0

    .line 21
    .line 22
    sget-object p1, Lks8;->LEGACY_PUBLIC:Lks8;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-boolean p1, v0, Lqr8;->b:Z

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    sget-object p1, Lks8;->ROOT_XML:Lks8;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 p1, 0x1e

    .line 33
    .line 34
    if-lt v1, p1, :cond_2

    .line 35
    .line 36
    iget-boolean p1, v0, Lqr8;->c:Z

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-boolean p1, v0, Lqr8;->d:Z

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    sget-object p1, Lks8;->SHIZUKU_BINDER:Lks8;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object p1, Lks8;->UNAVAILABLE:Lks8;

    .line 48
    .line 49
    :goto_0
    sget-object v0, Lks8;->UNAVAILABLE:Lks8;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    if-ne p1, v0, :cond_3

    .line 53
    .line 54
    new-instance p0, Lgs8;

    .line 55
    .line 56
    sget-object v0, Lds8;->ACCESS_UNAVAILABLE:Lds8;

    .line 57
    .line 58
    invoke-direct {p0, v0, p1, v1}, Lgs8;-><init>(Lds8;Lks8;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_3
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Ljava/util/Map;

    .line 65
    .line 66
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Ljs8;

    .line 71
    .line 72
    if-nez p0, :cond_4

    .line 73
    .line 74
    new-instance p0, Lgs8;

    .line 75
    .line 76
    sget-object v0, Lds8;->ACCESS_UNAVAILABLE:Lds8;

    .line 77
    .line 78
    invoke-direct {p0, v0, p1, v1}, Lgs8;-><init>(Lds8;Lks8;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_4
    invoke-interface {p0}, Ljs8;->read()Lis8;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    instance-of p1, p0, Lhs8;

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    check-cast p0, Lhs8;

    .line 91
    .line 92
    iget-object p1, p0, Lhs8;->a:Ljava/util/List;

    .line 93
    .line 94
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    new-instance v0, Lgj1;

    .line 100
    .line 101
    const/4 v1, 0x5

    .line 102
    invoke-direct {v0, v1}, Lgj1;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object p0, p0, Lhs8;->b:Lks8;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    new-instance v0, Lhs8;

    .line 115
    .line 116
    invoke-direct {v0, p1, p0}, Lhs8;-><init>(Ljava/util/List;Lks8;)V

    .line 117
    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_5
    instance-of p1, p0, Lgs8;

    .line 121
    .line 122
    if-eqz p1, :cond_6

    .line 123
    .line 124
    return-object p0

    .line 125
    :cond_6
    invoke-static {}, Lq;->j()V

    .line 126
    .line 127
    .line 128
    return-object v1
.end method

.method public n(Landroid/view/View;Ltv8;)Ltv8;
    .locals 0

    .line 1
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lfo0;

    .line 4
    .line 5
    invoke-virtual {p2}, Ltv8;->a()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lfo0;->l:I

    .line 10
    .line 11
    invoke-virtual {p2}, Ltv8;->b()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lfo0;->m:I

    .line 16
    .line 17
    invoke-virtual {p2}, Ltv8;->c()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lfo0;->n:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lfo0;->g()V

    .line 24
    .line 25
    .line 26
    return-object p2
.end method

.method public o(Lj87;Lrt6;Lfi7;Loy5;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object p0, Ltu0;->h:[B

    .line 2
    .line 3
    invoke-virtual {p2}, Lev6;->c()Ldv6;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lut6;

    .line 8
    .line 9
    iget-wide v0, p1, Lut6;->j:J

    .line 10
    .line 11
    const-wide v2, 0x8000002dL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long p1, v0, v2

    .line 17
    .line 18
    if-nez p1, :cond_e

    .line 19
    .line 20
    iget-object p1, p2, Lrt6;->d:Ls40;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p1, Ls40;->a:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lys6;

    .line 41
    .line 42
    instance-of v1, v0, Lzs6;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    check-cast v0, Lzs6;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    :goto_0
    if-eqz v0, :cond_d

    .line 51
    .line 52
    iget-object p1, p3, Lfi7;->c:Ljava/lang/String;

    .line 53
    .line 54
    iget p2, v0, Lzs6;->b:I

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    move-object v1, p0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    sget-object v1, Lh51;->c:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_1
    new-instance v2, Ljava/lang/String;

    .line 67
    .line 68
    array-length v3, v1

    .line 69
    sub-int/2addr v3, p2

    .line 70
    sget-object v4, Lh51;->c:Ljava/nio/charset/Charset;

    .line 71
    .line 72
    invoke-direct {v2, v1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lzs6;->c:Ljava/lang/String;

    .line 76
    .line 77
    iget-boolean v0, v0, Lzs6;->a:Z

    .line 78
    .line 79
    const/16 v3, 0x5c

    .line 80
    .line 81
    const/4 v5, -0x1

    .line 82
    const/4 v6, 0x0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-static {v1, v2}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    if-nez p1, :cond_4

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    :goto_2
    new-instance p1, Ljava/lang/String;

    .line 98
    .line 99
    array-length v0, p0

    .line 100
    sub-int/2addr v0, p2

    .line 101
    invoke-direct {p1, p0, v6, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 102
    .line 103
    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string p2, "\\"

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-eq p2, v5, :cond_5

    .line 116
    .line 117
    invoke-virtual {p0, p1, v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :cond_5
    invoke-static {p0, v1, v2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    move p2, v6

    .line 133
    :goto_4
    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->indexOf(II)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eq v0, v5, :cond_6

    .line 138
    .line 139
    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    add-int/lit8 p2, v0, 0x1

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_6
    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move p0, v6

    .line 157
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-ge p0, p2, :cond_a

    .line 162
    .line 163
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    check-cast p2, Ljava/lang/String;

    .line 168
    .line 169
    const-string v0, "."

    .line 170
    .line 171
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_7
    const-string v0, ".."

    .line 182
    .line 183
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-eqz p2, :cond_9

    .line 188
    .line 189
    if-lez p0, :cond_8

    .line 190
    .line 191
    add-int/lit8 p2, p0, -0x1

    .line 192
    .line 193
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move p0, p2

    .line 197
    :cond_8
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_9
    add-int/lit8 p0, p0, 0x1

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-ge v6, p2, :cond_c

    .line 214
    .line 215
    if-lez v6, :cond_b

    .line 216
    .line 217
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    :cond_b
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    check-cast p2, Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    add-int/lit8 v6, v6, 0x1

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    new-instance p1, Lfi7;

    .line 237
    .line 238
    iget-object p2, p3, Lfi7;->a:Ljava/lang/String;

    .line 239
    .line 240
    iget-object p3, p3, Lfi7;->b:Ljava/lang/String;

    .line 241
    .line 242
    invoke-direct {p1, p2, p3, p0}, Lfi7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {p4, p1}, Loy5;->b(Lfi7;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    return-object p0

    .line 250
    :cond_d
    new-instance p0, Lny5;

    .line 251
    .line 252
    invoke-virtual {p2}, Lev6;->c()Ldv6;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    check-cast p1, Lut6;

    .line 257
    .line 258
    iget-wide p1, p1, Lut6;->j:J

    .line 259
    .line 260
    new-instance p4, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v0, "Create failed for "

    .line 263
    .line 264
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string p3, ": missing symlink data"

    .line 271
    .line 272
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p3

    .line 279
    invoke-direct {p0, p1, p2, p3}, Lny5;-><init>(JLjava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw p0

    .line 283
    :cond_e
    invoke-interface {p4, p3}, Loy5;->b(Lfi7;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    return-object p0
.end method

.method public p()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p0, Lrs9;->l:Lym5;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lym5;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object p0, Lrs9;->l:Lym5;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lrs9;->k:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "Must call PhenotypeContext.setContext() first"

    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method public r(Ljava/lang/String;Ln59;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lb69;->n(Ljava/lang/String;)Lb69;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lb69;->u()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p2, p1}, Ln59;->h(Lf59;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p1, Lb69;->a:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Lig9;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-direct {v0, p1, v1}, Lig9;-><init>(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lke;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lg59;

    .line 29
    .line 30
    new-instance v1, Ltr9;

    .line 31
    .line 32
    invoke-direct {v1, p0, p2}, Ltr9;-><init>(Lke;Ln59;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p1, Lg59;->c:Lc59;

    .line 36
    .line 37
    iget-object p1, p1, Lg59;->f:Ljava/lang/String;

    .line 38
    .line 39
    const-string p2, "/token"

    .line 40
    .line 41
    invoke-virtual {p0, p2, p1}, Lao;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance p2, Lb69;

    .line 46
    .line 47
    invoke-direct {p2}, Lb69;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lao;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Lxt1;

    .line 53
    .line 54
    invoke-static {p1, v0, v1, p2, p0}, Lms8;->U(Ljava/lang/String;Le59;Ln59;Lf59;Lxt1;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public s(Lu59;Lyf1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lke;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg59;

    .line 4
    .line 5
    new-instance v1, Loe;

    .line 6
    .line 7
    const/16 v2, 0x11

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, p0, p2, v2, v3}, Loe;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p0, v0, Lg59;->a:Ld59;

    .line 17
    .line 18
    iget-object p2, v0, Lg59;->f:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "/emailLinkSignin"

    .line 21
    .line 22
    invoke-virtual {p0, v0, p2}, Lao;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    new-instance v0, Lv59;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lao;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lxt1;

    .line 34
    .line 35
    invoke-static {p2, p1, v1, v0, p0}, Lms8;->U(Ljava/lang/String;Le59;Ln59;Lf59;Lxt1;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public t(Lb69;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lua9;Lyf1;Ln59;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lb69;->b:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lbi9;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v0, v2}, Lbi9;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lke;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lg59;

    .line 12
    .line 13
    new-instance v2, Lyr1;

    .line 14
    .line 15
    move-object v3, p0

    .line 16
    move-object v10, p1

    .line 17
    move-object v6, p2

    .line 18
    move-object v5, p3

    .line 19
    move-object v7, p4

    .line 20
    move-object/from16 v8, p5

    .line 21
    .line 22
    move-object/from16 v9, p6

    .line 23
    .line 24
    move-object/from16 v4, p7

    .line 25
    .line 26
    invoke-direct/range {v2 .. v10}, Lyr1;-><init>(Lke;Ln59;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lua9;Lyf1;Lb69;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, v0, Lg59;->a:Ld59;

    .line 30
    .line 31
    iget-object p1, v0, Lg59;->f:Ljava/lang/String;

    .line 32
    .line 33
    const-string p2, "/getAccountInfo"

    .line 34
    .line 35
    invoke-virtual {p0, p2, p1}, Lao;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance p2, Lw59;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lao;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lxt1;

    .line 47
    .line 48
    invoke-static {p1, v1, v2, p2, p0}, Lms8;->U(Ljava/lang/String;Le59;Ln59;Lf59;Lxt1;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lke;->a:I

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
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, [Ll22;

    .line 14
    .line 15
    const-string v0, "\n["

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    array-length v2, p0

    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, "Inner Matrix "

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " "

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    aget-object v0, p0, v1

    .line 43
    .line 44
    invoke-virtual {v0}, Ll22;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    array-length v2, p0

    .line 56
    add-int/lit8 v2, v2, -0x1

    .line 57
    .line 58
    if-ne v1, v2, :cond_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    const-string v2, ",\n"

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string p0, "]"

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
